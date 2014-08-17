$(function(){
   new goPlaySlide("#next","#prev","#ul_content","#imgs_list").start();
});

function goPlaySlide(btnA,btnB,ulId,listId){
    this.btnA=$(btnA);
    this.btnB=$(btnB);
    this.ulId=$(ulId);
    this.listId=$(listId);
}

goPlaySlide.prototype={
        start:function(){
            var _this = this;
            var i=1;
            var page=1;
            var len = this.listId.find("li").length;
            var imgWidth = this.listId.find("li").width();
            var pageCount=Math.ceil(len/i);
            this.btnA.bind("click",function(){
                if(!_this.listId.is(":animated")){
                    if( page == pageCount ){
                        _this.ulId.animate({ marginLeft : '0px'});
                        page=1;
                    }else{
                        _this.ulId.animate({ marginLeft : -imgWidth*page });
                        page++;
                    }
                }
            })
            this.btnB.bind("click",function(){
                if(!_this.listId.is(":animated")){
                    if( 1==page  ){
                        _this.ulId.animate({ marginLeft :-imgWidth*(pageCount-1)  }, "slow");
                        page = pageCount;
                    }else{
                        _this.ulId.animate({ marginLeft :-imgWidth*(page-2) }, "slow");
                        page--;
                    }
                }
            })
        }
}
// JavaScript Document