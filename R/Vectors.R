# Neighbours with greatest difference
set.seed(42)
x <- sample(1:100, 50, replace=FALSE)
k <- which.max(abs(x[-1] - x[-length(x)]))
x[c(k, k+1)]

# Multiple min/max
set.seed(42)
x <- sample(1:100, 50, replace=TRUE)
min(x)
which.min(x)
which(x == min(x))

# Packing into a function
maxdiff <- function (x) {
  y <- x[-1] - x[-length(x)]
  k <- which(y == max(y))
  
  print('First neigbor(s):')
  print(x[k])
  print('Second neigbor(s):')
  print(x[k+1])
  print('Maximum absolute difference is:')
  print(max(y))
}

maxdiff(x)

# Monotone function
is_monotone <- function(x) {
  y <- x[-1] - x[-length(x)]
  all(y >= 0) | all(y <= 0)
}

#x = c(0, 0, 3, 4, 4, 8)
x = c(3:0, 1)

is_monotone(x)

# Combinations without and with repetitions
combin_count <- function (n, m, with_rep = FALSE) {
  if (with_rep) {
    return(prod(c((m+1):(m+n-1))) / prod(c(1:(n-1))))
  } else {
    return(prod(c((m+1):n)) / prod(c(1:(n-m))))
  }
}

combin_count(6, 3, T)