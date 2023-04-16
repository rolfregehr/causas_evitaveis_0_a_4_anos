# Cabeçalho ####
library(tidyverse)
options(dplyr.show_progress = F)
options(dplyr.summarise.inform = FALSE)
options(message=FALSE, warning=FALSE)
options(encoding = "UTF-8")
rm(list = ls())

# Cria DF com as causas evitáveis ####
causas_evitaveis <- tibble(cid_10 = character(),
                           evitabilidade = character())

# fonte: http://tabnet.datasus.gov.br/cgi/sim/Obitos_Evitaveis_0_a_4_anos.pdf

causas_evitaveis <- bind_rows(causas_evitaveis, 
                              tibble(cid_10 = c("A17", "A19", "A33", "A37", "A80",
                                                "B05", "B06", "B16", "B26", "G000",
                                                "P350", "P353"),
                                     evitabilidade = "Ações de imunização"), ## IMUNIZAÇÃO ####
                              tibble(cid_10 = c("A50", "B20", "B21", "B22", "B23", 
                                                "B24", "P022", "P023", "P027", "P028", 
                                                "P029", "P00", "P04", "P01", "P05", 
                                                "P07", "P220", "P26", "P52", "P550", 
                                                "P551", "P558", "P559", "P56", "P57", 
                                                "P77"),
                                     evitabilidade = "Adequada atenção à mulher na gestação"), ## GESTAÇÃO ####
                              tibble(cid_10 = c("P020", "P021", "P024", "P025", 
                                                "P026", "P03", "P08", "P10", "P11",
                                                "P12", "P13", "P14", "P15", "P20", 
                                                "P21", "P240", "P241", "P242", "P248", 
                                                "P249"),
                                     evitabilidade = "Adequada atenção à mulher no parto"), ## PARTO ####
                              tibble(cid_10 = c("P221", "P228", "P229", "P23", "P25",
                                                "P27", "P28", "P351", "P352", "P354",
                                                "P359", "P36", "P37", "P38", "P39",
                                                "P50", "P51", "P53", "P54", "P58",
                                                "P59", "P70", "P71", "P73", "P74",
                                                "P60", "P61", "P75", "P76", "P78",
                                                "P80", "P81", "P82", "P83", "P90",
                                                "P91", "P92", "P93", "P94", "P960",
                                                "P961", "P962", "P963", "P964", "P965",
                                                "P966", "P967", "P968"),
                                     evitabilidade = "Adequada atenção ao recém-nascido"))  ## PARTO ####
