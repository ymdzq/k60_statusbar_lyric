.class public abstract Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 7
    const-string/jumbo v1, "t"

    .line 9
    const-string/jumbo v2, "s"

    .line 12
    const-string v3, "e"

    .line 15
    const-string v4, "o"

    .line 17
    const-string v5, "i"

    .line 19
    const-string v6, "h"

    .line 21
    const-string/jumbo v7, "to"

    .line 23
    const-string/jumbo v8, "ti"

    .line 26
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 33
    move-result-object v0

    .line 36
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 37
    const-string/jumbo v0, "x"

    .line 39
    const-string/jumbo v1, "y"

    .line 42
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 49
    move-result-object v0

    .line 52
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 53
    return-void
    .line 55
.end method

.method public static interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 8

    .line 1
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 2
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 8
    move-result v0

    .line 11
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 12
    iget v0, p0, Landroid/graphics/PointF;->y:F

    .line 14
    const/high16 v3, -0x3d380000    # -100.0f

    .line 16
    const/high16 v4, 0x42c80000    # 100.0f

    .line 18
    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 20
    move-result v0

    .line 23
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 24
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 26
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 28
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 32
    iget v0, p1, Landroid/graphics/PointF;->y:F

    .line 34
    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 36
    move-result v0

    .line 39
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 40
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 42
    iget v3, p0, Landroid/graphics/PointF;->y:F

    .line 44
    iget v4, p1, Landroid/graphics/PointF;->x:F

    .line 46
    sget-object v5, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 48
    const/4 v5, 0x0

    .line 50
    cmpl-float v6, v1, v5

    .line 51
    if-eqz v6, :cond_0

    .line 53
    const/16 v6, 0x20f

    .line 55
    int-to-float v6, v6

    .line 57
    mul-float/2addr v6, v1

    .line 58
    float-to-int v1, v6

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/16 v1, 0x11

    .line 61
    :goto_0
    cmpl-float v6, v3, v5

    .line 63
    if-eqz v6, :cond_1

    .line 65
    mul-int/lit8 v1, v1, 0x1f

    .line 67
    int-to-float v1, v1

    .line 69
    mul-float/2addr v1, v3

    .line 70
    float-to-int v1, v1

    .line 71
    :cond_1
    cmpl-float v3, v4, v5

    .line 72
    if-eqz v3, :cond_2

    .line 74
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    int-to-float v1, v1

    .line 78
    mul-float/2addr v1, v4

    .line 79
    float-to-int v1, v1

    .line 80
    :cond_2
    cmpl-float v3, v0, v5

    .line 81
    if-eqz v3, :cond_3

    .line 83
    mul-int/lit8 v1, v1, 0x1f

    .line 85
    int-to-float v1, v1

    .line 87
    mul-float/2addr v1, v0

    .line 88
    float-to-int v1, v1

    .line 89
    :cond_3
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    .line 90
    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v3, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 93
    if-nez v3, :cond_4

    .line 95
    new-instance v3, Landroidx/collection/SparseArrayCompat;

    .line 97
    invoke-direct {v3}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 99
    sput-object v3, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 102
    :cond_4
    sget-object v3, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 104
    invoke-virtual {v3, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 109
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 118
    check-cast v0, Landroid/view/animation/Interpolator;

    .line 119
    goto :goto_1

    .line 121
    :cond_5
    const/4 v0, 0x0

    .line 122
    :goto_1
    if-eqz v3, :cond_6

    .line 123
    if-nez v0, :cond_8

    .line 125
    :cond_6
    :try_start_1
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 127
    iget v3, p0, Landroid/graphics/PointF;->y:F

    .line 129
    iget v4, p1, Landroid/graphics/PointF;->x:F

    .line 131
    iget v6, p1, Landroid/graphics/PointF;->y:F

    .line 133
    new-instance v7, Landroid/view/animation/PathInterpolator;

    .line 135
    invoke-direct {v7, v0, v3, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    move-object v0, v7

    .line 140
    goto :goto_2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v3, "The Path cannot loop back on itself."

    .line 143
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v0

    .line 152
    if-eqz v0, :cond_7

    .line 153
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 155
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 157
    move-result v0

    .line 160
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 161
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 163
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    .line 165
    move-result v2

    .line 168
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 169
    new-instance v3, Landroid/view/animation/PathInterpolator;

    .line 171
    invoke-direct {v3, v0, p0, v2, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 173
    move-object v0, v3

    .line 176
    goto :goto_2

    .line 177
    :cond_7
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    .line 178
    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 180
    move-object v0, p0

    .line 183
    :goto_2
    :try_start_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 184
    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 186
    const-class p1, Lcom/airbnb/lottie/parser/KeyframeParser;

    .line 189
    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 191
    :try_start_3
    sget-object v2, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 192
    invoke-virtual {v2, v1, p0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 194
    monitor-exit p1

    .line 197
    goto :goto_3

    .line 198
    :catchall_0
    move-exception p0

    .line 199
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 201
    :catch_1
    :cond_8
    :goto_3
    return-object v0

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 204
    throw p0
    .line 205
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    move-object/from16 v2, p3

    .line 6
    sget-object v3, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 8
    sget-object v8, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 10
    if-eqz p4, :cond_16

    .line 12
    if-eqz p5, :cond_16

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 16
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v16, 0x0

    .line 29
    const/16 v17, 0x0

    .line 31
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 33
    move-result v19

    .line 36
    if-eqz v19, :cond_11

    .line 37
    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 39
    move-result v19

    .line 42
    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 43
    move-object/from16 v20, v3

    .line 45
    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 47
    move-object/from16 p4, v15

    .line 49
    sget-object v15, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 51
    packed-switch v19, :pswitch_data_0

    .line 53
    move-object/from16 v19, v8

    .line 56
    move-object/from16 v21, v9

    .line 58
    move-object/from16 p5, v12

    .line 60
    move-object v9, v5

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 63
    goto/16 :goto_c

    .line 66
    :pswitch_0
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 68
    move-result-object v3

    .line 71
    move-object/from16 v15, p4

    .line 72
    move-object v9, v5

    .line 74
    move-object/from16 v19, v8

    .line 75
    goto/16 :goto_e

    .line 77
    :pswitch_1
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 79
    move-result-object v3

    .line 82
    move-object v15, v3

    .line 83
    move-object/from16 v19, v8

    .line 84
    move-object/from16 v21, v9

    .line 86
    move-object v9, v5

    .line 88
    goto/16 :goto_d

    .line 89
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 91
    move-result v3

    .line 94
    const/4 v4, 0x1

    .line 95
    if-ne v3, v4, :cond_0

    .line 96
    move v11, v4

    .line 98
    move-object/from16 v19, v8

    .line 99
    move-object/from16 v21, v9

    .line 101
    goto :goto_1

    .line 103
    :cond_0
    move-object/from16 v19, v8

    .line 104
    move-object/from16 v21, v9

    .line 106
    const/4 v11, 0x0

    .line 108
    :goto_1
    move-object v9, v5

    .line 109
    goto/16 :goto_c

    .line 110
    :pswitch_3
    move-object/from16 v19, v8

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 114
    move-result-object v8

    .line 117
    if-ne v8, v4, :cond_8

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 120
    const/4 v4, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    const/4 v8, 0x0

    .line 126
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 127
    move-result v21

    .line 130
    if-eqz v21, :cond_7

    .line 131
    move-object/from16 v21, v9

    .line 133
    invoke-virtual {v0, v15}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 135
    move-result v9

    .line 138
    if-eqz v9, :cond_4

    .line 139
    move-object/from16 p5, v12

    .line 141
    const/4 v12, 0x1

    .line 143
    if-eq v9, v12, :cond_1

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 146
    goto :goto_4

    .line 149
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 150
    move-result-object v6

    .line 153
    if-ne v6, v3, :cond_2

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 156
    move-result-wide v8

    .line 159
    double-to-float v6, v8

    .line 160
    move v8, v6

    .line 161
    goto :goto_4

    .line 162
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 166
    move-result-wide v8

    .line 169
    double-to-float v6, v8

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 171
    move-result-object v8

    .line 174
    if-ne v8, v3, :cond_3

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 177
    move-result-wide v8

    .line 180
    double-to-float v8, v8

    .line 181
    goto :goto_3

    .line 182
    :cond_3
    move v8, v6

    .line 183
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 184
    :goto_4
    move-object v9, v5

    .line 187
    goto :goto_6

    .line 188
    :cond_4
    move-object/from16 p5, v12

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 191
    move-result-object v4

    .line 194
    if-ne v4, v3, :cond_5

    .line 195
    move-object v9, v5

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 198
    move-result-wide v4

    .line 201
    double-to-float v4, v4

    .line 202
    move v7, v4

    .line 203
    goto :goto_6

    .line 204
    :cond_5
    move-object v9, v5

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 209
    move-result-wide v4

    .line 212
    double-to-float v4, v4

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 214
    move-result-object v5

    .line 217
    if-ne v5, v3, :cond_6

    .line 218
    move v7, v4

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 221
    move-result-wide v4

    .line 224
    double-to-float v4, v4

    .line 225
    goto :goto_5

    .line 226
    :cond_6
    move v7, v4

    .line 227
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 228
    move/from16 v22, v7

    .line 231
    move v7, v4

    .line 233
    move/from16 v4, v22

    .line 234
    :goto_6
    move-object/from16 v12, p5

    .line 236
    move-object v5, v9

    .line 238
    move-object/from16 v9, v21

    .line 239
    goto :goto_2

    .line 241
    :cond_7
    move-object/from16 v21, v9

    .line 242
    move-object/from16 p5, v12

    .line 244
    move-object v9, v5

    .line 246
    new-instance v3, Landroid/graphics/PointF;

    .line 247
    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 249
    new-instance v4, Landroid/graphics/PointF;

    .line 252
    invoke-direct {v4, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 257
    move-object v6, v3

    .line 260
    move-object v7, v4

    .line 261
    goto/16 :goto_c

    .line 262
    :cond_8
    move-object/from16 v21, v9

    .line 264
    move-object/from16 p5, v12

    .line 266
    move-object v9, v5

    .line 268
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 269
    move-result-object v3

    .line 272
    move-object v10, v3

    .line 273
    goto/16 :goto_c

    .line 274
    :pswitch_4
    move-object/from16 v19, v8

    .line 276
    move-object/from16 v21, v9

    .line 278
    move-object/from16 p5, v12

    .line 280
    move-object v9, v5

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 283
    move-result-object v5

    .line 286
    if-ne v5, v4, :cond_10

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 289
    const/4 v4, 0x0

    .line 292
    const/4 v5, 0x0

    .line 293
    const/4 v8, 0x0

    .line 294
    const/4 v9, 0x0

    .line 295
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 296
    move-result v12

    .line 299
    if-eqz v12, :cond_f

    .line 300
    invoke-virtual {v0, v15}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 302
    move-result v12

    .line 305
    if-eqz v12, :cond_c

    .line 306
    const/4 v14, 0x1

    .line 308
    if-eq v12, v14, :cond_9

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 311
    goto :goto_7

    .line 314
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 315
    move-result-object v5

    .line 318
    if-ne v5, v3, :cond_a

    .line 319
    move-object v12, v15

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 322
    move-result-wide v14

    .line 325
    double-to-float v9, v14

    .line 326
    move v5, v9

    .line 327
    goto :goto_9

    .line 328
    :cond_a
    move-object v12, v15

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 333
    move-result-wide v14

    .line 336
    double-to-float v5, v14

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 338
    move-result-object v9

    .line 341
    if-ne v9, v3, :cond_b

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 344
    move-result-wide v14

    .line 347
    double-to-float v9, v14

    .line 348
    goto :goto_8

    .line 349
    :cond_b
    move v9, v5

    .line 350
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 351
    goto :goto_9

    .line 354
    :cond_c
    move-object v12, v15

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 356
    move-result-object v4

    .line 359
    if-ne v4, v3, :cond_d

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 362
    move-result-wide v14

    .line 365
    double-to-float v8, v14

    .line 366
    move v4, v8

    .line 367
    :goto_9
    move-object v15, v12

    .line 368
    goto :goto_7

    .line 369
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 373
    move-result-wide v14

    .line 376
    double-to-float v4, v14

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 378
    move-result-object v8

    .line 381
    if-ne v8, v3, :cond_e

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 384
    move-result-wide v14

    .line 387
    double-to-float v8, v14

    .line 388
    goto :goto_a

    .line 389
    :cond_e
    move v8, v4

    .line 390
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 391
    goto :goto_9

    .line 394
    :cond_f
    new-instance v3, Landroid/graphics/PointF;

    .line 395
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 397
    new-instance v4, Landroid/graphics/PointF;

    .line 400
    invoke-direct {v4, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 405
    move-object v5, v3

    .line 408
    move-object v14, v4

    .line 409
    goto :goto_b

    .line 410
    :cond_10
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 411
    move-result-object v3

    .line 414
    move-object v13, v3

    .line 415
    move-object v5, v9

    .line 416
    goto :goto_b

    .line 417
    :pswitch_5
    move-object/from16 v19, v8

    .line 418
    move-object/from16 v21, v9

    .line 420
    move-object/from16 p5, v12

    .line 422
    move-object v9, v5

    .line 424
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 425
    move-result-object v3

    .line 428
    move-object/from16 v17, v3

    .line 429
    goto :goto_c

    .line 431
    :pswitch_6
    move-object/from16 v19, v8

    .line 432
    move-object/from16 v21, v9

    .line 434
    move-object v9, v5

    .line 436
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 437
    move-result-object v3

    .line 440
    move-object v12, v3

    .line 441
    goto :goto_c

    .line 442
    :pswitch_7
    move-object/from16 v19, v8

    .line 443
    move-object/from16 v21, v9

    .line 445
    move-object/from16 p5, v12

    .line 447
    move-object v9, v5

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 450
    move-result-wide v3

    .line 453
    double-to-float v3, v3

    .line 454
    move/from16 v16, v3

    .line 455
    :goto_b
    move-object/from16 v15, p4

    .line 457
    move-object/from16 v12, p5

    .line 459
    move-object/from16 v8, v19

    .line 461
    move-object/from16 v3, v20

    .line 463
    move-object/from16 v9, v21

    .line 465
    goto/16 :goto_0

    .line 467
    :goto_c
    move-object/from16 v15, p4

    .line 469
    :goto_d
    move-object/from16 v3, v21

    .line 471
    :goto_e
    move-object v5, v9

    .line 473
    move-object/from16 v8, v19

    .line 474
    move-object v9, v3

    .line 476
    move-object/from16 v3, v20

    .line 477
    goto/16 :goto_0

    .line 479
    :cond_11
    move-object/from16 v20, v3

    .line 481
    move-object/from16 v21, v9

    .line 483
    move-object/from16 p5, v12

    .line 485
    move-object/from16 p4, v15

    .line 487
    move-object v9, v5

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 490
    if-eqz v11, :cond_12

    .line 493
    move-object/from16 v17, p5

    .line 495
    goto :goto_f

    .line 497
    :cond_12
    if-eqz v13, :cond_13

    .line 498
    if-eqz v10, :cond_13

    .line 500
    invoke-static {v13, v10}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 502
    move-result-object v3

    .line 505
    goto :goto_10

    .line 506
    :cond_13
    if-eqz v9, :cond_14

    .line 507
    if-eqz v14, :cond_14

    .line 509
    if-eqz v6, :cond_14

    .line 511
    if-eqz v7, :cond_14

    .line 513
    invoke-static {v9, v6}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 515
    move-result-object v0

    .line 518
    invoke-static {v14, v7}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 519
    move-result-object v1

    .line 522
    move-object v14, v0

    .line 523
    move-object v15, v1

    .line 524
    move-object/from16 v13, v17

    .line 525
    const/4 v3, 0x0

    .line 527
    goto :goto_11

    .line 528
    :cond_14
    :goto_f
    move-object/from16 v3, v20

    .line 529
    :goto_10
    move-object/from16 v13, v17

    .line 531
    const/4 v14, 0x0

    .line 533
    const/4 v15, 0x0

    .line 534
    :goto_11
    if-eqz v14, :cond_15

    .line 535
    if-eqz v15, :cond_15

    .line 537
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 539
    move-object v10, v0

    .line 541
    move-object/from16 v11, p1

    .line 542
    move-object/from16 v12, p5

    .line 544
    move-object/from16 v7, p4

    .line 546
    invoke-direct/range {v10 .. v16}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;F)V

    .line 548
    goto :goto_12

    .line 551
    :cond_15
    move-object/from16 v7, p4

    .line 552
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 554
    const/4 v1, 0x0

    .line 556
    move-object v10, v0

    .line 557
    move-object/from16 v11, p1

    .line 558
    move-object/from16 v12, p5

    .line 560
    move-object v14, v3

    .line 562
    move/from16 v15, v16

    .line 563
    move-object/from16 v16, v1

    .line 565
    invoke-direct/range {v10 .. v16}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 567
    :goto_12
    iput-object v7, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 570
    move-object/from16 v3, v21

    .line 572
    iput-object v3, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 574
    return-object v0

    .line 576
    :cond_16
    move-object/from16 v20, v3

    .line 577
    move-object/from16 v19, v8

    .line 579
    if-eqz p4, :cond_1b

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 583
    const/4 v3, 0x0

    .line 586
    const/4 v4, 0x0

    .line 587
    const/4 v5, 0x0

    .line 588
    const/4 v7, 0x0

    .line 589
    const/4 v10, 0x0

    .line 590
    const/4 v12, 0x0

    .line 591
    const/4 v13, 0x0

    .line 592
    const/16 v18, 0x0

    .line 593
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 595
    move-result v6

    .line 598
    if-eqz v6, :cond_18

    .line 599
    move-object/from16 v6, v19

    .line 601
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 603
    move-result v8

    .line 606
    const/high16 v9, 0x3f800000    # 1.0f

    .line 607
    packed-switch v8, :pswitch_data_1

    .line 609
    const/4 v8, 0x1

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 613
    goto :goto_15

    .line 616
    :pswitch_8
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 617
    move-result-object v8

    .line 620
    move-object v13, v8

    .line 621
    goto :goto_14

    .line 622
    :pswitch_9
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 623
    move-result-object v8

    .line 626
    move-object v12, v8

    .line 627
    :goto_14
    const/4 v8, 0x1

    .line 628
    goto :goto_15

    .line 629
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 630
    move-result v4

    .line 633
    const/4 v8, 0x1

    .line 634
    move-object/from16 v19, v6

    .line 635
    if-ne v4, v8, :cond_17

    .line 637
    move v4, v8

    .line 639
    goto :goto_13

    .line 640
    :cond_17
    const/4 v4, 0x0

    .line 641
    goto :goto_13

    .line 642
    :pswitch_b
    const/4 v8, 0x1

    .line 643
    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 644
    move-result-object v3

    .line 647
    goto :goto_15

    .line 648
    :pswitch_c
    const/4 v8, 0x1

    .line 649
    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 650
    move-result-object v7

    .line 653
    goto :goto_15

    .line 654
    :pswitch_d
    const/4 v8, 0x1

    .line 655
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 656
    move-result-object v5

    .line 659
    goto :goto_15

    .line 660
    :pswitch_e
    const/4 v8, 0x1

    .line 661
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 662
    move-result-object v9

    .line 665
    move-object/from16 v18, v9

    .line 666
    goto :goto_15

    .line 668
    :pswitch_f
    const/4 v8, 0x1

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 670
    move-result-wide v9

    .line 673
    double-to-float v9, v9

    .line 674
    move v10, v9

    .line 675
    :goto_15
    move-object/from16 v19, v6

    .line 676
    goto :goto_13

    .line 678
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 679
    if-eqz v4, :cond_19

    .line 682
    move-object/from16 v8, v18

    .line 684
    move-object/from16 v9, v20

    .line 686
    goto :goto_17

    .line 688
    :cond_19
    if-eqz v7, :cond_1a

    .line 689
    if-eqz v3, :cond_1a

    .line 691
    invoke-static {v7, v3}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 693
    move-result-object v0

    .line 696
    move-object v3, v0

    .line 697
    goto :goto_16

    .line 698
    :cond_1a
    move-object/from16 v3, v20

    .line 699
    :goto_16
    move-object v9, v3

    .line 701
    move-object v8, v5

    .line 702
    :goto_17
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 703
    const/4 v11, 0x0

    .line 705
    move-object v5, v0

    .line 706
    move-object/from16 v6, p1

    .line 707
    move-object/from16 v7, v18

    .line 709
    invoke-direct/range {v5 .. v11}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 711
    iput-object v12, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 714
    iput-object v13, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 716
    return-object v0

    .line 718
    :cond_1b
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 719
    move-result-object v0

    .line 722
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 723
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 725
    return-object v1

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
