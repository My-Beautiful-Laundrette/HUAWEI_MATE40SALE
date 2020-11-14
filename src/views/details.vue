<template>
    <div>
        <div>
            <nut-tab @tab-switch="tabSwitch" line-width="20">
                    <nut-tab-panel tab-title="商品">商品</nut-tab-panel>
                    <nut-tab-panel tab-title="评价">评价</nut-tab-panel>
                    <nut-tab-panel tab-title="参数">参数</nut-tab-panel>
                    <nut-tab-panel tab-title="详情">详情</nut-tab-panel>
            </nut-tab>
        </div>
    </div>
</template>

<script>
        export default {
            methods: {
                tabSwitch:function(index,event){
                    console.log(index+'--'+event);
                },
                close(){
                        alert('header头部， 点击关闭')
                    },
                edit(){
                        alert('header头部， 点击编辑')
                    }
                }
            };
</script>

    
<style>
    .nut-tab{
       background:#fff !important;
    }
</style>