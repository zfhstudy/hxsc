(function($) {
/**
 * 棣栭〉杞挱
 */
    var slide = {
        SPEED: 4800,
        MAINWIDTH: 200,
        $left: null,
        $right: null,
        $mainArea: null,
        $share: null,
        animate: false,
        intervalTimer: null,
        step: 0,
        init: function() {
            var me = this;
            me.$left = $('#leftBtn');
            me.$right = $('#rightBtn');
            me.$mainArea = $('#mainArea');
            me.$share = $('#share');
            me.$select = $('#select a');
            me.$curSelect = me.$select.eq(0).addClass('current');
            me.bindSelect();

            me.resize();
            me.$left.delegate('a', 'click', function() {
                me.right();
            });
            me.$right.delegate('a', 'click', function() {
                me.left();
            });
            $(window).on('resize', function() {
                me.resize();
            });
            $('#mainArea, #leftBtn, #rightBtn').click(function(e) {
                var target = $(e.target || e.srcElement);
                if(target[0].tagName.toLowerCase() === 'img') target = target.parent();
                if(target.attr('href') === '#') e.preventDefault();
            });
            me.startInterval();
        },
        bindSelect: function() {
            var me  = this;
            me.$select.on('click', function() {
                var index = $(this).index(),
                current = me.$curSelect.index(),
                step = index -  current;
                if(step > 2) step = -1;
                if(step < -2) step = 1;
                switch(step) {
                case 1:
                    me.left();
                    break;
                case -1:
                    me.right();
                    break;
                case 2:
                    me.left2Step();
                    break;
                case -2:
                    me.right2Step();
                    break;
                default:
                    break;
                }
            });
        },
        left: function() {
            var me = this,
                curLeft = parseInt(me.$mainArea.css('left')),
                setLeft = curLeft - 200;
            me.stopInterval();
            if(!me.animate) {
                me.animate = true;
                me.$mainArea.animate({
                    'left': setLeft
                }, 100, function(){
                    me.animate = false;
                    me.resetLeft(setLeft);
                    me.selectNext();
                    me.startInterval();
                });
            }
            
        },
        left2Step: function() {
            var me = this,
                curLeft = parseInt(me.$mainArea.css('left')),
                setLeft = curLeft - 200;
            me.step ++;
            if(me.step > 2) {
                me.step = 0;
                return;
            }

            me.stopInterval();
            if(!me.animate) {
                me.animate = true;
                me.$mainArea.animate({
                    'left': setLeft
                }, 50, function(){
                    me.animate = false;
                    me.resetLeft(setLeft);
                    me.selectNext();
                    me.startInterval();

                    me.left2Step();
                });
            }
        },
        right: function() {
            var me = this,
                curLeft,
                setLeft;

            me.stopInterval();

            if(me.animate) return;
            
            me.resetRight();
            curLeft = parseInt(me.$mainArea.css('left'));
            setLeft = curLeft + 200;
            if(!me.animate) {
                me.animate = true;
                me.$mainArea.animate({
                    'left': setLeft
                }, 100, function(){
                    me.animate = false;
                    me.selectPrev();
                    me.startInterval();
                });
            }
        },
        right2Step: function() {
            var me = this,
                curLeft,
                setLeft;
            me.step ++;
            if(me.step > 2) {
                me.step = 0;
                return;
            }

            me.stopInterval();

            if(me.animate) return;
            
            me.resetRight();
            curLeft = parseInt(me.$mainArea.css('left'));
            setLeft = curLeft + 200;
            if(!me.animate) {
                me.animate = true;
                me.$mainArea.animate({
                    'left': setLeft
                }, 50, function(){
                    me.animate = false;
                    me.selectPrev();
                    me.startInterval();

                    me.right2Step();
                });
            }
        },
        selectPrev: function() {
            var me = this,
            $prev = me.$curSelect.prev();
            $prev = $prev.length ? $prev : me.$select.eq(3);
            me.$curSelect.removeClass('current');
            me.$curSelect = $prev.addClass('current');
        },
        selectNext: function() {
            var me = this,
            $next = me.$curSelect.next();
            $next = $next.length ? $next : me.$select.eq(0);
            me.$curSelect.removeClass('current');
            me.$curSelect = $next.addClass('current');
        },
        resetRight: function() {
            var me = this,
                curLeft = parseInt(me.$mainArea.css('left')),
                setLeft = curLeft - 200;
            me.$mainArea.find('a:last').prependTo(me.$mainArea);
            me.$mainArea.css({
                'left': setLeft
            });
        },
        resetLeft: function(setLeft) {
            var me = this,
                winWidth = $(document).width(),
                btnWidth = (winWidth - 200) / 2,
                resetCritical;
            btnWidth = btnWidth < 0 ? 0 : btnWidth;
            resetCritical = -(200*3 - btnWidth);
            if(Math.abs(setLeft - resetCritical) < 5) {
                //鎵ц涓ゆ锛屽緟浼樺寲
                me.$mainArea.find('a:first').appendTo(me.$mainArea);
                me.$mainArea.find('a:first').appendTo(me.$mainArea);
                me.resize();
            }
        },
        resize: function() {
            var me = this,
                winWidth = $(document).width(),
                btnWidth = (winWidth - 200) / 2;
            btnWidth = btnWidth < 0 ? 0 : btnWidth;
            me.$left.css({
                'width': btnWidth,
                'left': 0
            });
            me.$right.css({
                'width': btnWidth,
                'right': 0
            });
            me.$share.css({
                'right': btnWidth
            });
            me.$mainArea.css({
                'left': (btnWidth - 200)
            });
        },
        startInterval: function() {
            var me = this;
            me.intervalTimer = window.setInterval(function() {
                me.left();
            },6000);
        },
        stopInterval: function() {
            var me = this;
            me.intervalTimer && window.clearInterval(me.intervalTimer);
        }
    };
    $(function() {
        slide.init();
    });

})(window.jQuery);
