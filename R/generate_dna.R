#' Generate a random DNA sequence
#'
#' @param sequence_length Number of nucleotides in the DNA sequence.
#'
#' @return A character string containing a random DNA sequence.
#' @export
#'
#' @examples
#' generate_dna(10)
generate_dna <- function(sequence_length) {
  nucleotides <- sample(c("A", "T", "G", "C"),
                        size = sequence_length,
                        replace = TRUE)
  dna_sequence <- paste0(nucleotides, collapse = "")
  return(dna_sequence)
}
