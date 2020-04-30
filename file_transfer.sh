file="hello.html"
bucket="your-bucket name"
resource="/${bucket}/${file}"
contentType="text/html"
dateValue="30/04/2020"
stringToSign="PUT\n\n${contentType}\n${dateValue}\n${resource}"
s3Key=" "
s3Secret=" "
signature=`echo -en ${stringToSign} | openssl sha1 -hmac ${s3Secret} -binary | base64`
curl -X PUT -T "${file}" \
  -H "Host: ${bucket}.s3.amazonaws.com" \
  -H "Date: ${dateValue}" \
  -H "Content-Type: ${contentType}" \
  -H "Authorization: AWS ${s3Key}:${signature}" \
  https://${bucket}.s3.amazonaws.com/${file}