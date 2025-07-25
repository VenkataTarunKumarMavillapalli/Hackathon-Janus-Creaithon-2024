//
//  Fill-in.metal
//  ERCManager
//
//  Created by Linar Zinatullin on 19/07/24.
//

#include <metal_stdlib>
using namespace metal;

[[stitchable]] half4 fillIn(float2 pos, half4 color, float2  s, float p) {
    
    float progress = pos.y / s.y;
    if (color.a != 0) {
        if (progress >= (1-p)) {
            return half4(color);
        }
    }
   
    return half4(color.rgb, 0);
}

