data(cats, package = "MASS")
View(subset(cats, cats$Sex == "F"))
View(cats[cats$Sex == "F", 2])

st <- data.frame(state.x77)
# get number of states with murder rate over 4.5
sum(st$Murder > 4.5)
# get mean of each variable
apply(st, 2, mean)
colSums(st)

# Combine data sets
View(data.frame(cats, test))
rbind()
cbind()

# Merge
ua.sorted <- ua[order(ua$POP, decreasing = T), ]
al <- ua.sorted$AREALAND[1:nrow(fha)]
View(cbind(fha, al))
View(data.frame(fha, al))

fha.new <- merge(fha, ua, by.x = "Population", by.y = "POP")
fha.new <- fha.new[, -6]
View(merge(fha, ua, by.x = "Population", by.y = "POP", all.y = T))

# split
st <- data.frame(st, region = state.region)
st.by.reg <- split(st, f = st$region)

# PLYR
library(plyr)
# a*ply
a <- array(1:27, dim = c(3, 3, 3))
rownames(a) <- c("R1", "R2", "R3")
colnames(a) <- c("C1", "C2", "C3")
dimnames(a)[[3]] <- c("A", "B", "C")

aaply(a, 1, sum)
adply(a, 1, sum)
alply(a, 1, sum)

adply(a, 2:3, sum)

# l*ply

# d*ply: tapply
# get top 3 murder rate for each region
top3 <- function(df) {
  df1 <- df[order(df$Murder), ]
  return(rownames(df1)[1:3])
}

st$mo <- st$Murder > 4.5
ddply(st, .(region, mo), top3)

# dplyr
library(dplyr)
select()
filter()
mutate()
arrange()








