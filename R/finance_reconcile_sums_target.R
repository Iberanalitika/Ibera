
finance_reconcile_sums_target <- function(amounts = c(10,20,30,40), target_sum = 50){

  library(ibeRa)
  library(dplyr)

  df <- ibeRa::finance_reconcile_sums(amounts)
  df <- df%>%
          dplyr::filter(sum == target_sum)


  return(df)

}


