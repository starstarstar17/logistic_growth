## Version control assessment answers

### Q1) 

### Introduction
This work aims to carry out a reproducible data analysis of *Escherichia coli* logistic growth, based on a population within a test tube with growth media. The experimental data was obtained from a stimulated experiment uploaded on the Open Science Framework (https://osf.io) and is loaded as "experiment.csv" in the R code. 

### Methods
Firstly, the logistic growth data was plotted in R, following a differential equation: 

$dN/dt = Nr(1-N/K)$

* When plotting the logistic model with N (population size) against t (time), the graph shows exponential population growth of the E.coli at the beginning due to plentiful resources in the test tube but this growth slows down as the resources become limited and the plot plateaus as the population reaches a constant size.

* When plotting the logistic model with a semilog-plot, the graph shows an increasing linear relationship at the initial phase of growth, which eventually also plateus as time increases until the population size is constant.


Secondly, linear approximation was conducted using the differential equation to estimate the model paramaters: N0 (initial population size), r (growth rate) and K (carrying capacity). 

2 different cases were stimulated in the population:
  * When K is much greater than N0 and t is small, K dominates the differential equation and the equation can be rewritten as:

    $N(t) = N0e^rt$

    The regression equation can be written as:

    $ln(N) = ln(n0) + rt$

Hence, this can be used to estimate N0 (Intercept) and r (gradient). In my code, I set t < 1000, because the logistic model suggests that N is less than K until ~ t = 2200.


  * When N(t) = K, the regression equation can be written as:

    $N(t)) = K + 0t$

    This can be used to estimate K. In my code, I set t>2500 as this t value is when K has been reached and is within the plateau region of the logistic graph. 


### Results

From this linear approximation, I recieved summary outputs and estimates for N0, r and K. 

**N0** = exp(6.883e^+00) = 975.55
**r** = 1.004e^-02
**K** = 6.00e^10






### Q2) Calulate the population size at t = 4980min, assuming the population grows exponentially. 

a) If the populaiton grows exponentially, the equation used is: 

 $N(t) = N0e^rt$

Substitute in my values for N0, r and t:

 N(4980) = 975.55 x e^(1.004e^-02 x 4980) = 5.05 x 10^24


N (population size) at t = 4980, when population grows exponentially is **5.05 x 10^24**. 


b) Under logistic growth, the population size is not exponential. Using the logistic growth equation:

$N(t) = KN0e^rt / K-N0 + N0e^rt$

Subbing in my values for t, K, N0 and r:

N(4980) = (6.00e^10) x (5.05 x 10^24) / ((6.00e^10) - 975.548) + (5.05 x 10^24) = **6.00 x 10^10**. 

**5.05 x 10^24 >> 6.00 x 10^10**. This means that compared to the population size predicted under logistic growth, the population size when it grows exponentially is a much larger result, as it assumes unlimited resources and unrestricted growth of E.coli. In contrast, the logistic growth incorporates K, which caps the populations size so that the population increase is limited as t increases. 



### Q3) 
Graph comparing the exponential and logistic growth curves:


![image](https://github.com/user-attachments/assets/09497268-c032-48f5-89f2-f3f2dc01d11f)

