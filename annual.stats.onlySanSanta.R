annual.stats.onlySanSanta <- function(x){
  b <- filter(x, str_detect(`Site Name`, "Santa|San")) #extracting any 'San' or 'Santa' from the original dataset
  b %>%
    group_by(year(date)) %>% # Here you do not need to define it with a long previous line you had
    summarize(o3.mean = mean(o3, na.rm = T), o3.median = median(o3, na.rm = T), o3.max = max(o3, na.rm = T), o3.min = min(o3, na.rm = T))
}
