//
//  simd+Convert.swift
//  SKExtensions
//
//  Created by 砂賀開晴 on 2019/10/07.
//  Copyright © 2019 Kaisei Sunaga. All rights reserved.
//

import Foundation
import SceneKit

public extension simd_float4x4 {
  var inverse: simd_float4x4 {
    return simd_inverse(self)
  }

  var position: simd_float3 {
    return simd_float3(x: columns.3.x, y: columns.3.y, z: columns.3.z)
  }

  var positionMatrix: simd_float4x4 {
    let p = position
    return simd_float4x4([
      SIMD4(1,   0,   0,   p.x),
      SIMD4(0,   1,   0,   p.y),
      SIMD4(0,   0,   1,   p.z),
      SIMD4(p.x, p.y, p.z, 1),
    ])
  }

  var rotation: simd_quatf {
    return simd_quatf(self)
  }

  var rotationMatrix: simd_float4x4 {
    return simd_float4x4(rotation)
  }
}
