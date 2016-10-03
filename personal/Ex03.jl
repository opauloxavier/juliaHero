function std_mean(matriz_rand)
    for i in 1:size(matriz_rand, 2)
        for j in 1:size(matriz_rand,1)
            matriz_rand[i, j] = (matriz_rand[i, j]-mean(matriz_rand[:,i]))/std(matriz_rand[:,i])
        end
    end
end

matrix = rand(4, 4)

std_mean(matrix)
