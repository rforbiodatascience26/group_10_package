#' Transcribe DNA into RNA
#'
#' @param dna_sequence A character string containing a DNA sequence.
#'
#' @return A character string containing the RNA sequence.
#' @export
#'
#' @examples
#' transcribe_dna("ATGCT")
transcribe_dna <- function(dna_sequence) {
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
