//
//  TimelineViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 26/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {

     //MARK:- Outlets
     @IBOutlet weak var scrollView: UIScrollView!
     @IBOutlet weak var customView: UIView!
    
    let shapeLayer = CAShapeLayer()
    let shapeLayer2 = CAShapeLayer()
    let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
    let myImageView : UIImageView = UIImageView()

    
     override func viewDidLoad() {
         addLayers()
         addCardsToScrollView()
         super.viewDidLoad()
         }
    
    override func viewDidAppear(_ animated: Bool) {
        animateLayers()
    }

         
     func addLayers(){
         
         //MARK: - Center
         let center = CGPoint(x: (view.frame.width-130)/2+35, y: (view.frame.width-130)/2+35)
         
         //MARK:- shapeLayer to be blurred
         let radius = (103/896)*view.frame.height
         let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: -CGFloat.pi/2, endAngle: (CGFloat.pi/2)*1.2 , clockwise: true)
         shapeLayer.path = circularPath.cgPath
         shapeLayer.strokeColor=UIColor(displayP3Red: 35/255.0, green: 78/255.0, blue: 249/255.0, alpha: 1.0).cgColor
         shapeLayer.lineWidth=(20/896)*view.frame.height
         shapeLayer.lineCap=CAShapeLayerLineCap.round
         shapeLayer.fillColor=UIColor.clear.cgColor
         shapeLayer.strokeEnd=0
         customView.layer.addSublayer(shapeLayer)
     
         
         
         //MARK:- Blur effect

         blurEffectView.frame = CGRect(x: 0, y: 0, width: customView.frame.width, height: customView.frame.height)
         blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
         customView.addSubview(blurEffectView)
         

         
         //MARK:- Shape layer + animate shape layer
         let circularPath2 = UIBezierPath(arcCenter: center, radius: (97.5/896)*view.frame.height, startAngle: -CGFloat.pi/2, endAngle: (CGFloat.pi/2)*1.2  , clockwise: true)
         shapeLayer2.path = circularPath2.cgPath
         shapeLayer2.strokeColor=UIColor(displayP3Red: 35/255.0, green: 78/255.0, blue: 249/255.0, alpha: 1.0).cgColor
         shapeLayer2.lineWidth=(20/896)*view.frame.height
         shapeLayer2.lineCap=CAShapeLayerLineCap.round
         shapeLayer2.fillColor=UIColor.clear.cgColor
         shapeLayer2.strokeEnd=0
         customView.layer.addSublayer(shapeLayer2)
         
         
         
         //MARK:- percentage Label
         let lableDimension = (92/896)*view.frame.height
         let label = UILabel(frame: CGRect(x: 0, y: 0, width: lableDimension, height: lableDimension))
         label.center = center
         label.textAlignment = .center
         label.text = "55%"
         label.font = label.font.withSize(24)
         label.textColor = .white
         label.backgroundColor = UIColor(cgColor: shapeLayer.strokeColor!)
         label.clipsToBounds = true
         label.layer.cornerRadius = (46/896)*view.frame.height
         customView.addSubview(label)
         
         

         //MARK:- smallBall Image + rotation
         let img = UIImage(named: "TimeLine")
         myImageView.image = img
         myImageView.frame.size.width = (284/896)*view.frame.height
         myImageView.frame.size.height = myImageView.frame.size.width
        // myImageView.frame.origin.y = 35
        // myImageView.frame.origin.x = ((view.frame.width-30)-myImageView.frame.width)/2
         myImageView.center = center
         customView.addSubview(myImageView)
        
     }
    
    func animateLayers(){
        //MARK:- animation
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue=1
        basicAnimation.duration=1
        basicAnimation.fillMode=CAMediaTimingFillMode.forwards
        basicAnimation.isRemovedOnCompletion = false
        shapeLayer.add(basicAnimation, forKey:"hey")
        shapeLayer2.add(basicAnimation, forKey:"hey")
        
        let rotate = CABasicAnimation(keyPath: "transform.rotation")
                rotate.fromValue = 0
                rotate.toValue = CGFloat.pi*1.1
                rotate.duration = 1
                rotate.fillMode = CAMediaTimingFillMode.forwards
                rotate.isRemovedOnCompletion = false
        myImageView.layer.add(rotate, forKey: "transform.rotation")



    }
     
     
     func addCardsToScrollView(){
     let myImages = ["Upcoing Event Card 1","Upcoing Event Card 1","Upcoing Event Card 1","Upcoing Event Card 1"]
            
        let imageWidth: CGFloat = 151/414 * view.frame.width
        let imageHeight : CGFloat = 154/414 * view.frame.width
        var xPostion: CGFloat = 18
        var scrollViewContentsSize: CGFloat = 0
        
        for i in 0...myImages.count-1 {
            let img = UIImage(named: myImages[i])
            let myImageView : UIImageView = UIImageView()
            myImageView.image = img
            
            myImageView.frame.size.width = imageWidth
            myImageView.frame.size.height = imageHeight
            myImageView.frame.origin.y = 0
            myImageView.frame.origin.x = xPostion
            myImageView.contentMode = .scaleAspectFit
            
            scrollView.addSubview(myImageView)
            
            xPostion += imageWidth
            xPostion += 16
            scrollViewContentsSize += imageWidth
            
            scrollView.contentSize = CGSize(width: scrollViewContentsSize, height: imageHeight)
     }
 }
}

