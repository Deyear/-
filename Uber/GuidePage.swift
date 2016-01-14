
import UIKit
import AVFoundation
class GuidePage: FxBaseController {

    @IBOutlet var BackView: UIView!
    @IBOutlet var ImageView: UIImageView!
    var player:AVPlayer!
    var avPlayerItem:AVPlayerItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.initplayerVideo()
        self.imageAnimation()
      
    }
    func imageAnimation(){
        var imageName:String?
        var image:UIImage?
        var images = [UIImage]()
        for index in 0 ... 66 {
            //不是三位数的用0来填充
            imageName = "logo-"+String(format: "%03d", index)
            image = UIImage(named: imageName!)
            images.insert(image!, atIndex: index)
        }
        self.ImageView.animationImages = images
            self.ImageView.animationRepeatCount = 1
            self.ImageView.animationDuration = 5
            self.ImageView.startAnimating()
        UIView.animateWithDuration(7, delay: 5, options:[ .Repeat,.CurveLinear], animations: { () -> Void in
                self.BackView.alpha = 1.0
                self.player?.play()
            }) { (finish) -> Void in
                print("Video is finished")
        }
    }
    func initplayerVideo(){
        //得到视频路径
        let path = NSBundle.mainBundle().pathForResource("welcome_video", ofType: "mp4")
        //视频的链接地址
        let url = NSURL(fileURLWithPath: path!)
        avPlayerItem = AVPlayerItem(URL: url)
        player = AVPlayer(playerItem: avPlayerItem)
        //视频是在视频层里进行播放，将视频层加入视图里
        let playerlayer = AVPlayerLayer(player: player)
        playerlayer.frame = BackView.bounds
        //适配各种配置
        playerlayer.videoGravity = AVLayerVideoGravityResizeAspect
        self.BackView.layer.insertSublayer(playerlayer, atIndex: 0)
        self.BackView.alpha = 0.0
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
