#1. Matrix Addition & Subtraction
# Define matrices
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

# Addition
A_plus_B <- A + B
A_plus_B

# Subtraction
A_minus_B <- A - B
A_minus_B

#2. Build 4x4 diagonal matrix
D <- diag(c(4, 1, 2, 3))
D

#3. Construct a Custom 5×5 Matrix
first_col <- c(3, 2, 2, 2, 2)
diag_block <- diag(3, 4)

#Bind them together
M <- cbind(first_col, rbind(rep(1, 4), diag_block))
M
