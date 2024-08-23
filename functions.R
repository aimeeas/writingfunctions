## Creating a function to add 2 numbers

add2 <- function(x, y) {
  x + y
}

## Example

add2 (3, 5)

## Extract all the numbers above 10 from a vector

above10 <- function(x) {
  use <- x > 10 ## It will return a logical vector
  x[use] ## Subseting the vector 'x' with the vector 'use'
}

## Extract all the numbers above an arbitrary number

above <- function(x, n) { ## We can also establish a default number to 'n' by doing e.g 'n = 10'
  use <- x > n
  x[use]
}

## Example

x <- 1:20 

above(x, 12)

## Calcute the mean of each column from a dataframe

columnmean <- function(y) {
  nc <- ncol(y) ## To discover the number of columns
  means <- numeric(nc) ## A vector that will store de means of each column, the length of this vector needs to be equal to the number of columns
  for(i in 1:nc) { ## Creates a integer vector from 1 to the number of columns (the function 'for' executes a loop a fixed number of times)
    means[i] <- mean(y[, i])
  }
  means
}
        ## In this example first it was fund the number of columns from a dataframe/matrix
        ## by calling 'ncol()'. After, with that value stored as 'nc', it was created a numeric
        ## vector ('means') contening the same number of entrances as 'nc', wich at the beginning will have all
        ## the elements as 0. Then, by executing a 'for loop' the mean of wich column it will be calculated.
        ## The number of that the 'for loop' will run is equal to the number of columns (nc).
        ## The values of the the vector 'means' will be now established by calculating the mean of each column in the database.
        ## The index 'i' in the 'for loop' established as '1:nc' needs to be part of the subsetting of the
        ## value 'means', so it saves separately the mean of each column, cause if not it will return only the last value established for 'i'.
        ## E.g, if 'i' has 6 values and the 'means' is not subsetted with [i], when I print 'means', only one value will be showed, which will be the last value found in the 'for loop's calcule. 

columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y) 
  means <- numeric(nc) 
  for(i in 1:nc) { 
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

columnmean(airquality) ## Example
