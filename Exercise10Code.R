#Question 1

#defining variables
K=1000000 #carrying capacity
N0=M0=100 #number of cells in tumor when mutation occurred
timesteps=100
#create vector to store N's 
Ns=numeric(length=timesteps)
Ns[1]=N0

#simulate growth of non-mutant subpopulation
rN= -0.1 #negative growth rate that occurs in presence of drug treatment

for(t in 1:(timesteps-1)){
  Ns[t+1] <-Ns[t]+r*Ns[t]*(1-((Ns[t]+Ms[t])/K))
}
return(Ns)

#Growth of mutant subpopulation
rM= 0.05 #50% of growth rate that occurs without drug (0.1 x 0.5 = 0.05)


#Plot simulation
library(ggplot2)
sim<-data.frame(time=1:length(Ns),N=Ns,M=Ms)
ggplot(data=sim+
         geom_line(aes(x=time,y=N),col='blue')+
         geom_line(aes(x-time,y=M),col='red')+
         theme_classic()
)