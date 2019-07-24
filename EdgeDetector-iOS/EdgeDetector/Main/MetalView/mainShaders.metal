//
//  mainShaders.metal
//  EdgeDetector
//
//  Created by Greg on 24/07/2019.
//  Copyright © 2019 GS. All rights reserved.
//

#include <metal_stdlib>
using namespace metal;

kernel void colorKernel(texture2d<float, access::read> inTexture [[ texture(0) ]],
                        texture2d<float, access::write> outTexture [[ texture(1) ]],
                        uint2 gid [[ thread_position_in_grid ]]) {
    float4 colorAtPixel = inTexture.read(gid);
    outTexture.write(colorAtPixel, gid);
}
