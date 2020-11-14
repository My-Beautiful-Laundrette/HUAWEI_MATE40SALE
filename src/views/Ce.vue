<template>
    <div>
        <nut-backtop :bottom="70" @click="handleClick">
      <div
        style="background-color: rgb(0, 0, 0);
    color: rgb(255, 255, 255);
    display: flex;
    height: 44px;
    width: 44px;
    align-items: center;
    justify-content: center;"
      >Top</div>
    </nut-backtop>
         <p v-for="(k,n) of 200" :key="n">{{n}}</p>
    </div>
</template>

<script>
export default {

}
</script>

<style>

</style>