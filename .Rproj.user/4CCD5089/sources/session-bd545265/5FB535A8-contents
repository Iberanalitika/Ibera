
geo_map_string_substitute <- function(words = c("D<dc>SSELDORF", "LI<c8>GE", "Z<dc>RICH"), map = data.frame(
  from = c("<c7>", "<e7>", "<c8>", "<e8>", "<c9>", "<e9>", "<ca>", "<ea>", "<cb>", "<eb>", "<ce>", "<ee>", "<cf>", "<ef>", "<d4>", "<f4>", "<d9>", "<f9>", "<db>", "<fb>", "\xc5"),
  to = c("Ç", "ç", "È", "è", "É", "é", "Ê", "ê", "Ë", "ë", "Î", "î", "Ï", "ï", "Ô", "ô", "Ù", "ù", "Û", "û", "A")
)) {

# Define a function to perform the replacements
replace_words <- function(text, map) {
  # Iterate over the rows of the map
  for (i in seq_len(nrow(map))) {
    # Replace each occurrence of the "from" text with the "to" text
    text <- gsub(map$from[i], map$to[i], text, fixed = TRUE)
  }
  # Return the modified text
  text
}

# Apply the function to each word in the vector
modified_words <- sapply(words, replace_words, map = map)

# Print the results
a <- modified_words
return(a)

}


