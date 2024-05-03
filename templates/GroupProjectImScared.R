library(ggplot2)
setwd("C:/Users/charl/OneDrive - Colostate/Spring 2024/CM515/CM515_Github/CM515-course-2024/modules/13_Presenting_Data")
Mutation = read.delim("MutationRate.txt")

ggplot (data=Mutation, aes(x=Genotype, y=MutationRate, color = Genotype)) + 
  geom_point(size = 2) + 
  scale_y_log10() +
  xlab("Genotype") + 
  ylab("Mutation Rate") +
  facet_grid(vars(MutationType), vars(Genome)) 

