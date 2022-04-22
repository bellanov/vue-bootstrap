# vue-bootstrap

Example of **Vue 3** and **Bootstrap 5** integration. No more **jQuery**!!!

## Workflow

Project **building**, **testing**, and **deployment** information.

```sh
# Install dependencies
yarn install

# Compiles and hot-reloads for development
yarn serve

# Compiles and minifies for production
yarn build

# Lints and fixes files
yarn lint

# Build and execute Docker container
docker build -t vue-bootstrap:local -f Dockerfile .
docker run -it -p 80:80 vue-bootstrap:local
curl localhost:80
```
