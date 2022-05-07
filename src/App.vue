<template>
  <div class="composer">

    <div class="inputcomment">

        <textbox />

    </div>
    <div class="selectchar">

      <char />

    </div>

  </div>

</template>

<script>

import char from './components/charSelection.vue'

import textbox from './components/textbox.vue'

export default {
  name: 'App',
  components: { char, textbox },
  data(){
    return {
      title: 'Hi'
    }
  },
}

</script>

<style>

div {
  height: 100vh;
}

.composer{
  display: -webkit-box;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  flex-direction: row;
  height: 200%;
}

.selectchar{
  -webkit-box-flex: 1;
  flex: 1 1 auto;
}

.inputcomment{
  -webkit-box-flex: 0;
  flex: 0 0 auto;
  display: -webkit-box;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  flex-direction: column;
  width: 50%;
  min-width: 370px;
}
</style>
