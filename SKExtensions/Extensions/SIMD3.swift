//
//  SIMD3.swift
//  SKExtensions
//
//  Created by 砂賀開晴 on 2019/10/19.
//  Copyright © 2019 Kaisei Sunaga. All rights reserved.
//

import Foundation
import SceneKit

public extension SIMD3 where Scalar == Float {
  var matrix: simd_float4x4 {
    return simd_float4x4([
      SIMD4(1, 0, 0, x),
      SIMD4(0, 1, 0, y),
      SIMD4(0, 0, 1, z),
      SIMD4(x, y, z, 1),
    ])
  }
}
