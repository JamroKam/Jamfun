#' Jamfun: pakiet służący do obliczania i wizualizacji emisji według EEA
#'
#' Pakiet powstal w ramach przedmiotu realizowanego na studiach
#' i jest pakietem stworzynym przez studenta. Opiekunem przedmiotu
#' oraz osoba nadzorujaca prace nad pakietem jest doktor Matusz Rzeszutek.
#' Zadaniem pakietu jest obliczenie emisji zanieczyszczen, ktore zostaly
#' wyemitowane do srodowiska w ramach emisji powstalych podczas
#' funkcjonowania komunikacji (samochodow, pojazdow) we wskazanych
#' kategoriach pojazdow. W ramach pakietu mozna dane rowniez zwizualizowac.
#'
#' Pakiet zawiera dwie funkcje:
#' \code{oblicz_emisje()} obliczanie emisji na podstawie zadanych parametrow
#'                    i dostarczonych danych (calculation of emissions)
#' \code{wizualizuj_emisje()} wizualizacja danych (date visualisation)
#'
#' @docType package
#' @name Jamfun
#' @import magrittr
#' @import dplyr
#' @import qpdf
NULL

utils::globalVariables(c("input", "wskazniki"))
