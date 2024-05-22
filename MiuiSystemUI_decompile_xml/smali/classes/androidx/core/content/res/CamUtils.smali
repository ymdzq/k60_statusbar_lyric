.class public abstract Landroidx/core/content/res/CamUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CAM16RGB_TO_XYZ:[[F

.field public static final SRGB_TO_XYZ:[[F

.field public static final WHITE_POINT_D65:[F

.field public static final XYZ_TO_CAM16RGB:[[F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    .line 5
    new-array v2, v0, [F

    .line 8
    fill-array-data v2, :array_1

    .line 10
    new-array v3, v0, [F

    .line 13
    fill-array-data v3, :array_2

    .line 15
    filled-new-array {v1, v2, v3}, [[F

    .line 18
    move-result-object v1

    .line 21
    sput-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 22
    new-array v1, v0, [F

    .line 24
    fill-array-data v1, :array_3

    .line 26
    new-array v2, v0, [F

    .line 29
    fill-array-data v2, :array_4

    .line 31
    new-array v3, v0, [F

    .line 34
    fill-array-data v3, :array_5

    .line 36
    filled-new-array {v1, v2, v3}, [[F

    .line 39
    move-result-object v1

    .line 42
    sput-object v1, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 43
    new-array v1, v0, [F

    .line 45
    fill-array-data v1, :array_6

    .line 47
    sput-object v1, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 50
    new-array v1, v0, [F

    .line 52
    fill-array-data v1, :array_7

    .line 54
    new-array v2, v0, [F

    .line 57
    fill-array-data v2, :array_8

    .line 59
    new-array v0, v0, [F

    .line 62
    fill-array-data v0, :array_9

    .line 64
    filled-new-array {v1, v2, v0}, [[F

    .line 67
    move-result-object v0

    .line 70
    sput-object v0, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    .line 71
    return-void

    .line 73
    :array_0
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b    # -0.051461f
    .end array-data

    .line 74
    :array_1
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    .line 84
    :array_2
    .array-data 4
        -0x44f7c02b    # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    .line 94
    :array_3
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    .line 104
    :array_4
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    .line 114
    :array_5
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data

    .line 124
    :array_6
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data

    .line 134
    :array_7
    .array-data 4
        0x3ed31e17
        0x3eb71a0d
        0x3e38d7b9
    .end array-data

    .line 144
    :array_8
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3f371759    # 0.7152f
        0x3d93dd98    # 0.0722f
    .end array-data

    .line 154
    :array_9
    .array-data 4
        0x3c9e47ef
        0x3df40c29
        0x3f7349cc
    .end array-data
    .line 164
.end method

.method public static intFromLStar(F)I
    .locals 15

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    cmpg-float v0, p0, v0

    .line 4
    if-gez v0, :cond_0

    .line 6
    const/high16 p0, -0x1000000

    .line 8
    return p0

    .line 10
    :cond_0
    const/high16 v0, 0x42c60000    # 99.0f

    .line 11
    cmpl-float v0, p0, v0

    .line 13
    if-lez v0, :cond_1

    .line 15
    const/4 p0, -0x1

    .line 17
    return p0

    .line 18
    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    .line 19
    add-float v1, p0, v0

    .line 21
    const/high16 v2, 0x42e80000    # 116.0f

    .line 23
    div-float/2addr v1, v2

    .line 25
    const/high16 v3, 0x41000000    # 8.0f

    .line 26
    cmpl-float v3, p0, v3

    .line 28
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    if-lez v3, :cond_2

    .line 32
    move v3, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v3, v5

    .line 36
    :goto_0
    const v6, 0x4461d2f7

    .line 37
    if-eqz v3, :cond_3

    .line 40
    mul-float p0, v1, v1

    .line 42
    mul-float/2addr p0, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    div-float/2addr p0, v6

    .line 46
    :goto_1
    mul-float v3, v1, v1

    .line 47
    mul-float/2addr v3, v1

    .line 49
    const v7, 0x3c111aa7

    .line 50
    cmpl-float v7, v3, v7

    .line 53
    if-lez v7, :cond_4

    .line 55
    move v7, v4

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move v7, v5

    .line 59
    :goto_2
    if-eqz v7, :cond_5

    .line 60
    move v8, v3

    .line 62
    goto :goto_3

    .line 63
    :cond_5
    mul-float v8, v1, v2

    .line 64
    sub-float/2addr v8, v0

    .line 66
    div-float/2addr v8, v6

    .line 67
    :goto_3
    if-eqz v7, :cond_6

    .line 68
    goto :goto_4

    .line 70
    :cond_6
    mul-float/2addr v1, v2

    .line 71
    sub-float/2addr v1, v0

    .line 72
    div-float v3, v1, v6

    .line 73
    :goto_4
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 75
    aget v1, v0, v5

    .line 77
    mul-float/2addr v8, v1

    .line 79
    float-to-double v9, v8

    .line 80
    aget v1, v0, v4

    .line 81
    mul-float/2addr p0, v1

    .line 83
    float-to-double v11, p0

    .line 84
    const/4 p0, 0x2

    .line 85
    aget p0, v0, p0

    .line 86
    mul-float/2addr v3, p0

    .line 88
    float-to-double v13, v3

    .line 89
    invoke-static/range {v9 .. v14}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    .line 90
    move-result p0

    .line 93
    return p0
    .line 94
.end method

.method public static linearized(I)F
    .locals 6

    .line 1
    int-to-float p0, p0

    .line 2
    const/high16 v0, 0x437f0000    # 255.0f

    .line 3
    div-float/2addr p0, v0

    .line 5
    const v0, 0x3d25aee6    # 0.04045f

    .line 6
    cmpg-float v0, p0, v0

    .line 9
    const/high16 v1, 0x42c80000    # 100.0f

    .line 11
    if-gtz v0, :cond_0

    .line 13
    const v0, 0x414eb852    # 12.92f

    .line 15
    div-float/2addr p0, v0

    .line 18
    :goto_0
    mul-float/2addr p0, v1

    .line 19
    return p0

    .line 20
    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    .line 21
    add-float/2addr p0, v0

    .line 24
    const v0, 0x3f870a3d    # 1.055f

    .line 25
    div-float/2addr p0, v0

    .line 28
    float-to-double v2, p0

    .line 29
    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    .line 30
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 35
    move-result-wide v2

    .line 38
    double-to-float p0, v2

    .line 39
    goto :goto_0
    .line 40
.end method

.method public static yFromLStar()F
    .locals 4

    .line 1
    const/high16 v0, 0x42480000    # 50.0f

    .line 2
    float-to-double v0, v0

    .line 4
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    .line 5
    add-double/2addr v0, v2

    .line 7
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    .line 8
    div-double/2addr v0, v2

    .line 10
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 13
    move-result-wide v0

    .line 16
    double-to-float v0, v0

    .line 17
    const/high16 v1, 0x42c80000    # 100.0f

    .line 18
    mul-float/2addr v0, v1

    .line 20
    return v0
    .line 21
.end method
