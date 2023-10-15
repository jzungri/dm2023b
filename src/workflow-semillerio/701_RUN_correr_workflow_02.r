# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/exp001/711_CA_reparar_dataset_01.r")
source("~/dm2023b/src/workflow-semillerio/exp001/721_DR_corregir_drifting_01.r")
source("~/dm2023b/src/workflow-semillerio/exp001/731_FE_historia_02.r")
source("~/dm2023b/src/workflow-semillerio/exp001/741_TS_training_strategy_02.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/exp001/751_HT_lightgbm_02.r")
source("~/dm2023b/src/workflow-semillerio/exp001/795_ZZ_final_semillerio_02.r")
