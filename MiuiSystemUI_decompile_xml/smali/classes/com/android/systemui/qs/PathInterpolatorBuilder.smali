.class public final Lcom/android/systemui/qs/PathInterpolatorBuilder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mDist:[F

.field public mX:[F

.field public mY:[F


# direct methods
.method public constructor <init>(F)V
    .locals 12

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/high16 v4, 0x3f800000    # 1.0f

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v7, Landroid/graphics/Path;

    .line 9
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 11
    const/4 v8, 0x0

    .line 14
    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    const/high16 v5, 0x3f800000    # 1.0f

    .line 18
    const/high16 v6, 0x3f800000    # 1.0f

    .line 20
    move-object v0, v7

    .line 22
    move v3, p1

    .line 23
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 24
    const p1, 0x3b03126f    # 0.002f

    .line 27
    invoke-virtual {v7, p1}, Landroid/graphics/Path;->approximate(F)[F

    .line 30
    move-result-object p1

    .line 33
    array-length v0, p1

    .line 34
    div-int/lit8 v0, v0, 0x3

    .line 35
    const/4 v1, 0x1

    .line 37
    aget v2, p1, v1

    .line 38
    cmpl-float v2, v2, v8

    .line 40
    if-nez v2, :cond_6

    .line 42
    const/4 v2, 0x2

    .line 44
    aget v3, p1, v2

    .line 45
    cmpl-float v3, v3, v8

    .line 47
    if-nez v3, :cond_6

    .line 49
    array-length v3, p1

    .line 51
    sub-int/2addr v3, v2

    .line 52
    aget v2, p1, v3

    .line 53
    const/high16 v3, 0x3f800000    # 1.0f

    .line 55
    cmpl-float v2, v2, v3

    .line 57
    if-nez v2, :cond_6

    .line 59
    array-length v2, p1

    .line 61
    sub-int/2addr v2, v1

    .line 62
    aget v2, p1, v2

    .line 63
    cmpl-float v2, v2, v3

    .line 65
    if-nez v2, :cond_6

    .line 67
    new-array v2, v0, [F

    .line 69
    iput-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    .line 71
    new-array v2, v0, [F

    .line 73
    iput-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    .line 75
    new-array v2, v0, [F

    .line 77
    iput-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    .line 79
    const/4 v2, 0x0

    .line 81
    move v4, v2

    .line 82
    move v5, v4

    .line 83
    move v3, v8

    .line 84
    :goto_0
    if-ge v4, v0, :cond_4

    .line 85
    add-int/lit8 v6, v5, 0x1

    .line 87
    aget v5, p1, v5

    .line 89
    add-int/lit8 v7, v6, 0x1

    .line 91
    aget v6, p1, v6

    .line 93
    add-int/lit8 v9, v7, 0x1

    .line 95
    aget v7, p1, v7

    .line 97
    cmpl-float v8, v5, v8

    .line 99
    if-nez v8, :cond_1

    .line 101
    cmpl-float v8, v6, v3

    .line 103
    if-nez v8, :cond_0

    .line 105
    goto :goto_1

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 108
    const-string p1, "The Path cannot have discontinuity in the X axis."

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0

    .line 115
    :cond_1
    :goto_1
    cmpg-float v3, v6, v3

    .line 116
    if-ltz v3, :cond_3

    .line 118
    iget-object v3, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    .line 120
    aput v6, v3, v4

    .line 122
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    .line 124
    aput v7, v8, v4

    .line 126
    if-lez v4, :cond_2

    .line 128
    aget v10, v3, v4

    .line 130
    add-int/lit8 v11, v4, -0x1

    .line 132
    aget v3, v3, v11

    .line 134
    sub-float/2addr v10, v3

    .line 136
    aget v3, v8, v11

    .line 137
    sub-float/2addr v7, v3

    .line 139
    mul-float/2addr v10, v10

    .line 140
    mul-float/2addr v7, v7

    .line 141
    add-float/2addr v7, v10

    .line 142
    float-to-double v7, v7

    .line 143
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 144
    move-result-wide v7

    .line 147
    double-to-float v3, v7

    .line 148
    iget-object v7, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    .line 149
    aget v8, v7, v11

    .line 151
    add-float/2addr v8, v3

    .line 153
    aput v8, v7, v4

    .line 154
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 156
    move v8, v5

    .line 158
    move v3, v6

    .line 159
    move v5, v9

    .line 160
    goto :goto_0

    .line 161
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 162
    const-string p1, "The Path cannot loop back on itself."

    .line 164
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    throw p0

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    .line 170
    array-length v3, p1

    .line 172
    sub-int/2addr v3, v1

    .line 173
    aget p1, p1, v3

    .line 174
    :goto_2
    if-ge v2, v0, :cond_5

    .line 176
    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    .line 178
    aget v3, v1, v2

    .line 180
    div-float/2addr v3, p1

    .line 182
    aput v3, v1, v2

    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 185
    goto :goto_2

    .line 187
    :cond_5
    return-void

    .line 188
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 189
    const-string p1, "The Path must start at (0,0) and end at (1,1)"

    .line 191
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    throw p0
    .line 196
.end method
