#' Obiekt z danymi dla funkcji oblicz_emisje(), ktora szacuje emisje
#'
#' Plik źródłowy z danymi:
#' 1.A.3.b.i-iv Road Transport Appendix 4 Emission Factors 2019.xlsx
#' został wstępnie przetworzony i zapisany do pliku "plikdane.rda" wraz z obiektem "input"
#'
#' @format Ramka danych zawiera:
#' \describe{
#'  \item{Category}{Kategoria pojazdu - Passenger Cars itd. - char}
#'  \item{Fuel}{Rodzaj paliwa - Petrol itd. - char}
#'  \item{Segment}{Segment pojazdow - Mini itd. - char}
#'  \item{Euro.Standard}{Norma dopuszczalnych emisji spalin - Euro 4 itd. - char}
#'  \item{Technology}{Technologia pracy silnika - GDI itd.- char}
#'  \item{Pollutant}{Rodzaj emitowanego zanieczyszczenia - NOx itd. - char}
#'  \item{Mode}{Tryb jazdy pojazdu - Urban Peak itd. - char}
#'  \item{Alpha}{parametr szacowania emisji - double}
#'  \item{Beta}{parametr szacowania emisji - double}
#'  \item{Gamma}{parametr szacowania emisji - double}
#'  \item{Delta}{parametr szacowania emisji - double}
#'  \item{Epsilon}{parametr szacowania emisji - double}
#'  \item{Zita}{parametr szacowania emisji - double}
#'  \item{Hta}{parametr szacowania emisji - double}
#'  \item{Reduction}{parametr szacowania emisji - double}
#'  \item{Bio}{parametr szacowania emisji - double}
#'  \item{Procent}{parametr szacowania emisji - double}
#' }
#'
#' @examples
#' \dontrun{
#'  plikdane
#'  }
"wskazniki"
