var operaModel = (function () {
    return{
        delRow : function (rowid, url, field) {
            layer.confirm('确定删除吗?', function(){
                $.getJSON(url, {id:rowid}, function(ret){
                    console.log("ret", ret)
                    if (ret.code=="200"){
                        layer.msg(ret.message, {icon: 1});
                        $table.bootstrapTable('remove', {
                            field: field,
                            values: [rowid]
                        });
                    } else {
                        layer.msg(ret.message, {icon: 2});
                    }
                });
            });
        },
        //重新刷新页面，使用location.reload()有可能导致重新提交
        reloadPage : function (win) {
            var location = win.location;
            location.href = location.pathname + location.search;
        },
        /**
         * 页面跳转
         * @param url
         */
        redirect : function (url) {
            location.href = url;
        }
    }
})();



function layerMsg(message, icon, time, fun) {
    layer.msg(message, {
        icon: icon,
        time: time
    }, function(){
        fun();
    });
};