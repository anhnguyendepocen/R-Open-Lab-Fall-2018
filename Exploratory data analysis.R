#DataFrame
sex <- c('F','M','F','M')
name <- c('Brett', 'Jack', 'Anna', 'Sam')
grade <- c('A','B','B-','C+')
d <- data.frame(name, sex, grade, stringsAsFactors = FALSE)
head(d)
View(d)

d$name
d[,1]
d[,'name']
d[2,'name']

# cbind rbind
country <- c('USA','China','Japan','India')
d <- cbind(d,country)
d$country <- as.character(d$country)

new <- c('Jacob','M','A+','uk')
d <- rbind(d,new)


d$year <- c(1,2,3,4,5,3,4,5)
d$fee <- NA
d[ d$name=='Jack' ,'fee']<-1000


getwd()
setwd('/Users/JHY/Desktop')
getwd()
diamonds <- read.csv('diamonds.csv')
View(diamonds)
diamonds$cut <- as.factor(diamonds$cut)
diamonds$color <- as.factor(diamonds$color)
diamonds$clarity <- as.factor(diamonds$clarity)


table(diamonds$cut)

tapply(diamonds$price, diamonds$color, mean)
# attach to the dataset
attach(diamonds)
tapply(price, color, mean)
detach(diamonds)

# numeric way
mean()
var()
cov(diamonds$price, diamonds$carat)
summary(diamonds)

# graphic way
plot(diamonds$carat, diamonds$price,
     main = 'Price vs Carat',
     xlab = 'Carat',
     ylab = 'Price')
barplot(table(diamonds$cut),
        names.arg = names(table(diamonds$cut)))

barplot(table(diamonds$cut),
        names.arg = c('F','G','I','P','V'))

hist(diamonds$carat)
boxplot(price~cut, data = diamonds)

ggplot(data = diamonds)+
  geom_point(mapping = aes(x=carat,y=price,color=clarity))

View(mpg)
ggplot(data= mpg[mpg$class %in% c('suv','midsize'), ])+
  geom_point(mapping = aes(x=displ, y=hwy))+
  facet_wrap(~class, nrow = 1)
  

# Question:
mpg[mpg$class == c('suv','midsize'), ]
mpg[mpg$class %in% c('suv','midsize'), ]
