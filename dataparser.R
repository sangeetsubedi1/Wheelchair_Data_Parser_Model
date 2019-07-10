
#read data from the csv file. 
mydata <- read.csv("Jerk_sensor_log_18-12-2016.csv", header = FALSE, na.strings = "0")

#function to replace missing data with the mean
# for more precision, try getting mean of the data in rest position and in motion separately. 
replacenawithmeans<- function(x){
  x[is.na(x)]<- mean(na.omit(mydata)[,1])
  return(x)
}

#for future, create a function to get the specified data and delete it after it's been extracted from teh 
# original dataframe so that we can use the rest of them for restdata. 
# calling function to repl missing data with the mean. 
mydata = replacenawithmeans(mydata)

#hard-indexing motion and restdata by analyzing the graph. 

motiondata <- c(mydata[1:220,], mydata[381:590,], mydata[751:950,], mydata[1091:1350,], mydata[1531:1770,], 
                mydata[1951:2110,],mydata[2261:2550,], mydata[2721:2920,], mydata[3131:3360,], mydata[3471:3720,])

restdata <- c(mydata[221:380,], mydata[591:750,], mydata[951:1090,], mydata[1351:1530,], mydata[1771:1950,], 
              mydata[2111:2260,],mydata[2551:2720,], mydata[2921:3130,], mydata[3361:3470,], mydata[3721:4070,])
# converted data into matrix of size n x 10
# store out the data in csv file. 
c_motion <- matrix(data = motiondata, nrow = length(motiondata)/10, 10, byrow = T)
write.table(c_motion, "c_motion.csv", col.names = FALSE, row.names = FALSE)

c_rest <- matrix(data = restdata, nrow = length(restdata)/10, 10, byrow = T)
write.table(c_rest, "c_rest.csv", col.names = FALSE, row.names = FALSE)

#concerted and weighed motion data


#convert matrix into dataframes to make it easier for us to add one column at the end. 
c_motion <- as.data.frame(c_motion)
c_rest <- as.data.frame(c_rest)

# add one column behind as what kind of data is it data, For data in motion, 1 is added. 0 for the rest. 
cw_motion <- c_motion
cw_motion[,11]<- 1

cw_rest <- c_rest
cw_rest[,11] <- 0

#now combine dataframe as one to get the final trainable data output. 
train_ready_data <- rbind(cw_motion, cw_rest)
write.table(train_ready_data, "train_ready_data.csv", col.names = FALSE, row.names = FALSE)


# create some test data to test against 
test_ready <- rbind(train_ready_data[1:10,], train_ready_data[100:110,],train_ready_data[200:210,], 
                train_ready_data[300:310,], train_ready_data[390:400,])
write.table(test_ready, "test_ready_data.csv", col.names = FALSE, row.names = FALSE)
