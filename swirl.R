#########################################################################################################
#
# 1. Basic Building Blocks
#
#########################################################################################################
5 + 7
x <- 5 + 7
x
y <- x - 3
y

z <- c(1.1, 9, 3.14)
?c
z
c(z, 555, z)
z * 2 + 100

my_sqrt <- sqrt(z - 1)
my_sqrt

my_div <- z / my_sqrt
my_div

c(1, 2, 3, 4) + c(0, 10)
c(1, 2, 3, 4) + c(0, 10, 100)


#########################################################################################################
#
# 2. Workspace and Files
#
#########################################################################################################
getwd()
ls()

x <- 9
ls()

list.files()
dir()
?list.files

args(list.files)

old.dir <- getwd()
dir.create('testdir')
setwd('testdir')
file.create('mytest.R')
list.files()
file.exists('mytest.R')
file.info('mytest.R')
file.rename('mytest.R', 'mytest2.R')
file.copy('mytest2.R', 'mytest3.R')
file.path('mytest3.R')
file.path('folder1', 'folder2')
?dir.create
dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
setwd(old.dir)


#########################################################################################################
#
# 3. Sequence of Numbers
#
#########################################################################################################
1:20
pi:10
15:1
?`:`

seq(1, 20)
seq(0, 10, by = 0.5)
my_seq <- seq(5, 10, length = 30)
length(my_seq)

1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)

rep(0, times = 40)
rep(c(0, 1, 2), times = 10)
rep(c(0, 1, 2), each = 10)


#########################################################################################################
#
# 4. Vectors
#
#########################################################################################################
num_vect <- c(0.5, 55, -10, 6)
tf <- num_vect < 1
tf
num_vect >= 6

my_char <- c('My', 'name', 'is')
my_char
paste(my_char, collapse = ' ')

my_name <- c(my_char, 'Adi')
my_name
paste(my_name, collapse = ' ')

paste('Hello', 'world!', sep = ' ')
paste(1:3, c('X', 'Y', 'Z'), sep = '')
paste(LETTERS, 1:4, sep = '-')


#########################################################################################################
#
# 5. Missing Values
#
#########################################################################################################
x <- c(44, NA, 5, NA)
x * 3

y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y, z), 100)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_data
0 / 0
Inf - Inf


#########################################################################################################
#
# 6. Subsetting Vectors
#
#########################################################################################################
x
x[1:10]

x[is.na(x)]
y <- x[!is.na(x)]
y

y[y > 0]
x[x > 0]

x[!is.na(x) & x > 0]

x[c(3, 5, 7)]
x[0]
x[3000]
x[c(-2, -10)]
x[-c(2, 10)]

vect <- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)

vect2 <- c(11, 2, NA)
names(vect2) <- c('foo', 'bar', 'norf')
identical(vect, vect2)

vect['bar']
vect[c('foo', 'bar')]


#########################################################################################################
#
# 7. Matrices and Data Frames
#
#########################################################################################################
my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4, 5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(1:20, 4, 5)
identical(my_matrix, my_matrix2)

patients <- c('Bill', 'Gina', 'Kelly', 'Sean')
cbind(patients, my_matrix)

my_data <- data.frame(patients, my_matrix)
my_data
class(my_data)

cnames <- c('patient', 'age', 'weight', 'bp', 'rating', 'test')
colnames(my_data) <- cnames
my_data


#########################################################################################################
#
# 8. Logic
#
#########################################################################################################
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7
6 < 7
10 <= 10
5 != 7
!(5 == 7)

FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)

5 > 8 || 6 != 8 && 4 > 3.9

isTRUE(6 > 4)
identical('twins', 'twins')
xor(5 == 6, !FALSE)

ints <- sample(10)
ints
ints > 5
which(ints > 7)
any(ints < 0)
all(ints > 0)


#########################################################################################################
#
# 9. Functions
#
#########################################################################################################
Sys.Date()
mean(c(2, 4, 5))

boring_function <- function(x){
  x
}
boring_function('My first function!')
boring_function

my_mean <- function(my_vector) {
  sum(my_vector) / length(my_vector)
}
my_mean(c(4, 5, 10))

remainder <- function(num, divisor = 2) {
  num %% divisor
}
remainder(5)
remainder(11, 5)
remainder(divisor = 11, num = 5)
remainder(4, div = 2)
args(remainder)

evaluate <- function(func, dat){
  func(dat)
}
evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
evaluate(function(x){x + 1}, 6)
evaluate(function(x){x[1]}, c(8, 4, 0))
evaluate(function(x){x[length(x)]}, c(8, 4, 0))

?paste
paste('Programming', 'is', 'fun!')

telegram <- function(...){
  paste('START', ..., 'STOP')
}
telegram('Good', 'morning')

mad_libs <- function(...){
  args <- list(...)
  place <- args[['place']]
  adjective <- args[['adjective']]
  noun <- args[['noun']]
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
mad_libs('a', 'b', 'c')

'%p%' <- function(...){
  paste(...)
}
'I' %p% 'love' %p% 'R!'


#########################################################################################################
#
# 10. lapply and sapply
#
#########################################################################################################
head(flags)
dim(flags)
class(flags)

cls_list <- lapply(flags, class)
cls_list
class(cls_list)
as.character(cls_list)

cls_vect <- sapply(flags, class)
class(cls_vect)

sum(flags$orange)

flag_colors <- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
sapply(flag_colors, mean)

flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)

unique(c(3, 4, 5, 5, 5, 6, 6))

unique_vals <- lapply(flags, unique)
unique_vals
sapply(unique_vals, length)

sapply(flags, unique)

lapply(unique_vals, function(elem) elem[2])


#########################################################################################################
#
# 11. vapply and tapply
#
#########################################################################################################
sapply(flags, unique)
vapply(flags, unique, numeric(1))

sapply(flags, class)
vapply(flags, class, character(1))

?tapply
table(flags$landmass)
table(flags$animate)
tapply(flags$animate, flags$landmass, mean)
tapply(flags$population, flags$red, summary)
tapply(flags$population, flags$landmass, summary)
# For ... in each ..., do ...


#########################################################################################################
#
# 12. Looking at Data
#
#########################################################################################################
ls()
class(plants)
dim(plants)
nrow(plants)
ncol(plants)
object.size(plants)
names(plants)
head(plants)
head(plants, 10)
tail(plants, 15)
summary(plants)
table(plants$Active_Growth_Period)
str(plants)


#########################################################################################################
#
# 13. Simulation
#
#########################################################################################################
?sample
sample(1:6, 4, replace = TRUE)
sample(1:20, 10)

LETTERS
sample(LETTERS)

flips <- sample(c(0, 1), 100, replace = TRUE, prob = c(0.3, 0.7))
flips
sum(flips)

?rbinom
rbinom(1, size = 100, prob = 0.7)
flips2 <- rbinom(n = 100, size = 1, prob = 0.7)
flips2
sum(flips2)

?rnorm
rnorm(10)
rnorm(10, mean = 100, sd = 25)

rpois(5, 10)
my_pois <- replicate(100, rpois(5, 10))
my_pois
cm <- colMeans(my_pois)
hist(cm)


#########################################################################################################
#
# 14. Dates and Times
#
#########################################################################################################
d1 <- Sys.Date()
class(d1)
unclass(d1)
d1

d2 <- as.Date('1969-01-01')
unclass(d2)

t1 <- Sys.time()
t1
class(t1)
unclass(t1)

t2 <- as.POSIXlt(Sys.time())
class(t2)
t2
unclass(t2)
str(unclass(t2))
t2$min

weekdays(d1)
months(t1)
quarters(t2)

t3 <- 'October 17, 1986 08:24'
t4 <- strptime(t3, '%B %d, %Y %H:%M')
t4
class(t4)

Sys.time() > t1
Sys.time() - t1
difftime(Sys.time(), t1, units = 'days')
