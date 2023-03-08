code_iferror <- function(input, error_output = NA) {
  result <- tryCatch({
    # Code that may raise an error
    # ...

    # Return a value on success
    return(input)
  }, error = function(e) {
    # Custom error message or value
    return(error_output)
  })

  return(result)
}
