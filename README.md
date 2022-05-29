# vue-bootstrap

Example of **Vue 3** and **Bootstrap 5** integration. No more **jQuery**!!!

**Environments:**

[Dev](https://vue-bootstrap-dev-iuj6vc72wa-uc.a.run.app/)
[QA](https://vue-bootstrap-qa-7td3j4wmyq-uc.a.run.app/)

The deployment is managed via Terraform in [vue-bootstrap-state](https://github.com/bellanov/vue-bootstrap-state).

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
docker run -it -p 8080:80 vue-bootstrap:local
```

Access the application at `localhost:8080`

![Vue Bootstrap](./src/assets/vue-bootstrap.png)
