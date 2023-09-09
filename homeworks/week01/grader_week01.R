###########################################
### THIS FILE GRADES THE HOMEWORK of WEEK 1
### Bence Szabó
### 2023.09.09.
###########################################

library(testthat)

### function to clear strings
clear_commands = function(s){
  if(is.character(s)){
    s_clear = stringr::str_remove_all(s, " ")
    s_clear = stringr::str_replace_all(s_clear, "<-", "=")
  }
  else{}
  return(s_clear)
}

#######################
## SOLUTIONS
#######################

# first test
test_that("Q01", {
  
  expect_true(length(ls()) == 0) 
  
})

# second test
test_that("Q02", {

  expect_true(str_var == 'This is my first assignment in R!')
  
})

# third test
test_that("Q03", {
  
  expect_true(clear_commands(check_if_character) == 
                clear_commands("typeof(str_var) == 'character'")
              )
  
}
)

test_that("Q04", {
  expect_equal(v, c(3, 363, 777, 2021, -987, Inf))
})

test_that("Q05", {
  expect_equal(v_10, c(3, 363, 777, 2021, -987, Inf) * 10)
})

test_that("Q06", {
  expect_equal(mL, list(str_var, c(3, 363, 777, 2021, -987, Inf)))
})

test_that("Q07", {
  expect_true(clear_commands(get_inf) == clear_commands("x <- mL[[2]][mL[[2]] == Inf]")
              )
})

test_that("Q08", {
  expect_true(clear_commands(check_if_inf) == clear_commands("is_inf <- (x == Inf)")
              )
})




