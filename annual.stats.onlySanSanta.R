annual.stats.onlySanSanta <- function(x){
  b <- filter(x, str_detect(`Site Name`, "San\\s|Santa")) #extracting any 'San' or 'Santa' from the original dataset
  b %>%
    group_by(Year = str_sub(as.factor(date), start = 1, end = 4), `Site Name`, site) %>%
    summarize(o3.mean = mean(o3, na.rm = T), o3.median = median(o3, na.rm = T), o3.max = max(o3, na.rm = T), o3.min = min(o3, na.rm = T))
}