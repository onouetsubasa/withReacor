//
//  Tweet.swift
//  withReactor
//
//  Created by 尾之上翼 on 2018/05/28.
//  Copyright © 2018年 尾之上翼. All rights reserved.
//

import UIKit

struct Tweet {
  var id: Int
  var title: String
  var content: String
  var favoriteCount: Int
  var retweetCount: Int
  var date: String
  var user: User
  
  static func makeMock() -> Tweet {
    let tweet = Tweet(id: RandomGenerator.generateInt(),
                      title: RandomGenerator.generateString(),
                      content: RandomGenerator.generateString(),
                      favoriteCount: RandomGenerator.generateInt(),
                      retweetCount: RandomGenerator.generateInt(),
                      date: RandomGenerator.generateString(),
                      user: User.makeMock())
    return tweet
  }
}
