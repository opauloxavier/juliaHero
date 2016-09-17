matrix = [5 10 -5 22; 1 33 15 3; 8 29 12 1; 3 11 39 20]

for i in 1 : 3
    matrix[find(r->r==maximum(matrix), matrix)] = 0
end

println(matrix)
