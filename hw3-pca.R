#######basic dealing with data
usedata=cbind(age,wcmatrix1,fnlwgt,edumatrix,edunum,msmatrix,ocmatrix1,rsmatrix,rcmatrix,sexmatrix,capitalgain,capitalloss,hoursperweek,ncmatrix1,salary)
n=dim(usedata)[1]
m=dim(usedata)[2]
#1 stands for <=50K, 2 stands for >50
#delete the responce variable "salary"
df=data.frame(usedata)
traindata=df[(1:(n/2)),-m]
testdata=df[(n/2+1):n,-m]

#to test whether there are outliers
require("outliers")
chisq.out.test(fnlwgt, variance=var(fnlwgt), opposite = FALSE)
chisq.out.test(age, variance=var(age), opposite = FALSE)
#OK, no outlier nor missing data nor "?"of fnlwgt and age

##########pca#############################################################
#to centralize the traindata first
traindata_centered=traindata-matrix(rep(colMeans(traindata),nrow(traindata)),byrow=T)
pca=prcomp(traindata_centered,scale.=TRUE)
summary(pca)
pca.var=pca$sdev^2
pca.pervar=pca.var/sum(pca.var)
plot(pca.pervar , xlab=" Principal Component ", ylab=" Proportion of
Variance Explained ",xlim=c(0,60),ylim=c(0,0.04),type="line")
loadings=pca$rotation[,1:35]
pca.predict=as.matrix(testdata)%*%loadings
pca.predict.test=predict(pca,testdata)
truetest=usedata[((n/2)+1):n,m] 

 


















