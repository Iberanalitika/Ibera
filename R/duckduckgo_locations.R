
duckduckgo_locations <- function(text = "FREE UNIVERSITY BRUSSELS") {

text <- gsub(pattern = " ", "%20",text)

require(httr)

cookies = c(
  `ax` = "v367-4",
  `ay` = "b"
)

headers = c(
  `authority` = "duckduckgo.com",
  `accept` = "*/*",
  `accept-language` = "es-ES,es;q=0.9,en;q=0.8",
  `authorization` = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJtYXBzYXBpIiwidGlkIjoiSEtFOTczVkxVVyIsImFwcGlkIjoiSEtFOTczVkxVVy5tYXBzLmR1Y2tkdWNrZ28uY29tIiwiaXRpIjpmYWxzZSwiaXJ0IjpmYWxzZSwiaWF0IjoxNjc3NTk4OTQ5LCJleHAiOjE2Nzc2MDA3NDksIm9yaWdpbiI6Imh0dHBzOi8vZHVja2R1Y2tnby5jb20ifQ.wu5UIyk57PkGSDy8Ug8AnZVS2jqhsLWmv9w6GJwhRBtNGFR_Cje3H7jXctvQaAB8M9s3VltYDmtoF2mA7JRt4w",
  `referer` = "https://duckduckgo.com/",
  `sec-ch-ua` = '"Chromium";v="110", "Not A(Brand";v="24", "Google Chrome";v="110"',
  `sec-ch-ua-mobile` = "?0",
  `sec-ch-ua-platform` = '"Windows"',
  `sec-fetch-dest` = "empty",
  `sec-fetch-mode` = "cors",
  `sec-fetch-site` = "same-origin",
  `user-agent` = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36"
)

res <- httr::GET(url = paste0("https://duckduckgo.com/mapkit/?https://api.apple-mapkit.com/v1/searchAutocomplete?q=",text,"&lang=en&resultTypeFilter=address%2Cpoi%2Cquery&mkjsVersion=5.75.4"), httr::add_headers(.headers=headers), httr::set_cookies(.cookies = cookies))
dat <- content(res, as = "text",encoding = "UTF-8" )

dat <- gsub('ddg_spice_maps_maps\\(', '', dat)
dat <- gsub(');', '', dat)


Data <- jsonlite::fromJSON(dat)

df <- data.frame(Adress = Data[["results"]][["displayLines"]][[1]][2],
Lat = Data[["results"]][["location"]][["lat"]],
Long = Data[["results"]][["location"]][["lng"]])


return(df)

}

