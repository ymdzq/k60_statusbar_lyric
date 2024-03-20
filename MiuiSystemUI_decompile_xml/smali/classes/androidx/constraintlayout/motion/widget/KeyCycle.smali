.class public final Landroidx/constraintlayout/motion/widget/KeyCycle;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAlpha:F

.field public mCurveFit:I

.field public mCustomWaveShape:Ljava/lang/String;

.field public mElevation:F

.field public mProgress:F

.field public mRotation:F

.field public mRotationX:F

.field public mRotationY:F

.field public mScaleX:F

.field public mScaleY:F

.field public mTransitionPathRotate:F

.field public mTranslationX:F

.field public mTranslationY:F

.field public mTranslationZ:F

.field public mWaveOffset:F

.field public mWavePeriod:F

.field public mWavePhase:F

.field public mWaveShape:I

.field public mWaveVariesBy:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    .line 6
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    .line 9
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    .line 12
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    .line 16
    const/4 v2, 0x0

    .line 18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    .line 19
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    .line 21
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    .line 23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    .line 25
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    .line 27
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    .line 29
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    .line 31
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    .line 33
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    .line 35
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    .line 37
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    .line 39
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    .line 41
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    .line 43
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    .line 45
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 49
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 54
    return-void
    .line 56
.end method


# virtual methods
.method public final addValues(Ljava/util/HashMap;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    .line 5
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 10
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x1

    .line 15
    sub-int/2addr v1, v2

    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result v1

    .line 21
    const-string v4, " "

    .line 22
    move v5, v2

    .line 24
    move-object v6, v4

    .line 25
    :goto_0
    if-gt v5, v1, :cond_0

    .line 26
    aget-object v7, v0, v5

    .line 28
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 30
    aget-object v7, v0, v5

    .line 33
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 35
    aget-object v7, v0, v5

    .line 38
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v6

    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 61
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 68
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 72
    if-eqz v1, :cond_10

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 84
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 85
    if-nez v4, :cond_1

    .line 87
    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 93
    move-result v5

    .line 96
    const/4 v6, -0x1

    .line 97
    sparse-switch v5, :sswitch_data_0

    .line 98
    goto/16 :goto_2

    .line 101
    :sswitch_0
    const-string/jumbo v5, "wavePhase"

    .line 103
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v5

    .line 109
    if-nez v5, :cond_2

    .line 110
    goto/16 :goto_2

    .line 112
    :cond_2
    const/16 v6, 0xd

    .line 114
    goto/16 :goto_2

    .line 116
    :sswitch_1
    const-string/jumbo v5, "waveOffset"

    .line 118
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v5

    .line 124
    if-nez v5, :cond_3

    .line 125
    goto/16 :goto_2

    .line 127
    :cond_3
    const/16 v6, 0xc

    .line 129
    goto/16 :goto_2

    .line 131
    :sswitch_2
    const-string v5, "alpha"

    .line 133
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v5

    .line 138
    if-nez v5, :cond_4

    .line 139
    goto/16 :goto_2

    .line 141
    :cond_4
    const/16 v6, 0xb

    .line 143
    goto/16 :goto_2

    .line 145
    :sswitch_3
    const-string/jumbo v5, "transitionPathRotate"

    .line 147
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v5

    .line 153
    if-nez v5, :cond_5

    .line 154
    goto/16 :goto_2

    .line 156
    :cond_5
    const/16 v6, 0xa

    .line 158
    goto/16 :goto_2

    .line 160
    :sswitch_4
    const-string v5, "elevation"

    .line 162
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result v5

    .line 167
    if-nez v5, :cond_6

    .line 168
    goto/16 :goto_2

    .line 170
    :cond_6
    const/16 v6, 0x9

    .line 172
    goto/16 :goto_2

    .line 174
    :sswitch_5
    const-string/jumbo v5, "rotation"

    .line 176
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    move-result v5

    .line 182
    if-nez v5, :cond_7

    .line 183
    goto/16 :goto_2

    .line 185
    :cond_7
    const/16 v6, 0x8

    .line 187
    goto/16 :goto_2

    .line 189
    :sswitch_6
    const-string/jumbo v5, "scaleY"

    .line 191
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v5

    .line 197
    if-nez v5, :cond_8

    .line 198
    goto :goto_2

    .line 200
    :cond_8
    const/4 v6, 0x7

    .line 201
    goto :goto_2

    .line 202
    :sswitch_7
    const-string/jumbo v5, "scaleX"

    .line 203
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v5

    .line 209
    if-nez v5, :cond_9

    .line 210
    goto :goto_2

    .line 212
    :cond_9
    const/4 v6, 0x6

    .line 213
    goto :goto_2

    .line 214
    :sswitch_8
    const-string v5, "progress"

    .line 215
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v5

    .line 220
    if-nez v5, :cond_a

    .line 221
    goto :goto_2

    .line 223
    :cond_a
    const/4 v6, 0x5

    .line 224
    goto :goto_2

    .line 225
    :sswitch_9
    const-string/jumbo v5, "translationZ"

    .line 226
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v5

    .line 232
    if-nez v5, :cond_b

    .line 233
    goto :goto_2

    .line 235
    :cond_b
    const/4 v6, 0x4

    .line 236
    goto :goto_2

    .line 237
    :sswitch_a
    const-string/jumbo v5, "translationY"

    .line 238
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    move-result v5

    .line 244
    if-nez v5, :cond_c

    .line 245
    goto :goto_2

    .line 247
    :cond_c
    const/4 v6, 0x3

    .line 248
    goto :goto_2

    .line 249
    :sswitch_b
    const-string/jumbo v5, "translationX"

    .line 250
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result v5

    .line 256
    if-nez v5, :cond_d

    .line 257
    goto :goto_2

    .line 259
    :cond_d
    move v6, v3

    .line 260
    goto :goto_2

    .line 261
    :sswitch_c
    const-string/jumbo v5, "rotationY"

    .line 262
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v5

    .line 268
    if-nez v5, :cond_e

    .line 269
    goto :goto_2

    .line 271
    :cond_e
    move v6, v2

    .line 272
    goto :goto_2

    .line 273
    :sswitch_d
    const-string/jumbo v5, "rotationX"

    .line 274
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v5

    .line 280
    if-nez v5, :cond_f

    .line 281
    goto :goto_2

    .line 283
    :cond_f
    const/4 v6, 0x0

    .line 284
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 285
    const-string v4, "CUSTOM"

    .line 288
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 290
    goto/16 :goto_1

    .line 293
    :pswitch_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 295
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    .line 297
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 299
    goto/16 :goto_1

    .line 302
    :pswitch_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 304
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    .line 306
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 308
    goto/16 :goto_1

    .line 311
    :pswitch_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 313
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    .line 315
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 317
    goto/16 :goto_1

    .line 320
    :pswitch_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 322
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    .line 324
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 326
    goto/16 :goto_1

    .line 329
    :pswitch_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 331
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    .line 333
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 335
    goto/16 :goto_1

    .line 338
    :pswitch_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 340
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    .line 342
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 344
    goto/16 :goto_1

    .line 347
    :pswitch_6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 349
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    .line 351
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 353
    goto/16 :goto_1

    .line 356
    :pswitch_7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 358
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    .line 360
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 362
    goto/16 :goto_1

    .line 365
    :pswitch_8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 367
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    .line 369
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 371
    goto/16 :goto_1

    .line 374
    :pswitch_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 376
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    .line 378
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 380
    goto/16 :goto_1

    .line 383
    :pswitch_a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 385
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    .line 387
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 389
    goto/16 :goto_1

    .line 392
    :pswitch_b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 394
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    .line 396
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 398
    goto/16 :goto_1

    .line 401
    :pswitch_c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 403
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    .line 405
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 407
    goto/16 :goto_1

    .line 410
    :pswitch_d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 412
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    .line 414
    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 416
    goto/16 :goto_1

    .line 419
    :cond_10
    return-void

    .line 421
    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_1
        0x5b327a02 -> :sswitch_0
    .end sparse-switch

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 480
.end method

.method public final clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 2

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycle;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycle;-><init>()V

    .line 3
    invoke-super {v0, p0}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    .line 4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    .line 5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    .line 7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    .line 8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    .line 9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    .line 10
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    .line 11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    .line 12
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    .line 13
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    .line 14
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    .line 15
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    .line 16
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    .line 17
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    .line 18
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    .line 19
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    .line 20
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    .line 21
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    .line 22
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    iput p0, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object p0

    return-object p0
.end method

.method public final getAttributeNames(Ljava/util/HashSet;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const-string v0, "alpha"

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    .line 15
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    const-string v0, "elevation"

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 30
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    const-string/jumbo v0, "rotation"

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    .line 42
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    const-string/jumbo v0, "rotationX"

    .line 50
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    .line 56
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 58
    move-result v0

    .line 61
    if-nez v0, :cond_4

    .line 62
    const-string/jumbo v0, "rotationY"

    .line 64
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    .line 70
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 72
    move-result v0

    .line 75
    if-nez v0, :cond_5

    .line 76
    const-string/jumbo v0, "scaleX"

    .line 78
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    .line 84
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 86
    move-result v0

    .line 89
    if-nez v0, :cond_6

    .line 90
    const-string/jumbo v0, "scaleY"

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 100
    move-result v0

    .line 103
    if-nez v0, :cond_7

    .line 104
    const-string/jumbo v0, "transitionPathRotate"

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    .line 112
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 114
    move-result v0

    .line 117
    if-nez v0, :cond_8

    .line 118
    const-string/jumbo v0, "translationX"

    .line 120
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    .line 126
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 128
    move-result v0

    .line 131
    if-nez v0, :cond_9

    .line 132
    const-string/jumbo v0, "translationY"

    .line 134
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    .line 140
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 142
    move-result v0

    .line 145
    if-nez v0, :cond_a

    .line 146
    const-string/jumbo v0, "translationZ"

    .line 148
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 154
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 156
    move-result v0

    .line 159
    if-lez v0, :cond_b

    .line 160
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 162
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 164
    move-result-object p0

    .line 167
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object p0

    .line 171
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v0

    .line 175
    if-eqz v0, :cond_b

    .line 176
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    move-result-object v0

    .line 181
    check-cast v0, Ljava/lang/String;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    const-string v2, "CUSTOM,"

    .line 186
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    goto :goto_0

    .line 201
    :cond_b
    return-void
    .line 202
.end method

.method public final load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle:[I

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p1

    .line 7
    sget-object p2, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p2, :cond_5

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 17
    move-result v1

    .line 20
    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 23
    move-result v3

    .line 26
    const/4 v4, 0x3

    .line 27
    packed-switch v3, :pswitch_data_0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    const-string/jumbo v4, "unused attribute 0x"

    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v4, "   "

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 51
    move-result v1

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 61
    const-string v2, "KeyCycle"

    .line 62
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    goto/16 :goto_1

    .line 67
    :pswitch_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    .line 69
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 71
    move-result v1

    .line 74
    const/high16 v2, 0x43b40000    # 360.0f

    .line 75
    div-float/2addr v1, v2

    .line 77
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    .line 78
    goto/16 :goto_1

    .line 80
    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    .line 82
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 84
    move-result v1

    .line 87
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    .line 88
    goto/16 :goto_1

    .line 90
    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    .line 92
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 94
    move-result v1

    .line 97
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    .line 98
    goto/16 :goto_1

    .line 100
    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    .line 102
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 104
    move-result v1

    .line 107
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    .line 108
    goto/16 :goto_1

    .line 110
    :pswitch_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    .line 112
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 114
    move-result v1

    .line 117
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    .line 118
    goto/16 :goto_1

    .line 120
    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    .line 122
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 124
    move-result v1

    .line 127
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    .line 128
    goto/16 :goto_1

    .line 130
    :pswitch_6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    .line 132
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 134
    move-result v1

    .line 137
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    .line 138
    goto/16 :goto_1

    .line 140
    :pswitch_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    .line 142
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 144
    move-result v1

    .line 147
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    .line 148
    goto/16 :goto_1

    .line 150
    :pswitch_8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    .line 152
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 154
    move-result v1

    .line 157
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    .line 158
    goto/16 :goto_1

    .line 160
    :pswitch_9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    .line 162
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 164
    move-result v1

    .line 167
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    .line 168
    goto/16 :goto_1

    .line 170
    :pswitch_a
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    .line 172
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 174
    move-result v1

    .line 177
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    .line 178
    goto/16 :goto_1

    .line 180
    :pswitch_b
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    .line 182
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 184
    move-result v1

    .line 187
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    .line 188
    goto/16 :goto_1

    .line 190
    :pswitch_c
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    .line 192
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 194
    move-result v1

    .line 197
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    .line 198
    goto/16 :goto_1

    .line 200
    :pswitch_d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    .line 202
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 204
    move-result v1

    .line 207
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    .line 208
    goto/16 :goto_1

    .line 210
    :pswitch_e
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 212
    move-result-object v2

    .line 215
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 216
    const/4 v3, 0x5

    .line 218
    if-ne v2, v3, :cond_0

    .line 219
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    .line 221
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 223
    move-result v1

    .line 226
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    .line 227
    goto/16 :goto_1

    .line 229
    :cond_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    .line 231
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 233
    move-result v1

    .line 236
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    .line 237
    goto :goto_1

    .line 239
    :pswitch_f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    .line 240
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 242
    move-result v1

    .line 245
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    .line 246
    goto :goto_1

    .line 248
    :pswitch_10
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 249
    move-result-object v2

    .line 252
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 253
    if-ne v2, v4, :cond_1

    .line 255
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 257
    move-result-object v1

    .line 260
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    .line 261
    const/4 v1, 0x7

    .line 263
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    .line 264
    goto :goto_1

    .line 266
    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    .line 267
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 269
    move-result v1

    .line 272
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    .line 273
    goto :goto_1

    .line 275
    :pswitch_11
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    .line 276
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 278
    move-result v1

    .line 281
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    .line 282
    goto :goto_1

    .line 284
    :pswitch_12
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 285
    goto :goto_1

    .line 288
    :pswitch_13
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 289
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 291
    move-result v1

    .line 294
    iput v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 295
    goto :goto_1

    .line 297
    :pswitch_14
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 298
    if-eqz v2, :cond_2

    .line 300
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 302
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 304
    move-result v2

    .line 307
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 308
    const/4 v3, -0x1

    .line 310
    if-ne v2, v3, :cond_4

    .line 311
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 313
    move-result-object v1

    .line 316
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 317
    goto :goto_1

    .line 319
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 320
    move-result-object v2

    .line 323
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 324
    if-ne v2, v4, :cond_3

    .line 326
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 328
    move-result-object v1

    .line 331
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 332
    goto :goto_1

    .line 334
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 335
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 337
    move-result v1

    .line 340
    iput v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 341
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 343
    goto/16 :goto_0

    .line 345
    :cond_5
    return-void

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 348
.end method
