.class public final Landroidx/constraintlayout/motion/widget/KeyAttributes;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAlpha:F

.field public mCurveFit:I

.field public mElevation:F

.field public mPivotX:F

.field public mPivotY:F

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 6
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 18
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    .line 20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 24
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 26
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 28
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 30
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 34
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public final addValues(Ljava/util/HashMap;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_11

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 26
    if-nez v2, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const-string v3, "CUSTOM"

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    move-result v3

    .line 36
    const/4 v4, 0x7

    .line 37
    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 43
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 44
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 50
    if-eqz v1, :cond_0

    .line 52
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    .line 54
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 56
    iget-object v2, v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 64
    move-result v3

    .line 67
    const/4 v5, -0x1

    .line 68
    sparse-switch v3, :sswitch_data_0

    .line 69
    :goto_1
    move v4, v5

    .line 72
    goto/16 :goto_2

    .line 73
    :sswitch_0
    const-string v3, "alpha"

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    goto :goto_1

    .line 83
    :cond_3
    const/16 v4, 0xd

    .line 84
    goto/16 :goto_2

    .line 86
    :sswitch_1
    const-string/jumbo v3, "transitionPathRotate"

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    goto :goto_1

    .line 97
    :cond_4
    const/16 v4, 0xc

    .line 98
    goto/16 :goto_2

    .line 100
    :sswitch_2
    const-string v3, "elevation"

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 107
    if-nez v1, :cond_5

    .line 108
    goto :goto_1

    .line 110
    :cond_5
    const/16 v4, 0xb

    .line 111
    goto/16 :goto_2

    .line 113
    :sswitch_3
    const-string/jumbo v3, "rotation"

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v1

    .line 121
    if-nez v1, :cond_6

    .line 122
    goto :goto_1

    .line 124
    :cond_6
    const/16 v4, 0xa

    .line 125
    goto/16 :goto_2

    .line 127
    :sswitch_4
    const-string/jumbo v3, "transformPivotY"

    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v1

    .line 135
    if-nez v1, :cond_7

    .line 136
    goto :goto_1

    .line 138
    :cond_7
    const/16 v4, 0x9

    .line 139
    goto/16 :goto_2

    .line 141
    :sswitch_5
    const-string/jumbo v3, "transformPivotX"

    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v1

    .line 149
    if-nez v1, :cond_8

    .line 150
    goto :goto_1

    .line 152
    :cond_8
    const/16 v4, 0x8

    .line 153
    goto :goto_2

    .line 155
    :sswitch_6
    const-string/jumbo v3, "scaleY"

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v1

    .line 162
    if-nez v1, :cond_10

    .line 163
    goto :goto_1

    .line 165
    :sswitch_7
    const-string/jumbo v3, "scaleX"

    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v1

    .line 172
    if-nez v1, :cond_9

    .line 173
    goto :goto_1

    .line 175
    :cond_9
    const/4 v4, 0x6

    .line 176
    goto :goto_2

    .line 177
    :sswitch_8
    const-string v3, "progress"

    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v1

    .line 183
    if-nez v1, :cond_a

    .line 184
    goto :goto_1

    .line 186
    :cond_a
    const/4 v4, 0x5

    .line 187
    goto :goto_2

    .line 188
    :sswitch_9
    const-string/jumbo v3, "translationZ"

    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v1

    .line 195
    if-nez v1, :cond_b

    .line 196
    goto :goto_1

    .line 198
    :cond_b
    const/4 v4, 0x4

    .line 199
    goto :goto_2

    .line 200
    :sswitch_a
    const-string/jumbo v3, "translationY"

    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result v1

    .line 207
    if-nez v1, :cond_c

    .line 208
    goto/16 :goto_1

    .line 210
    :cond_c
    const/4 v4, 0x3

    .line 212
    goto :goto_2

    .line 213
    :sswitch_b
    const-string/jumbo v3, "translationX"

    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v1

    .line 220
    if-nez v1, :cond_d

    .line 221
    goto/16 :goto_1

    .line 223
    :cond_d
    const/4 v4, 0x2

    .line 225
    goto :goto_2

    .line 226
    :sswitch_c
    const-string/jumbo v3, "rotationY"

    .line 227
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result v1

    .line 233
    if-nez v1, :cond_e

    .line 234
    goto/16 :goto_1

    .line 236
    :cond_e
    const/4 v4, 0x1

    .line 238
    goto :goto_2

    .line 239
    :sswitch_d
    const-string/jumbo v3, "rotationX"

    .line 240
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v1

    .line 246
    if-nez v1, :cond_f

    .line 247
    goto/16 :goto_1

    .line 249
    :cond_f
    const/4 v4, 0x0

    .line 251
    :cond_10
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 252
    goto/16 :goto_0

    .line 255
    :pswitch_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 257
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 259
    move-result v1

    .line 262
    if-nez v1, :cond_0

    .line 263
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 265
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 267
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 269
    goto/16 :goto_0

    .line 272
    :pswitch_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 274
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 276
    move-result v1

    .line 279
    if-nez v1, :cond_0

    .line 280
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 282
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 284
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 286
    goto/16 :goto_0

    .line 289
    :pswitch_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 291
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 293
    move-result v1

    .line 296
    if-nez v1, :cond_0

    .line 297
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 299
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 301
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 303
    goto/16 :goto_0

    .line 306
    :pswitch_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 308
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 310
    move-result v1

    .line 313
    if-nez v1, :cond_0

    .line 314
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 316
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 318
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 320
    goto/16 :goto_0

    .line 323
    :pswitch_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 325
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 327
    move-result v1

    .line 330
    if-nez v1, :cond_0

    .line 331
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 333
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    .line 335
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 337
    goto/16 :goto_0

    .line 340
    :pswitch_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 342
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 344
    move-result v1

    .line 347
    if-nez v1, :cond_0

    .line 348
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 350
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    .line 352
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 354
    goto/16 :goto_0

    .line 357
    :pswitch_6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 359
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 361
    move-result v1

    .line 364
    if-nez v1, :cond_0

    .line 365
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 367
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 369
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 371
    goto/16 :goto_0

    .line 374
    :pswitch_7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 376
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 378
    move-result v1

    .line 381
    if-nez v1, :cond_0

    .line 382
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 384
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 386
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 388
    goto/16 :goto_0

    .line 391
    :pswitch_8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 393
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 395
    move-result v1

    .line 398
    if-nez v1, :cond_0

    .line 399
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 401
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 403
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 405
    goto/16 :goto_0

    .line 408
    :pswitch_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 410
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 412
    move-result v1

    .line 415
    if-nez v1, :cond_0

    .line 416
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 418
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 420
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 422
    goto/16 :goto_0

    .line 425
    :pswitch_a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 427
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 429
    move-result v1

    .line 432
    if-nez v1, :cond_0

    .line 433
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 435
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 437
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 439
    goto/16 :goto_0

    .line 442
    :pswitch_b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 444
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 446
    move-result v1

    .line 449
    if-nez v1, :cond_0

    .line 450
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 452
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 454
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 456
    goto/16 :goto_0

    .line 459
    :pswitch_c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 461
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 463
    move-result v1

    .line 466
    if-nez v1, :cond_0

    .line 467
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 469
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 471
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 473
    goto/16 :goto_0

    .line 476
    :pswitch_d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 478
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 480
    move-result v1

    .line 483
    if-nez v1, :cond_0

    .line 484
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 486
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 488
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 490
    goto/16 :goto_0

    .line 493
    :cond_11
    return-void

    .line 495
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
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    .line 496
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
    .line 554
.end method

.method public final clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 2

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 3
    invoke-super {v0, p0}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    .line 4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 10
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    .line 11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    .line 12
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 13
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 14
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 15
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 16
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 17
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 18
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    iput p0, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object p0

    return-object p0
.end method

.method public final getAttributeNames(Ljava/util/HashSet;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    .line 70
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 72
    move-result v0

    .line 75
    if-nez v0, :cond_5

    .line 76
    const-string/jumbo v0, "transformPivotX"

    .line 78
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    .line 84
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 86
    move-result v0

    .line 89
    if-nez v0, :cond_6

    .line 90
    const-string/jumbo v0, "transformPivotY"

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 100
    move-result v0

    .line 103
    if-nez v0, :cond_7

    .line 104
    const-string/jumbo v0, "translationX"

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 112
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 114
    move-result v0

    .line 117
    if-nez v0, :cond_8

    .line 118
    const-string/jumbo v0, "translationY"

    .line 120
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 126
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 128
    move-result v0

    .line 131
    if-nez v0, :cond_9

    .line 132
    const-string/jumbo v0, "translationZ"

    .line 134
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 140
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 142
    move-result v0

    .line 145
    if-nez v0, :cond_a

    .line 146
    const-string/jumbo v0, "transitionPathRotate"

    .line 148
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 154
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 156
    move-result v0

    .line 159
    if-nez v0, :cond_b

    .line 160
    const-string/jumbo v0, "scaleX"

    .line 162
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 168
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 170
    move-result v0

    .line 173
    if-nez v0, :cond_c

    .line 174
    const-string/jumbo v0, "scaleY"

    .line 176
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 182
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 184
    move-result v0

    .line 187
    if-nez v0, :cond_d

    .line 188
    const-string v0, "progress"

    .line 190
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 195
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 197
    move-result v0

    .line 200
    if-lez v0, :cond_e

    .line 201
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 203
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 205
    move-result-object p0

    .line 208
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 209
    move-result-object p0

    .line 212
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    move-result v0

    .line 216
    if-eqz v0, :cond_e

    .line 217
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    move-result-object v0

    .line 222
    check-cast v0, Ljava/lang/String;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    .line 225
    const-string v2, "CUSTOM,"

    .line 227
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 238
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    goto :goto_0

    .line 242
    :cond_e
    return-void
    .line 243
.end method

.method public final load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute:[I

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p1

    .line 7
    sget-object p2, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p2, :cond_3

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 17
    move-result v1

    .line 20
    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 23
    move-result v3

    .line 26
    packed-switch v3, :pswitch_data_0

    .line 27
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v4, "unused attribute 0x"

    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v4, "   "

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 50
    move-result v1

    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 60
    const-string v2, "KeyAttribute"

    .line 61
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto/16 :goto_1

    .line 66
    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    .line 68
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 70
    move-result v1

    .line 73
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    .line 74
    goto/16 :goto_1

    .line 76
    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 80
    move-result v1

    .line 83
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    .line 84
    goto/16 :goto_1

    .line 86
    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 90
    move-result v1

    .line 93
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 94
    goto/16 :goto_1

    .line 96
    :pswitch_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 98
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 100
    move-result v1

    .line 103
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 104
    goto/16 :goto_1

    .line 106
    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 110
    move-result v1

    .line 113
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 114
    goto/16 :goto_1

    .line 116
    :pswitch_6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 118
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 120
    move-result v1

    .line 123
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 124
    goto/16 :goto_1

    .line 126
    :pswitch_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 128
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 130
    move-result v1

    .line 133
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 134
    goto/16 :goto_1

    .line 136
    :pswitch_8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 138
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 140
    move-result v1

    .line 143
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 144
    goto/16 :goto_1

    .line 146
    :pswitch_9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 148
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 150
    move-result v1

    .line 153
    iput v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 154
    goto/16 :goto_1

    .line 156
    :pswitch_a
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 158
    if-eqz v2, :cond_0

    .line 160
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 162
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 164
    move-result v2

    .line 167
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 168
    const/4 v3, -0x1

    .line 170
    if-ne v2, v3, :cond_2

    .line 171
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 176
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 177
    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 180
    move-result-object v2

    .line 183
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 184
    const/4 v3, 0x3

    .line 186
    if-ne v2, v3, :cond_1

    .line 187
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 192
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 193
    goto :goto_1

    .line 195
    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 196
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 198
    move-result v1

    .line 201
    iput v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 202
    goto :goto_1

    .line 204
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 205
    goto :goto_1

    .line 208
    :pswitch_c
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 209
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 211
    move-result v1

    .line 214
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 215
    goto :goto_1

    .line 217
    :pswitch_d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 218
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 220
    move-result v1

    .line 223
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 224
    goto :goto_1

    .line 226
    :pswitch_e
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 227
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 229
    move-result v1

    .line 232
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 233
    goto :goto_1

    .line 235
    :pswitch_f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 236
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 238
    move-result v1

    .line 241
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 242
    goto :goto_1

    .line 244
    :pswitch_10
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 245
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 247
    move-result v1

    .line 250
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 251
    goto :goto_1

    .line 253
    :pswitch_11
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 254
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 256
    move-result v1

    .line 259
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 260
    goto :goto_1

    .line 262
    :pswitch_12
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 263
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 265
    move-result v1

    .line 268
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 269
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 271
    goto/16 :goto_0

    .line 273
    :cond_3
    return-void

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 276
.end method

.method public final setInterpolation(Ljava/util/HashMap;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 8
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "alpha"

    .line 22
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 40
    const-string v1, "elevation"

    .line 41
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 46
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 48
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v0

    .line 59
    const-string/jumbo v1, "rotation"

    .line 60
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 66
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 68
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v0

    .line 79
    const-string/jumbo v1, "rotationX"

    .line 80
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 86
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 88
    move-result v0

    .line 91
    if-nez v0, :cond_5

    .line 92
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v0

    .line 99
    const-string/jumbo v1, "rotationY"

    .line 100
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    .line 106
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 108
    move-result v0

    .line 111
    if-nez v0, :cond_6

    .line 112
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v0

    .line 119
    const-string/jumbo v1, "transformPivotX"

    .line 120
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    .line 126
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 128
    move-result v0

    .line 131
    if-nez v0, :cond_7

    .line 132
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v0

    .line 139
    const-string/jumbo v1, "transformPivotY"

    .line 140
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 146
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 148
    move-result v0

    .line 151
    if-nez v0, :cond_8

    .line 152
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v0

    .line 159
    const-string/jumbo v1, "translationX"

    .line 160
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 166
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 168
    move-result v0

    .line 171
    if-nez v0, :cond_9

    .line 172
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v0

    .line 179
    const-string/jumbo v1, "translationY"

    .line 180
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 186
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 188
    move-result v0

    .line 191
    if-nez v0, :cond_a

    .line 192
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    move-result-object v0

    .line 199
    const-string/jumbo v1, "translationZ"

    .line 200
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 206
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 208
    move-result v0

    .line 211
    if-nez v0, :cond_b

    .line 212
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object v0

    .line 219
    const-string/jumbo v1, "transitionPathRotate"

    .line 220
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 226
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 228
    move-result v0

    .line 231
    if-nez v0, :cond_c

    .line 232
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object v0

    .line 239
    const-string/jumbo v1, "scaleX"

    .line 240
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 246
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 248
    move-result v0

    .line 251
    if-nez v0, :cond_d

    .line 252
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object v0

    .line 259
    const-string/jumbo v1, "scaleY"

    .line 260
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 266
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 268
    move-result v0

    .line 271
    if-nez v0, :cond_e

    .line 272
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    move-result-object v0

    .line 279
    const-string v1, "progress"

    .line 280
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 285
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 287
    move-result v0

    .line 290
    if-lez v0, :cond_f

    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 293
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 295
    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 299
    move-result-object v0

    .line 302
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    move-result v1

    .line 306
    if-eqz v1, :cond_f

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    move-result-object v1

    .line 312
    check-cast v1, Ljava/lang/String;

    .line 313
    const-string v2, "CUSTOM,"

    .line 315
    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    move-result-object v1

    .line 320
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    move-result-object v2

    .line 326
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    goto :goto_0

    .line 330
    :cond_f
    return-void
    .line 331
.end method

.method public final setValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    goto/16 :goto_0

    .line 10
    :sswitch_0
    const-string/jumbo v0, "visibility"

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    goto/16 :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x10

    .line 23
    goto/16 :goto_0

    .line 25
    :sswitch_1
    const-string v0, "curveFit"

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p2

    .line 32
    if-nez p2, :cond_1

    .line 33
    goto/16 :goto_0

    .line 35
    :cond_1
    const/16 v1, 0xf

    .line 37
    goto/16 :goto_0

    .line 39
    :sswitch_2
    const-string v0, "alpha"

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p2

    .line 46
    if-nez p2, :cond_2

    .line 47
    goto/16 :goto_0

    .line 49
    :cond_2
    const/16 v1, 0xe

    .line 51
    goto/16 :goto_0

    .line 53
    :sswitch_3
    const-string/jumbo v0, "transitionPathRotate"

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p2

    .line 61
    if-nez p2, :cond_3

    .line 62
    goto/16 :goto_0

    .line 64
    :cond_3
    const/16 v1, 0xd

    .line 66
    goto/16 :goto_0

    .line 68
    :sswitch_4
    const-string v0, "elevation"

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p2

    .line 75
    if-nez p2, :cond_4

    .line 76
    goto/16 :goto_0

    .line 78
    :cond_4
    const/16 v1, 0xc

    .line 80
    goto/16 :goto_0

    .line 82
    :sswitch_5
    const-string/jumbo v0, "rotation"

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result p2

    .line 90
    if-nez p2, :cond_5

    .line 91
    goto/16 :goto_0

    .line 93
    :cond_5
    const/16 v1, 0xb

    .line 95
    goto/16 :goto_0

    .line 97
    :sswitch_6
    const-string/jumbo v0, "transformPivotY"

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result p2

    .line 105
    if-nez p2, :cond_6

    .line 106
    goto/16 :goto_0

    .line 108
    :cond_6
    const/16 v1, 0xa

    .line 110
    goto/16 :goto_0

    .line 112
    :sswitch_7
    const-string/jumbo v0, "transformPivotX"

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result p2

    .line 120
    if-nez p2, :cond_7

    .line 121
    goto/16 :goto_0

    .line 123
    :cond_7
    const/16 v1, 0x9

    .line 125
    goto/16 :goto_0

    .line 127
    :sswitch_8
    const-string/jumbo v0, "scaleY"

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result p2

    .line 135
    if-nez p2, :cond_8

    .line 136
    goto/16 :goto_0

    .line 138
    :cond_8
    const/16 v1, 0x8

    .line 140
    goto/16 :goto_0

    .line 142
    :sswitch_9
    const-string/jumbo v0, "scaleX"

    .line 144
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result p2

    .line 150
    if-nez p2, :cond_9

    .line 151
    goto :goto_0

    .line 153
    :cond_9
    const/4 v1, 0x7

    .line 154
    goto :goto_0

    .line 155
    :sswitch_a
    const-string/jumbo v0, "translationZ"

    .line 156
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result p2

    .line 162
    if-nez p2, :cond_a

    .line 163
    goto :goto_0

    .line 165
    :cond_a
    const/4 v1, 0x6

    .line 166
    goto :goto_0

    .line 167
    :sswitch_b
    const-string/jumbo v0, "translationY"

    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result p2

    .line 174
    if-nez p2, :cond_b

    .line 175
    goto :goto_0

    .line 177
    :cond_b
    const/4 v1, 0x5

    .line 178
    goto :goto_0

    .line 179
    :sswitch_c
    const-string/jumbo v0, "translationX"

    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result p2

    .line 186
    if-nez p2, :cond_c

    .line 187
    goto :goto_0

    .line 189
    :cond_c
    const/4 v1, 0x4

    .line 190
    goto :goto_0

    .line 191
    :sswitch_d
    const-string/jumbo v0, "rotationY"

    .line 192
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result p2

    .line 198
    if-nez p2, :cond_d

    .line 199
    goto :goto_0

    .line 201
    :cond_d
    const/4 v1, 0x3

    .line 202
    goto :goto_0

    .line 203
    :sswitch_e
    const-string/jumbo v0, "rotationX"

    .line 204
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result p2

    .line 210
    if-nez p2, :cond_e

    .line 211
    goto :goto_0

    .line 213
    :cond_e
    const/4 v1, 0x2

    .line 214
    goto :goto_0

    .line 215
    :sswitch_f
    const-string/jumbo v0, "transitionEasing"

    .line 216
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result p2

    .line 222
    if-nez p2, :cond_f

    .line 223
    goto :goto_0

    .line 225
    :cond_f
    const/4 v1, 0x1

    .line 226
    goto :goto_0

    .line 227
    :sswitch_10
    const-string v0, "motionProgress"

    .line 228
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result p2

    .line 233
    if-nez p2, :cond_10

    .line 234
    goto :goto_0

    .line 236
    :cond_10
    const/4 v1, 0x0

    .line 237
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 238
    goto/16 :goto_2

    .line 241
    :pswitch_0
    instance-of p0, p1, Ljava/lang/Boolean;

    .line 243
    if-eqz p0, :cond_11

    .line 245
    check-cast p1, Ljava/lang/Boolean;

    .line 247
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 249
    goto/16 :goto_2

    .line 252
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 254
    move-result-object p0

    .line 257
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 258
    goto/16 :goto_2

    .line 261
    :pswitch_1
    instance-of p2, p1, Ljava/lang/Integer;

    .line 263
    if-eqz p2, :cond_12

    .line 265
    check-cast p1, Ljava/lang/Integer;

    .line 267
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 269
    move-result p1

    .line 272
    goto :goto_1

    .line 273
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 274
    move-result-object p1

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 278
    move-result p1

    .line 281
    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 282
    goto/16 :goto_2

    .line 284
    :pswitch_2
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 286
    move-result p1

    .line 289
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 290
    goto :goto_2

    .line 292
    :pswitch_3
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 293
    move-result p1

    .line 296
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 297
    goto :goto_2

    .line 299
    :pswitch_4
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 300
    move-result p1

    .line 303
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 304
    goto :goto_2

    .line 306
    :pswitch_5
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 307
    move-result p1

    .line 310
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 311
    goto :goto_2

    .line 313
    :pswitch_6
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 314
    move-result p1

    .line 317
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    .line 318
    goto :goto_2

    .line 320
    :pswitch_7
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 321
    move-result p1

    .line 324
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    .line 325
    goto :goto_2

    .line 327
    :pswitch_8
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 328
    move-result p1

    .line 331
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 332
    goto :goto_2

    .line 334
    :pswitch_9
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 335
    move-result p1

    .line 338
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 339
    goto :goto_2

    .line 341
    :pswitch_a
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 342
    move-result p1

    .line 345
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 346
    goto :goto_2

    .line 348
    :pswitch_b
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 349
    move-result p1

    .line 352
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 353
    goto :goto_2

    .line 355
    :pswitch_c
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 356
    move-result p1

    .line 359
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 360
    goto :goto_2

    .line 362
    :pswitch_d
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 363
    move-result p1

    .line 366
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 367
    goto :goto_2

    .line 369
    :pswitch_e
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 370
    move-result p1

    .line 373
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 374
    goto :goto_2

    .line 376
    :pswitch_f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 377
    goto :goto_2

    .line 380
    :pswitch_10
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 381
    move-result p1

    .line 384
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 385
    :goto_2
    return-void

    .line 387
    :sswitch_data_0
    .sparse-switch
        -0x72062ffd -> :sswitch_10
        -0x6c0d7d20 -> :sswitch_f
        -0x4a771f66 -> :sswitch_e
        -0x4a771f65 -> :sswitch_d
        -0x490b9c39 -> :sswitch_c
        -0x490b9c38 -> :sswitch_b
        -0x490b9c37 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2d5a2d1e -> :sswitch_7
        -0x2d5a2d1d -> :sswitch_6
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x2283b8a2 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 458
.end method
