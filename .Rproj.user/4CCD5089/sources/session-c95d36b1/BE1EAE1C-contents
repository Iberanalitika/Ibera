
geo_waze_locations <- function(text = "Restaurant") {

  require(httr)
  require(jsonlite)

  headers = c(
    `authority` = "www.waze.com",
    `accept` = "application/json, text/plain, */*",
    `accept-language` = "en-US,en;q=0.9",
    `sec-fetch-site` = "same-origin",
    `user-agent` = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36"
  )

  params = list(
    `q` = text,
    `exp` = "8, 10, 12",
    `sll` = "48.585833,16.111667",
    `lang` = "en"
  )

  res <- httr::GET(url = "https://www.waze.com/live-map/api/autocomplete/", httr::add_headers(.headers=headers), query = params)

  dat <- content(res, as = "text",encoding = "UTF-8" )




  dat <- jsonlite::fromJSON(dat)

  Data <- data.frame(dat)





  return(Data)

}


