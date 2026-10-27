#' Split a nucleotide sequence into codons
#'
#' @param sequence A character string containing a DNA or RNA sequence.
#' @param start Position of the first nucleotide to include. Defaults to 1.
#'
#' @return A character vector of codons. Any incomplete final codon is omitted.
#' @export
#'
#' @examples
#' split_codons("AUGCCCUAA")
#' split_codons("AAUGCCCUAA", start = 2)
split_codons <- function(sequence, start = 1) {
  sequence_length <- nchar(sequence)

  codons <- substring(
    sequence,
    first = seq(from = start, to = sequence_length - 3 + 1, by = 3),
    last = seq(from = 3 + start - 1, to = sequence_length, by = 3)
  )

  return(codons)
}
