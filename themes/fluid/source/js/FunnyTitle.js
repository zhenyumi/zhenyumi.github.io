// 浏览器搞笑标题
var OriginTitle = document.title;
var titleTime;
document.addEventListener('visibilitychange', function () {
    if (document.hidden) {
        $('[rel="icon"]').attr('href', "https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/website%20icon.jpg");
        document.title = '╭(°A°`)╮ 要离开了吗 ~';
        clearTimeout(titleTime);
    }
    else {
        $('[rel="icon"]').attr('href', "https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/website%20icon.jpg");
        document.title = '(ฅ>ω<*ฅ) 欢迎回来 ~' + OriginTitle;
        titleTime = setTimeout(function () {
            document.title = OriginTitle;
        }, 2000);
    }
});
