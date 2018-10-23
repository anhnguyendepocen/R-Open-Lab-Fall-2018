library(ggplot2)
# Where we left off
# Select subset
# Use logical expression or indices
View(diamonds[diamonds$cut == "Premium", ])
subset(diamonds, cut == "Premium", select = )

# Reorder data frame
View(diamonds[order(diamonds$price, decreasing = FALSE), ])
sort(diamonds$price)

# Visualize the data
d <- diamonds[sample(1:nrow(diamonds), 1000), ]

plot(d$carat, d$price, main = "Price vs Carat", xlab = "Carat", 
     ylab = "Price", type = "p", col = d$color)
pairs(~carat+depth+table+price, data = d) # requires another numerical data set
barplot(table(diamonds$cut)) # categorical
hist(diamonds$carat, breaks = 1000) # continuous
boxplot(price~cut, data = diamonds)
pie(c(10, 2, 4, 7), c("A", "B", "C", "D"))

# A little more about built-in visualization
plot(d$carat, d$price, col = d$cut)
# Add legend
legend("bottomright", 
       legend = levels(diamonds$cut), 
       fill = 1:5, cex = 0.3)
# Add line
ols <- lm(price~carat, data = d)
abline(a = 0, b = 10, lty = 2, lwd = 2)
# Add point
points(2, 2500, pch = 3)
# Add text
text(2, 2000, "new point")
# Useful parameters
pch
main
xlab
ylab
lty # line type
lwd # line width
cex # character expand
col

# ggplot2 package
# gg stands for grammar of graphics. ggplot2 is consistent with grammar of graphics. 
# ggplot cannot do 3D graphic and interactive graphics. (use plotly along with ggplot)
# Every graph is composed of a data set, a coordinate system and a set of geoms that represent data points
# To display data values, map variables in the data set to aesthetic properties of the geom like size, color, and x and y locations.
p <- ggplot(data = d)
p +  geom_point(mapping = aes(x = carat, y = price, 
                              col = d$cut))
# facet
p+geom_point(mapping = aes(x = carat, y = price))+
  facet_wrap(~cut, nrow = 2)
p+geom_point(aes(x=carat, y=price))+
  facet_grid(~cut)
p+geom_point(mapping = aes(x = carat, y = price))+
  facet_wrap(color~cut, nrow = 2)
p+geom_point(aes(x=carat, y=price))+
  facet_grid(color~cut)

# regression line
p+geom_point(mapping = aes(x = carat, y = price))+
  geom_smooth(mapping = aes(x = carat, y = price), 
              method = "lm")

# old stuff
p + geom_histogram(mapping = aes(price), binwidth = 1000)
# bins overridden by binwidth
p + geom_bar(aes(cut))
ggplot(data = d, aes(cut)) + geom_bar(aes(fill = color))
ggplot(data = data.frame(x=rnorm(1000)), aes(x)) + stat_function(fun = dnorm, geom = "line", mapping = aes(x))
# needs a non-null data ggplot object

p + geom_point(mapping = aes(x = carat, y = price, col = d$cut))+
  geom_abline(aes(x = carat, y = price), ols$coefficients)
p + stat_function(ols)
p + geom_boxplot(mapping = aes(cut, price))

# minor helpful things
labs()
geom_text()
theme()
coord_flip()
