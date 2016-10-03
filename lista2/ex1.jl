using DataFrames

path = "/home/over/git/juliaHero/lista2/ml-100k/u.data"

file = open(path);

content=readdlm(file);

content = sortrows(content,by = x->x[1]);

close(file);

print(content[1,:])
