# Build Docker image
HERE=$( cd $(dirname "$0") ; pwd -P )
docker build --no-cache - < $HERE/Dockerfile


