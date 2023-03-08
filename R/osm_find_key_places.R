

osm_find_key_places <- function(key_word = "school hungary", zoom = 20){



key_word <- gsub(" ", "\\+", key_word)

B_DF <- data.frame()




url <- paste0("https://www.openstreetmap.org/geocoder/search_osm_nominatim?
        query=",key_word,"&
        zoom=",zoom
        #,"&
        # minlon=19.053034186363224&
        # minlat=47.50822042117898&
        # maxlon=19.054943919181824&
        # maxlat=47.50901941466531"
        )


url <- gsub("\\s+", "", url)

repeat{

html <- read_html(url)





# extract all the details from the 'a' element
details <- html %>% xml_nodes("li")
#
# test <- html %>% html_nodes(".btn.btn-primary")%>%rvest::html_attr("href")
# if (length(test) == 0) {
#   break
#
# }
i <- 1
for (i in 1:length(details)) {



  det <- details[[i]]%>% rvest::xml_nodes("a")

  if (length(det) == 0 |nrow(B_DF)> 650) {
    break
  }


  html_node <- det[[1]]
  # extract the attributes and values using html_attrs()
  attributes <- names(html_attrs(html_node))
  values <- unname(html_attrs(html_node))

  # create the data frame
  df <- data.frame(attribute = attributes, value = values)

  # transpose dataframe
  t_df <- (as.data.frame(t(df)))

  # set column names
  colnames(t_df) <- t_df[1, ]
  t_df <- t_df[-1, ]
  rownames(t_df) <- NULL

  B_DF <- bind_rows(B_DF, t_df)

}



more <- html %>% html_nodes(".btn.btn-primary")%>%
  rvest::html_attr("href")
if (is.na(more[1]) == T) {
  break
}

url <- paste0("https://www.openstreetmap.org/", more)


}



return(B_DF)

}
