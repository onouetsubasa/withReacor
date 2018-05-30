//
//  User.swift
//  withReactor
//
//  Created by 尾之上翼 on 2018/05/28.
//  Copyright © 2018年 尾之上翼. All rights reserved.
//

import UIKit

struct User {
  var id: Int
  var name: String
  var image: String
  
  static func makeMock() -> User {
    let user = User(id: RandomGenerator.generateInt(), name: RandomGenerator.generateAlphabetString(), image: RandomGenerator.generateImageURL())
    return user
  }
}
