# -*- coding: utf-8 -*-
"""
Created on Tue Jul  4 10:50:27 2023

@author: quik9
"""

import math
import numpy
import numpy as np
import matplotlib.pyplot as plt

def modulation(age):
    immune_modulation = max(0.1, 1 - 5e-4 * age)  # Decrece con la edad, mínimo 0.1
    cytokine_modulation = 1 + 5e-4 * age  # Aumenta con la edad
    return immune_modulation, cytokine_modulation


# Definición de la función que representa el sistema de ecuaciones diferenciales
def f(U,b_2, age):
    immune_modulation, cytokine_modulation = modulation(age)
    # Cálculo de las derivadas de las cinco variables en el punto actual
    p1 = S_in - K_s * U[0] - beta * U[0] * U[2]
    p2 = beta * U[0] * U[2] - k_I * U[1] - gamma * U[3] * U[1]
    p3 = V_in * U[1] - K_v * U[2]
    z = U[3] / (c1 + U[3]) * (U[3] - m) * (y1 - U[4]) * (U[4] - y2)
    p4 = x_in * immune_modulation - k_1 * U[3] + gamma_1 * U[3] * U[1] + b_1 * z
    num = a_1 * U[4] * U[3]
    den = a_2 * (c2 + U[3])
    p5 = y_in * cytokine_modulation - k_2 * U[4] + b_2 * num / den
    # Devuelve un vector con las derivadas
    gg=np.array([p1,p2,p3,p4,p5])
    return gg

# Definición de la función que implementa el método de Runge-Kutta de cuarto orden
def RK4(U0,T,h,b_2, age): 
    # Bucle a través de todos los pasos de tiempo
    for i in range (0,T-1):
        # Cambio del valor de b_2 entre los tiempos 500 y 540
        if t[i]>=500 and t[i]<=540:
            b_2=0.88
        else:
            b_2=1
        # Cálculo de los coeficientes de Runge-Kutta
        k1 = f(U0, b_2, age)
        k2 = f(U0 + h * k1 / 2, b_2, age)
        k3 = f(U0 + h * k2 / 2, b_2, age)
        k4 = f(U0 + h * k3, b_2,age)
        # Actualización del vector de variables
        U0 = U0 + h / 6 * (k1 + 2 * (k2 + k3) + k4)
        # Almacenamiento de los resultados en los vectores correspondientes
        Sus[i] = U0[0]; Inf[i] = U0[1]; Vir[i] = U0[2];
        Im[i] = U0[3]; Cyt[i] = U0[4]
    # Devuelve los vectores de resultados
    return [Sus, Inf, Vir, Im, Cyt]

# Definición de parámetros y condiciones iniciales
S_in = 0.01     
K_s = 0.01      
beta = 0.1      
k_1 = 0.01      
k_I = 0.01      
gamma = 0.5     
gamma_1 = 0.05  
V_in = 0.1      
K_v = 0.1       
c1 = 1          
m = 0.1         
y1 = 1          
y2 = 3          
x_in = 7e-4     
b_1 = 1         
a_1 = 1
a_2 = 1
c2 = 1          
y_in = 0.018    
k_2 = 0.1       
b_2 = 1       
age = 80
U0 = np.array([1,0,0,0.07,0.18]) # Vector de condiciones iniciales

# Definición de parámetros de la simulación
tf = 1500; t0 = 0; T = 30000
h=(tf-t0)/(T-1); # Cálculo del tamaño del paso de tiempo
t=np.zeros(T);y=np.zeros(T);w=np.zeros(T);Urk=np.zeros(T)
Im=np.zeros(T); Cyt=np.zeros(T); Inf=np.zeros(T); Vir=np.zeros(T)
Sus=np.zeros(T)
t[0]=t0;

# Bucle a través de todos los pasos de tiempo
for i in range(1,T):
    t[i]=t[i-1]+h;

# Ejecución de la simulación
[Sus, Inf, Vir, Im, Cyt] = RK4(U0, T, h, V_in, age);

# Visualización de los resultados
#plt.subplot(3,2,1)
plt.figure()
plt.plot(t,Im,'b')
plt.ylim(0.07,0.12)
plt.xlim(400,1500)
plt.axhline(y=0.1, color='r', linestyle='--')  # Añade una línea horizontal en y=0.1
plt.xlabel('time')
plt.ylabel('Immune')

plt.figure()
plt.plot(t,Cyt,'r')
plt.ylim(0,3)
plt.xlim(500,1500)
plt.xlabel('time')
plt.axhline(y=1, color='g', linestyle='--')  # Añade una línea horizontal en y=1
plt.ylabel('Cytokines')

#plt.subplot(3,2,3)
plt.figure()
plt.plot(t,Sus,'g')
plt.xlim(400,1500)
plt.xlabel('time')
plt.ylabel('Susceptible')

#plt.subplot(3,2,4)
plt.figure()
plt.plot(t,Inf,'k')
plt.xlim(400,1500)
plt.xlabel('time')
plt.ylabel('Infected')

#plt.subplot(3,2,5)
plt.figure()
plt.plot(t,Vir,'m')
plt.xlim(400,1500)
plt.xlabel('time')
plt.ylabel('Virus')
