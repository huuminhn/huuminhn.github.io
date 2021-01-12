library(ranger)
library(caret)
library(data.table)
library(stargazer)
library(caTools)
library(ROCR)
library(rpart)
library(rpart.plot)

df <- read.csv('creditcard.csv')

#Check for missing values and uniqueness:
sapply(df,function(x) sum(is.na(x)))
sapply(df, function(x) length(unique(x)))

#Data Exploration:

dim(df)
head(df,6)
table(df$Class)
summary(df$Amount)
names(df)
var(df$Amount)

#Data standardization

df$Amount = scale(df$Amount)
df=df[,-c(1)]
head(df)

#Split into training and test data set

set.seed(123)
data_sample = sample.split(df$Class, SplitRatio = 0.8)
train_df = subset(df, data_sample == TRUE)
test_df = subset(df, data_sample == FALSE)
dim (train_df)
dim (test_df)

###Logistic Regression:

#Variable selection : Backward method
LR = glm(Class ~ .,train_df, family = binomial)
summary(LR)

train_sub <- train_df[, c(4,6,7,8,9,10,13,14,20,21,22,27,28,match('Class',names(train_df)))]
test_sub <- test_df[, c(4,6,7,8,9,10,13,14,20,21,22,27,28,match('Class',names(train_df)))]

dim(train_sub)
dim(test_sub)
head(train_sub)
head(test_sub)

#Logistic Regression using significant variables
glm <- glm(Class~ ., train_sub, family = binomial)    
summary( glm)

glm_probs <- predict (glm, test_sub, type= "response")
glm_pred <- ifelse(glm_probs > 0.5, "1", "0")
table(glm_pred,test_sub$Class)
accuracy <-mean(glm_pred == test_sub$Class)
print (paste('accuracy: ', accuracy*100, "%"))

#Plotting the ROC Curve:


pr <- prediction(glm_probs, test_sub$Class)
prf <- performance(pr,measure = 'tpr', x.measure = 'fpr')
plot (prf) 

### Decision Tree:

#Building the model
tree <- rpart(Class ~ . , train_sub, method = "class")
tree_pred <- predict(tree, test_sub, type = 'class')
tree_prob <- predict(tree, test_sub, type = 'prob')


#Plot it out:
rpart.plot(tree)

#Confusion Matrix

table(tree_pred,test_sub$Class)
accuracy2 <- mean(tree_pred == test_sub$Class)
print (paste ('Accuracy: ', accuracy2*100, '%'))

#Base on Accuracy2 and Accuracy, it can be seen that
#Accuracy2 is slightly better at 0.02%
# Thereby, Tree model is a better choice for this data set.

