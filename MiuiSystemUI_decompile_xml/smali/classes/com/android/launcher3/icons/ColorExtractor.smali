.class public final Lcom/android/launcher3/icons/ColorExtractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mTmpHsv:[F

.field public final mTmpHueScoreHistogram:[F

.field public final mTmpPixels:[I

.field public final mTmpRgbScores:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    .line 8
    const/16 v0, 0x168

    .line 10
    new-array v0, v0, [F

    .line 12
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    .line 14
    const/16 v0, 0x14

    .line 16
    new-array v0, v0, [I

    .line 18
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    .line 22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    .line 27
    return-void
    .line 29
.end method


# virtual methods
.method public final findDominantColorByHue(Landroid/graphics/Bitmap;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    move-result v2

    .line 11
    mul-int v3, v1, v2

    .line 12
    const/16 v4, 0x14

    .line 14
    div-int/2addr v3, v4

    .line 16
    int-to-double v5, v3

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 18
    move-result-wide v5

    .line 21
    double-to-int v3, v5

    .line 22
    const/4 v5, 0x1

    .line 23
    if-ge v3, v5, :cond_0

    .line 24
    move v3, v5

    .line 26
    :cond_0
    iget-object v6, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    .line 27
    const/4 v7, 0x0

    .line 29
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 30
    iget-object v8, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    .line 33
    invoke-static {v8, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 35
    iget-object v7, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    .line 38
    const/4 v9, 0x0

    .line 40
    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([II)V

    .line 41
    const/4 v11, -0x1

    .line 44
    move v12, v9

    .line 45
    move v13, v12

    .line 46
    const/high16 v14, -0x40800000    # -1.0f

    .line 47
    :goto_0
    const/high16 v16, -0x1000000

    .line 49
    if-ge v12, v1, :cond_7

    .line 51
    move v10, v9

    .line 53
    :goto_1
    if-ge v10, v2, :cond_6

    .line 54
    move-object/from16 v15, p1

    .line 56
    invoke-virtual {v15, v10, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 58
    move-result v17

    .line 61
    shr-int/lit8 v5, v17, 0x18

    .line 62
    and-int/lit16 v5, v5, 0xff

    .line 64
    const/16 v4, 0x80

    .line 66
    if-ge v5, v4, :cond_1

    .line 68
    goto :goto_2

    .line 70
    :cond_1
    or-int v4, v17, v16

    .line 71
    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 73
    aget v5, v6, v9

    .line 76
    float-to-int v5, v5

    .line 78
    if-ltz v5, :cond_4

    .line 79
    array-length v9, v8

    .line 81
    if-lt v5, v9, :cond_2

    .line 82
    goto :goto_2

    .line 84
    :cond_2
    const/16 v9, 0x14

    .line 85
    if-ge v13, v9, :cond_3

    .line 87
    add-int/lit8 v18, v13, 0x1

    .line 89
    aput v4, v7, v13

    .line 91
    move/from16 v13, v18

    .line 93
    :cond_3
    const/4 v4, 0x1

    .line 95
    aget v18, v6, v4

    .line 96
    const/4 v4, 0x2

    .line 98
    aget v19, v6, v4

    .line 99
    mul-float v18, v18, v19

    .line 101
    aget v4, v8, v5

    .line 103
    add-float v4, v4, v18

    .line 105
    aput v4, v8, v5

    .line 107
    cmpl-float v18, v4, v14

    .line 109
    if-lez v18, :cond_5

    .line 111
    move v14, v4

    .line 113
    move v11, v5

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    :goto_2
    const/16 v9, 0x14

    .line 116
    :cond_5
    :goto_3
    add-int/2addr v10, v3

    .line 118
    move v4, v9

    .line 119
    const/4 v5, 0x1

    .line 120
    const/4 v9, 0x0

    .line 121
    goto :goto_1

    .line 122
    :cond_6
    move-object/from16 v15, p1

    .line 123
    move v9, v4

    .line 125
    add-int/2addr v12, v3

    .line 126
    const/4 v5, 0x1

    .line 127
    const/4 v9, 0x0

    .line 128
    goto :goto_0

    .line 129
    :cond_7
    iget-object v0, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    .line 130
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 132
    const/4 v1, 0x0

    .line 135
    const/high16 v10, -0x40800000    # -1.0f

    .line 136
    :goto_4
    if-ge v1, v13, :cond_b

    .line 138
    aget v2, v7, v1

    .line 140
    invoke-static {v2, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 142
    const/4 v3, 0x0

    .line 145
    aget v4, v6, v3

    .line 146
    float-to-int v4, v4

    .line 148
    if-ne v4, v11, :cond_9

    .line 149
    const/4 v4, 0x1

    .line 151
    aget v5, v6, v4

    .line 152
    const/4 v8, 0x2

    .line 154
    aget v9, v6, v8

    .line 155
    const/high16 v12, 0x42c80000    # 100.0f

    .line 157
    mul-float/2addr v12, v5

    .line 159
    float-to-int v12, v12

    .line 160
    const v14, 0x461c4000    # 10000.0f

    .line 161
    mul-float/2addr v14, v9

    .line 164
    float-to-int v14, v14

    .line 165
    add-int/2addr v12, v14

    .line 166
    mul-float/2addr v5, v9

    .line 167
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v9

    .line 171
    check-cast v9, Ljava/lang/Float;

    .line 172
    if-nez v9, :cond_8

    .line 174
    goto :goto_5

    .line 176
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 177
    move-result v9

    .line 180
    add-float/2addr v5, v9

    .line 181
    :goto_5
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 182
    move-result-object v9

    .line 185
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    cmpl-float v9, v5, v10

    .line 189
    if-lez v9, :cond_a

    .line 191
    move/from16 v16, v2

    .line 193
    move v10, v5

    .line 195
    goto :goto_6

    .line 196
    :cond_9
    const/4 v4, 0x1

    .line 197
    const/4 v8, 0x2

    .line 198
    :cond_a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 199
    goto :goto_4

    .line 201
    :cond_b
    return v16
    .line 202
.end method
