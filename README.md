# gallery2DockerRunner

## Why this exists
I needed this as an way to run my precious http://galleryproject.org/ (g2) instace with thousands of photographs somewhat safely. As you may now g2 is so old that it wont run on on modern systems. Also this image can be run with arm64 processors like raspberry pi

## how to run this image produced by this dockerfile.

docker run -d \
  --restart=always \
  --name gallery \
  --net gallery-net \
  -p 80:80 \
  -v /mnt/media/gallery/gallery2:/var/www/html \
  -v /mnt/media/gallery/g2data:/g2data \
  -d datapi.jussin.net/jussikin/gallery
  
  I just mounted gallery files into /var/www/html, ofcource datapath is something you can set in config.php so mount that accordingly.
