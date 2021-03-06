#' @export
compile_jars<- function(){
  spark_2.2 <- spark_compilation_spec(
    spark_version = "2.2.0",
    scalac_path = sparklyr::find_scalac("2.11"),
    jar_name = sprintf("hailr.test-2.2-2.11.jar"),
    jar_path = NULL,
    scala_filter = NULL
  ) 
  
  sparklyr::compile_package_jars(spec = spark_2.2)
  
  sparklyr::compile_package_jars()
}