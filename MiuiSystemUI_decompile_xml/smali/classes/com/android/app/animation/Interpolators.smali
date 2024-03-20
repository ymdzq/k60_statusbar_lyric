.class public abstract Lcom/android/app/animation/Interpolators;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final CONTROL_STATE:Landroid/view/animation/Interpolator;

.field public static final CUSTOM_40_40:Landroid/view/animation/Interpolator;

.field public static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

.field public static final ICON_OVERSHOT:Landroid/view/animation/Interpolator;

.field public static final ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

.field public static final STANDARD:Landroid/view/animation/Interpolator;

.field public static final STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE_REVERSE:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v7, Landroid/graphics/Path;

    .line 2
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 4
    const/4 v8, 0x0

    .line 7
    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    const v1, 0x3d4ccccd    # 0.05f

    .line 11
    const/4 v2, 0x0

    .line 14
    const v3, 0x3e088872

    .line 15
    const v4, 0x3d75c28f    # 0.06f

    .line 18
    const v5, 0x3e2aaa7e

    .line 21
    const v6, 0x3ecccccd    # 0.4f

    .line 24
    move-object v0, v7

    .line 27
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 28
    const v1, 0x3e55553f    # 0.208333f

    .line 31
    const v2, 0x3f51eb85    # 0.82f

    .line 34
    const/high16 v3, 0x3e800000    # 0.25f

    .line 37
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    const/high16 v6, 0x3f800000    # 1.0f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 48
    invoke-direct {v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    .line 50
    sput-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 55
    const v1, 0x3e99999a    # 0.3f

    .line 57
    const v2, 0x3f4ccccd    # 0.8f

    .line 60
    const v3, 0x3e19999a    # 0.15f

    .line 63
    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 66
    sput-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 71
    const v3, 0x3d4ccccd    # 0.05f

    .line 73
    const v4, 0x3f333333    # 0.7f

    .line 76
    const v5, 0x3dcccccd    # 0.1f

    .line 79
    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 82
    sput-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 87
    const v3, 0x3e4ccccd    # 0.2f

    .line 89
    invoke-direct {v0, v3, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 92
    sput-object v0, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 97
    invoke-direct {v0, v1, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 99
    sput-object v0, Lcom/android/app/animation/Interpolators;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 102
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 104
    invoke-direct {v0, v8, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 106
    sput-object v0, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    .line 109
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 111
    const v7, 0x3ecccccd    # 0.4f

    .line 113
    invoke-direct {v0, v7, v8, v3, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 116
    new-instance v9, Landroid/view/animation/PathInterpolator;

    .line 119
    invoke-direct {v9, v7, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 121
    new-instance v10, Landroid/view/animation/PathInterpolator;

    .line 124
    invoke-direct {v10, v8, v8, v3, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 126
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    .line 129
    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 131
    sput-object v11, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 134
    sput-object v0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 136
    sput-object v9, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 138
    sput-object v10, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 140
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 142
    const v9, 0x3f19999a    # 0.6f

    .line 144
    invoke-direct {v0, v2, v8, v9, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 147
    sput-object v0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 150
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 152
    invoke-direct {v0, v2, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 154
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 157
    invoke-direct {v0, v7, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 159
    sput-object v0, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 162
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 164
    invoke-direct {v0, v8, v8, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 166
    sput-object v0, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 169
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 171
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 173
    sput-object v0, Lcom/android/app/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    .line 176
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 178
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 180
    sput-object v0, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 183
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 185
    const/high16 v2, 0x40200000    # 2.5f

    .line 187
    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 189
    sput-object v0, Lcom/android/app/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 192
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 194
    invoke-direct {v0, v7, v8, v9, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 196
    sput-object v0, Lcom/android/app/animation/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    .line 199
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 201
    const v2, 0x3fb33333    # 1.4f

    .line 203
    invoke-direct {v0, v7, v8, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 206
    sput-object v0, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 209
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 211
    const v2, 0x3f8ccccd    # 1.1f

    .line 213
    invoke-direct {v0, v7, v8, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 216
    sput-object v0, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

    .line 219
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 221
    const/high16 v2, 0x3f000000    # 0.5f

    .line 223
    invoke-direct {v0, v1, v8, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 225
    sput-object v0, Lcom/android/app/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    .line 228
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    .line 230
    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 232
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 235
    invoke-direct {v0, v7, v8, v3, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 237
    sput-object v0, Lcom/android/app/animation/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    .line 240
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 242
    invoke-direct {v0, v1, v8, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 244
    sput-object v0, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 247
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 249
    const v1, 0x3f666666    # 0.9f

    .line 251
    invoke-direct {v0, v1, v8, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 254
    sput-object v0, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE_REVERSE:Landroid/view/animation/Interpolator;

    .line 257
    return-void
    .line 259
.end method

.method public static getOvershootInterpolation(FF)F
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    if-eqz v1, :cond_1

    .line 5
    const v1, 0x402aaaaa

    .line 7
    float-to-double v1, v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 11
    move-result-wide v1

    .line 14
    double-to-float v1, v1

    .line 15
    div-float/2addr v1, p1

    .line 16
    neg-float p1, v1

    .line 17
    mul-float/2addr p1, p0

    .line 18
    float-to-double p0, p1

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    .line 20
    move-result-wide p0

    .line 23
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 24
    sub-double/2addr v1, p0

    .line 26
    double-to-float p0, v1

    .line 27
    const p1, 0x3fcccccd    # 1.6f

    .line 28
    mul-float/2addr p0, p1

    .line 31
    cmpl-float p1, v0, p0

    .line 32
    if-lez p1, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    move v0, p0

    .line 37
    :goto_0
    return v0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    const-string p1, "Invalid values for overshoot"

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
    .line 46
.end method
