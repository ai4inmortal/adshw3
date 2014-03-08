##############KNN###################################
#k=1
library(class)
knn.pred=knn(traindata, testdata, usedata[(1:(n/2)),m],k = 1)
table(knn.pred ,salary[15082:30162])
table(knn.pred ,salary[1:15081])
knn.misrate.test=(2136+2242)/n
knn.misrate.test
knn.misrate.train=(2804+2962)/n
knn.misrate.train

#k=3
knn.pred=knn(traindata, testdata, usedata[(1:(n/2)),m],k = 3)
table(knn.pred ,salary[15082:30162])
table(knn.pred ,salary[1:15081])
knn.misrate.test=(2482+1340)/n
knn.misrate.test
knn.misrate.train=(3099+2009)/n
knn.misrate.train

#k=5
knn.pred=knn(traindata, testdata, usedata[(1:(n/2)),m],k = 5)
table(knn.pred ,salary[15082:30162])
table(knn.pred ,salary[1:15081])
knn.misrate.test=(2673+898)/n
knn.misrate.test
knn.misrate.train=(3232+1509)/n
knn.misrate.train

#k=10
knn.pred=knn(traindata, testdata, usedata[(1:(n/2)),m],k = 10)
table(knn.pred ,salary[15082:30162])
table(knn.pred ,salary[1:15081])
knn.misrate.test=(2878+462)/n
knn.misrate.test
knn.misrate.train=(3378+1014)/n
knn.misrate.train
