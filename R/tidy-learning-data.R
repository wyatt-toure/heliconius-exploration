#' @title Tidying learning data 
#' 
#' @description Retrieves the XYZ
#' 
#' @param expl_data The learning data to be converted 
#' 
#' @details 
#' 
#' @return A tidyed learning data frame
#' 

tidy_learning_data <- function(learning_data) {
  ## Getting the proportional preference for the morning rewarding colour during
  ## the test trials during learning experiment and 
  ## the proportional correctness during all of training throughout the
  ## learning experiment
  summarised_learning_data <- learning_data %>% 
    mutate(
      morning.colour.pref =
        n.morning.colour.test / (n.morning.colour.test + n.afternoon.colour.test),
      training.correctness.prop = 
        n.correct.training / (n.correct.training + n.incorrect.training)
    )
  
  ## Adding shift in morning colour preference between test periods during
  ## learning experiment 
  test_trial_morn_pref_prop_shift <- summarised_learning_data %>% 
    group_by(id) %>%
    summarise(shift.in.morning.colour.preference = 
                abs(
                  last(morning.colour.pref) - first(morning.colour.pref))
              )
  
  ## Adding the absolute change in correctness between time sessions throughout
  ## all of training
  training_correctness_prop <- summarised_learning_data %>%
    group_by(id) %>% 
    summarise(training.stubborness.index = 
                abs(
                  last(training.correctness.prop) - first(training.correctness.prop))
              )
  
  ## Joining change in correctness during training to shift in preference during
  ## learning test
  tidyed_learning_data <- left_join(test_trial_morn_pref_prop_shift, 
                                    training_correctness_prop)
}
