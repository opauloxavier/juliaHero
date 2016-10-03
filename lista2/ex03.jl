using PyPlot

file_directory = "/home/over/git/juliaHero/lista2/ml-100k/u.data"

f = open(file_directory)

file_content = readdlm(f)

close(f)

globalMean = mean(file_content[:,3])

orderedContent = sort(file_content[:,1])

##intervalos de treinamento e teste
training = find(r->r, shuffle([1:100000]) .> 20000)
test = setdiff(1:100000,training)

trainingContent = file_content[training,:]
orderedTrainingContent = sort(trainingContent[:,1])

testContent = file_content[test,:]
##Base de Treinamento e média global

## calcula a média de toda base

function meansByUser(totalOrderedContent,testContent)
  arrayMeanUsers=[]

  for i=1:convert(Int64,totalOrderedContent[end])
      anterior=i
      ratesOfUser = find(r->r==anterior,testContent[:,1])
    if(size(ratesOfUser)[1]==0)
        meanActualUser=globalMean
    else
      meanActualUser = mean(testContent[ratesOfUser,3])
    end
      toAppend=[i;meanActualUser]
      push!(arrayMeanUsers,toAppend)
  end
  return arrayMeanUsers
end

arrayUsersTraining = meansByUser(orderedContent,trainingContent)

arrayUsersTest = meansByUser(orderedContent,testContent)

arrayMAE = arrayUsersTraining .- arrayUsersTest

print(mean(arrayMAE[:][2]))

#
# Testes
# a = [[1 2];[1 3];[1 2]; [2 2]; [2 3] ;[2 4];[3 1]; [3 2];[3 3]]
#
#
# print(size(find(r->r==4,a[:,1]))[1])
#
# print(mean(file_content[find(r->r==anterior,file_content[:,1]),3]))
#
# # sortedId = sort(file_content[:, 1])
# #
# # histograma = sort(hist(file_content, convert(Int64, file_content[end]))[2])
# #
# #
# # print(size(training))
#
# # for i=
# # find(r->r)
# #
# #
# # print(globalMean);
# #
# # #length(find(r->r, shuffle([1:100]) .> 10))
