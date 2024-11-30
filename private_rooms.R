airbnb_room_type <- lapply(excel_sheets("~/airbnb/airbnb_room_type.xlsx"), read_excel, path = "~/airbnb/airbnb_room_type.xlsx") # nolint

airbnb_room_type_df <- as.data.frame(airbnb_room_type)

b <- str_count(airbnb_room_type_df$room_type, pattern = "Private")
a <- str_count(airbnb_room_type_df$room_type, pattern = "private")
nb_private_rooms <- sum(a + b)
#nb_private_rooms