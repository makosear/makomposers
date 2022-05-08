<template>
    <div class="sprites">
    <select id="select" v-model="pick">
        <option v-for="(char, charTag) in drnames" 
                :value="charTag"
                :key="char">
                {{char}}
        </option>
    </select>
      <div class="spritebox">
        <img v-for="image in images[pick]" :src="image" alt="character" class="charImg" :key="image" />
        </div>
    </div>

    <p>{{ pick }}</p>
</template>

<script>

export default {
  data(){
    return {
        images : [],
        
        drnames: [],

        pick: 'aoi'
    }
  },
  mounted() {
      fetch('https://gist.githubusercontent.com/makosear/b275d1fb456350f578f3b9b84457f20e/raw/63435966112098d04bcbf586b95770dfd15e7450/drnames.json')
        .then(res => res.json())
        .then(data => this.drnames = data)
        .catch (err => console.log(err.message))
    
      fetch('https://gist.githubusercontent.com/makosear/ecf84668a916605a4e5fa97c7682fe74/raw/571399a433f0f97bb952207a60c11eae36431520/busts.json')
        .then(res2 => res2.json())
        .then(data => this.images = data)
        .catch (err => console.log(err.message))
    
    fetch
  }
}

</script>

<style>
select {
    /* position:relative; */
    /* left:80px; */
    top:2px;
    margin: auto;
    margin-right: 0px;
    box-sizing: border-box;
    border: solid;
    border-radius: 10px;
    border-color: rgb(190, 0, 0);
    -webkit-box-flex: 0;
    flex: 0 0 auto;
    padding: 0 4px;
    width: 100%;
    font-size: 1.2rem;
    line-height: 2rem;
  }

.charImg {
  position:relative;
  display: inline-block;
  vertical-align: top;
  margin: 4px;
  width: 170px;
  height: 150px;
  padding:10px;
  object-fit: cover;
}

.sprites{
    -webkit-box-flex: 1;
    flex: 1 1 auto;
    display: -webkit-box;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
}

.spritebox{
  -webkit-box-flex: 1;
  flex: 1 1 auto;
  overflow: auto;
  padding: 10px;
  text-align: center;
}

.charImg:hover{
    background: #eeee;
    cursor: pointer;

}
</style>