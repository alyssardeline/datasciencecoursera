#matrix practice
x <- matrix(1:6,nrow=2,ncol=3)
x
m <- 1:10
m
##creates 1 row of 1-10
dim(m) <- c(2,5)
m
##changes to make 2 row 5 col matrix of 1-10
y <- 1:3
z <- 10:12
cbind(y,z) ##y and z are now both columns in matrix
rbind(y,z) ##y and z are now both rows in matrix
##shows difference between column and row binding

#factor practice
x <- factor(c("yes", "yes", "no", "yes", "no"))
x ##has an attribute called levels
table(x) ##shows how many of each level
x <- factor(c("yes", "yes", "no", "yes", "no"),
            levels=c("yes","no"))
x
##sets yes as base-level instead of alphabetical

#missing values practice
x <- c(1, 2, NA, 10, 3)
is.na(x) ##there is 1 true
is.nan(x) ##there is 0 true bc na is not nan
x <-c(1,2,NA, NaN, 3)
is.na(x) ##there are 2 trues, the nan + the na
is.nan(x) ##only 1 true, the nan

