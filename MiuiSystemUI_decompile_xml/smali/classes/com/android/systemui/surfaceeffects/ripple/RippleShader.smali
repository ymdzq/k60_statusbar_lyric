.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleShader;
.super Landroid/graphics/RuntimeShader;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final Companion:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;

.field public static final STANDARD:Landroid/view/animation/Interpolator;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

.field public final centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

.field public rawProgress:F

.field public final rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

.field public final sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->Companion:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;

    .line 7
    const-class v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    const v2, 0x3e4ccccd    # 0.2f

    .line 25
    const/4 v3, 0x0

    .line 28
    invoke-direct {v0, v2, v3, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 29
    sput-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->STANDARD:Landroid/view/animation/Interpolator;

    .line 32
    return-void
    .line 34
.end method

.method public constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    const-string p1, "\n            uniform vec2 in_center;\n            uniform vec2 in_size;\n            uniform float in_cornerRadius;\n            uniform float in_thickness;\n            uniform float in_time;\n            uniform float in_distort_radial;\n            uniform float in_distort_xy;\n            uniform float in_fadeSparkle;\n            uniform float in_fadeFill;\n            uniform float in_fadeRing;\n            uniform float in_blur;\n            uniform float in_pixelDensity;\n            layout(color) uniform vec4 in_color;\n            uniform float in_sparkle_strength;\n        \n        float triangleNoise(vec2 n) {\n            n  = fract(n * vec2(5.3987, 5.4421));\n            n += dot(n.yx, n.xy + vec2(21.5351, 14.3137));\n            float xy = n.x * n.y;\n            // compute in [0..2[ and remap to [-1.0..1.0[\n            return fract(xy * 95.4307) + fract(xy * 75.04961) - 1.0;\n        }\n\n        const float PI = 3.1415926535897932384626;\n\n        float sparkles(vec2 uv, float t) {\n            float n = triangleNoise(uv);\n            float s = 0.0;\n            for (float i = 0; i < 4; i += 1) {\n                float l = i * 0.01;\n                float h = l + 0.1;\n                float o = smoothstep(n - l, h, n);\n                o *= abs(sin(PI * o * (t + 0.55 * i)));\n                s += o;\n            }\n            return s;\n        }\n\n        vec2 distort(vec2 p, float time, float distort_amount_radial,\n            float distort_amount_xy) {\n                float angle = atan(p.y, p.x);\n                  return p + vec2(sin(angle * 8 + time * 0.003 + 1.641),\n                            cos(angle * 5 + 2.14 + time * 0.00412)) * distort_amount_radial\n                     + vec2(sin(p.x * 0.01 + time * 0.00215 + 0.8123),\n                            cos(p.y * 0.01 + time * 0.005931)) * distort_amount_xy;\n        }\n\n        // Perceived luminosity (L\u2032), not absolute luminosity.\n        half getLuminosity(vec3 c) {\n            return 0.3 * c.r + 0.59 * c.g + 0.11 * c.b;\n        }\n\n        // Creates a luminosity mask and clamp to the legal range.\n        vec3 maskLuminosity(vec3 dest, float lum) {\n            dest.rgb *= vec3(lum);\n            // Clip back into the legal range\n            dest = clamp(dest, vec3(0.), vec3(1.0));\n            return dest;\n        }\n\n        // Return range [-1, 1].\n        vec3 hash(vec3 p) {\n            p = fract(p * vec3(.3456, .1234, .9876));\n            p += dot(p, p.yxz + 43.21);\n            p = (p.xxy + p.yxx) * p.zyx;\n            return (fract(sin(p) * 4567.1234567) - .5) * 2.;\n        }\n\n        // Skew factors (non-uniform).\n        const half SKEW = 0.3333333;  // 1/3\n        const half UNSKEW = 0.1666667;  // 1/6\n\n        // Return range roughly [-1,1].\n        // It\'s because the hash function (that returns a random gradient vector) returns\n        // different magnitude of vectors. Noise doesn\'t have to be in the precise range thus\n        // skipped normalize.\n        half simplex3d(vec3 p) {\n            // Skew the input coordinate, so that we get squashed cubical grid\n            vec3 s = floor(p + (p.x + p.y + p.z) * SKEW);\n\n            // Unskew back\n            vec3 u = s - (s.x + s.y + s.z) * UNSKEW;\n\n            // Unskewed coordinate that is relative to p, to compute the noise contribution\n            // based on the distance.\n            vec3 c0 = p - u;\n\n            // We have six simplices (in this case tetrahedron, since we are in 3D) that we\n            // could possibly in.\n            // Here, we are finding the correct tetrahedron (simplex shape), and traverse its\n            // four vertices (c0..3) when computing noise contribution.\n            // The way we find them is by comparing c0\'s x,y,z values.\n            // For example in 2D, we can find the triangle (simplex shape in 2D) that we are in\n            // by comparing x and y values. i.e. x>y lower, x<y, upper triangle.\n            // Same applies in 3D.\n            //\n            // Below indicates the offsets (or offset directions) when c0=(x0,y0,z0)\n            // x0>y0>z0: (1,0,0), (1,1,0), (1,1,1)\n            // x0>z0>y0: (1,0,0), (1,0,1), (1,1,1)\n            // z0>x0>y0: (0,0,1), (1,0,1), (1,1,1)\n            // z0>y0>x0: (0,0,1), (0,1,1), (1,1,1)\n            // y0>z0>x0: (0,1,0), (0,1,1), (1,1,1)\n            // y0>x0>z0: (0,1,0), (1,1,0), (1,1,1)\n            //\n            // The rule is:\n            // * For offset1, set 1 at the max component, otherwise 0.\n            // * For offset2, set 0 at the min component, otherwise 1.\n            // * For offset3, set 1 for all.\n            //\n            // Encode x0-y0, y0-z0, z0-x0 in a vec3\n            vec3 en = c0 - c0.yzx;\n            // Each represents whether x0>y0, y0>z0, z0>x0\n            en = step(vec3(0.), en);\n            // en.zxy encodes z0>x0, x0>y0, y0>x0\n            vec3 offset1 = en * (1. - en.zxy); // find max\n            vec3 offset2 = 1. - en.zxy * (1. - en); // 1-(find min)\n            vec3 offset3 = vec3(1.);\n\n            vec3 c1 = c0 - offset1 + UNSKEW;\n            vec3 c2 = c0 - offset2 + UNSKEW * 2.;\n            vec3 c3 = c0 - offset3 + UNSKEW * 3.;\n\n            // Kernel summation: dot(max(0, r^2-d^2))^4, noise contribution)\n            //\n            // First compute d^2, squared distance to the point.\n            vec4 w; // w = max(0, r^2 - d^2))\n            w.x = dot(c0, c0);\n            w.y = dot(c1, c1);\n            w.z = dot(c2, c2);\n            w.w = dot(c3, c3);\n\n            // Noise contribution should decay to zero before they cross the simplex boundary.\n            // Usually r^2 is 0.5 or 0.6;\n            // 0.5 ensures continuity but 0.6 increases the visual quality for the application\n            // where discontinuity isn\'t noticeable.\n            w = max(0.6 - w, 0.);\n\n            // Noise contribution from each point.\n            vec4 nc;\n            nc.x = dot(hash(s), c0);\n            nc.y = dot(hash(s + offset1), c1);\n            nc.z = dot(hash(s + offset2), c2);\n            nc.w = dot(hash(s + offset3), c3);\n\n            nc *= w*w*w*w;\n\n            // Add all the noise contributions.\n            // Should multiply by the possible max contribution to adjust the range in [-1,1].\n            return dot(vec4(32.), nc);\n        }\n\n        // Random rotations.\n        // The way you create fractal noise is layering simplex noise with some rotation.\n        // To make random cloud looking noise, the rotations should not align. (Otherwise it\n        // creates patterned noise).\n        // Below rotations only rotate in one axis.\n        const mat3 rot1 = mat3(1.0, 0. ,0., 0., 0.15, -0.98, 0., 0.98, 0.15);\n        const mat3 rot2 = mat3(-0.95, 0. ,-0.3, 0., 1., 0., 0.3, 0., -0.95);\n        const mat3 rot3 = mat3(1.0, 0. ,0., 0., -0.44, -0.89, 0., 0.89, -0.44);\n\n        // Octave = 4\n        // Divide each coefficient by 3 to produce more grainy noise.\n        half simplex3d_fractal(vec3 p) {\n            return 0.675 * simplex3d(p * rot1) + 0.225 * simplex3d(2.0 * p * rot2)\n                    + 0.075 * simplex3d(4.0 * p * rot3) + 0.025 * simplex3d(8.0 * p);\n        }\n\n        // Screen blend\n        vec3 screen(vec3 dest, vec3 src) {\n            return dest + src - dest * src;\n        }\n    \n            float soften(float d, float blur) {\n                float blurHalf = blur * 0.5;\n                return smoothstep(-blurHalf, blurHalf, d);\n            }\n\n            float subtract(float outer, float inner) {\n                return max(outer, -inner);\n            }\n        float sdEllipse(vec2 p, vec2 wh) {\n            wh *= 0.5;\n\n            // symmetry\n            (wh.x > wh.y) ? wh = wh.yx, p = abs(p.yx) : p = abs(p);\n\n            vec2 u = wh*p, v = wh*wh;\n\n            float U1 = u.y/2.0;\n            float U2 = v.y-v.x;\n            float U3 = u.x-U2;\n            float U4 = u.x+U2;\n            float U5 = 4.0*U1;\n            float U6 = 6.0*U1;\n            float U7 = 3.0*U3;\n\n            float t = 0.5;\n            for (int i = 0; i < 3; i ++) {\n                float F1 = t*(t*t*(U1*t+U3)+U4)-U1;\n                float F2 = t*t*(U5*t+U7)+U4;\n                float F3 = t*(U6*t+U7);\n\n                t += (F1*F2)/(F1*F3-F2*F2);\n            }\n\n            t = clamp(t, 0.0, 1.0);\n\n            float d = distance(p, wh*vec2(1.0-t*t,2.0*t)/(t*t+1.0));\n            d /= wh.y;\n\n            return (dot(p/wh,p/wh)>1.0) ? d : -d;\n        }\n\n        float ellipseRing(vec2 p, vec2 wh) {\n            vec2 thicknessHalf = wh * 0.25;\n\n            float outerEllipse = sdEllipse(p, wh + thicknessHalf);\n            float innerEllipse = sdEllipse(p, wh);\n\n            return subtract(outerEllipse, innerEllipse);\n        }\n        \n            vec4 main(vec2 p) {\n                vec2 p_distorted = distort(p, in_time, in_distort_radial, in_distort_xy);\n\n                float sparkleRing = soften(ellipseRing(p_distorted-in_center, in_size), in_blur);\n                float inside = soften(sdEllipse(p_distorted-in_center, in_size * 1.2), in_blur);\n                float sparkle = sparkles(p - mod(p, in_pixelDensity * 0.8), in_time * 0.00175)\n                    * (1.-sparkleRing) * in_fadeSparkle;\n\n                float rippleInsideAlpha = (1.-inside) * in_fadeFill;\n                float rippleRingAlpha = (1.-sparkleRing) * in_fadeRing;\n                float rippleAlpha = max(rippleInsideAlpha, rippleRingAlpha) * in_color.a;\n                vec4 ripple = vec4(in_color.rgb, 1.0) * rippleAlpha;\n                return mix(ripple, vec4(sparkle), sparkle * in_sparkle_strength);\n            }\n        "

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 17
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 19
    throw p0

    .line 22
    :cond_1
    const-string p1, "\n            uniform vec2 in_center;\n            uniform vec2 in_size;\n            uniform float in_cornerRadius;\n            uniform float in_thickness;\n            uniform float in_time;\n            uniform float in_distort_radial;\n            uniform float in_distort_xy;\n            uniform float in_fadeSparkle;\n            uniform float in_fadeFill;\n            uniform float in_fadeRing;\n            uniform float in_blur;\n            uniform float in_pixelDensity;\n            layout(color) uniform vec4 in_color;\n            uniform float in_sparkle_strength;\n        \n        float triangleNoise(vec2 n) {\n            n  = fract(n * vec2(5.3987, 5.4421));\n            n += dot(n.yx, n.xy + vec2(21.5351, 14.3137));\n            float xy = n.x * n.y;\n            // compute in [0..2[ and remap to [-1.0..1.0[\n            return fract(xy * 95.4307) + fract(xy * 75.04961) - 1.0;\n        }\n\n        const float PI = 3.1415926535897932384626;\n\n        float sparkles(vec2 uv, float t) {\n            float n = triangleNoise(uv);\n            float s = 0.0;\n            for (float i = 0; i < 4; i += 1) {\n                float l = i * 0.01;\n                float h = l + 0.1;\n                float o = smoothstep(n - l, h, n);\n                o *= abs(sin(PI * o * (t + 0.55 * i)));\n                s += o;\n            }\n            return s;\n        }\n\n        vec2 distort(vec2 p, float time, float distort_amount_radial,\n            float distort_amount_xy) {\n                float angle = atan(p.y, p.x);\n                  return p + vec2(sin(angle * 8 + time * 0.003 + 1.641),\n                            cos(angle * 5 + 2.14 + time * 0.00412)) * distort_amount_radial\n                     + vec2(sin(p.x * 0.01 + time * 0.00215 + 0.8123),\n                            cos(p.y * 0.01 + time * 0.005931)) * distort_amount_xy;\n        }\n\n        // Perceived luminosity (L\u2032), not absolute luminosity.\n        half getLuminosity(vec3 c) {\n            return 0.3 * c.r + 0.59 * c.g + 0.11 * c.b;\n        }\n\n        // Creates a luminosity mask and clamp to the legal range.\n        vec3 maskLuminosity(vec3 dest, float lum) {\n            dest.rgb *= vec3(lum);\n            // Clip back into the legal range\n            dest = clamp(dest, vec3(0.), vec3(1.0));\n            return dest;\n        }\n\n        // Return range [-1, 1].\n        vec3 hash(vec3 p) {\n            p = fract(p * vec3(.3456, .1234, .9876));\n            p += dot(p, p.yxz + 43.21);\n            p = (p.xxy + p.yxx) * p.zyx;\n            return (fract(sin(p) * 4567.1234567) - .5) * 2.;\n        }\n\n        // Skew factors (non-uniform).\n        const half SKEW = 0.3333333;  // 1/3\n        const half UNSKEW = 0.1666667;  // 1/6\n\n        // Return range roughly [-1,1].\n        // It\'s because the hash function (that returns a random gradient vector) returns\n        // different magnitude of vectors. Noise doesn\'t have to be in the precise range thus\n        // skipped normalize.\n        half simplex3d(vec3 p) {\n            // Skew the input coordinate, so that we get squashed cubical grid\n            vec3 s = floor(p + (p.x + p.y + p.z) * SKEW);\n\n            // Unskew back\n            vec3 u = s - (s.x + s.y + s.z) * UNSKEW;\n\n            // Unskewed coordinate that is relative to p, to compute the noise contribution\n            // based on the distance.\n            vec3 c0 = p - u;\n\n            // We have six simplices (in this case tetrahedron, since we are in 3D) that we\n            // could possibly in.\n            // Here, we are finding the correct tetrahedron (simplex shape), and traverse its\n            // four vertices (c0..3) when computing noise contribution.\n            // The way we find them is by comparing c0\'s x,y,z values.\n            // For example in 2D, we can find the triangle (simplex shape in 2D) that we are in\n            // by comparing x and y values. i.e. x>y lower, x<y, upper triangle.\n            // Same applies in 3D.\n            //\n            // Below indicates the offsets (or offset directions) when c0=(x0,y0,z0)\n            // x0>y0>z0: (1,0,0), (1,1,0), (1,1,1)\n            // x0>z0>y0: (1,0,0), (1,0,1), (1,1,1)\n            // z0>x0>y0: (0,0,1), (1,0,1), (1,1,1)\n            // z0>y0>x0: (0,0,1), (0,1,1), (1,1,1)\n            // y0>z0>x0: (0,1,0), (0,1,1), (1,1,1)\n            // y0>x0>z0: (0,1,0), (1,1,0), (1,1,1)\n            //\n            // The rule is:\n            // * For offset1, set 1 at the max component, otherwise 0.\n            // * For offset2, set 0 at the min component, otherwise 1.\n            // * For offset3, set 1 for all.\n            //\n            // Encode x0-y0, y0-z0, z0-x0 in a vec3\n            vec3 en = c0 - c0.yzx;\n            // Each represents whether x0>y0, y0>z0, z0>x0\n            en = step(vec3(0.), en);\n            // en.zxy encodes z0>x0, x0>y0, y0>x0\n            vec3 offset1 = en * (1. - en.zxy); // find max\n            vec3 offset2 = 1. - en.zxy * (1. - en); // 1-(find min)\n            vec3 offset3 = vec3(1.);\n\n            vec3 c1 = c0 - offset1 + UNSKEW;\n            vec3 c2 = c0 - offset2 + UNSKEW * 2.;\n            vec3 c3 = c0 - offset3 + UNSKEW * 3.;\n\n            // Kernel summation: dot(max(0, r^2-d^2))^4, noise contribution)\n            //\n            // First compute d^2, squared distance to the point.\n            vec4 w; // w = max(0, r^2 - d^2))\n            w.x = dot(c0, c0);\n            w.y = dot(c1, c1);\n            w.z = dot(c2, c2);\n            w.w = dot(c3, c3);\n\n            // Noise contribution should decay to zero before they cross the simplex boundary.\n            // Usually r^2 is 0.5 or 0.6;\n            // 0.5 ensures continuity but 0.6 increases the visual quality for the application\n            // where discontinuity isn\'t noticeable.\n            w = max(0.6 - w, 0.);\n\n            // Noise contribution from each point.\n            vec4 nc;\n            nc.x = dot(hash(s), c0);\n            nc.y = dot(hash(s + offset1), c1);\n            nc.z = dot(hash(s + offset2), c2);\n            nc.w = dot(hash(s + offset3), c3);\n\n            nc *= w*w*w*w;\n\n            // Add all the noise contributions.\n            // Should multiply by the possible max contribution to adjust the range in [-1,1].\n            return dot(vec4(32.), nc);\n        }\n\n        // Random rotations.\n        // The way you create fractal noise is layering simplex noise with some rotation.\n        // To make random cloud looking noise, the rotations should not align. (Otherwise it\n        // creates patterned noise).\n        // Below rotations only rotate in one axis.\n        const mat3 rot1 = mat3(1.0, 0. ,0., 0., 0.15, -0.98, 0., 0.98, 0.15);\n        const mat3 rot2 = mat3(-0.95, 0. ,-0.3, 0., 1., 0., 0.3, 0., -0.95);\n        const mat3 rot3 = mat3(1.0, 0. ,0., 0., -0.44, -0.89, 0., 0.89, -0.44);\n\n        // Octave = 4\n        // Divide each coefficient by 3 to produce more grainy noise.\n        half simplex3d_fractal(vec3 p) {\n            return 0.675 * simplex3d(p * rot1) + 0.225 * simplex3d(2.0 * p * rot2)\n                    + 0.075 * simplex3d(4.0 * p * rot3) + 0.025 * simplex3d(8.0 * p);\n        }\n\n        // Screen blend\n        vec3 screen(vec3 dest, vec3 src) {\n            return dest + src - dest * src;\n        }\n    \n            float soften(float d, float blur) {\n                float blurHalf = blur * 0.5;\n                return smoothstep(-blurHalf, blurHalf, d);\n            }\n\n            float subtract(float outer, float inner) {\n                return max(outer, -inner);\n            }\n        \n            float sdRoundedBox(vec2 p, vec2 size, float cornerRadius) {\n                size *= 0.5;\n                cornerRadius *= 0.5;\n                vec2 d = abs(p)-size+cornerRadius;\n\n                float outside = length(max(d, 0.0));\n                float inside = min(max(d.x, d.y), 0.0);\n\n                return (outside+inside-cornerRadius)/size.y;\n            }\n\n            float roundedBoxRing(vec2 p, vec2 size, float cornerRadius,\n                float borderThickness) {\n                float outerRoundBox = sdRoundedBox(p, size + vec2(borderThickness),\n                    cornerRadius + borderThickness);\n                float innerRoundBox = sdRoundedBox(p, size, cornerRadius);\n                return subtract(outerRoundBox, innerRoundBox);\n            }\n        \n            vec4 main(vec2 p) {\n                float sparkleRing = soften(roundedBoxRing(p-in_center, in_size, in_cornerRadius,\n                    in_thickness), in_blur);\n                float inside = soften(sdRoundedBox(p-in_center, in_size * 1.25, in_cornerRadius),\n                    in_blur);\n                float sparkle = sparkles(p - mod(p, in_pixelDensity * 0.8), in_time * 0.00175)\n                    * (1.-sparkleRing) * in_fadeSparkle;\n\n                float rippleInsideAlpha = (1.-inside) * in_fadeFill;\n                float rippleRingAlpha = (1.-sparkleRing) * in_fadeRing;\n                float rippleAlpha = max(rippleInsideAlpha, rippleRingAlpha) * in_color.a;\n                vec4 ripple = vec4(in_color.rgb, 1.0) * rippleAlpha;\n                return mix(ripple, vec4(sparkle), sparkle * in_sparkle_strength);\n            }\n        "

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    const-string p1, "\n            uniform vec2 in_center;\n            uniform vec2 in_size;\n            uniform float in_cornerRadius;\n            uniform float in_thickness;\n            uniform float in_time;\n            uniform float in_distort_radial;\n            uniform float in_distort_xy;\n            uniform float in_fadeSparkle;\n            uniform float in_fadeFill;\n            uniform float in_fadeRing;\n            uniform float in_blur;\n            uniform float in_pixelDensity;\n            layout(color) uniform vec4 in_color;\n            uniform float in_sparkle_strength;\n        \n        float triangleNoise(vec2 n) {\n            n  = fract(n * vec2(5.3987, 5.4421));\n            n += dot(n.yx, n.xy + vec2(21.5351, 14.3137));\n            float xy = n.x * n.y;\n            // compute in [0..2[ and remap to [-1.0..1.0[\n            return fract(xy * 95.4307) + fract(xy * 75.04961) - 1.0;\n        }\n\n        const float PI = 3.1415926535897932384626;\n\n        float sparkles(vec2 uv, float t) {\n            float n = triangleNoise(uv);\n            float s = 0.0;\n            for (float i = 0; i < 4; i += 1) {\n                float l = i * 0.01;\n                float h = l + 0.1;\n                float o = smoothstep(n - l, h, n);\n                o *= abs(sin(PI * o * (t + 0.55 * i)));\n                s += o;\n            }\n            return s;\n        }\n\n        vec2 distort(vec2 p, float time, float distort_amount_radial,\n            float distort_amount_xy) {\n                float angle = atan(p.y, p.x);\n                  return p + vec2(sin(angle * 8 + time * 0.003 + 1.641),\n                            cos(angle * 5 + 2.14 + time * 0.00412)) * distort_amount_radial\n                     + vec2(sin(p.x * 0.01 + time * 0.00215 + 0.8123),\n                            cos(p.y * 0.01 + time * 0.005931)) * distort_amount_xy;\n        }\n\n        // Perceived luminosity (L\u2032), not absolute luminosity.\n        half getLuminosity(vec3 c) {\n            return 0.3 * c.r + 0.59 * c.g + 0.11 * c.b;\n        }\n\n        // Creates a luminosity mask and clamp to the legal range.\n        vec3 maskLuminosity(vec3 dest, float lum) {\n            dest.rgb *= vec3(lum);\n            // Clip back into the legal range\n            dest = clamp(dest, vec3(0.), vec3(1.0));\n            return dest;\n        }\n\n        // Return range [-1, 1].\n        vec3 hash(vec3 p) {\n            p = fract(p * vec3(.3456, .1234, .9876));\n            p += dot(p, p.yxz + 43.21);\n            p = (p.xxy + p.yxx) * p.zyx;\n            return (fract(sin(p) * 4567.1234567) - .5) * 2.;\n        }\n\n        // Skew factors (non-uniform).\n        const half SKEW = 0.3333333;  // 1/3\n        const half UNSKEW = 0.1666667;  // 1/6\n\n        // Return range roughly [-1,1].\n        // It\'s because the hash function (that returns a random gradient vector) returns\n        // different magnitude of vectors. Noise doesn\'t have to be in the precise range thus\n        // skipped normalize.\n        half simplex3d(vec3 p) {\n            // Skew the input coordinate, so that we get squashed cubical grid\n            vec3 s = floor(p + (p.x + p.y + p.z) * SKEW);\n\n            // Unskew back\n            vec3 u = s - (s.x + s.y + s.z) * UNSKEW;\n\n            // Unskewed coordinate that is relative to p, to compute the noise contribution\n            // based on the distance.\n            vec3 c0 = p - u;\n\n            // We have six simplices (in this case tetrahedron, since we are in 3D) that we\n            // could possibly in.\n            // Here, we are finding the correct tetrahedron (simplex shape), and traverse its\n            // four vertices (c0..3) when computing noise contribution.\n            // The way we find them is by comparing c0\'s x,y,z values.\n            // For example in 2D, we can find the triangle (simplex shape in 2D) that we are in\n            // by comparing x and y values. i.e. x>y lower, x<y, upper triangle.\n            // Same applies in 3D.\n            //\n            // Below indicates the offsets (or offset directions) when c0=(x0,y0,z0)\n            // x0>y0>z0: (1,0,0), (1,1,0), (1,1,1)\n            // x0>z0>y0: (1,0,0), (1,0,1), (1,1,1)\n            // z0>x0>y0: (0,0,1), (1,0,1), (1,1,1)\n            // z0>y0>x0: (0,0,1), (0,1,1), (1,1,1)\n            // y0>z0>x0: (0,1,0), (0,1,1), (1,1,1)\n            // y0>x0>z0: (0,1,0), (1,1,0), (1,1,1)\n            //\n            // The rule is:\n            // * For offset1, set 1 at the max component, otherwise 0.\n            // * For offset2, set 0 at the min component, otherwise 1.\n            // * For offset3, set 1 for all.\n            //\n            // Encode x0-y0, y0-z0, z0-x0 in a vec3\n            vec3 en = c0 - c0.yzx;\n            // Each represents whether x0>y0, y0>z0, z0>x0\n            en = step(vec3(0.), en);\n            // en.zxy encodes z0>x0, x0>y0, y0>x0\n            vec3 offset1 = en * (1. - en.zxy); // find max\n            vec3 offset2 = 1. - en.zxy * (1. - en); // 1-(find min)\n            vec3 offset3 = vec3(1.);\n\n            vec3 c1 = c0 - offset1 + UNSKEW;\n            vec3 c2 = c0 - offset2 + UNSKEW * 2.;\n            vec3 c3 = c0 - offset3 + UNSKEW * 3.;\n\n            // Kernel summation: dot(max(0, r^2-d^2))^4, noise contribution)\n            //\n            // First compute d^2, squared distance to the point.\n            vec4 w; // w = max(0, r^2 - d^2))\n            w.x = dot(c0, c0);\n            w.y = dot(c1, c1);\n            w.z = dot(c2, c2);\n            w.w = dot(c3, c3);\n\n            // Noise contribution should decay to zero before they cross the simplex boundary.\n            // Usually r^2 is 0.5 or 0.6;\n            // 0.5 ensures continuity but 0.6 increases the visual quality for the application\n            // where discontinuity isn\'t noticeable.\n            w = max(0.6 - w, 0.);\n\n            // Noise contribution from each point.\n            vec4 nc;\n            nc.x = dot(hash(s), c0);\n            nc.y = dot(hash(s + offset1), c1);\n            nc.z = dot(hash(s + offset2), c2);\n            nc.w = dot(hash(s + offset3), c3);\n\n            nc *= w*w*w*w;\n\n            // Add all the noise contributions.\n            // Should multiply by the possible max contribution to adjust the range in [-1,1].\n            return dot(vec4(32.), nc);\n        }\n\n        // Random rotations.\n        // The way you create fractal noise is layering simplex noise with some rotation.\n        // To make random cloud looking noise, the rotations should not align. (Otherwise it\n        // creates patterned noise).\n        // Below rotations only rotate in one axis.\n        const mat3 rot1 = mat3(1.0, 0. ,0., 0., 0.15, -0.98, 0., 0.98, 0.15);\n        const mat3 rot2 = mat3(-0.95, 0. ,-0.3, 0., 1., 0., 0.3, 0., -0.95);\n        const mat3 rot3 = mat3(1.0, 0. ,0., 0., -0.44, -0.89, 0., 0.89, -0.44);\n\n        // Octave = 4\n        // Divide each coefficient by 3 to produce more grainy noise.\n        half simplex3d_fractal(vec3 p) {\n            return 0.675 * simplex3d(p * rot1) + 0.225 * simplex3d(2.0 * p * rot2)\n                    + 0.075 * simplex3d(4.0 * p * rot3) + 0.025 * simplex3d(8.0 * p);\n        }\n\n        // Screen blend\n        vec3 screen(vec3 dest, vec3 src) {\n            return dest + src - dest * src;\n        }\n    \n            float soften(float d, float blur) {\n                float blurHalf = blur * 0.5;\n                return smoothstep(-blurHalf, blurHalf, d);\n            }\n\n            float subtract(float outer, float inner) {\n                return max(outer, -inner);\n            }\n        \n            float sdCircle(vec2 p, float r) {\n                return (length(p)-r) / r;\n            }\n\n            float circleRing(vec2 p, float radius) {\n                float thicknessHalf = radius * 0.25;\n\n                float outerCircle = sdCircle(p, radius + thicknessHalf);\n                float innerCircle = sdCircle(p, radius);\n\n                return subtract(outerCircle, innerCircle);\n            }\n        \n            vec4 main(vec2 p) {\n                vec2 p_distorted = distort(p, in_time, in_distort_radial, in_distort_xy);\n                float radius = in_size.x * 0.5;\n                float sparkleRing = soften(circleRing(p_distorted-in_center, radius), in_blur);\n                float inside = soften(sdCircle(p_distorted-in_center, radius * 1.25), in_blur);\n                float sparkle = sparkles(p - mod(p, in_pixelDensity * 0.8), in_time * 0.00175)\n                    * (1.-sparkleRing) * in_fadeSparkle;\n\n                float rippleInsideAlpha = (1.-inside) * in_fadeFill;\n                float rippleRingAlpha = (1.-sparkleRing) * in_fadeRing;\n                float rippleAlpha = max(rippleInsideAlpha, rippleRingAlpha) * in_color.a;\n                vec4 ripple = vec4(in_color.rgb, 1.0) * rippleAlpha;\n                return mix(ripple, vec4(sparkle), sparkle * in_sparkle_strength);\n            }\n        "

    .line 26
    :goto_0
    invoke-direct {p0, p1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 31
    invoke-direct {p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 36
    new-instance p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 38
    const v0, 0x3dcccccd    # 0.1f

    .line 40
    const v1, 0x3ecccccd    # 0.4f

    .line 43
    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;-><init>(FFF)V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 51
    new-instance p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 53
    const v1, 0x3e99999a    # 0.3f

    .line 55
    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;-><init>(FFF)V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 61
    new-instance p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 63
    const v0, 0x3f19999a    # 0.6f

    .line 65
    const/4 v1, 0x0

    .line 68
    invoke-direct {p1, v1, v1, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;-><init>(FFF)V

    .line 69
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 72
    return-void
    .line 74
.end method


# virtual methods
.method public final setDistortionStrength(F)V
    .locals 3

    .line 1
    const/16 v0, 0x4b

    .line 2
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rawProgress:F

    .line 5
    mul-float/2addr v1, v0

    .line 7
    mul-float/2addr v1, p1

    .line 8
    const-string v2, "in_distort_radial"

    .line 9
    invoke-virtual {p0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 11
    const-string v1, "in_distort_xy"

    .line 14
    mul-float/2addr v0, p1

    .line 16
    invoke-virtual {p0, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 17
    return-void
    .line 20
.end method

.method public final setPixelDensity(F)V
    .locals 1

    .line 1
    const-string v0, "in_pixelDensity"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 4
    return-void
    .line 7
.end method

.method public final setRawProgress(F)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rawProgress:F

    .line 2
    sget-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->STANDARD:Landroid/view/animation/Interpolator;

    .line 4
    check-cast v0, Landroid/view/animation/PathInterpolator;

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 12
    iget-object v2, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    const/4 v3, 0x0

    .line 24
    cmpl-float v3, v0, v3

    .line 25
    if-lez v3, :cond_0

    .line 27
    sget-object v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->TAG:Ljava/lang/String;

    .line 29
    const-string v4, "Did you forget to set the ripple size? Use [setMaxSize] or [setSizeAtProgresses] before playing the animation."

    .line 31
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v3, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 36
    filled-new-array {v3}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 38
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    .line 42
    iget v3, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentSizeIndex:I

    .line 45
    goto :goto_1

    .line 47
    :cond_1
    iget v3, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentSizeIndex:I

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 54
    :goto_0
    iget v3, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    .line 56
    cmpl-float v3, v0, v3

    .line 58
    if-lez v3, :cond_2

    .line 60
    iget v3, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentSizeIndex:I

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v4

    .line 69
    add-int/lit8 v4, v4, -0x1

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 72
    move-result v3

    .line 75
    iput v3, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentSizeIndex:I

    .line 76
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 81
    check-cast v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    iget v3, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentSizeIndex:I

    .line 85
    :goto_1
    add-int/lit8 v4, v3, -0x1

    .line 87
    const/4 v5, 0x0

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 90
    move-result v4

    .line 93
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v3

    .line 97
    check-cast v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 98
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 103
    check-cast v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 104
    iget v4, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    .line 106
    iget v5, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    .line 108
    invoke-static {v4, v5, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;->subProgress(FFF)F

    .line 110
    move-result v4

    .line 113
    iget v5, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    .line 114
    mul-float/2addr v5, v4

    .line 116
    iget v6, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    .line 117
    add-float/2addr v5, v6

    .line 119
    iput v5, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentWidth:F

    .line 120
    iget v3, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    .line 122
    mul-float/2addr v3, v4

    .line 124
    iget v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    .line 125
    add-float/2addr v3, v2

    .line 127
    iput v3, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentHeight:F

    .line 128
    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 130
    iget v2, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentWidth:F

    .line 132
    iget v1, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentHeight:F

    .line 134
    const-string v3, "in_size"

    .line 136
    invoke-virtual {p0, v3, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 141
    iget v1, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentHeight:F

    .line 143
    const/high16 v2, 0x3f000000    # 0.5f

    .line 145
    mul-float/2addr v1, v2

    .line 147
    const-string v2, "in_thickness"

    .line 148
    invoke-virtual {p0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 150
    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 153
    iget v2, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentWidth:F

    .line 155
    iget v1, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentHeight:F

    .line 157
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 159
    move-result v1

    .line 162
    const-string v2, "in_cornerRadius"

    .line 163
    invoke-virtual {p0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 165
    const/high16 v1, -0x40c00000    # -0.75f

    .line 168
    mul-float/2addr v0, v1

    .line 170
    const/high16 v1, 0x3fa00000    # 1.25f

    .line 171
    add-float/2addr v0, v1

    .line 173
    const-string v1, "in_blur"

    .line 174
    invoke-virtual {p0, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 179
    invoke-static {v0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;->access$getFade(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;F)F

    .line 181
    move-result v0

    .line 184
    const-string v1, "in_fadeSparkle"

    .line 185
    invoke-virtual {p0, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 190
    invoke-static {v0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;->access$getFade(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;F)F

    .line 192
    move-result v0

    .line 195
    const-string v1, "in_fadeRing"

    .line 196
    invoke-virtual {p0, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 201
    invoke-static {v0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;->access$getFade(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;F)F

    .line 203
    move-result p1

    .line 206
    const-string v0, "in_fadeFill"

    .line 207
    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 209
    return-void
    .line 212
.end method
