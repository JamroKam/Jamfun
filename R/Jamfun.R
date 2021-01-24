Jamfun <- function(a = 10, b = 20, d = 7) {
  out <- base::sqrt(a*b*d/2 +100)

  out <- stats::rnorm(n = base::round(out,0)) %>%
    base::as.data.frame()

  out <- out %>%
    dplyr::summarise(mean = base::mean(., na.rm = T))

  return(out)
}
