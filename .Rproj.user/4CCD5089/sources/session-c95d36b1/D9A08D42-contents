
flights_skyscanner_calendar <- function( origin = "BRU", destination = "VLC")  {



require(httr)
  require(jsonlite)

cookies = c(
  `__Secure-anon_token` = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImM3ZGZlYjI2LTlmZjUtNDY4OC1iYjc3LWRiNTY2NWUyNjFkZSJ9.eyJhenAiOiIyNWM3MGZmZDAwN2JkOGQzODM3NyIsImh0dHBzOi8vc2t5c2Nhbm5lci5uZXQvbG9naW5UeXBlIjoiYW5vbnltb3VzIiwiaHR0cHM6Ly9za3lzY2FubmVyLm5ldC91dGlkIjoiNTA1Y2IxNmMtYWU5OC00NGI4LWFjYzMtMTlhNTQ0ZTg4NWVmIiwiaHR0cHM6Ly9za3lzY2FubmVyLm5ldC9jc3JmIjoiMmVhMjJhMTljMGFjODUyNWJhYmZkODZhMzY0OTQ3NDYiLCJodHRwczovL3NreXNjYW5uZXIubmV0L2p0aSI6Ijk3YWRkODE0LTNkMWItNGU4MS1iZmJiLWM3YjcyNjllNzgyMiIsImlhdCI6MTY4MDg2Mzg4NiwiZXhwIjoxNzQzOTM1ODg2LCJhdWQiOiJodHRwczovL2dhdGV3YXkuc2t5c2Nhbm5lci5uZXQvaWRlbnRpdHkiLCJpc3MiOiJodHRwczovL3d3dy5za3lzY2FubmVyLm5ldC9zdHRjL2lkZW50aXR5L2p3a3MvcHJvZC8ifQ.OxvA37t3432LEWaNFHq20nZjfvpNOHSaLltYBO5V9ogXws7kl249PewZTzMvMXMd61hO7gvirky9liTOBs4GtKhoI9mAz-KpaVAhmGTOi9NaacXkegpd-_Tenbc1PiiQBQNVgevfUTyj5ttHTNhDfu7Km3EDcSX42s1NqSmULJ6BauuY6x7CKcHttvFbV129figxHKXKoTp8TYZWtt_nLApPxIBRHXgm1ou_iiUCea_J5a98cGR644Eawl5Sbf4cGUGgFHx0_R0FRC5V8AvFoonNsjAKdCgQra4aQJIWFDp_hU39WAd245mzrIpRSsFErY8pEsfV5L4CuRV6F5AG3A",
  `__Secure-anon_csrf_token` = "2ea22a19c0ac8525babfd86a36494746")

headers = c(
  `authority` = "www.skyscanner.net",
  `accept` = "application/json, text/plain, */*",
  `accept-language` = "es-ES,es;q=0.9",
  `content-type` = "application/json",
  `referer` = "https://www.skyscanner.net",
  `sec-ch-ua` = '"Chromium";v="112", "Google Chrome";v="112", "Not:A-Brand";v="99"',
  `sec-ch-ua-mobile` = "?0",
  `sec-ch-ua-model` = '""',
  `sec-ch-ua-platform` = '"Windows"',
  `sec-fetch-dest` = "empty",
  `sec-fetch-mode` = "cors",
  `sec-fetch-site` = "same-origin",
  `service-source` = "banana",
  `user-agent` = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36",
  `x-skyscanner-currency` = "EUR",
  `x-skyscanner-locale` = "en-GB",
  `x-skyscanner-market` = "ES"
)

params = list(
  `apiKey` = "8deb9738278e43399a54c6e73d9bb893",
  `destinationRelevantFlightSkyId` = destination,
  `originRelevantFlightSkyId` = origin
)

res <- httr::GET(url = "https://www.skyscanner.net/g/fenryr/v1/pricecalendar", httr::add_headers(.headers=headers), query = params, httr::set_cookies(.cookies = cookies))


dat <- content(res, as = "text",encoding = "UTF-8" )




dat <- jsonlite::fromJSON(dat)

Data <- dat$flights$days



return(Data)

}


