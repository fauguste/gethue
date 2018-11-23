
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
today=$(date +%d%M%y)

docker build -f Dockerfile -t gethue .
docker tag gethue:latest fauguste/gethue:latest
docker push fauguste/gethue:latest
docker tag gethue:latest fauguste/gethue:$today
docker push fauguste/gethue:$today
