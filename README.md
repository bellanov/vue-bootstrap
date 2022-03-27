# vue-bootstrap

Example of **Vue 3** and **Bootstrap 5** integration. No more **jQuery**!!!

## Development Instructions

Project **building**, **testing**, and **deployment** information.

### Install dependencies
```
yarn install
```

### Compiles and hot-reloads for development
```
yarn serve
```

### Compiles and minifies for production
```
yarn build
```

### Lints and fixes files
```
yarn lint
```

### Build and execute Docker container
```
docker build -t website:local -f Dockerfile .
docker run -it -p 80:80 website:local
curl localhost:80
```

Source:
https://stackoverflow.com/questions/65547199/using-bootstrap-5-with-vue-3
