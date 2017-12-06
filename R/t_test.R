#' Format T-Test
#'
#' Formats a t-test object to look nicer.
#'
#' @param fit a t-test object
#' @param a data frame
#' @param rounding the number of decimal place for the output
#' @param rounding the number of decimal places for the output
#'
#' @return a data.frame with useful t-test information
#'
#' @export

format_t = function(fit, rounding = 3){

  output = data.frame(
    "T" = fit$statistic,
    "DF" = fit$parameter,
    "P-Value" = fit$p.value,
    "Mean Difference" = fit$estimate[1] - fit$estimate[2],
    "Lower" = fit$conf.int[1],
    "Upper" = fit$conf.int[2],
    row.names = NULL
  )

  output[] = lapply(output, round, rounding)
  output
}

`%>%` = magrittr::`%>%`
