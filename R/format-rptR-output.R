#' @title Formatting your p value 
#' 
#' @description Convert rptR output to a data frame with column names
#' 
#' @param rptR_output The rptR model to be converted
#' 
#' @details This function takes the output of a rptR() call and converts it to 
#' a data frame with pretty column names for knitr::kable() displays
#' 
#' @return A data frame with column names 

rpt_to_df <- function(rptR_output) {
  rpt_df <- data.frame(
    "R" = rptR_output$R$id,
    "Std.Error" = rptR_output$se$se,
    "Lower.CL" = rptR_output$CI_emp$`2.5%`,
    "Upper.CL" = rptR_output$CI_emp$`97.5%`,
    "P.Value" = rptR_output$P$LRT_P
  ) 
}
