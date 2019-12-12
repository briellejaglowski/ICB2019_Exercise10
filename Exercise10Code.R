#Question 1

#defining variables
K=1000000 #carrying capacity
N0=M0=100 #number of cells in tumor when mutation occurred
timesteps=100
#create vector to store N's 
Ns=numeric(length=timesteps)
Ns[1]=N0

#simulate growth of non-mutant subpopulation
Nt=Nt+rNNt(1-((Nt+Mt)/K))
rN= -0.1 #negative growth rate that occurs in presence of drug treatment

#Growth of mutant subpopulation
rM= 0.05 #50% of growth rate that occurs without drug (0.1 x 0.5 = 0.05)


#Plot