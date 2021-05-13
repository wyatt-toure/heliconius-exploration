#' @title Formatting your p value 
#' 
#' @description Rounds a p value to 3 decimal places or converts it to "< .001"
#' 
#' @param p_value The p value to be converted
#' 
#' @details This function takes a p value as an input and
#' returns the p value either rounded to 3 decimal
#' places or converts it to "< .001" if it is
#' lower than .001
#' 
#' @return A numeric or a string

format_p_value <- function(p_value) {
  formatted_p <- ifelse(
    p_value < .001, ## Condition
    "< .001", ## if condition is true
    paste(round(p_value, 3)) ## if condition is false
  )
}
