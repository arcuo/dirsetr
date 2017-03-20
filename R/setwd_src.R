
## .................. #< cfcc75dfd0ca00d00e83d254c7a8dcef ># ..................  setwd_source ####

#' Setting working directory to active file path.
#'
#' @export
setwd_source <- function() {
  setwd(sub("[^/]*$", "", rstudioapi::getActiveDocumentContext()$path))
}
