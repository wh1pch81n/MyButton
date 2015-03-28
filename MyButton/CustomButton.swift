import UIKit

class CustomButton: UIView {
    var completionBlock : (() -> ())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    func setUp() {
        var gesture = UITapGestureRecognizer(target: self, action: "touchUpInside:")
        addGestureRecognizer(gesture)
        self.layer.cornerRadius = frame.size.height / 2
        self.backgroundColor = UIColor.whiteColor()
    }
    
    func touchUpInside(sender: CustomButton) {
        if let block = self.completionBlock {
            block()
        }
    }
}
