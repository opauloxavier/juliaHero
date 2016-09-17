using Distances

function f_cria_func_transf(n, m, raio, x, y)
  middlePoint = [ceil(n/2),ceil(m/2)]
  matrix = zeros(n,m)
  for i in 1:size(matrix,2)
    for j in 1:size(matrix,1)
      if euclidean([i,j],[middlePoint[1],middlePoint[2]])<=raio
        matrix[i,j]=y
      end
    end
  end
  return matrix
end

println(f_cria_func_transf(20,20,5,0,1))
