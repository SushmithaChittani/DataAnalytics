#LAB1 Exercise 1 
library(readr)

#Read the csv file
EPI_data <- read_csv("C:\\Users\\sushm\\OneDrive\\Documents\\Semester2\\Data Analytics\\epi2024results06022024.csv")

View(EPI_data)

attach(EPI_data)

#Selecting EPI variable
EPI.new

# Remove NAs
NAs <- is.na(EPI.new) 

EPI.new.noNAs <- EPI.new[!NAs]

#Summary Statistics
summary(EPI.new) 

#Five number Summary
fivenum(EPI.new,na.rm=TRUE)

#stem and leaf plot
stem(EPI.new)

#Histograms with density lines
hist(EPI.new)

hist(EPI.new, seq(20., 80., 1.0), prob=TRUE)

lines(density(EPI.new,na.rm=TRUE,bw=1.))

rug(EPI.new)


# Boxplot for comparison
boxplot(EPI.new, APO.new) 

hist(EPI.new, seq(20., 80., 1.0), prob=TRUE)

lines(density(EPI.new,na.rm=TRUE,bw=1.))

hist(EPI.new, seq(20., 80., 1.0), prob=TRUE)

lines(density(EPI.new,na.rm=TRUE,bw="SJ"))

rug(EPI.new)

x<-seq(20,80,1) 

q<- dnorm(x,mean=42, sd=5,log=FALSE)

lines(x,q)

lines(x,.4*q) 

q<-dnorm(x,mean=65, sd=5,log=FALSE)

lines(x,.12*q)

#Lab1
#Exercise 2 

# Cumulative distribution function (CDF)
plot(ecdf(EPI.new), do.points=FALSE, verticals=TRUE)

# Quantile-Quantile plots (QQ Plots)
qqnorm(EPI.new); qqline(EPI.new)

qqplot(rnorm(250), EPI.new, xlab = "Q-Q plot for norm dsn")

qqline(EPI.new)

qqplot(rt(250, df = 5), EPI.new, xlab = "Q-Q plot for t dsn") 

qqline(EPI.new)

#other two variables
# Load necessary library
library(ggplot2)

EPI_data <- read_csv("C:\\Users\\sushm\\OneDrive\\Documents\\Semester2\\Data Analytics\\epi2024results06022024.csv")

View(EPI_data)

attach(EPI_data)


# Select two variables for exploration
APO.new
WRS.new 

# Remove NAs
NAs <- is.na(APO.new) 
NAs <- is.na(WRS.new) 

APO.new.noNAs <- APO.new[!NAs]
WRS.new.noNAs <- WRS.new[!NAs]

#Summary Statistics
summary(APO.new) 
summary(WRS.new) 

#Five number Summary
fivenum(APO.new,na.rm=TRUE)
fivenum(WRS.new,na.rm=TRUE)

#stem and leaf plot
stem(APO.new)
stem(WRS.new)

#Histograms with density lines
hist(APO.new)
hist(WRS.new)

hist(APO.new, seq(7., 100., 1.0), prob=TRUE) 
lines(density(APO.new,na.rm=TRUE,bw=1.))
rug(APO.new)

hist(WRS.new, seq(7., 93., 1.0), prob=TRUE) 
lines(density(WRS.new,na.rm=TRUE,bw=1.))
rug(WRS.new)

# Boxplot for comparison
boxplot(APO.new, WRS.new) 

hist(APO.new, seq(7., 100., 1.0), prob=TRUE)

lines(density(APO.new,na.rm=TRUE,bw=1.))

hist(APO.new, seq(7., 100., 1.0), prob=TRUE)

lines(density(APO.new,na.rm=TRUE,bw="SJ"))

rug(APO.new)

x<-seq(7,100,1) 

q<- dnorm(x,mean=67, sd=5,log=FALSE)
lines(x,.12*q)

hist(WRS.new, seq(7., 93., 1.0), prob=TRUE)

lines(density(WRS.new,na.rm=TRUE,bw=1.))

hist(WRS.new, seq(7., 93., 1.0), prob=TRUE)

lines(density(WRS.new,na.rm=TRUE,bw="SJ"))

rug(WRS.new)

x<-seq(7,93,1) 

q<- dnorm(x,mean=42, sd=3,log=FALSE)
lines(x,.12*q)

# Cumulative distribution function (CDF)
plot(ecdf(APO.new), do.points=FALSE, verticals=TRUE)
plot(ecdf(WRS.new), do.points=FALSE, verticals=TRUE)

# Quantile-Quantile plots (QQ Plots)
qqnorm(APO.new); qqline(APO.new)
qqplot(rnorm(250), APO.new, xlab = "Q-Q plot for norm dsn")
qqline(APO.new)
qqplot(rt(250, df = 5), APO.new, xlab = "Q-Q plot for t dsn") 
qqline(APO.new)

qqnorm(WRS.new); qqline(WRS.new)
qqplot(rnorm(250), WRS.new, xlab = "Q-Q plot for norm dsn")
qqline(WRS.new)
qqplot(rt(250, df = 5), WRS.new, xlab = "Q-Q plot for t dsn") 
qqline(WRS.new)
