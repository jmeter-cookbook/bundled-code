curl -u <your_api_key>: https://api.flood.io/floods "flood[tool]=jmeter-2.11" -F "flood[threads]=50" -F "flood_files[]=@rhc_1.jmx" -F "flood_files[]=@users.csv"



see https://flood.io/blog/6-flood-api
