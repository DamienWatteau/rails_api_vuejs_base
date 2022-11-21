<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
  </div>
</template>

<script>

export default {
  created() {
    this.axios.get("status")
  }
}
</script>
