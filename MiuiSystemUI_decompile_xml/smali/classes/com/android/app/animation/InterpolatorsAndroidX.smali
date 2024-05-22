.class public abstract Lcom/android/app/animation/InterpolatorsAndroidX;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DECELERATE_QUINT:Landroidx/core/animation/DecelerateInterpolator;

.field public static final FAST_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

.field public static final LEGACY:Landroidx/core/animation/PathInterpolator;

.field public static final LEGACY_ACCELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final LEGACY_DECELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final LINEAR:Landroidx/core/animation/LinearInterpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

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
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 48
    invoke-direct {v0, v7}, Landroidx/core/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    .line 50
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 53
    const v1, 0x3e99999a    # 0.3f

    .line 55
    const v2, 0x3f4ccccd    # 0.8f

    .line 58
    const v3, 0x3e19999a    # 0.15f

    .line 61
    invoke-direct {v0, v1, v8, v2, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 64
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 67
    const v3, 0x3d4ccccd    # 0.05f

    .line 69
    const v4, 0x3f333333    # 0.7f

    .line 72
    const v5, 0x3dcccccd    # 0.1f

    .line 75
    invoke-direct {v0, v3, v4, v5, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 78
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 81
    const v3, 0x3e4ccccd    # 0.2f

    .line 83
    invoke-direct {v0, v3, v8, v8, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 86
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 89
    invoke-direct {v0, v1, v8, v6, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 91
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 94
    invoke-direct {v0, v8, v8, v8, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 96
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 99
    const v7, 0x3ecccccd    # 0.4f

    .line 101
    invoke-direct {v0, v7, v8, v3, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 104
    sput-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY:Landroidx/core/animation/PathInterpolator;

    .line 107
    new-instance v9, Landroidx/core/animation/PathInterpolator;

    .line 109
    invoke-direct {v9, v7, v8, v6, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 111
    sput-object v9, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY_ACCELERATE:Landroidx/core/animation/PathInterpolator;

    .line 114
    new-instance v9, Landroidx/core/animation/PathInterpolator;

    .line 116
    invoke-direct {v9, v8, v8, v3, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 118
    sput-object v9, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY_DECELERATE:Landroidx/core/animation/PathInterpolator;

    .line 121
    new-instance v10, Landroidx/core/animation/LinearInterpolator;

    .line 123
    invoke-direct {v10}, Landroidx/core/animation/LinearInterpolator;-><init>()V

    .line 125
    sput-object v10, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    .line 128
    sput-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->FAST_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    .line 130
    sput-object v9, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    .line 132
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 134
    const v9, 0x3f19999a    # 0.6f

    .line 136
    invoke-direct {v0, v2, v8, v9, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 139
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 142
    invoke-direct {v0, v2, v8, v6, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 144
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 147
    invoke-direct {v0, v7, v8, v6, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 149
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 152
    invoke-direct {v0, v8, v8, v2, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 154
    new-instance v0, Landroidx/core/animation/DecelerateInterpolator;

    .line 157
    invoke-direct {v0}, Landroidx/core/animation/DecelerateInterpolator;-><init>()V

    .line 159
    sput-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->DECELERATE_QUINT:Landroidx/core/animation/DecelerateInterpolator;

    .line 162
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 164
    invoke-direct {v0, v7, v8, v9, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 166
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 169
    const v2, 0x3fb33333    # 1.4f

    .line 171
    invoke-direct {v0, v7, v8, v3, v2}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 174
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 177
    const v2, 0x3f8ccccd    # 1.1f

    .line 179
    invoke-direct {v0, v7, v8, v3, v2}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 182
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 185
    const/high16 v2, 0x3f000000    # 0.5f

    .line 187
    invoke-direct {v0, v1, v8, v2, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 189
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 192
    invoke-direct {v0, v7, v8, v3, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 194
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 197
    invoke-direct {v0, v1, v8, v5, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 199
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 202
    const v1, 0x3f666666    # 0.9f

    .line 204
    invoke-direct {v0, v1, v8, v4, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 207
    return-void
    .line 210
.end method
