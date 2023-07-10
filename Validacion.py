# -*- coding: utf-8 -*-
"""
]Created on Wed Jan 18 23:20:37 2023

@author: 
"""
import math
import numpy
import numpy as np
import matplotlib.pyplot as plt
def f(U,b_2):
    p1=S_in-K_s*U[0]-beta*U[0]*U[2]
    p2=beta*U[0]*U[2]-k_I*U[1]-gamma*U[3]*U[1]
    p3=V_in*U[1]-K_v*U[2]
    z=U[3]/(c1+U[3])*(U[3]-m)*(y1-U[4])*(U[4]-y2)
    p4=x_in-k_1*U[3]+gamma_1*U[3]*U[1]+b_1*z
    num=a_1*U[4]*U[3]
    den=a_2*(c2+U[3])
    p5=y_in-k_2*U[4]+b_2*num/den
    gg=np.array([p1,p2,p3,p4,p5])
    return gg

def Euler(U0,T,h,b_2): 
    #print(y)
    for i in range (0,T-1):
        if t[i]>=500 and t[i]<=540:
            b_2=0.88
        else:
            b_2=1
        U0 = U0+h*f(U0,b_2)
        SusE[i] = U0[0]; InfE[i] = U0[1]; VirE[i] = U0[2];
        ImE[i] = U0[3]; CytE[i] = U0[4]
    return [SusE, InfE, VirE, ImE, CytE];
def Heun(U0,T,h,b_2): 
    for i in range (0,T-1):
        if t[i]>=500 and t[i]<=540:
            b_2=0.88
        else:
            b_2=1
        z=U0+h*f(U0,b_2);
        U0 = U0+h/2*(f(U0,b_2)+f(z,b_2))
        SusH[i] = U0[0]; InfH[i] = U0[1]; VirH[i] = U0[2];
        ImH[i] = U0[3]; CytH[i] = U0[4]
    return [SusH, InfH, VirH, ImH, CytH];
def RK4(U0,T,h,b_2): 
    for i in range (0,T-1):
        if t[i]>=500 and t[i]<=540:
            b_2=0.88
        else:
            b_2=1
        k1=f(U0,b_2)
        print(k1)
        k2=f(U0+h*k1/2,b_2)
        k3=f(U0+h*k2/2,b_2)
        k4=f(U0+h*k3,b_2)
        U0 = U0+h/6*(k1+2*(k2+k3)+k4)
        Sus[i] = U0[0]; Inf[i] = U0[1]; Vir[i] = U0[2];
        Im[i] = U0[3]; Cyt[i] = U0[4]
    return [Sus, Inf, Vir, Im, Cyt]

S_in = 0.01     # Production rate of susceptible cells.
K_s = 0.01      # Normal decay rate of susceptible cells.
beta = 0.1      # Rate at which virus infects susceptible cells.
k_1 = 0.01      # Normal decay rate of immune cells.
k_I = 0.01      # Normal decay rate of infected cells 
gamma = 0.5     # Rate of elimination of infected cells by immune cells 
gamma_1 = 0.05  # Conversion of immune cell kill of infected cells into immune cell proliferation 
V_in = 0.1      # Rate of viral replication in infected cells.
K_v = 0.1       # Natural virus decay rate.
c1 = 1          # Population size that results in half-maximal growth of x(t) in response to cytokine stimulation 
m = 0.1         # Threshold of activation of additional immune cell proliferation (second touch)
y1 = 1          # Cytokine-mediated threshold of immune cell expansion 
y2 = 3          # Cytokine-mediated threshold of immune cell regulation 
x_in = 7e-4     # Normal production of immune cells
b_1 = 1         # Rate of additional immune cell expansion as mitigated by cytokines 
a_1 = 1
a_2 = 1
c2 = 1          # Population size that results in half-maximal increase in production of cytokines in response to stimulation by immune cells 
y_in = 0.018    # Cytokine production rate.
k_2 = 0.1       # Normal cytokine decay rate
b_2 = 1       # Rate of cytokine stimulation by immune cells 

U0 = np.array([1,0,0,0.07,0.18]) #condición inicial
tf = 1500; t0 = 0; T = 400
h=(tf-t0)/(T-1);
t=np.zeros(T);y=np.zeros(T);w=np.zeros(T);Urk=np.zeros(T)
Im=np.zeros(T); Cyt=np.zeros(T); Inf=np.zeros(T); Vir=np.zeros(T)
Sus=np.zeros(T)
ImE=np.zeros(T); CytE=np.zeros(T); InfE=np.zeros(T); VirE=np.zeros(T)
SusE=np.zeros(T)
ImH=np.zeros(T); CytH=np.zeros(T); InfH=np.zeros(T); VirH=np.zeros(T)
SusH=np.zeros(T)
t[0]=t0;
for i in range(1,T):
    t[i]=t[i-1]+h;
[SusRK, InfRK, VirRK, ImRK, CytRK]    =   RK4(U0,T,h,V_in);
U0 = np.array([1,0,0,0.07,0.18]) #condición inicial
[SusE, InfE, VirE, ImE, CytE]         =   Euler(U0,T,h,V_in);
U0 = np.array([1,0,0,0.07,0.18]) #condición inicial
[SusH, InfH, VirH, ImH, CytH]         =   Heun(U0,T,h,V_in);
#print(Im)
#plt.subplot(3,2,1)
plt.plot(t,ImE,'ob')
print(ImH)
plt.plot(t,ImH,'sr')
plt.plot(t,ImRK,'k',linewidth=2)
plt.ylim(0.07,0.1)
plt.xlim(400,1400)
plt.xlabel('Tiempo')
plt.ylabel('Células inmunes')
plt.legend(['Euler','Heun','Runge-Kutta'])
# plt.subplot(3,2,3)
# plt.plot(t,CytE,'b')
# plt.plot(t,CytH,'r')
# plt.plot(t,CytRK,'m')
# plt.legend(['Euler','Heun','Runge-Kutta'])
# plt.ylim(0,3)
# plt.xlabel('time')
# plt.ylabel('Cytokines')
# plt.subplot(3,2,3)
# plt.plot(t,Sus,'g')
# plt.xlabel('time')
# plt.ylabel('Susceptible')
# plt.subplot(3,2,4)
# plt.plot(t,Inf,'k')
# plt.xlabel('time')
# plt.ylabel('Infected')
# plt.subplot(3,2,5)
# plt.plot(t,Vir,'m')
# plt.xlabel('time')
# plt.ylabel('Virus')






