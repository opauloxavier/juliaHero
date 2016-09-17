matrix = rand(6, 6)

matrix_result = round(Int64, maximum(matrix, 2) .== matrix)

println(matrix_result)
