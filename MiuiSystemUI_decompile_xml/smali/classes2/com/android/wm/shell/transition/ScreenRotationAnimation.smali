.class public final Lcom/android/wm/shell/transition/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAnimHint:I

.field public final mAnimLeash:Landroid/view/SurfaceControl;

.field public final mBackColorSurface:Landroid/view/SurfaceControl;

.field public final mCornerRadius:F

.field public final mEndHeight:I

.field public final mEndRotation:I

.field public final mEndWidth:I

.field public final mMiuiScreenRotationMode:I

.field public mRotateAlphaAnimation:Landroid/view/animation/Animation;

.field public mRotateEnterAnimation:Landroid/view/animation/Animation;

.field public mRotateExitAnimation:Landroid/view/animation/Animation;

.field public final mSRAImpl:Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;

.field public final mScreenshotLayer:Landroid/view/SurfaceControl;

.field public final mStartHeight:I

.field public final mStartLuma:F

.field public final mStartRotation:I

.field public final mStartWidth:I

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mTmpFloats:[F

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mWithinApp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p2

    .line 4
    move-object/from16 v6, p4

    .line 6
    move-object/from16 v2, p6

    .line 8
    move/from16 v3, p7

    .line 10
    const-string v4, "ShellTransitions"

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v5, 0x9

    .line 17
    new-array v5, v5, [F

    .line 19
    iput-object v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    .line 21
    move-object/from16 v5, p3

    .line 23
    iput-object v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 25
    iput v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimHint:I

    .line 27
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 29
    move-result-object v5

    .line 32
    iput-object v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 33
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 35
    move-result-object v7

    .line 38
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 39
    move-result v7

    .line 42
    iput v7, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    .line 43
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 45
    move-result-object v8

    .line 48
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 49
    move-result v8

    .line 52
    iput v8, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    .line 53
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 55
    move-result-object v9

    .line 58
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 59
    move-result v9

    .line 62
    iput v9, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    .line 63
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 65
    move-result-object v10

    .line 68
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 69
    move-result v10

    .line 72
    iput v10, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    .line 73
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 75
    move-result v11

    .line 78
    iput v11, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    .line 79
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 81
    move-result v11

    .line 84
    iput v11, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    .line 85
    new-instance v11, Landroid/view/SurfaceControl$Builder;

    .line 87
    invoke-direct {v11, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 89
    invoke-virtual {v11, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 92
    move-result-object v11

    .line 95
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 96
    move-result-object v11

    .line 99
    const-string v12, "ShellRotationAnimation"

    .line 100
    invoke-virtual {v11, v12}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 102
    move-result-object v11

    .line 105
    const-string v13, "Animation leash of screenshot rotation"

    .line 106
    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 108
    move-result-object v11

    .line 111
    const/4 v14, 0x1

    .line 112
    if-le v9, v7, :cond_0

    .line 113
    move v15, v14

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const/4 v15, 0x0

    .line 117
    :goto_0
    if-le v10, v8, :cond_1

    .line 118
    move v13, v14

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    const/4 v13, 0x0

    .line 122
    :goto_1
    if-ne v15, v13, :cond_3

    .line 123
    if-ne v9, v7, :cond_2

    .line 125
    if-eq v10, v8, :cond_3

    .line 127
    :cond_2
    move v13, v14

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    const/4 v13, 0x0

    .line 131
    :goto_2
    if-eqz v13, :cond_4

    .line 132
    const/4 v15, 0x0

    .line 134
    invoke-virtual {v11, v15}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 135
    move-result-object v11

    .line 138
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 139
    move-result-object v11

    .line 142
    iput-object v11, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 143
    goto :goto_3

    .line 145
    :cond_4
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 146
    move-result-object v11

    .line 149
    iput-object v11, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 150
    :goto_3
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 152
    move-result-object v16

    .line 155
    if-eqz v16, :cond_5

    .line 156
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 158
    move-result-object v7

    .line 161
    iput-object v7, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 162
    iget-object v8, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 164
    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 166
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshotLuma()F

    .line 169
    move-result v7

    .line 172
    iput v7, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    .line 173
    move-object/from16 v17, v4

    .line 175
    move-object/from16 v18, v12

    .line 177
    goto/16 :goto_6

    .line 179
    :cond_5
    new-instance v11, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 181
    invoke-direct {v11, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 183
    invoke-virtual {v11, v14}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 186
    move-result-object v11

    .line 189
    check-cast v11, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 190
    invoke-virtual {v11, v14}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 192
    move-result-object v11

    .line 195
    check-cast v11, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 196
    new-instance v15, Landroid/graphics/Rect;

    .line 198
    const/4 v14, 0x0

    .line 200
    invoke-direct {v15, v14, v14, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 201
    invoke-virtual {v11, v15}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 204
    move-result-object v7

    .line 207
    check-cast v7, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 208
    const/4 v8, 0x1

    .line 210
    invoke-virtual {v7, v8}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 211
    move-result-object v7

    .line 214
    check-cast v7, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 215
    invoke-virtual {v7, v8}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setNeedCaptureDimming(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 217
    move-result-object v7

    .line 220
    check-cast v7, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 221
    invoke-virtual {v7}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 223
    move-result-object v7

    .line 226
    invoke-static {v7}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 227
    move-result-object v7

    .line 230
    if-nez v7, :cond_6

    .line 231
    const-string v0, "Unable to take screenshot of display"

    .line 233
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 238
    :cond_6
    new-instance v8, Landroid/view/SurfaceControl$Builder;

    .line 239
    invoke-direct {v8, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 241
    iget-object v11, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 244
    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 246
    move-result-object v8

    .line 249
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 250
    move-result-object v8

    .line 253
    invoke-virtual {v7}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 254
    move-result v11

    .line 257
    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 258
    move-result-object v8

    .line 261
    const/4 v11, 0x1

    .line 262
    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 263
    move-result-object v8

    .line 266
    invoke-virtual {v8, v12}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 267
    move-result-object v8

    .line 270
    const-string v11, "RotationLayer"

    .line 271
    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 273
    move-result-object v8

    .line 276
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 277
    move-result-object v8

    .line 280
    iput-object v8, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 281
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    .line 283
    move-result-object v11

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 287
    move-result-object v14

    .line 290
    invoke-virtual {v11}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiInScreeningSettingsKey()Ljava/lang/String;

    .line 291
    move-result-object v15
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    move-object/from16 v17, v4

    .line 295
    const/4 v4, -0x2

    .line 297
    move-object/from16 v18, v12

    .line 298
    const/4 v12, 0x0

    .line 300
    :try_start_1
    invoke-static {v14, v15, v12, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 301
    move-result v14

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 305
    move-result-object v15

    .line 308
    invoke-virtual {v11}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiPrivacyOnSettingsKey()Ljava/lang/String;

    .line 309
    move-result-object v4

    .line 312
    const/4 v2, -0x2

    .line 313
    invoke-static {v15, v4, v12, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 314
    move-result v2

    .line 317
    if-lez v14, :cond_7

    .line 318
    if-lez v2, :cond_7

    .line 320
    if-eqz v8, :cond_7

    .line 322
    invoke-virtual {v11}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    .line 324
    move-result v2

    .line 327
    invoke-virtual {v8, v2}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 328
    :cond_7
    invoke-static {v6, v8, v7}, Lcom/android/internal/policy/TransitionAnimation;->configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    .line 331
    invoke-virtual {v7}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 334
    move-result-object v2

    .line 337
    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 338
    const/4 v4, 0x1

    .line 341
    if-eq v3, v4, :cond_9

    .line 342
    const/4 v4, 0x2

    .line 344
    if-ne v3, v4, :cond_8

    .line 345
    goto :goto_4

    .line 347
    :cond_8
    const/4 v4, 0x0

    .line 348
    goto :goto_5

    .line 349
    :cond_9
    :goto_4
    const/4 v4, 0x1

    .line 350
    :goto_5
    if-nez v4, :cond_a

    .line 351
    invoke-virtual {v7}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 353
    move-result-object v4

    .line 356
    invoke-static {v2, v4}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    .line 357
    move-result v4

    .line 360
    iput v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    .line 361
    :cond_a
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V

    .line 363
    :goto_6
    const-class v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;

    .line 366
    invoke-static {v2}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 368
    move-result-object v2

    .line 371
    check-cast v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;

    .line 372
    iput-object v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSRAImpl:Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;

    .line 374
    move-object/from16 v4, p1

    .line 376
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->init(Landroid/content/Context;)V

    .line 378
    iget-boolean v7, v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mWithinApp:Z

    .line 381
    iput-boolean v7, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mWithinApp:Z

    .line 383
    iget v2, v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiuiScreenRotationMode:I

    .line 385
    iput v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mMiuiScreenRotationMode:I

    .line 387
    invoke-static/range {p1 .. p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getMiuiWindowCornerRadius(Landroid/content/Context;)F

    .line 389
    move-result v4

    .line 392
    iput v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mCornerRadius:F

    .line 393
    if-eqz v13, :cond_b

    .line 395
    iget-object v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 397
    const v8, 0x7fffffff

    .line 399
    invoke-virtual {v6, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 402
    goto :goto_7

    .line 405
    :cond_b
    iget-object v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 406
    const v8, 0x1eab90

    .line 408
    invoke-virtual {v6, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 411
    :goto_7
    iget-object v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 414
    invoke-virtual {v6, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 416
    new-instance v4, Landroid/graphics/Rect;

    .line 419
    const/4 v8, 0x0

    .line 421
    invoke-direct {v4, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 422
    invoke-virtual {v6, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 425
    const/4 v4, 0x1

    .line 428
    if-eq v3, v4, :cond_d

    .line 429
    const/4 v4, 0x2

    .line 431
    if-ne v3, v4, :cond_c

    .line 432
    goto :goto_8

    .line 434
    :cond_c
    const/4 v3, 0x0

    .line 435
    goto :goto_9

    .line 436
    :cond_d
    :goto_8
    const/4 v3, 0x1

    .line 437
    :goto_9
    if-nez v3, :cond_f

    .line 438
    if-eqz v7, :cond_e

    .line 440
    if-nez v2, :cond_f

    .line 442
    :cond_e
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    .line 444
    invoke-direct {v2, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 446
    move-object/from16 v0, p6

    .line 449
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 451
    move-result-object v0

    .line 454
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 455
    move-result-object v0

    .line 458
    const/4 v2, 0x1

    .line 459
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 460
    move-result-object v0

    .line 463
    move-object/from16 v2, v18

    .line 464
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 466
    move-result-object v0

    .line 469
    const-string v2, "BackColorSurface"

    .line 470
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 472
    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 476
    move-result-object v0

    .line 479
    iput-object v0, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 480
    const/4 v2, -0x1

    .line 482
    invoke-virtual {v6, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 483
    const/4 v2, 0x3

    .line 486
    new-array v3, v2, [F

    .line 487
    iget v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    .line 489
    const/4 v4, 0x0

    .line 491
    aput v2, v3, v4

    .line 492
    const/4 v4, 0x1

    .line 494
    aput v2, v3, v4

    .line 495
    const/4 v4, 0x2

    .line 497
    aput v2, v3, v4

    .line 498
    invoke-virtual {v6, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 500
    invoke-virtual {v6, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 503
    goto :goto_b

    .line 506
    :catch_0
    move-exception v0

    .line 507
    goto :goto_a

    .line 508
    :catch_1
    move-exception v0

    .line 509
    move-object/from16 v17, v4

    .line 510
    :goto_a
    const-string v2, "Unable to allocate freeze surface"

    .line 512
    move-object/from16 v3, v17

    .line 514
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    :cond_f
    :goto_b
    iget-object v0, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 519
    if-nez v0, :cond_10

    .line 521
    goto/16 :goto_f

    .line 523
    :cond_10
    new-instance v2, Landroid/graphics/Matrix;

    .line 525
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 527
    iget v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    .line 530
    iget v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    .line 532
    invoke-static {v3, v4}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 534
    move-result v3

    .line 537
    iget v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    .line 538
    iget v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    .line 540
    if-eqz v3, :cond_14

    .line 542
    const/4 v7, 0x0

    .line 544
    const/4 v8, 0x1

    .line 545
    if-eq v3, v8, :cond_13

    .line 546
    const/4 v8, 0x2

    .line 548
    if-eq v3, v8, :cond_12

    .line 549
    const/4 v8, 0x3

    .line 551
    if-eq v3, v8, :cond_11

    .line 552
    goto :goto_e

    .line 554
    :cond_11
    const/high16 v3, 0x43870000    # 270.0f

    .line 555
    invoke-virtual {v2, v3, v7, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 557
    int-to-float v3, v5

    .line 560
    invoke-virtual {v2, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 561
    goto :goto_e

    .line 564
    :cond_12
    const/high16 v3, 0x43340000    # 180.0f

    .line 565
    invoke-virtual {v2, v3, v7, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 567
    int-to-float v3, v5

    .line 570
    int-to-float v4, v4

    .line 571
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 572
    goto :goto_e

    .line 575
    :cond_13
    const/high16 v3, 0x42b40000    # 90.0f

    .line 576
    invoke-virtual {v2, v3, v7, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 578
    int-to-float v3, v4

    .line 581
    invoke-virtual {v2, v3, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 582
    goto :goto_e

    .line 585
    :cond_14
    iget v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    .line 586
    if-le v3, v5, :cond_15

    .line 588
    const/4 v14, 0x1

    .line 590
    goto :goto_c

    .line 591
    :cond_15
    const/4 v14, 0x0

    .line 592
    :goto_c
    iget v7, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    .line 593
    if-le v7, v4, :cond_16

    .line 595
    const/4 v8, 0x1

    .line 597
    goto :goto_d

    .line 598
    :cond_16
    const/4 v8, 0x0

    .line 599
    :goto_d
    if-ne v14, v8, :cond_18

    .line 600
    if-ne v3, v5, :cond_17

    .line 602
    if-eq v7, v4, :cond_18

    .line 604
    :cond_17
    int-to-float v3, v3

    .line 606
    int-to-float v5, v5

    .line 607
    div-float/2addr v3, v5

    .line 608
    int-to-float v5, v7

    .line 609
    int-to-float v4, v4

    .line 610
    div-float/2addr v5, v4

    .line 611
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 612
    move-result v3

    .line 615
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 616
    :cond_18
    :goto_e
    iget-object v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    .line 619
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 621
    const/4 v2, 0x2

    .line 624
    aget v2, v3, v2

    .line 625
    const/4 v4, 0x5

    .line 627
    aget v4, v3, v4

    .line 628
    invoke-virtual {v6, v0, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 630
    iget-object v1, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 633
    const/4 v2, 0x0

    .line 635
    aget v2, v3, v2

    .line 636
    const/4 v4, 0x3

    .line 638
    aget v4, v3, v4

    .line 639
    const/4 v5, 0x1

    .line 641
    aget v5, v3, v5

    .line 642
    const/4 v0, 0x4

    .line 644
    aget v7, v3, v0

    .line 645
    move-object/from16 v0, p4

    .line 647
    move v3, v4

    .line 649
    move v4, v5

    .line 650
    move v5, v7

    .line 651
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 652
    :goto_f
    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 655
    return-void
    .line 658
.end method
