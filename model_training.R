#$loss
#[1] 0.2162306

#$acc
#[1] 0.9074074

#========================= This model is the generic model as it is described on Keras for R landing page. 
# NO RNN USED. 

#install devtools: 
install.packages("devtools")
devtools::install_github("hadley/devtools")
devtools::install_github("rstudio/tensorflow")
devtools::install_github("rstudio/tfdeploy")
devtools::install_github("rstudio/keras")

library(tfdeploy)

library(keras)
train <- read.table("train_ready_data.csv", header = F, na.strings = "?")
test <- read.table("test_ready_data.csv", header = F, na.strings = "?")

#declare x_train, x_test,y_train, y_test. x is actual training data. y is it's categorical value. 
#Also convert them into matrix to be trainable in keras.
x_train <- train[,1:10]
x_train <- as.matrix(x_train)
y_train <- train[,11]
y_train <- as.matrix(y_train)

x_test <- test[,1:10]
x_test <- as.matrix(x_test)
y_test <- test[,11]
y_test <- as.matrix(y_test)



model <- keras_model_sequential()

model %>%
  layer_dense(units = 256, activation = "relu", input_shape = c(10)) %>%
  layer_dropout(rate = 0.4) %>%
  layer_dense(units = 128, activation = "relu") %>%
  layer_dropout(rate = 0.3) %>%
  layer_dense(units = 10, activation = "softmax")

summary(model)
  
model %>% compile(
  loss = "sparse_categorical_crossentropy",
  optimizer = optimizer_rmsprop(),
  metrics = c("accuracy")
)

history <- model %>% fit(
  x_train, y_train, 
  epochs = 10, 
  batch_size = 10, 
  validation_split = 0.2
)

plot(history)

#Evaluate the model's performance on the test data. 

model %>% evaluate(x_test, y_test,  verbose = 0)

#Generate prediction on new data: 
models_prediction_on_test_data <- model %>% predict_classes(x_test)
write.csv(models_prediction_on_test_data, "models_test.csv")

models_prediction_on_training_data <- model %>% predict_classes(x_train)
write.csv(models_prediction_on_training_data, "models_train.csv")
#================================================================================
# EXPORTING THE MODEL 
library(tfdeploy)
export_savedmodel(model, "savedmodel")

# view the graph of the model 
view_savedmodel('savedmodel')

library(tfdeploy)
serve_savedmodel('savemodel', browse = TRUE)
export_savedmodel(model, "/Users/sangeetsub/Desktop/Wheelchair_data_ready")
