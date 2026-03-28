needsPackage "Complexes"
kk = QQ

q = 1/2

A = kk[r,s,t,u..z]

M_3 = matrix{{s,x,z},{0,s,y},{0,0,s}}
N_3 = matrix{{t,u,w},{0,t,v},{0,0,t}}

-- D = M_3*N_3 - q*N_3*M_3
D = N_3*M_3 - M_3*N_3 - M_3*M_3

C = koszulComplex {D_(0,0),D_(0,1),D_(0,2),D_(1,2)}
prune HH C

---------------

restart

needsPackage "Complexes"
kk = QQ

q_1 = 1/2
q_2 = 1/5

A = kk[r,s,t,u..z,a..c]

M_3 = matrix{{s,x,z},{0,s,y},{0,0,s}}
N_3 = matrix{{t,u,w},{0,t,v},{0,0,t}}
P_3 = matrix{{r,a,c},{0,r,b},{0,0,r}}

D = M_3*N_3 - q_1*N_3*M_3
E = N_3*P_3 - q_2*P_3*N_3

C = koszulComplex {D_(0,0),D_(0,1),D_(0,2),D_(1,2),E_(0,0),E_(0,1),E_(0,2),E_(1,2)}
prune HH C
