#change to working directory
cd ~/Downloads

#change text file to CSV
$ cat Users.txt | tr -s '[:blank:]' ',' > Users.csv

#view files in working directory
dir

#change text file to csv
cat emails.txt | tr -s '[:blank:]' ',' > emails.csv

#merge two csv files
join -t, <(sort -t, -k1 emails.csv) <(sort -t, -k1 Users.csv) > usersMerged.csv

#curl file to sandbox
curl -F data=usersMerged.csv --header 'Content-Type: application/x-www-form-urlencoded' --header 'Accept: application/json' -d 'aid=o1sRRZSLlw&api_token=zziNT81wShznajW2BD5eLA4VCkmNJ88Guye7Sw4D' 'https://sandbox.tinypass.com/api/v3/publisher/user/create'