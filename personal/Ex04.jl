using PyPlot

a = rand(500)*-4.0 +2.0

sort!(a)

grid("on")
plot(a,cos(a))
plot(a,sin(a))
plot(a,1./sin(a))
plot(a,1./cos(a))
show()

subplot(221)
title("cosseno")
plot(a,cos(a))

subplot(222)
title("seno")
plot(a,sin(a))

subplot(223)
title("1/seno")
plot(a,1./sin(a))

subplot(224)
title("1/cosseno")
plot(a,1./cos(a))
