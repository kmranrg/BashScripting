#! /bin/bash

printf "\n1) Downloading a file form an URL (download it by actual file name)\n"

url="http://proof.ovh.net/files/1Mio.dat"
curl ${url} -O # `-O` will let this download using the original file name

printf "\n2) Downloading a file from an URL by name myNewFile.dat\n"

url="http://proof.ovh.net/files/1Mio.dat"
curl ${url}  -o myNewFile.dat

printf "\n3) Print all the file information before downloading that file\n"

url="http://proof.ovh.net/files/1Mio.dat"
curl -I ${url}

: '
OUTPUT:

1) Downloading a file form an URL (download it by actual file name)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 1024k  100 1024k    0     0   854k      0  0:00:01  0:00:01 --:--:--  854k

2) Downloading a file from an URL by name myNewFile.dat
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 1024k  100 1024k    0     0  1865k      0 --:--:-- --:--:-- --:--:-- 1861k

3) Print all the file information before downloading that file
HTTP/1.1 200 OK
Date: Thu, 03 Jun 2021 14:03:28 GMT
Server: Apache
Last-Modified: Thu, 16 Sep 2010 11:42:20 GMT
ETag: "362c002-100000-4905ef050df00"
Accept-Ranges: bytes
Content-Length: 1048576
Connection: close
Content-Type: application/octet-stream
'