
library("dplyr")
library("httr")
library("purrr")

# analysis 1
data(waterborne, package = "finalproject") # once package is installed

waterborne_df <- bind_rows(lapply(waterborne, function(row_data) {
  data.frame(row_data) %>% 
    select(-c(`X.id`, `X.version`, `X.created_at`, `X.updated_at`))
}))

# some EDA
sort(unique(trimws(unlist(strsplit(waterborne_df$water_type, ";")))))

waterbourne_df_subset <- waterborne_df %>% 
  filter(grepl("Drinking water", water_exposure)) %>% 
  select(water_exposure, water_type, deaths, illnesses)

unique(waterbourne_df_subset$deaths)
hist(as.numeric(waterbourne_df_subset %>% pull(deaths)))

waterbourne_df_subset$water_type %>% table()

unique(waterbourne_df_subset$illnesses)

# analysis 2
# https://www.cdc.gov/nchs/state-stats/deaths/firearms.html
data(cdcfiremort, package = "finalproject")

