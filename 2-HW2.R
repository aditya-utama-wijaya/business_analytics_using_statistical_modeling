# Three normally distributed data sets
d1 <- rnorm(n = 500, mean = 15, sd = 5)
d2 <- rnorm(n = 200, mean = 30, sd = 5)
d3 <- rnorm(n = 100, mean = 45, sd = 5)

# We can combine them into a single dataset
d123 <- c(d1, d2, d3)

# We can plot the density function of abc
plot(density(d123), col = "blue", lwd = 2, main = "Distribution 1")

# Add vertical lines showing mean and median
abline(v = mean(d123))
abline(v = median(d123), lty = "dashed")

(quantile(d123)[2:4] - mean(d123)) / sd(d123)


# Three normally distributed data sets
d1 <- rnorm(n = 500, mean = 45, sd = 5)
d2 <- rnorm(n = 200, mean = 30, sd = 5)
d3 <- rnorm(n = 100, mean = 15, sd = 5)

# Combine them into a single data set
d123 <- c(d1, d2, d3)

# Plot the density function
plot(density(d123), col = 'blue', lwd = 2, bty = 'l', main = 'Distribution 2')

# Add vertical lines showing mean and median
abline(v = mean(d123))
abline(v = median(d123), lty = 2)
legend(-5, 0.05, c('Mean', 'Median'), lty = c(1, 2), bty = 'n')


d4 <- rnorm(n = 800, mean = 30, sd = 5)
plot(density(d4), col = 'blue', lwd = 2, bty = 'l', main = 'Distribution 3')
abline(v = mean(d4))
abline(v = median(d4), lty = 2, lwd = 2, col = 'orange')
legend(10, 0.08, c('Mean', 'Median'), lty = c(1, 2), lwd = c(1, 2),
       col = c('black', 'orange'), bty = 'n')


rdata <- rnorm(n = 2000, mean = 0, sd = 1)
plot(density(rdata), col = 'blue', lwd = 2, bty = 'l', main = 'rdata')
abline(v = mean(rdata))
for (i in -3:3){
  if(i == 0) next
  abline(v = i * sd(rdata), lty = 2, lwd = 2)
}

quantile(rdata)[2:4]
(quantile(rdata)[2:4] - mean(rdata)) / sd(rdata)

rdata2 <- rnorm(n = 2000, mean = 35, sd = 3.5)
plot(density(rdata2), col = 'blue', lwd = 2, bty = 'l', main = 'rdata2')
(quantile(rdata2)[2:4] - mean(rdata2)) / sd(rdata2)


rand_data <- rnorm(800, mean = 20, sd = 5)
plot(density(rand_data), col = 'blue', lwd = 2, bty = 'l', main = 'I')
k_Sturges <- nclass.Sturges(rand_data)
k_Sturges
h_Sturges <- (max(rand_data) - min(rand_data)) / k_Sturges
h_Sturges
hist_Sturges <- hist(rand_data, breaks = 'sturges')
hist_Sturges

k_scott <- nclass.scott(rand_data)
k_scott
h_scott <- (max(rand_data) - min(rand_data)) / k_scott
h_scott
hist_scott <- hist(rand_data, breaks = 'scott')
hist_scott

k_FD <- nclass.FD(rand_data)
k_FD
h_FD <- (max(rand_data) - min(rand_data)) / k_FD
h_FD
hist_FD <- hist(rand_data, breaks = 'fd')
hist_FD

out_data <- c(rand_data, runif(10, min = 40, max = 60))
plot(density(out_data), col = 'blue', lwd = 2, bty = 'l', main = 'I')

k_Sturges <- nclass.Sturges(out_data)
k_Sturges
h_Sturges <- (max(out_data) - min(out_data)) / k_Sturges
h_Sturges

k_scott <- nclass.scott(out_data)
k_scott
h_scott <- (max(out_data) - min(out_data)) / k_scott
h_scott

k_FD <- nclass.FD(out_data)
k_FD
h_FD <- (max(out_data) - min(out_data)) / k_FD
h_FD
