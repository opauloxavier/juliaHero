using PyPlot

file_directory = "/home/over/git/juliaHero/lista2/ml-100k/u.data"

f = open(file_directory)

file_content = readdlm(f)

close(f)

file_content = sort(file_content[:, 1])

histograma = sort(hist(file_content, convert(Int64, file_content[end]))[2])

plot(1:convert(Int64, file_content[end]), histograma)

grid("on")
xlabel("Quantidade de Notas")
ylabel("Número de Usuários")
title("Notas")

show()
