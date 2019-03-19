#' @import sparklyr
#' @export
hailr.test_hello <- function(sc) {
  sparklyr::invoke_static(sc, "hailr.test.Main", "hello")
}
