//
//  CommonButton.swift
//  withReactor
//
//  Created by 尾之上翼 on 2018/05/10.
//  Copyright © 2018年 尾之上翼. All rights reserved.
//

import UIKit

class CommonButton: UIButton {
  
  override init(frame: CGRect) {
    super.init(frame: CGRect(x: Const.inset.width, y: 0, width: mySize.width - (Const.inset.width * 2.0), height: 44))
    layer.borderWidth = 1
    layer.cornerRadius = 5
    layer.masksToBounds = true
    titleLabel!.font = UIFont.systemFont(ofSize: 16)
  }
  
  func setColors(textColor: UIColor, backGroundColor: UIColor) {
    
    if textColor != UIColor.white {
      layer.borderColor = textColor.cgColor
      setTitleColor(textColor, for: .normal)
      setTitleColor(UIColor.white, for: .highlighted)
      setBackgroundImage(createImageFromUIColor(UIColor.white), for: .normal)
      setBackgroundImage(createImageFromUIColor(textColor), for: .highlighted)
      
    } else {
      layer.borderColor = backGroundColor.cgColor
      setTitleColor(UIColor.white, for: .normal)
      setTitleColor(backGroundColor, for: .highlighted)
      setBackgroundImage(createImageFromUIColor(backGroundColor), for: .normal)
      setBackgroundImage(createImageFromUIColor(UIColor.white), for: .highlighted)
    }
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func createImageFromUIColor(_ color: UIColor) -> UIImage {
    // 1x1のbitmapを作成
    let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
    UIGraphicsBeginImageContext(rect.size)
    let context = UIGraphicsGetCurrentContext()
    // bitmapを塗りつぶし
    context!.setFillColor(color.cgColor)
    context!.fill(rect)
    // UIImageに変換
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image!
  }
}



