docker build -f Dockerfile -t gethue .
docker tag gethue:latest fauguste/gethue:latest

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push fauguste/gethue:latest
