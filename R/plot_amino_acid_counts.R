#' Plot amino acid counts in a sequence using ggplot
#'
#' Given a single-letter code amino acid sequence, counts how often each
#' amino acid appears and returns a bar chart of the counts.
#'
#' @param sequence A string of amino acids in single-letter code, case-sensitive.
#'
#' @returns A ggplot object: a column chart with one bar per amino acid (x axis)
#' and its count in `sequence` (y axis)
#'
#' @import ggplot2
#' @importFrom stringr str_split boundary str_count
#'
#' @export
#'
#' @examples
#' plot_amino_acid_counts("MALWMRLLPLALLALLALWCPGPAAAFVN")
plot_amino_acid_counts <- function(sequence){
  characters <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(characters, function(amino_acid) stringr::str_count(string = sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Sequence"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = sequence, y = Counts, fill = sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
