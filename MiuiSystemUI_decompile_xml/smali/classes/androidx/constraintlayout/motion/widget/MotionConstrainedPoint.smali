.class public final Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mAlpha:F

.field public final mAttributes:Ljava/util/LinkedHashMap;

.field public mElevation:F

.field public mPathRotate:F

.field public mPivotX:F

.field public mPivotY:F

.field public mProgress:F

.field public mRotation:F

.field public mRotationX:F

.field public mScaleX:F

.field public mScaleY:F

.field public mTranslationX:F

.field public mTranslationY:F

.field public mTranslationZ:F

.field public mVisibility:I

.field public mVisibilityMode:I

.field public rotationY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 6
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 11
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAttributes:Ljava/util/LinkedHashMap;

    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    .line 20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 24
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    .line 26
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    .line 28
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    .line 30
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 32
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    .line 34
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    .line 36
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    .line 38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    .line 40
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    .line 42
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    .line 44
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    .line 46
    return-void
    .line 48
.end method

.method public static diff(FF)Z
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    sub-float/2addr p0, p1

    .line 17
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 18
    move-result p0

    .line 21
    const p1, 0x358637bd    # 1.0E-6f

    .line 22
    cmpl-float p0, p0, p1

    .line 25
    if-lez p0, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    return v1

    .line 31
    :cond_2
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    move-result p0

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    move-result p1

    .line 39
    if-eq p0, p1, :cond_3

    .line 40
    goto :goto_2

    .line 42
    :cond_3
    move v1, v2

    .line 43
    :goto_2
    return v1
.end method


# virtual methods
.method public final addValues(ILjava/util/HashMap;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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
    if-eqz v1, :cond_20

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    sparse-switch v3, :sswitch_data_0

    .line 39
    goto/16 :goto_1

    .line 42
    :sswitch_0
    const-string v3, "alpha"

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    goto/16 :goto_1

    .line 52
    :cond_2
    const/16 v3, 0xd

    .line 54
    goto/16 :goto_2

    .line 56
    :sswitch_1
    const-string/jumbo v3, "transitionPathRotate"

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 64
    if-nez v3, :cond_3

    .line 65
    goto/16 :goto_1

    .line 67
    :cond_3
    const/16 v3, 0xc

    .line 69
    goto/16 :goto_2

    .line 71
    :sswitch_2
    const-string v3, "elevation"

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 78
    if-nez v3, :cond_4

    .line 79
    goto/16 :goto_1

    .line 81
    :cond_4
    const/16 v3, 0xb

    .line 83
    goto/16 :goto_2

    .line 85
    :sswitch_3
    const-string/jumbo v3, "rotation"

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v3

    .line 93
    if-nez v3, :cond_5

    .line 94
    goto/16 :goto_1

    .line 96
    :cond_5
    const/16 v3, 0xa

    .line 98
    goto/16 :goto_2

    .line 100
    :sswitch_4
    const-string/jumbo v3, "transformPivotY"

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v3

    .line 108
    if-nez v3, :cond_6

    .line 109
    goto/16 :goto_1

    .line 111
    :cond_6
    const/16 v3, 0x9

    .line 113
    goto/16 :goto_2

    .line 115
    :sswitch_5
    const-string/jumbo v3, "transformPivotX"

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v3

    .line 123
    if-nez v3, :cond_7

    .line 124
    goto/16 :goto_1

    .line 126
    :cond_7
    const/16 v3, 0x8

    .line 128
    goto/16 :goto_2

    .line 130
    :sswitch_6
    const-string/jumbo v3, "scaleY"

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v3

    .line 138
    if-nez v3, :cond_8

    .line 139
    goto :goto_1

    .line 141
    :cond_8
    const/4 v3, 0x7

    .line 142
    goto :goto_2

    .line 143
    :sswitch_7
    const-string/jumbo v3, "scaleX"

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result v3

    .line 150
    if-nez v3, :cond_9

    .line 151
    goto :goto_1

    .line 153
    :cond_9
    const/4 v3, 0x6

    .line 154
    goto :goto_2

    .line 155
    :sswitch_8
    const-string v3, "progress"

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v3

    .line 161
    if-nez v3, :cond_a

    .line 162
    goto :goto_1

    .line 164
    :cond_a
    const/4 v3, 0x5

    .line 165
    goto :goto_2

    .line 166
    :sswitch_9
    const-string/jumbo v3, "translationZ"

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v3

    .line 173
    if-nez v3, :cond_b

    .line 174
    goto :goto_1

    .line 176
    :cond_b
    const/4 v3, 0x4

    .line 177
    goto :goto_2

    .line 178
    :sswitch_a
    const-string/jumbo v3, "translationY"

    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v3

    .line 185
    if-nez v3, :cond_c

    .line 186
    goto :goto_1

    .line 188
    :cond_c
    const/4 v3, 0x3

    .line 189
    goto :goto_2

    .line 190
    :sswitch_b
    const-string/jumbo v3, "translationX"

    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v3

    .line 197
    if-nez v3, :cond_d

    .line 198
    goto :goto_1

    .line 200
    :cond_d
    const/4 v3, 0x2

    .line 201
    goto :goto_2

    .line 202
    :sswitch_c
    const-string/jumbo v3, "rotationY"

    .line 203
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v3

    .line 209
    if-nez v3, :cond_e

    .line 210
    goto :goto_1

    .line 212
    :cond_e
    move v3, v4

    .line 213
    goto :goto_2

    .line 214
    :sswitch_d
    const-string/jumbo v3, "rotationX"

    .line 215
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result v3

    .line 221
    if-nez v3, :cond_f

    .line 222
    goto :goto_1

    .line 224
    :cond_f
    const/4 v3, 0x0

    .line 225
    goto :goto_2

    .line 226
    :goto_1
    const/4 v3, -0x1

    .line 227
    :goto_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 228
    const/4 v6, 0x0

    .line 230
    packed-switch v3, :pswitch_data_0

    .line 231
    const-string v3, "CUSTOM"

    .line 234
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 236
    move-result v3

    .line 239
    const-string v5, "MotionPaths"

    .line 240
    if-eqz v3, :cond_1f

    .line 242
    const-string v3, ","

    .line 244
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 246
    move-result-object v3

    .line 249
    aget-object v3, v3, v4

    .line 250
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAttributes:Ljava/util/LinkedHashMap;

    .line 252
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 254
    move-result v4

    .line 257
    if-eqz v4, :cond_0

    .line 258
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAttributes:Ljava/util/LinkedHashMap;

    .line 260
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    move-result-object v3

    .line 265
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 266
    instance-of v4, v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    .line 268
    if-eqz v4, :cond_1e

    .line 270
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    .line 272
    goto/16 :goto_11

    .line 274
    :pswitch_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    .line 276
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 278
    move-result v1

    .line 281
    if-eqz v1, :cond_10

    .line 282
    goto :goto_3

    .line 284
    :cond_10
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    .line 285
    :goto_3
    invoke-virtual {v2, v5, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 287
    goto/16 :goto_0

    .line 290
    :pswitch_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    .line 292
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 294
    move-result v1

    .line 297
    if-eqz v1, :cond_11

    .line 298
    goto :goto_4

    .line 300
    :cond_11
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    .line 301
    :goto_4
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 303
    goto/16 :goto_0

    .line 306
    :pswitch_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    .line 308
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 310
    move-result v1

    .line 313
    if-eqz v1, :cond_12

    .line 314
    goto :goto_5

    .line 316
    :cond_12
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    .line 317
    :goto_5
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 319
    goto/16 :goto_0

    .line 322
    :pswitch_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 324
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 326
    move-result v1

    .line 329
    if-eqz v1, :cond_13

    .line 330
    goto :goto_6

    .line 332
    :cond_13
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 333
    :goto_6
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 335
    goto/16 :goto_0

    .line 338
    :pswitch_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    .line 340
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 342
    move-result v1

    .line 345
    if-eqz v1, :cond_14

    .line 346
    goto :goto_7

    .line 348
    :cond_14
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    .line 349
    :goto_7
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 351
    goto/16 :goto_0

    .line 354
    :pswitch_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    .line 356
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 358
    move-result v1

    .line 361
    if-eqz v1, :cond_15

    .line 362
    goto :goto_8

    .line 364
    :cond_15
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    .line 365
    :goto_8
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 367
    goto/16 :goto_0

    .line 370
    :pswitch_6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    .line 372
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 374
    move-result v1

    .line 377
    if-eqz v1, :cond_16

    .line 378
    goto :goto_9

    .line 380
    :cond_16
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    .line 381
    :goto_9
    invoke-virtual {v2, v5, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 383
    goto/16 :goto_0

    .line 386
    :pswitch_7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    .line 388
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 390
    move-result v1

    .line 393
    if-eqz v1, :cond_17

    .line 394
    goto :goto_a

    .line 396
    :cond_17
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    .line 397
    :goto_a
    invoke-virtual {v2, v5, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 399
    goto/16 :goto_0

    .line 402
    :pswitch_8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    .line 404
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 406
    move-result v1

    .line 409
    if-eqz v1, :cond_18

    .line 410
    goto :goto_b

    .line 412
    :cond_18
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    .line 413
    :goto_b
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 415
    goto/16 :goto_0

    .line 418
    :pswitch_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    .line 420
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 422
    move-result v1

    .line 425
    if-eqz v1, :cond_19

    .line 426
    goto :goto_c

    .line 428
    :cond_19
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    .line 429
    :goto_c
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 431
    goto/16 :goto_0

    .line 434
    :pswitch_a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    .line 436
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 438
    move-result v1

    .line 441
    if-eqz v1, :cond_1a

    .line 442
    goto :goto_d

    .line 444
    :cond_1a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    .line 445
    :goto_d
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 447
    goto/16 :goto_0

    .line 450
    :pswitch_b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    .line 452
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 454
    move-result v1

    .line 457
    if-eqz v1, :cond_1b

    .line 458
    goto :goto_e

    .line 460
    :cond_1b
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    .line 461
    :goto_e
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 463
    goto/16 :goto_0

    .line 466
    :pswitch_c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 468
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 470
    move-result v1

    .line 473
    if-eqz v1, :cond_1c

    .line 474
    goto :goto_f

    .line 476
    :cond_1c
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 477
    :goto_f
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 479
    goto/16 :goto_0

    .line 482
    :pswitch_d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    .line 484
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 486
    move-result v1

    .line 489
    if-eqz v1, :cond_1d

    .line 490
    goto :goto_10

    .line 492
    :cond_1d
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    .line 493
    :goto_10
    invoke-virtual {v2, v6, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(FI)V

    .line 495
    goto/16 :goto_0

    .line 498
    :goto_11
    iget-object v1, v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 500
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 502
    goto/16 :goto_0

    .line 505
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 507
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v1, " ViewSpline not a CustomSet frame = "

    .line 515
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    const-string v1, ", value"

    .line 523
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    .line 528
    move-result v1

    .line 531
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    move-result-object v1

    .line 541
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    goto/16 :goto_0

    .line 545
    :cond_1f
    const-string v2, "UNKNOWN spline "

    .line 547
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    move-result-object v1

    .line 552
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    goto/16 :goto_0

    .line 556
    :cond_20
    return-void

    .line 558
    nop

    .line 559
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

    .line 560
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
    .line 618
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 7
    invoke-static {p0, p0}, Ljava/lang/Float;->compare(FF)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 5
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 8
    move-result-object p1

    .line 11
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 12
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 14
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    .line 16
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    .line 20
    if-eqz v0, :cond_0

    .line 22
    if-nez p4, :cond_0

    .line 24
    const/4 p2, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 28
    :goto_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    .line 30
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 32
    iget-boolean p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 34
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 36
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    .line 38
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 40
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 42
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 44
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    .line 46
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 48
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 50
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 52
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    .line 54
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 56
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    .line 58
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 60
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    .line 62
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 64
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    .line 66
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 68
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    .line 70
    iget p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 72
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    .line 74
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 76
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    .line 78
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 80
    iget-object p4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 82
    invoke-static {p4}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 84
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 87
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    .line 89
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 91
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 93
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    .line 95
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 97
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 99
    move-result-object p2

    .line 102
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object p2

    .line 106
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result p4

    .line 110
    const/4 v0, 0x4

    .line 111
    const/4 v1, 0x1

    .line 112
    if-eqz p4, :cond_3

    .line 113
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object p4

    .line 118
    check-cast p4, Ljava/lang/String;

    .line 119
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 121
    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v2

    .line 126
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 127
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 129
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 131
    move-result v3

    .line 134
    if-eq v3, v0, :cond_2

    .line 135
    const/4 v0, 0x5

    .line 137
    if-eq v3, v0, :cond_2

    .line 138
    const/4 v0, 0x7

    .line 140
    if-eq v3, v0, :cond_2

    .line 141
    goto :goto_2

    .line 143
    :cond_2
    const/4 v1, 0x0

    .line 144
    :goto_2
    if-eqz v1, :cond_1

    .line 145
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAttributes:Ljava/util/LinkedHashMap;

    .line 147
    invoke-virtual {v0, p4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    goto :goto_1

    .line 152
    :cond_3
    const/high16 p1, 0x42b40000    # 90.0f

    .line 153
    if-eq p3, v1, :cond_5

    .line 155
    const/4 p2, 0x2

    .line 157
    if-eq p3, p2, :cond_4

    .line 158
    const/4 p2, 0x3

    .line 160
    if-eq p3, p2, :cond_5

    .line 161
    if-eq p3, v0, :cond_4

    .line 163
    goto :goto_3

    .line 165
    :cond_4
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 166
    add-float/2addr p2, p1

    .line 168
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 169
    const/high16 p1, 0x43340000    # 180.0f

    .line 171
    cmpl-float p1, p2, p1

    .line 173
    if-lez p1, :cond_6

    .line 175
    const/high16 p1, 0x43b40000    # 360.0f

    .line 177
    sub-float/2addr p2, p1

    .line 179
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 180
    goto :goto_3

    .line 182
    :cond_5
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 183
    sub-float/2addr p2, p1

    .line 185
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 186
    :cond_6
    :goto_3
    return-void
    .line 188
.end method
