image_name=dejo-airflow

echo ">> Force Removing Previous $image_name Containers"
docker rm -f airflow-dejo-1

echo ">> Building new Docker image : $image_name"
docker build --pull --rm -f "dockerfile" -t $image_name:latest "."


echo ">> Running Docker Compose for image : '$image_name:latest'"
docker compose -f "docker-compose.yml" up -d --build
