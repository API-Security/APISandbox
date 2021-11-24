/**
 * Created by zifan on 2015/11/5.
 */
(function($){
    var Rslide=function(ele,options){
        this.$element = $(ele);
        this.options = options
        this.$body = $(document.body);
        this.isShown = null
        this.defaults={
            title:"添加信息",
            content:"",
            remote:""
        };
        this.slimopton={
            height:"100%",
            railVisible: true,
            color:"#65cea7",
            opacity:.8,
            size: '5px',
            borderRadius: '0', //滚动条圆角
            railBorderRadius: '0',//轨道圆角
            distance:0,
            allowPageScroll: true,
            alwaysVisible: false
        }
       // console.log(this.options)
        if(this.options.title){
            this.$element
                .find('.rslide-title h4').text(this.options.title)
        }
        //console.log(this.options.remote)
        //if (this.options.remote) {
        //    this.$element
        //        .find('.rslide-content')
        //        .load(this.options.remote, $.proxy(function () {
        //            this.$element.trigger('loaded.bs.rslide')
        //        }, this))
        //        .slimScroll(this.slimopton)
        //}else{
            this.$element
                .find('.rslide-body')
                .slimScroll(this.slimopton)
        //}
    }

    Rslide.DEFAULTS = {
        backdrop: true,
        keyboard: true,
        show: true
    }

    Rslide.prototype.show = function (_relatedTarget) {

        var e = $.Event('show.bs.rslide', { relatedTarget: _relatedTarget })
        this.$element.trigger(e);
        if (this.isShown || e.isDefaultPrevented()) return;
        this.isShown = true;
        
        this.$element.removeClass('fadeOutRightBig').show();
        this.$element.addClass("fadeInRightBig");
        this.$body.addClass('modal-open');
        this.$element.on('click.dismiss.bs.rslide', '[data-dismiss="rslide"]', $.proxy(this.hide, this))
        //console.log($(this.$element).position().left)
    }

    Rslide.prototype.hide = function (e) {
        if (e) e.preventDefault()
        e = $.Event('hide.bs.rslide')
        var that=this
        this.$element.trigger(e)
        if (!this.isShown || e.isDefaultPrevented()) return
        this.isShown = false
        this.$element.removeClass("fadeInRightBig");
        that.$body.removeClass('modal-open')
        this.$element.addClass('fadeOutRightBig').off('click.dismiss.bs.rslide')
        setTimeout(function(){
            that.$element.hide()
            that.$element.trigger('hidden.bs.rslide')
        },400)

    }

    Rslide.prototype.toggle = function (_relatedTarget) {
        return this.isShown ? this.hide() : this.show(_relatedTarget)
    }

    function Plugin(option, _relatedTarget) {

        return this.each(function () {
            var $this   = $(this)
            var data    = $this.data('bs.rslide')

            var options = $.extend({}, Rslide.DEFAULTS, $this.data(), typeof option == 'object' && option)
            if (!data) $this.data('bs.rslide', (data = new Rslide(this, options)))

            if (typeof option == 'string')data[option](_relatedTarget)
            else if (options.show) data.show(_relatedTarget)
        })
    }


    $.fn.rslide             = Plugin
    $.fn.rslide.Constructor = Rslide

    $(document).on('click.bs.rslide', '[data-toggle="rslide"]', function (e) {
        var $this   = $(this)
        var href    = $this.attr('href')
        var $target = $($this.attr('data-target') || (href && href.replace(/.*(?=#[^\s]+$)/, ''))) // strip for ie7

        var option  = $target.data('bs.rslide') ? 'toggle' : $.extend({ remote: !/#/.test(href) && href }, $target.data(), $this.data())

        if ($this.is('a')) e.preventDefault()

        $target.one('show.bs.rslide', function (showEvent) {
            if (showEvent.isDefaultPrevented()) return
            $target.one('hidden.bs.rslide', function () {
                $this.is(':visible') && $this.trigger('focus')
            })
        })

        Plugin.call($target, option, this)
    })
})(jQuery)