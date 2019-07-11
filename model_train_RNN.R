
library("keras")

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


model <- keras_model_sequential() %>%
  layer_embedding(input_dim = 20, output_dim = 10) %>%
  layer_simple_rnn(units = 10)

summary(model)

model %>% compile(
  loss = "sparse_categorical_crossentropy",
  optimizer = optimizer_rmsprop(),
  metrics = c("accuracy")
)

history <- model %>% fit(
  x_train, y_train, 
  epochs = 10, 
  batch_size = 100, 
  validation_split = 0.2
)

plot(history)
model %>% evaluate(x_test, y_test,  verbose = 0)


