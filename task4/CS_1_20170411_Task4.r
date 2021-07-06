
##########################################
##  Task 4 - Moaaz hasan - CS-1 20170411
##########################################

install.packages("rpart.plot")
library("rpart")
library("rpart.plot")
library(caTools)

getwd()
setwd("C:/Users/Moaaz Hasan/Documents/_FCI YEAR 4_/_Term 2_/ERP/Tasks/task4")
car_dataset <- read.table("car-dataset.csv",header=TRUE,sep=",")

data_to_split = sort(sample(nrow(car_dataset), nrow(car_dataset)*.8))

train_set<-car_dataset[data_to_split,]
test_set<-car_dataset[-data_to_split,]

## Fit the train data
fit <- rpart(Label ~ Feature1 + Feature2 + Feature3 + Feature4 + Feature5 + Feature6, 
             method="class", 
             data=train_set,
             control=rpart.control(minsplit=1),
             parms=list(split='information'))
#summary(fit)

rpart.plot(fit, type=4, extra=2, clip.right.labs=FALSE, varlen=0, faclen=3)

## predict the test data
test_set$predicts <- predict(fit,newdata=test_set,type="class")

i = 0

for (i in test_set$Label){
  print()
}

## make table that tell us if those same or not
test_set$Result = test_set$Label == test_set$predicts

# calculate the accuracy
correct = 0
for (r in test_set$Result){
  if(r){
    correct = correct + 1
  }
} 

accuracy = correct / nrow(test_set)

paste0("accuracy is: " , accuracy)

### accuracy is: 0.984962406015038 and will change when we rerun.                    


