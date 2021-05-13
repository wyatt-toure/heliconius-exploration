#' @title Rename tidy lme4 model columns
#' 
#' @description Renames term, estimate, std.error, 
#' statistic, and p.value columns of an lme4 model which has been 
#' tidyed using the tidy() function
#' 
#' @param model 
#' 
#' @return A renamed tidy model 

rename_tidy_lme4_cols <- function(model) {
  renamed_lme4_model <- dplyr::rename(model,
    "Factor" = term,
    "Estimate" = estimate,
    "Std. Error" = std.error,
    "T statistic" = statistic,
    "P value" = p.value
  )
}
