using PyPlot

file_directory = "/home/over/git/juliaHero/lista2/ml-100k/u.data"

f = open(file_directory)

file_content = readdlm(f)

close(f)

file_content = sort(file_content[:, 3])

rates_number = sort(hist(file_content, convert(Int64, file_content[end]))[2])

figure("Histograma")

bar(1:length(rates_number), rates_number)

grid("on")
xlabel("Notas")
ylabel("Usuários")
title("Histograma")

show()
