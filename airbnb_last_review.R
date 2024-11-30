library(dplyr)

airbnb_last_review <- read_tsv("C:/Users/Damir/Documents/airbnb/airbnb_last_review.tsv", show_col_types = FALSE) # nolint
last_reviewed <- airbnb_last_review %>%  # nolint
mutate(last_review = parse_date_time(last_review, order = "mdy")) %>% # nolint
slice_max(last_review, n = 1, with_ties = FALSE) %>%
select(last_review)
print(last_reviewed)


first_reviewed <- airbnb_last_review %>% # nolint
mutate(last_review = parse_date_time(last_review, order = "mdy")) %>% # nolint
slice_min(last_review, n = 1, with_ties = FALSE) %>%
select(last_review)
print(first_reviewed)