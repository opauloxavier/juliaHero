using Distributions
using PyPlot

mynormal=Normal(20,5)

a = rand(mynormal,100)

sort!(a)

plot(a,pdf(mynormal,a))
