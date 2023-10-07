# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/z611_CA_reparar_dataset.r")
source("~/dm2023b/src/workflow-inicial/z621_DR_corregir_drifting.r")
source("~/dm2023b/src/workflow-inicial/z631_FE_historia.r")
source("~/dm2023b/src/workflow-inicial/641_TS_training_strategy_prueba2.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/651_HT_lightgbm_prueba2.r")
source("~/dm2023b/src/workflow-inicial/661_ZZ_final_prueba2.r")
