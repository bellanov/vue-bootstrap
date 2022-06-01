<template>
  <div class="hello">

    <main>

      <div class="container">
        <div class="row">
          <div class="col-md-12 text-start">
            <h1 class="display-1 fw-bold lh-1 mb-3">{{ title }}</h1>
            <h2 class="display-6 lh-1 mb-2">{{ version }}</h2>
            <p>
              Integration of VueJS 3 and Bootstrap 5.  
            </p>

            <div class="row">
              <div class="col-md-12">
                <img class="logo" src="../assets/vuejs-logo.png" alt="VueJS Logo">
                <img class="logo" src="../assets/bootstrap-logo.png" alt="Bootstrap Logo">
                <img class="logo" src="../assets/github-logo.png" alt="GitHub Logo">
              </div>
            </div>
          </div>
        </div>

        
      </div>

    </main>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    title: String,
    version: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

img.logo {
  height: 48px;
  width: 48px;
  margin-right: 2px;
}
</style>
