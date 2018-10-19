2+2
2*pi
x<-2
X<-4
print(c(x,X))
char<-'Hello'
',./,/.,/.'

class(x)
class(char)#class of the character

#Vector
1:5
rep(5,3)
c('Hi','Hello')
c('Hi',1)
c(2,TRUE)
c(TRUE,'Hi')
this_vec <- c(2,4,8,16)
length(this_vec)
this_vec[2]
this_vec[2:4]
this_vec[c(2,3,4)]
this_vec[c(FALSE,TRUE,TRUE,TRUE)]
this_vec[this_vec>=4]
this_vec[c(-1,-2)]
this_vec[2] <- -4
this_vec[7] <- 128
this_vec <-c(1,0,1)

#Matric
this_mat <- matrix(c(1,2,3,7,8,9,4,5,6), nrow = 3, ncol = 3)
dim(this_mat)
this_mat[1, 2]
log(this_mat)
this_mat + this_vec
this_vec %*% this_mat

is.vector(as.vector(this_mat))
as.matrix()
as.character(1)
is.vector()
is.character(TRUE)
is.character(as.character(1))

#== #euqal
#!#not
#& #and
#| #or
2==3
2!=3
(2==3) & (3==4)
(2==3) | (3==3)

#Loop
#while loop
while(x<=5){
  x <- x+1
  print(x)
}
#for loop
for(i in 1:3){
  print(this_vec[i])
}

for(i in 1:3){
  for(j in 1:3){
    if(i==j){
      print(this_mat[j,i])
    }
  }
}


#if else
x <- 3
base <- 2
if(x>base){
  a <- 'x is larger than base'
}else{
  a <- 'x is less or equal to base'
}
print(a)

ifelse(x>base, 'x is larger than base', 'x is less or equal to base')

# check each value in this_vec
# if it is 1, print "this is one', else 'not one'
for(i in 1:3){
  if(this_vec[i]==1){
    print("this is one")
  }else{
    print("not one")
  }
}

for(ele in this_vec){
  if(ele==1){
    print("this is one")
  }else{
    print("not one")
  }
}


# loop through the matrix
# (let say you do not know the exact row&col number of it)
# print the element one by one through column first
my_mat <- matrix(c(1,5,23,7,4,5,3,9), nrow = 4, ncol = 2)

for(i in 1:dim(my_mat)[2]){
  for(j in 1:dim(my_mat)[1]){
    print(my_mat[j,i])
  }
}

nrow(my_mat)
ncol(my_mat)



