using PyPlot

file_directory = "/home/over/git/juliaHero/lista2/ml-100k/u.data"

f = open(file_directory)

file_content = readdlm(f)

close(f)

globalMean = mean(file_content[:,3])
orderedContent = sort(file_content[:,2])

##intervalos de treinamento e teste
training = find(r->r, shuffle([1:100000]) .> 20000)
test = setdiff(1:100000,training)

trainingContent = file_content[training,:]
orderedTrainingContent = sort(trainingContent[:,1])

testContent = file_content[test,:]
##Base de Treinamento e média global

## calcula a média de toda base

function meansByItem(totalOrderedContent,testContent)
  arrayMeanItens=[]

  for i=1:convert(Int64,totalOrderedContent[end])
      anterior=i
      ratesOfItem = find(r->r==anterior,testContent[:,2])
    if(size(ratesOfItem)[1]==0)
        meanActualItem=globalMean
    else
      meanActualItem = mean(testContent[ratesOfItem,3])
    end
      toAppend=[i;meanActualItem]
      push!(arrayMeanItens,toAppend)
  end
  return arrayMeanItens
end

arrayUsersTraining = meansByItem(orderedContent,trainingContent)

arrayUsersTest = meansByItem(orderedContent,testContent)

arrayMAE = arrayUsersTraining .- arrayUsersTest

print(mean(arrayMAE[:][2]))
