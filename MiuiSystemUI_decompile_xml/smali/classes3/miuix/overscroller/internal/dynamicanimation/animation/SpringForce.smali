.class public final Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDampedFreq:D

.field public mDampingRatio:D

.field public mFinalPosition:D

.field public mGammaMinus:D

.field public mGammaPlus:D

.field public mInitialized:Z

.field public final mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

.field public mNaturalFreq:D

.field public mTimeRatio:D

.field public mValueThreshold:D

.field public mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 14
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 16
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 18
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 20
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mTimeRatio:D

    .line 25
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 28
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 30
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 35
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 37
    invoke-direct {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    .line 39
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 42
    return-void
    .line 44
.end method


# virtual methods
.method public final setStiffness(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-lez v0, :cond_0

    .line 5
    float-to-double v0, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 12
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 15
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string p1, "Spring stiffness constant must be positive."

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0
    .line 25
.end method

.method public final updateValues(DDJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 4
    const-wide/16 v2, 0x0

    .line 6
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    iget-wide v6, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 13
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 15
    cmpl-double v1, v6, v8

    .line 20
    if-eqz v1, :cond_6

    .line 22
    iget-wide v6, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 24
    cmpl-double v1, v6, v4

    .line 26
    if-lez v1, :cond_1

    .line 28
    neg-double v8, v6

    .line 30
    iget-wide v10, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 31
    mul-double/2addr v8, v10

    .line 33
    mul-double/2addr v6, v6

    .line 34
    sub-double/2addr v6, v4

    .line 35
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 36
    move-result-wide v6

    .line 39
    mul-double/2addr v6, v10

    .line 40
    add-double/2addr v6, v8

    .line 41
    iput-wide v6, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 42
    iget-wide v6, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 44
    neg-double v8, v6

    .line 46
    iget-wide v10, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 47
    mul-double/2addr v8, v10

    .line 49
    mul-double/2addr v6, v6

    .line 50
    sub-double/2addr v6, v4

    .line 51
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 52
    move-result-wide v6

    .line 55
    mul-double/2addr v6, v10

    .line 56
    sub-double/2addr v8, v6

    .line 57
    iput-wide v8, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    cmpl-double v1, v6, v2

    .line 61
    if-ltz v1, :cond_2

    .line 63
    cmpg-double v1, v6, v4

    .line 65
    if-gez v1, :cond_2

    .line 67
    iget-wide v8, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 69
    mul-double/2addr v6, v6

    .line 71
    sub-double v6, v4, v6

    .line 72
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 74
    move-result-wide v6

    .line 77
    mul-double/2addr v6, v8

    .line 78
    iput-wide v6, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 79
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 81
    iput-boolean v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 82
    :goto_1
    move-wide/from16 v6, p5

    .line 84
    long-to-double v6, v6

    .line 86
    iget-wide v8, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mTimeRatio:D

    .line 87
    div-double/2addr v6, v8

    .line 89
    iget-wide v8, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 90
    sub-double v8, p1, v8

    .line 92
    iget-wide v10, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 94
    cmpl-double v1, v10, v4

    .line 96
    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    .line 98
    if-lez v1, :cond_3

    .line 103
    iget-wide v4, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 105
    mul-double v10, v4, v8

    .line 107
    sub-double v10, v10, p3

    .line 109
    iget-wide v14, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 111
    sub-double v16, v4, v14

    .line 113
    div-double v10, v10, v16

    .line 115
    sub-double v10, v8, v10

    .line 117
    mul-double/2addr v8, v4

    .line 119
    sub-double v8, v8, p3

    .line 120
    sub-double v14, v4, v14

    .line 122
    div-double/2addr v8, v14

    .line 124
    mul-double/2addr v4, v6

    .line 125
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 126
    move-result-wide v4

    .line 129
    mul-double/2addr v4, v10

    .line 130
    iget-wide v14, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 131
    mul-double/2addr v14, v6

    .line 133
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 134
    move-result-wide v14

    .line 137
    mul-double/2addr v14, v8

    .line 138
    add-double/2addr v14, v4

    .line 139
    iget-wide v4, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 140
    mul-double/2addr v10, v4

    .line 142
    mul-double/2addr v4, v6

    .line 143
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 144
    move-result-wide v4

    .line 147
    mul-double/2addr v4, v10

    .line 148
    iget-wide v10, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 149
    mul-double/2addr v8, v10

    .line 151
    mul-double/2addr v10, v6

    .line 152
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 153
    move-result-wide v6

    .line 156
    mul-double/2addr v6, v8

    .line 157
    add-double/2addr v6, v4

    .line 158
    goto/16 :goto_2

    .line 159
    :cond_3
    cmpl-double v1, v10, v4

    .line 161
    if-nez v1, :cond_4

    .line 163
    iget-wide v4, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 165
    mul-double v10, v4, v8

    .line 167
    add-double v10, v10, p3

    .line 169
    mul-double v14, v10, v6

    .line 171
    add-double/2addr v14, v8

    .line 173
    neg-double v4, v4

    .line 174
    mul-double/2addr v4, v6

    .line 175
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 176
    move-result-wide v4

    .line 179
    mul-double/2addr v4, v14

    .line 180
    iget-wide v8, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 181
    neg-double v8, v8

    .line 183
    mul-double/2addr v8, v6

    .line 184
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 185
    move-result-wide v8

    .line 188
    mul-double/2addr v8, v14

    .line 189
    iget-wide v14, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 190
    neg-double v2, v14

    .line 192
    mul-double/2addr v8, v2

    .line 193
    neg-double v1, v14

    .line 194
    mul-double/2addr v1, v6

    .line 195
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 196
    move-result-wide v1

    .line 199
    mul-double/2addr v1, v10

    .line 200
    add-double v6, v1, v8

    .line 201
    move-wide v14, v4

    .line 203
    goto :goto_2

    .line 204
    :cond_4
    iget-wide v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 205
    div-double/2addr v4, v1

    .line 207
    iget-wide v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 208
    mul-double v14, v10, v1

    .line 210
    mul-double/2addr v14, v8

    .line 212
    add-double v14, v14, p3

    .line 213
    mul-double/2addr v14, v4

    .line 215
    neg-double v3, v10

    .line 216
    mul-double/2addr v3, v1

    .line 217
    mul-double/2addr v3, v6

    .line 218
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 219
    move-result-wide v1

    .line 222
    iget-wide v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 223
    mul-double/2addr v3, v6

    .line 225
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 226
    move-result-wide v3

    .line 229
    mul-double/2addr v3, v8

    .line 230
    iget-wide v10, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 231
    mul-double/2addr v10, v6

    .line 233
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 234
    move-result-wide v10

    .line 237
    mul-double/2addr v10, v14

    .line 238
    add-double/2addr v10, v3

    .line 239
    mul-double/2addr v1, v10

    .line 240
    iget-wide v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 241
    neg-double v10, v3

    .line 243
    mul-double/2addr v10, v1

    .line 244
    iget-wide v12, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 245
    mul-double/2addr v10, v12

    .line 247
    neg-double v12, v12

    .line 248
    mul-double/2addr v12, v3

    .line 249
    mul-double/2addr v12, v6

    .line 250
    const-wide v3, 0x4005bf0a8b145769L    # Math.E

    .line 251
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 256
    move-result-wide v3

    .line 259
    iget-wide v12, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 260
    move-wide/from16 p1, v1

    .line 262
    neg-double v1, v12

    .line 264
    mul-double/2addr v1, v8

    .line 265
    mul-double/2addr v12, v6

    .line 266
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 267
    move-result-wide v8

    .line 270
    mul-double/2addr v8, v1

    .line 271
    iget-wide v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 272
    mul-double/2addr v14, v1

    .line 274
    mul-double/2addr v1, v6

    .line 275
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 276
    move-result-wide v1

    .line 279
    mul-double/2addr v1, v14

    .line 280
    add-double/2addr v1, v8

    .line 281
    mul-double/2addr v1, v3

    .line 282
    add-double v6, v1, v10

    .line 283
    move-wide/from16 v14, p1

    .line 285
    :goto_2
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    .line 287
    move-result-wide v1

    .line 290
    const-wide v3, 0x3fe3333340000000L    # 0.6000000238418579

    .line 291
    cmpg-double v1, v1, v3

    .line 296
    if-gez v1, :cond_5

    .line 298
    const-wide/16 v2, 0x0

    .line 300
    const-wide/16 v6, 0x0

    .line 302
    goto :goto_3

    .line 304
    :cond_5
    move-wide v2, v14

    .line 305
    :goto_3
    iget-wide v4, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 306
    add-double/2addr v2, v4

    .line 308
    double-to-float v1, v2

    .line 309
    iget-object v0, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 310
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 312
    double-to-float v1, v6

    .line 314
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 315
    return-object v0

    .line 317
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 318
    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    .line 320
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 322
    throw v0
.end method
