
flights_skyscanner_calendar <- function() {



require(httr)
  require(jsonlite)

cookies = c(
  `_pxhd` = "kX70VLL8wGwIUAaKUlTKU2h0U5K5z/hNYoBuMMLDJbZw7d8oOZW3z/s1NDYOfAwmLNDWnT8DGAR6fNA3U6qdJA==:AlrwrR1N0ce-kfVVdx1//x1rhH4wG9ndLi/m/O6VxOj81EifLoN2JjHN9qYgaaFvwKxP8pT/qQdwZdb0eCK5eDRyXFOyzPlXQ8yFYNR1bqk=",
  `traveller_context` = "505cb16c-ae98-44b8-acc3-19a544e885ef",
  `__Secure-anon_token` = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImM3ZGZlYjI2LTlmZjUtNDY4OC1iYjc3LWRiNTY2NWUyNjFkZSJ9.eyJhenAiOiIyNWM3MGZmZDAwN2JkOGQzODM3NyIsImh0dHBzOi8vc2t5c2Nhbm5lci5uZXQvbG9naW5UeXBlIjoiYW5vbnltb3VzIiwiaHR0cHM6Ly9za3lzY2FubmVyLm5ldC91dGlkIjoiNTA1Y2IxNmMtYWU5OC00NGI4LWFjYzMtMTlhNTQ0ZTg4NWVmIiwiaHR0cHM6Ly9za3lzY2FubmVyLm5ldC9jc3JmIjoiMmVhMjJhMTljMGFjODUyNWJhYmZkODZhMzY0OTQ3NDYiLCJodHRwczovL3NreXNjYW5uZXIubmV0L2p0aSI6Ijk3YWRkODE0LTNkMWItNGU4MS1iZmJiLWM3YjcyNjllNzgyMiIsImlhdCI6MTY4MDg2Mzg4NiwiZXhwIjoxNzQzOTM1ODg2LCJhdWQiOiJodHRwczovL2dhdGV3YXkuc2t5c2Nhbm5lci5uZXQvaWRlbnRpdHkiLCJpc3MiOiJodHRwczovL3d3dy5za3lzY2FubmVyLm5ldC9zdHRjL2lkZW50aXR5L2p3a3MvcHJvZC8ifQ.OxvA37t3432LEWaNFHq20nZjfvpNOHSaLltYBO5V9ogXws7kl249PewZTzMvMXMd61hO7gvirky9liTOBs4GtKhoI9mAz-KpaVAhmGTOi9NaacXkegpd-_Tenbc1PiiQBQNVgevfUTyj5ttHTNhDfu7Km3EDcSX42s1NqSmULJ6BauuY6x7CKcHttvFbV129figxHKXKoTp8TYZWtt_nLApPxIBRHXgm1ou_iiUCea_J5a98cGR644Eawl5Sbf4cGUGgFHx0_R0FRC5V8AvFoonNsjAKdCgQra4aQJIWFDp_hU39WAd245mzrIpRSsFErY8pEsfV5L4CuRV6F5AG3A",
  `__Secure-anon_csrf_token` = "2ea22a19c0ac8525babfd86a36494746",
  `ssculture` = "locale:::en-GB&market:::UK&currency:::GBP",
  `ssab` = "Display_other_offer_if_use_discount_filter_desktop_V6:::a&EnableQualtricsTag_V5:::a&MAT_cartype_filter_with_image_on_desktop_V4:::a&Multi_city_search_Nav_Card_on_Desktop_V3:::a&PAN_Reviews_optimization_desktop_V1:::a&baggage_plugin_30k_splitting_V3:::a&disable_pending_status_for_conductor_V3:::b&fps_enable_agora_web_V12:::a&fps_ttlr_early_timeout_banana_V83:::a&global_inline_test_v2_V3:::s&limit_num_inline_creatives_V2:::a&rts_who_precompute_V4:::a&taps_aa_turbocharged_V3:::b",
  `experiment_allocation_id` = "64383bac2002054a7a5dffb4e6fdc162054736a538d7b7e9bfed82f441fd96a2",
  `ssaboverrides` = "",
  `abgroup` = "37673610",
  `__Secure-ska` = "fbf619d4-c6e8-4c90-900c-024c9d3a0376",
  `device_guid` = "fbf619d4-c6e8-4c90-900c-024c9d3a0376",
  `avoid_banana_results` = "true",
  `_ga` = "GA1.3.fbf619d4-c6e8-4c90-900c-024c9d3a0376.1680863887",
  `QSI_S_ZN_0VDsL2Wl8ZAlxlA` = "v:0:0",
  `gdpr` = "information:::true&adverts:::true&version:::2",
  `_gcl_au` = "1.1.248033371.1680863896",
  `pxcts` = "4e816bd5-d530-11ed-9583-4c5041447a71",
  `_pxvid` = "484f390b-d530-11ed-87a4-625a4e487569",
  `_px3` = "db3cfd44b3462c0582bc3c82f4f0b7ac365e8b0c6d3648b10e2f4f91a4f478a7:cex24mlAZjyFG9HLlRfdIG94/cycUD6C/O3diOwFdoLaMAf9gCxBPNCaA5jaSeXwUH8PsRj8SIl4RT8IGTJ9XA==:1000:NJi4uSOJOaXg2dmwv3H0vWVKg9If8PxAWX4HNxi12Ad NvnHMAWP4Jk8sDx4JNA4SmusTsiMZ32y7jf3oePhVDgYTPRRvaWGG7VIzJ0MQASCBKrPjcWSzpMidhr fi4nB8gQOvtrpNFuUCMSTr1YpMiutEnSspY VKACbJ6W  uNZV6t6lYL9xerthtZHk7IXuIg2k36pSGdjvK8ZefF1A==",
  `__pxvid` = "51338ccc-d530-11ed-a0b3-0242ac120003",
  `scanner` = "currency:::GBP&legs:::BRU||VLC&tripType:::one-way&rtn:::false&preferDirects:::false&outboundAlts:::false&inboundAlts:::false&from:::BRU&to:::VLC"
)

headers = c(
  `authority` = "www.skyscanner.net",
  `accept` = "application/json, text/plain, */*",
  `accept-language` = "es-ES,es;q=0.9",
  `content-type` = "application/json",
  `referer` = "https://www.skyscanner.net/?&utm_source=google&utm_medium=cpc&utm_campaign=XY-Flights-Search-EN-DSA&utm_term=DYNAMIC+SEARCH+ADS&associateID=SEM_GGF_19370_00030&gclid=EAIaIQobChMIu8KA8MmX_gIV0sztCh1qzQkGEAAYASAAEgK93vD_BwE&gclsrc=aw.ds",
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
  `destinationRelevantFlightSkyId` = "VLC",
  `originRelevantFlightSkyId` = "BRU"
)

res <- httr::GET(url = "https://www.skyscanner.net/g/fenryr/v1/pricecalendar", httr::add_headers(.headers=headers), query = params, httr::set_cookies(.cookies = cookies))


dat <- content(res, as = "text",encoding = "UTF-8" )




dat <- jsonlite::fromJSON(dat)

Data <- dat$flights$days



return(Data)

}


