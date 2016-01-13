
import UIKit

class GuidePage: FxBaseController {

    @IBOutlet var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
 

}
