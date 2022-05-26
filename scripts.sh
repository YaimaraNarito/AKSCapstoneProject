docker build -t davidsdeveloper/llyd:v1 .

docker run -it --name llyd -d -p 3001:3001 davidsdeveloper/llyd:v1