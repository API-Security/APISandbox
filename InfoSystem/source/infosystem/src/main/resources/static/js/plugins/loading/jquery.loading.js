/**
 * Created by zifan on 2015/11/13.
 */
(function($){
    var Loading=function(ele,ev){
        this.$element = $(ele);
        this.options = ev;
        this.template='<div class="spiner-example" style=""> <div class="sk-spinner sk-spinner-chasing-dots"> <div class="sk-dot1"></div> <div class="sk-dot2"></div> </div></div>';

    };

    Loading.prototype.show=function(e){
        this.$element.css({"position":"relative","min-height":"200px"})
        this.$element.prepend(this.template);
    };

    Loading.prototype.hide=function(e){
        var loadele=this.$element.find(".spiner-example")
        loadele.remove()
    };

    $.fn.loading = function(ev){

        return this.each(function () {
           //typeof ev == 'object' && ev;
            var $this   = $(this)

            var data=new Loading(this,ev);
            if (typeof ev == 'string') data[ev]()
            else alert('加载动画，参数错误！')
        })
    }
})(jQuery);