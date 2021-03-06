spark_dependencies <- function(spark_version, scala_version, ...) {
  sparklyr::spark_dependency(
    jars = c(
      system.file(
        sprintf("java/hailr.test-%s-%s.jar", spark_version, scala_version),
        package = "hailr.test"
      ),
      system.file(
        sprintf("java/hail-all-spark.jar"),
        package = "hailr.test"
      )
    ),
    packages = c(
    )
  )
}

#' @import sparklyr
.onLoad <- function(libname, pkgname) {
  sparklyr::register_extension(pkgname)
}
