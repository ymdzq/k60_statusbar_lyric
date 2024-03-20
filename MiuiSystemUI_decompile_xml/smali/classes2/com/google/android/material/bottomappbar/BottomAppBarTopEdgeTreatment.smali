.class public final Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public cradleVerticalOffset:F

.field public fabCornerSize:F

.field public fabDiameter:F

.field public fabMargin:F

.field public horizontalOffset:F

.field public roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 2
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 7
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 9
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 11
    const/4 p1, 0x0

    .line 13
    cmpg-float p2, p3, p1

    .line 14
    if-ltz p2, :cond_0

    .line 16
    iput p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 18
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 20
    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p1, "cradleVerticalOffset must be positive."

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
    .line 30
.end method


# virtual methods
.method public final getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p3

    .line 6
    move-object/from16 v9, p4

    .line 8
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 10
    const/4 v10, 0x0

    .line 12
    cmpl-float v4, v3, v10

    .line 13
    if-nez v4, :cond_0

    .line 15
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 17
    return-void

    .line 20
    :cond_0
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 21
    const/high16 v11, 0x40000000    # 2.0f

    .line 23
    mul-float/2addr v4, v11

    .line 25
    add-float/2addr v4, v3

    .line 26
    div-float v12, v4, v11

    .line 27
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 29
    mul-float v13, v2, v4

    .line 31
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 33
    add-float v14, p2, v4

    .line 35
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 37
    mul-float/2addr v4, v2

    .line 39
    const/high16 v5, 0x3f800000    # 1.0f

    .line 40
    invoke-static {v5, v2, v12, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 42
    move-result v4

    .line 45
    div-float v6, v4, v12

    .line 46
    cmpl-float v5, v6, v5

    .line 48
    if-ltz v5, :cond_1

    .line 50
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 52
    return-void

    .line 55
    :cond_1
    iget v5, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 56
    mul-float v15, v5, v2

    .line 58
    const/high16 v2, -0x40800000    # -1.0f

    .line 60
    cmpl-float v2, v5, v2

    .line 62
    if-eqz v2, :cond_3

    .line 64
    mul-float/2addr v5, v11

    .line 66
    sub-float/2addr v5, v3

    .line 67
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 68
    move-result v2

    .line 71
    const v3, 0x3dcccccd    # 0.1f

    .line 72
    cmpg-float v2, v2, v3

    .line 75
    if-gez v2, :cond_2

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    const/4 v2, 0x0

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 82
    :goto_1
    move/from16 v16, v2

    .line 83
    if-nez v16, :cond_4

    .line 85
    const/high16 v2, 0x3fe00000    # 1.75f

    .line 87
    move/from16 v17, v10

    .line 89
    goto :goto_2

    .line 91
    :cond_4
    move/from16 v17, v4

    .line 92
    move v2, v10

    .line 94
    :goto_2
    add-float v3, v12, v13

    .line 95
    mul-float/2addr v3, v3

    .line 97
    add-float v4, v17, v13

    .line 98
    mul-float v5, v4, v4

    .line 100
    sub-float/2addr v3, v5

    .line 102
    float-to-double v5, v3

    .line 103
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 104
    move-result-wide v5

    .line 107
    double-to-float v3, v5

    .line 108
    sub-float v5, v14, v3

    .line 109
    add-float v18, v14, v3

    .line 111
    div-float/2addr v3, v4

    .line 113
    float-to-double v3, v3

    .line 114
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    .line 115
    move-result-wide v3

    .line 118
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 119
    move-result-wide v3

    .line 122
    double-to-float v8, v3

    .line 123
    const/high16 v3, 0x42b40000    # 90.0f

    .line 124
    sub-float/2addr v3, v8

    .line 126
    add-float v19, v3, v2

    .line 127
    invoke-virtual {v9, v5, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 129
    sub-float v3, v5, v13

    .line 132
    const/4 v4, 0x0

    .line 134
    add-float/2addr v5, v13

    .line 135
    mul-float v20, v13, v11

    .line 136
    const/high16 v7, 0x43870000    # 270.0f

    .line 138
    move-object/from16 v2, p4

    .line 140
    move/from16 v6, v20

    .line 142
    move/from16 v21, v8

    .line 144
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 146
    const/high16 v2, 0x43340000    # 180.0f

    .line 149
    if-eqz v16, :cond_5

    .line 151
    sub-float v3, v14, v12

    .line 153
    neg-float v0, v12

    .line 155
    sub-float v4, v0, v17

    .line 156
    add-float v5, v14, v12

    .line 158
    sub-float v6, v12, v17

    .line 160
    sub-float v7, v2, v19

    .line 162
    mul-float v19, v19, v11

    .line 164
    sub-float v8, v19, v2

    .line 166
    move-object/from16 v2, p4

    .line 168
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 170
    goto :goto_3

    .line 173
    :cond_5
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 174
    mul-float v16, v15, v11

    .line 176
    add-float v4, v3, v16

    .line 178
    sub-float v5, v14, v12

    .line 180
    add-float v6, v15, v3

    .line 182
    neg-float v7, v6

    .line 184
    add-float v8, v5, v4

    .line 185
    sub-float v17, v2, v19

    .line 187
    mul-float v3, v19, v11

    .line 189
    sub-float/2addr v3, v2

    .line 191
    div-float v22, v3, v11

    .line 192
    move-object/from16 v2, p4

    .line 194
    move v3, v5

    .line 196
    move v4, v7

    .line 197
    move v5, v8

    .line 198
    move/from16 v7, v17

    .line 199
    move/from16 v8, v22

    .line 201
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 203
    add-float v5, v14, v12

    .line 206
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 208
    div-float v3, v2, v11

    .line 210
    add-float/2addr v3, v15

    .line 212
    sub-float v3, v5, v3

    .line 213
    add-float/2addr v2, v15

    .line 215
    invoke-virtual {v9, v3, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 216
    iget v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 219
    add-float v16, v16, v0

    .line 221
    sub-float v3, v5, v16

    .line 223
    add-float v6, v15, v0

    .line 225
    neg-float v4, v6

    .line 227
    const/high16 v7, 0x42b40000    # 90.0f

    .line 228
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 230
    add-float v8, v19, v0

    .line 232
    move-object/from16 v2, p4

    .line 234
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 236
    :goto_3
    sub-float v3, v18, v13

    .line 239
    const/4 v4, 0x0

    .line 241
    add-float v5, v18, v13

    .line 242
    const/high16 v0, 0x43870000    # 270.0f

    .line 244
    sub-float v7, v0, v21

    .line 246
    move-object/from16 v2, p4

    .line 248
    move/from16 v6, v20

    .line 250
    move/from16 v8, v21

    .line 252
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 254
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 257
    return-void
    .line 260
.end method
