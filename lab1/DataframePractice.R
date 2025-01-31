#creating a dataframe
#RPI WEATHER DATAFRAME

days <- c('Mon','Tue','Wed','Thur','Fri','Sat','Sun') #days
temp <- c(20,30.5,32,31.2,29.3,27.9,26.4) #temperature in F' during the winters
snowed <- c('T','T','F','F','T','T','F') #Snowed on that day T = True F = False
help("data.frame")
RPI_Weather_Weak <- data.frame(days,temp,snowed) #creating the dataframe using the data.frame() function

RPI_Weather_Weak
head(RPI_Weather_Weak) #head of the data frame, Note: It will show only 6 rows , usually head() function shows
# first 6 rows of the data frame, here we have only 7 rows in our dataframe

str(RPI_Weather_Weak) #we can take a look at the structure of the dataframe using the str() function
summary(RPI_Weather_Weak) #we can look at the summary of the dataframe using the summary() function

RPI_Weather_Weak[1,] #showing the 1st row and all the columns
RPI_Weather_Weak[,1] #showing the 1st column and all the rows
RPI_Weather_Weak[,'snowed']
RPI_Weather_Weak[,'days']
RPI_Weather_Weak[,'temp']
RPI_Weather_Weak[1:5,c('days','temp')]
RPI_Weather_Weak$temp

subset(RPI_Weather_Weak,subset=snowed==TRUE)
sorted.snowed <- order(RPI_Weather_Weak['snowed'])
sorted.snowed
RPI_Weather_Weak[sorted.snowed,]

#RPI_Weather_Week[descending_snowed,]
dec.snow <- order(-RPI_Weather_Weak$temp)
dec.snow
#creating dataframes
#creating an empty dataframe 
empty.Dataframe <- data.frame()
v1 <- 1:10
v1
letters
v2 <- letters[1:10]
df <- data.frame(col.name.1 = v1,col.name.2 = v2)
df
#importing data and exporting data
#writing to a csv file

write.csv(df,file = 'saved_df1.csv')
df2 <- read.csv('saved_df1.csv')
df2
