(function($){
    $.fn.tableopen = function(ev){
        var defaults = {
            'template':"<tr style='display:none'><td colspan='"+ev+"' class='bg-primary'></td></tr>"
        };
        return this.each(function () {
            var $this=$(this);
            $this.find('tbody tr').addClass('clicktr').after(defaults.template);
            $this.on('click','tr .view',function(){
                var parent=$(this).parents('tr')
                var content=$('td:last-child',parent).html();
                parent.next().find('td').css({'border-top':'0px'}).html(content);
                parent.next().toggle(100,function(){
                    if(parent.next().is(':hidden')){
                        $('td:first-child',parent).find('a').html('<i class="fa fa-plus"></i>')
                    }else{
                        $('td:first-child',parent).find('a').html('<i class="fa fa-minus"></i>')
                    }
                });
            });
        })}
})(jQuery);