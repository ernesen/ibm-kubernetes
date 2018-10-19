docker build -t nodejs .
docker run --rm --name nodejs -h nodejs -p 3000:3000 nodejs

docker stop nodejs

# http://json.parser.online.fr/

docker rmi nodejs
