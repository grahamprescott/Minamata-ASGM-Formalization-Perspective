# Figure 1. Worldwide distribution of documented ASGM sectors and countries with available National Action Plan budgets (as of 2021-12-31) that we used to estimate the global costs of comprehensive formalization strategies. Legend: countries with documented ASGM sectors (yellow), countries with published NAP budgets (blue). 

library(rworldmap)

malDF <- data.frame(country = c("AGO",
                                "BDI",
                                "BEN",
                                "BFA",
                                "BOL",
                                "BRA",
                                "BWA",
                                "CAF",
                                "CIV",
                                "CHL",
                                "CHN",
                                "CMR",
                                "COD",
                                "COG",
                                "COL",
                                "CUB",
                                "DZA",
                                "ECU",
                                "ETH",
                                "GAB",
                                "GHA",
                                "GIN",
                                "GNB",
                                "GNQ",
                                "GUF",
                                "GUY",
                                "IDN",
                                "IND",
                                "KEN",
                                "KHM",
                                "LBR",
                                "LBY",
                                "LAO",
                                "MAR",
                                "MDG",
                                "MEX",
                                "MLI",
                                "MMR",
                                "MNG",
                                "MOZ",
                                "NAM",
                                "NER",
                                "NGA",
                                "NIC",
                                "PAK",
                                "PAN",
                                "PER",
                                "PHL",
                                "PNG",
                                "RWA",
                                "SDN",
                                "SEN",
                                "SLE",
                                "SOM",
                                "SUR",
                                "TCD",
                                "TGO",
                                "TZA",
                                "UGA",
                                "VEN",
                                "VNM",
                                "ZAF",
                                "ZMB",
                                "ZWE"),
                    ASGM= c("ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector and available NAP",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector",
                            "ASGM sector and available NAP"))

malMap <- joinCountryData2Map(malDF, joinCode = "ISO3",
                              nameJoinColumn = "country")

malMap <- joinCountryData2Map(malDF, joinCode = "ISO3",
                              nameJoinColumn = "country")

mapCountryData(malMap, nameColumnToPlot="ASGM", catMethod = "categorical",
               missingCountryCol = gray(.8), colourPalette = c("#d8b365", "#5ab4ac"),
               mapTitle = "")

# Figure 2. Breakdown of costs reported in the five-year budgets for National Action budgets of sixteen countries. 

library(tidyverse)

NAP_budgets <- read.csv("./NAP_budgets.csv")

NAP_budget_transformed <- NAP_budgets %>%
  mutate(Cost = Cost_USD/10^6) %>%
  mutate(Country = str_replace_all(Country, c("Democratic Republic of Congo" = "Dem. Rep. Congo",
                                              "Republic of Congo" = "Rep. Congo",
                                              "Central African Republic" = "Cent. Af. Rep.",
                                              "Laos" = "Lao PDR")))
ggplot(NAP_budget_transformed) +
  geom_col(aes(x = fct_rev(Country), y = Cost), color = "dark grey", fill = "dark grey") +
  coord_flip() +
  theme_bw(10) +
  labs(x = "", y = "Budgeted 5-yr Cost (million USD)") +
  facet_wrap(~Code)

#ggsave(filename = "Figure2.png", width = 180, height = 163, dpi = "print", units = "mm", device='png')

# Total cost per country

NAP_budgets %>%
  group_by(Country) %>%
  summarize(Total = sum(Cost_USD))

# Summary statistics for combined NAP budgets

NAP_budgets %>%
  group_by(Country) %>%
  summarize(Total = sum(Cost_USD)) %>%
  summary()
  
