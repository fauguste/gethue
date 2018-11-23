
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
today=$(date +%d%M%y)

docker build -f Dockerfile -t gethue .
docker tag gethue:latest fauguste/cofrac_web:latest
docker push fauguste/cofrac_web:latest
docker tag gethue:$today fauguste/cofrac_web:$today
docker push fauguste/cofrac_web:$today
