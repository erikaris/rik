#' Package to show you the time now
#'
#' @param language
#'
#' @return
#' @export
#'
#' @examples
what_time <- function(language = "fr") {

  rlang::arg_match0(language, c("fr", "en", "id"))

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    fr = sprintf("%s! Il est maintenant %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time),
    id = sprintf("%s! Sekarang pukul %s!", exclamation, time)
  )
}
