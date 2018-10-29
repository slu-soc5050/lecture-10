#' Frequency Table Helper
#' 
#' @description This function creates \code{knitr::kable()} ready frequency table out.
#' 
#' @param .data A tbl
#' 
#' @return A tibble with frequency table data
#' 
tidyFreq <- function(.data){
  
  .data %>%
    summarise_all(funs(mean, sd, min, max)) %>%
    gather(key, value, everything()) %>% 
    separate(key, into = c("variable", "stat"), sep = "_") %>%
    spread(stat, value) %>%
    select(variable, mean, sd, min, max) %>%
    mutate(mean = round(mean, digits = 3)) %>%
    mutate(sd = round(sd, digits = 3)) %>%
    kable()
  
}
