docker build -t davidsdeveloper/llyd:v2 .

docker run -it --name llyd -d -p 3001:3001 davidsdeveloper/llyd:v2

docker push davidsdeveloper/llyd:v2