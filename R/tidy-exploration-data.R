#' @title Summarising raw exploration data
#' 
#' @description Converts raw choice data to long data format
#' 
#' @param expl_data The raw choice data to be converted
#' 
#' @details This function takes a data frame of colour choices and converts it
#' to a long summarised data set that is ready for analysis 
#' 
#' @return A summarised data frame

summarise_exploration_data <- function(expl_data) {
  ## I put the conversion of the data to wide format
  ## as a separate variable assignment so I have access to it
  ## in the global environment with the '<<-' operator 
  expl_data_wide <<- expl_data %>%
    group_by(id, combo, cage) %>%
    count(choice) 
    
  expl_data_summarised <- expl_data_wide %>% 
    spread(choice, n, fill = NA, convert = FALSE) %>% 
    mutate(
      n.familiar.colour =
        case_when(
          combo == "purple-blue" ~ purple,
          combo == "yellow-blue" ~ yellow,
          combo == "yellow-lblue" ~ yellow,
          combo == "purple-orange" ~ purple,
          combo == "purple-pink" ~ purple,
          combo == "yellow-pink" ~ yellow,
          combo == "purple-orange" ~ purple,
          combo == "purple-pink" ~ purple,
          combo == "purple-red" ~ purple,
          combo == "purple-red" ~ purple,
          combo == "yellow-red" ~ yellow,
          combo == "yellow-blue" ~ yellow,
          combo == "yellow-orange" ~ yellow
        ) %>% replace_na(0)
    ) %>%
    mutate(
      n.novel.colour =
        case_when(
          combo == "purple-blue" ~ blue,
          combo == "yellow-blue" ~ blue,
          combo == "yellow-lblue" ~ lblue,
          combo == "purple-orange" ~ orange,
          combo == "purple-pink" ~ pink,
          combo == "yellow-pink" ~ pink,
          combo == "purple-orange" ~ orange,
          combo == "purple-pink" ~ pink,
          combo == "purple-red" ~ red,
          combo == "purple-red" ~ red,
          combo == "yellow-red" ~ red,
          combo == "yellow-blue" ~ blue,
          combo == "yellow-orange" ~ orange
        ) %>% replace_na(0)
    ) %>%
    select(id, combo, cage, n.familiar.colour, n.novel.colour)
}
