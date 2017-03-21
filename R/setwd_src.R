
#   __________________ #< 8a150b244ac0dcd1502c5f036b13f039 ># __________________
#   Helpers                                                                 ####

##  .................. #< 75093c5a09d2af4beb84baaee3c1af49 ># ..................
##  Get active document path                                                ####

#' Grab active document path as string.
#' @export
active_path <- function() {
  return(sub("[^/]*$", "", rstudioapi::getActiveDocumentContext()$path))
}

#   __________________ #< c821a0b3b44d63bf2cc16957c3216e90 ># __________________
#   Functions                                                               ####

## .................. #< cfcc75dfd0ca00d00e83d254c7a8dcef ># ..................  setwd_source ####
#' Setting working directory to active file path.
#'
#' @export
#'
setwd_source <- function() {
  tryCatch({
    setwd(active_path())
    }, error = function(e){
      stop(simpleError(paste("Active ID: ", rstudioapi::getActiveDocumentContext()$id, sep ="")))
    }
    )
}

##  .................. #< b4f0b21e4b945a25fb2ff158b82b73ab ># ..................
##  Printing setwd with active file path.                                   ####
#' Inserting setwd with active document path.
#'
#' @export
print_setwd_source <- function() {
  rstudioapi::insertText(paste("setwd(\"", active_path(), "\")", sep=""))
}

