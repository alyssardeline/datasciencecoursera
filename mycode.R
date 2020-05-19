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

#names practice
x <- 1:3
names(x) ##null because I didn't define names yet
names(x) <- c("time", "temp", "replicate")
x
names(x) ##now names describe what data is
m <- matrix(1:4,nrow=2,ncol=2)
dimnames(m) <- list(c("a","b"), c("c","d"))
m ##now rows and columns have names

#Reading in Datasets
help(read.table) ##this is key
## use colClasses to set class for data and read in faster
## can read in first 100 rows or so then analyze
## use classes <- sapply(table, class) to see what classes are there
## calculate data as rows x columns x 8 bytes/numeric / 2^20 b/mb
## will need about 2x as much memory to read in as table contains
##dget is for single R object, dump is for multiple objects

#Subsetting
## [ returns obj of same class as original e.g., vector, list
## [[ extracts single element of list or dataframe
## $ extracts by name, similar to [[
x <- c("a","b","c", "d", "d", "a")
x[1]
x[2]
x[1:4]
x[x>"a"]
## these all return character vectors
u <- x > "a"
u ## makes logical vector
x[u] ## subset using logical index
x<-list(foo=1:4, bar=0.6)
x[1] ##returns a list
x[[1]] ##returns just the sequence
x$bar ##returns element associated with the name bar
x[1:2] ##can get 2 element list because using single bracket
x <- matrix(1:6, nrow=2, ncol=3)
x
x[1,2] ##gives vector with number 3 (from 1st row 2nd col)
x[1,2,drop=FALSE] ## gives 1x1 matrix instead of just element
## $ operator works with partial matching e.g., aar instead of aardvark

#Removing Missing Values
x <- c(1,2,NA,4,NA,5)
bad <- is.na(x)
bad ##logic vector of what is missing
x[!bad] ##gives only existing elements
x <- c(1,2,NA,4,NA,5)
y <- c("a","b",NA,"d",NA,"f")
good <- complete.cases(x,y) ##cases where both x and y exist
good
x[good]
y[good]










