//
//  simd_quatf.swift
//  SKExtensions
//
//  Created by 砂賀開晴 on 2019/10/19.
//  Copyright © 2019 Kaisei Sunaga. All rights reserved.
//

import Foundation
import SceneKit

public extension simd_quatf {
  var inverse: simd_quatf {
    return simd_inverse(self)
  }

  var matrix: simd_float4x4 {
    return simd_float4x4(self)
  }
}
