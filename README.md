# hello-docker-jenkins-aws
Simple Hello app that will go through jenkins and then to AWS

Run Mocha test
sudo docker run -it -v /vagrant/app:/app -w /app node ./node_modules/mocha/bin/mocha ./test/test.js

Run Node
sudo docker run -d -p 3000:3000 -v /vagrant/app:/app -w /app node node app.js

Run NPM install
sudo docker run --rm -v /vagrant/app:/app -w /app node:latest npm install --no-bin-links

Almost final
sudo docker run -d -p 3000:3000 --name hello-node robaum/hello-node:v1
sudo docker run -rm robaum/hello-node:v1 ./node_modules/mocha/bin/mocha ./test/test.js