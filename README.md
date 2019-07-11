# Wheelchair_Data_Parser_Model

# model_train_RNN
After running the data using RNN, it performed far worse than it did with simple NN. Please feel free to edit and find any way to make the accuracy better. Current accuracy is about 59%. However, with simple NN, it is 92%. 

# dataparser.R
dataparser.R takes in the csv file and converts them into a dataframe of nX11, where n is the number of rows and 11 column in each. column 1:10 are data and column 11 is it's categorical value, for this case, sequence that was in motion will have '1', and rest will have '0'. 

# model_training.R
model_training.R trains the model and tests it's accuracy. Till now, it's just a generic model as described on "Keras in R" website. However, the model will rather be trained using RNN. 

# savedmodel folder
savedmodel is the outpout of the trained model which can be converted into tensorflow lite object to be used on mobile application. 

# testing
train_ready_data.csv is the complete dataframe. 
test_ready_data is extracted from train_ready_data for testing models accuracy. 

# predicted result 
models_test.csv contains the categorical output(0's or 1's) for test_ready.csv after it ran through model. 
models_train.csv contains the categorical output for train_ready.csv after it ran through model. 

# please feel free to make any updates and provide suggestion for approaching it with other possible/better way. 


