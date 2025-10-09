# load mtcars data 
data("mtcars")

# view data
head(mtcars)
str(mtcars)

# test generic functions
print(mtcars)
summary(mtcars)

# s3 object
s3_car <- list(
  model = "Mazda RX4",
  mpg   = mtcars["Mazda RX4", "mpg"],
  cyl   = mtcars["Mazda RX4", "cyl"],
  hp    = mtcars["Mazda RX4", "hp"]
)
class(s3_car) <- "car_s3"
#custom print
print.car_s3 <- function(x, ...) {
  cat(sprintf(
    "S3 Car: %s | MPG: %.1f | Cylinders: %d | Horsepower: %d\n",
    x$model, x$mpg, x$cyl, x$hp
  ))
}
print(s3_car)

# s4 object
setClass("car_s4",
         slots = c(
           model = "character",
           mpg   = "numeric",
           cyl   = "numeric",
           hp    = "numeric"
         ))
s4_car <- new("car_s4",
              model = "Mazda RX4",
              mpg   = mtcars["Mazda RX4", "mpg"],
              cyl   = mtcars["Mazda RX4", "cyl"],
              hp    = mtcars["Mazda RX4", "hp"])

# custom method
setMethod("show", "car_s4",
          function(object) {
            cat(sprintf("S4 Car: %s | MPG: %.1f | Cylinders: %d | Horsepower: %d\n",
                        object@model, object@mpg, object@cyl, object@hp))
          })
s4_car


