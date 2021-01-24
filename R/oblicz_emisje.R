#' Funkcja do obliczanie emisji pochodzacej z transportu drogowego
#'
#' Funkcja oblicza emisje korzystajac z danych zawartych w obiekcie "wskazniki",
#' a tazke z obiektu "input".
#' W obiekcie "wskazniki" zapisane sa dane o emisji, ktore zostaly wczesniej
#' przygotowane i usystematyzowane.
#' W obiekcie "input" zapisane sa wygenerowane losowo dane o natezenia ruchu.
#'
#' @details Wzor wykorzystany do obliczenia emisji:
#' Emisja = Nat x ((Alpha  x Procent^2 + Beta x Procent + Gamma +
#' (Delta/Procent)) / (Epsilon x Procent^2 + Zita x Procent + Hta) x (1- Reduction))
#'
#' @param dane data.frame - obiekt wejsciowy
#' @param kategoria char - kategoria pojazdu
#' @param euro char - norma spalin EEA
#' @param mode char - tryb jazdy
#' @param substancja char - zarejestrowane substancje
#'
#' @export
#' @examples
#' # Obliczenie emisji dla domyslnych parametrow
#'   tmp <- oblicz_emisje()
#'
oblicz_emisje <- function(dane = input,
                       kategoria = "Passenger Cars",
                       euro = "Euro 5",
                       mode = "",
                       substancja = c("CO", "EC")) {

  out <- wskazniki %>%
    dplyr::filter(Category %in% kategoria) %>%
    dplyr::filter(Euro.Standard %in% euro) %>%
    dplyr::filter(Pollutant %in% substancja) %>%
    dplyr::filter(Mode %in% mode)

  out <- dplyr::inner_join(x = out, y = input, by = c("Segment","Fuel","Technology"))

  out <- out %>%
    dplyr::mutate(Emisja = Nat * ((Alpha * Procent^2 + Beta * Procent + Gamma + (Delta/Procent))/
                             (Epsilon * Procent^2 + Zita * Procent + Hta) * (1- Reduction))
    ) %>%
    dplyr::select(Category,  Fuel, Euro.Standard, Technology, Pollutant, Mode, Segment, Nat, Emisja)

  return(out)
}
