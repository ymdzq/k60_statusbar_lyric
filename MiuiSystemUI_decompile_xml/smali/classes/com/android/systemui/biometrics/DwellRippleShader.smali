.class public final Lcom/android/systemui/biometrics/DwellRippleShader;
.super Landroid/graphics/RuntimeShader;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public color:I

.field public maxRadius:F

.field public progress:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "uniform vec2 in_origin;\n                uniform float in_time;\n                uniform float in_radius;\n                uniform float in_blur;\n                layout(color) uniform vec4 in_color;\n                uniform float in_phase1;\n                uniform float in_phase2;\n                uniform float in_distortion_strength;\n                float softCircle(vec2 uv, vec2 xy, float radius, float blur) {\n                  float blurHalf = blur * 0.5;\n                  float d = distance(uv, xy);\n                  return 1. - smoothstep(1. - blurHalf, 1. + blurHalf, d / radius);\n                }\n\n                float softRing(vec2 uv, vec2 xy, float radius, float blur) {\n                  float thickness_half = radius * 0.25;\n                  float circle_outer = softCircle(uv, xy, radius + thickness_half, blur);\n                  float circle_inner = softCircle(uv, xy, radius - thickness_half, blur);\n                  return circle_outer - circle_inner;\n                }\n\n                vec2 distort(vec2 p, float time, float distort_amount_xy, float frequency) {\n                    return p + vec2(sin(p.y * frequency + in_phase1),\n                                    cos(p.x * frequency * -1.23 + in_phase2)) * distort_amount_xy;\n                }\n\n                vec4 ripple(vec2 p, float distort_xy, float frequency) {\n                    vec2 p_distorted = distort(p, in_time, distort_xy, frequency);\n                    float circle = softCircle(p_distorted, in_origin, in_radius * 1.2, in_blur);\n                    float rippleAlpha = max(circle,\n                        softRing(p_distorted, in_origin, in_radius, in_blur)) * 0.25;\n                    return in_color * rippleAlpha;\n                }\n                vec4 main(vec2 p) {\n                    vec4 color1 = ripple(p,\n                        34 * in_distortion_strength, // distort_xy\n                        0.012 // frequency\n                    );\n                    vec4 color2 = ripple(p,\n                        49 * in_distortion_strength, // distort_xy\n                        0.018 // frequency\n                    );\n                    // Alpha blend between two layers.\n                    return vec4(color1.xyz + color2.xyz\n                        * (1 - color1.w), color1.w + color2.w * (1-color1.w));\n                }"

    .line 2
    invoke-direct {p0, v0}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/graphics/Point;

    .line 8
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 10
    const v0, 0xffffff

    .line 13
    iput v0, p0, Lcom/android/systemui/biometrics/DwellRippleShader;->color:I

    .line 16
    return-void
    .line 18
.end method
