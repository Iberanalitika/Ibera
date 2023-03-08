finance_reconcile_sums <- function(amounts = c(10, 20, 30, 40, 50)){




  # Sample input data frame
  transactions <- data.frame( ids = c(1:length(amounts)),
                              amounts = amounts  )

  # Function to generate all possible sum combinations and their corresponding ids
  generate_sum_combinations <- function(transactions) {
    # Create an empty list to store the output
    output <- list()

    # Loop through all possible combinations of transactions
    for (i in 1:nrow(transactions)) {
      for (j in i:nrow(transactions)) {
        for (z in j:nrow(transactions)) {
          for (w in z:nrow(transactions)) {
            # Calculate the sum of the amounts for this combination
            sum_amount <- sum(transactions$amount[c(i:j,z:w)])

            # Add the sum and the corresponding ids to the output list
            output[[length(output) + 1]] <- c(sum_amount, paste(transactions$id[c(i:j,z:w)], collapse = "-"))
          }
        }
      }
    }

    # Convert the output list to a data frame and return it
    output_df <- data.frame(t(matrix(unlist(output), ncol = length(output))))
    colnames(output_df) <- c("sum", "ids")
    return(output_df)
  }

  # Call the function with the input data frame
  output <- generate_sum_combinations(transactions)

  return(output)

}
