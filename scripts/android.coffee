# Description:
#   Display an Android photo
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   #teamAndroid #android android bomb <int>
#

android = [
	"https://crackberry.com/sites/crackberry.com/files/styles/large/public/topic_images/2013/ANDROID.png?itok=xhm7jaxS",
	"http://blog.ittestsonline.com/wp-content/uploads/2015/02/android-eats-apple_.jpg",
	"https://9to5google.files.wordpress.com/2016/07/android.png?w=300",
	"http://betanews.com/wp-content/uploads/2012/12/Android-super-hero-600x423.jpg",
	"http://www.wired.com/images_blogs/gadgetlab/2011/12/new-prof.png",
	"http://cdn.arstechnica.net/wp-content/uploads/2011/01/android-top-of-world-ars.jpg",
	"https://pbs.twimg.com/profile_images/64827025/android-wallpaper6_2560x160.png",
	"http://data1.ibtimes.co.in/en/full/562323/apple-ios-share-falls-despite-iphone-success-2014-android-gains-supremacy-over-80-percent.jpg",
	"http://1u88jj3r4db2x4txp44yqfj1.wpengine.netdna-cdn.com/wp-content/uploads/2013/07/android-in-app-downloads-930x741.jpg",
	"http://techbeasts.com/wp-content/uploads/2014/07/hd-android-gingerbread-widescreen-3803221.jpg",
	"http://www.wallpapersloka.com/wp-content/uploads/ktz/root-android-cool-wallpapers-hd-1080p-30otludeen7wijjyjf5tl6.jpg",
	"http://2.bp.blogspot.com/-ptx3zxSc5ls/UZIc9ResiII/AAAAAAAAAGw/Gsa_1xT-GeI/s1600/android-vs-ios-wallpaper-L-rCqEzh.jpeg",
	"http://www.bestvpnservice.com/blog/wp-content/uploads/2013/04/Android-versus-iOS.jpg",
	"http://www.theandroid-mania.com/wp-content/uploads/2014/10/Think-Android.jpg",
	"http://assets.openstudy.com/updates/attachments/54bc7eece4b0c3c3392a009f-confluxepic-1421799732092-androidnotevilhungry.jpg",
	"https://lh3.googleusercontent.com/-SDgdatvwewE/UTPj0ix465I/AAAAAAABJBA/kCZNIxEF2ws/s506/photo.jpg",
	"http://www.goharsh.com/wp-content/uploads/2013/01/android-vs-ios.jpg",
	"https://www.techcentral.co.za/wp-content/uploads/2013/02/Android-640.jpg",
	"https://i.kinja-img.com/gawker-media/image/upload/s--kbO-70ii--/c_fit,fl_progressive,q_80,w_636/18ixit9d01r2cjpg.jpg"
]

module.exports = (robot) ->
  robot.hear /#teamAndroid/i, (msg)->
    msg.send msg.random android

  robot.hear /#android/i, (msg)->
    msg.send msg.random android

  robot.respond /android bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    for i in [0...count]
      msg.send msg.random android
