#' Funkcja do Wizualizacji danych dostarczonych z pakietem
#'
#' @param df data.frame - ramka danych
#' @param kat1 char - np. kategoria pojazdu
#' @param kat2 char - np. subkategoria pojazdu
#' @param kategoryczna char - zmiena kategoryczna
#' @param numeryczna char - parametr szacowania emisji
#' @export
#'
#' @examples
#' # Wygenerowanie wykresu dla domyslnych danych
#' wizualizuj_emisje()
#'
wizualizuj_emisje <- function(df = wskazniki,
                kat1 = Category,
                kat2 = "Passenger Cars",
                kategoryczna = Segment,
                numeryczna = Gamma) {

  kat1 <- rlang::enquo(kat1)
  kategoryczna <- rlang::enquo(kategoryczna)
  numeryczna   <- rlang::enquo(numeryczna)

  if (!is.null(kat2)) {
    df <- df %>%
      dplyr::filter(!!kat1 %in% kat2)
  }


    ggplot2::ggplot(df, ggplot2::aes(x = !!kategoryczna,
                                     y = !!numeryczna,
                                     fill = !!kategoryczna)) +
    ggplot2::geom_boxplot(outlier.shape = NA,
                          col="red")+
    ggplot2::theme_minimal() -> p

  wykres <- p + ggplot2::labs(title = "Zalezosc wartosci parametru emisji
                                      od wybranej kategorii",
                              subtitle = "Funkcja wizualizacji pakietu",
                              x = "Wybrana kategoria",
                              y = "Wartosc wskazanego paramteru",
                              caption = "Opracowano na podstawie danych z EEA",
                              color = "Category") +
                ggplot2::ylim(0, 40)

  return(wykres)
}
