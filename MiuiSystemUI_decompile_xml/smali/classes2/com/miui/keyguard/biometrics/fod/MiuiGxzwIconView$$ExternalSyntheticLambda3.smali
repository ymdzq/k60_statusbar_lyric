.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda3;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 5
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda3;->f$1:Landroid/view/MotionEvent;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda3;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda3;->f$1:Landroid/view/MotionEvent;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    move v8, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 21
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    .line 26
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 31
    move-result v5

    .line 34
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 35
    move v7, v3

    .line 38
    move v8, v7

    .line 39
    :goto_0
    if-ge v7, v5, :cond_2

    .line 40
    invoke-virtual {p0, v7}, Landroid/view/MotionEvent;->getX(I)F

    .line 42
    move-result v9

    .line 45
    invoke-virtual {p0, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 46
    move-result v10

    .line 49
    sub-float/2addr v9, v4

    .line 50
    mul-float/2addr v9, v9

    .line 51
    sub-float/2addr v10, v1

    .line 52
    mul-float/2addr v10, v10

    .line 53
    add-float/2addr v10, v9

    .line 54
    float-to-double v9, v10

    .line 55
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 56
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 58
    move-result-wide v9

    .line 61
    double-to-float v9, v9

    .line 62
    cmpg-float v10, v9, v6

    .line 63
    if-gez v10, :cond_1

    .line 65
    move v8, v7

    .line 67
    move v6, v9

    .line 68
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    :goto_1
    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 72
    move-result v1

    .line 75
    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 76
    move-result v4

    .line 79
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    .line 80
    move-result v5

    .line 83
    const/4 v6, 0x2

    .line 84
    const/4 v7, 0x6

    .line 85
    const/4 v9, 0x3

    .line 86
    if-eqz v5, :cond_6

    .line 87
    if-eq v5, v2, :cond_5

    .line 89
    if-eq v5, v6, :cond_4

    .line 91
    if-eq v5, v9, :cond_5

    .line 93
    if-eq v5, v7, :cond_3

    .line 95
    const/16 v10, 0x106

    .line 97
    if-eq v5, v10, :cond_3

    .line 99
    const/16 v10, 0x206

    .line 101
    if-eq v5, v10, :cond_3

    .line 103
    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 106
    move-result p0

    .line 109
    if-ne v8, p0, :cond_4

    .line 110
    goto :goto_3

    .line 112
    :cond_4
    :goto_2
    move p0, v6

    .line 113
    goto :goto_4

    .line 114
    :cond_5
    :goto_3
    move p0, v2

    .line 115
    goto :goto_4

    .line 116
    :cond_6
    move p0, v3

    .line 117
    :goto_4
    iget-object v5, v0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 118
    float-to-int v8, v1

    .line 120
    float-to-int v10, v4

    .line 121
    invoke-virtual {v5, v8, v10}, Landroid/graphics/Rect;->contains(II)Z

    .line 122
    move-result v5

    .line 125
    if-nez v5, :cond_7

    .line 126
    iget-boolean v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 128
    if-eqz v5, :cond_9

    .line 130
    :cond_7
    if-nez p0, :cond_8

    .line 132
    iget-boolean v5, v0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 134
    if-eqz v5, :cond_8

    .line 136
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->onTouchDown()V

    .line 138
    goto :goto_5

    .line 141
    :cond_8
    if-ne p0, v2, :cond_9

    .line 142
    invoke-virtual {v0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->onTouchUp(Z)V

    .line 144
    :cond_9
    :goto_5
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwQuickOpenView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 147
    iget-boolean v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mShowed:Z

    .line 149
    if-eqz v5, :cond_20

    .line 151
    if-eqz p0, :cond_1e

    .line 153
    const/high16 v8, 0x3f800000    # 1.0f

    .line 155
    const/4 v10, -0x1

    .line 157
    if-eq p0, v2, :cond_10

    .line 158
    if-eq p0, v6, :cond_a

    .line 160
    if-eq p0, v9, :cond_10

    .line 162
    goto/16 :goto_b

    .line 164
    :cond_a
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoadingAnimator:Landroid/animation/ObjectAnimator;

    .line 166
    if-eqz p0, :cond_b

    .line 168
    iget-boolean p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoading:Z

    .line 170
    if-eqz p0, :cond_b

    .line 172
    if-eqz v5, :cond_b

    .line 174
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFastRect:Landroid/graphics/RectF;

    .line 176
    invoke-virtual {p0, v1, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 178
    move-result p0

    .line 181
    if-nez p0, :cond_b

    .line 182
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoadingAnimator:Landroid/animation/ObjectAnimator;

    .line 184
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 186
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->startShowQuickOpenItemAnimation()V

    .line 189
    :cond_b
    invoke-virtual {v0, v1, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->caculateSelectQucikOpenItem(FF)Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 192
    move-result-object p0

    .line 195
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCurrentSelectItem:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 196
    const-wide/16 v4, 0x64

    .line 198
    if-eqz v1, :cond_c

    .line 200
    if-eq v1, p0, :cond_c

    .line 202
    new-instance v9, Landroid/animation/ObjectAnimator;

    .line 204
    invoke-direct {v9}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 206
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 209
    move-result-object v9

    .line 212
    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 213
    new-array v12, v6, [F

    .line 215
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 217
    move-result-object v13

    .line 220
    invoke-virtual {v13}, Landroid/view/View;->getScaleX()F

    .line 221
    move-result v13

    .line 224
    aput v13, v12, v3

    .line 225
    aput v8, v12, v2

    .line 227
    invoke-static {v9, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 229
    move-result-object v9

    .line 232
    new-instance v11, Landroid/animation/ObjectAnimator;

    .line 233
    invoke-direct {v11}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 235
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 238
    move-result-object v11

    .line 241
    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 242
    new-array v13, v6, [F

    .line 244
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 246
    move-result-object v1

    .line 249
    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    .line 250
    move-result v1

    .line 253
    aput v1, v13, v3

    .line 254
    aput v8, v13, v2

    .line 256
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 258
    move-result-object v1

    .line 261
    new-instance v8, Landroid/animation/AnimatorSet;

    .line 262
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 264
    filled-new-array {v9, v1}, [Landroid/animation/Animator;

    .line 267
    move-result-object v1

    .line 270
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 271
    invoke-virtual {v8, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 274
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 277
    const-string v1, ""

    .line 280
    invoke-virtual {v0, v1, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->showTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_c
    if-eqz p0, :cond_f

    .line 285
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCurrentSelectItem:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 287
    if-eq v1, p0, :cond_f

    .line 289
    new-instance v1, Landroid/animation/ObjectAnimator;

    .line 291
    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 293
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 296
    move-result-object v1

    .line 299
    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 300
    new-array v9, v6, [F

    .line 302
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 304
    move-result-object v11

    .line 307
    invoke-virtual {v11}, Landroid/view/View;->getScaleX()F

    .line 308
    move-result v11

    .line 311
    aput v11, v9, v3

    .line 312
    iget v11, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemScaleRadius:F

    .line 314
    iget v12, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 316
    div-float/2addr v11, v12

    .line 318
    aput v11, v9, v2

    .line 319
    invoke-static {v1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 321
    move-result-object v1

    .line 324
    new-instance v8, Landroid/animation/ObjectAnimator;

    .line 325
    invoke-direct {v8}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 327
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 330
    move-result-object v8

    .line 333
    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 334
    new-array v6, v6, [F

    .line 336
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 338
    move-result-object v11

    .line 341
    invoke-virtual {v11}, Landroid/view/View;->getScaleY()F

    .line 342
    move-result v11

    .line 345
    aput v11, v6, v3

    .line 346
    iget v11, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemScaleRadius:F

    .line 348
    iget v12, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 350
    div-float/2addr v11, v12

    .line 352
    aput v11, v6, v2

    .line 353
    invoke-static {v8, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 355
    move-result-object v2

    .line 358
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 359
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 361
    filled-new-array {v1, v2}, [Landroid/animation/Animator;

    .line 364
    move-result-object v1

    .line 367
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 368
    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 371
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 374
    const-class v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 377
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 379
    move-result-object v2

    .line 382
    check-cast v2, Lcom/miui/interfaces/IHapticFeedBack;

    .line 383
    const/16 v4, 0xa5

    .line 385
    check-cast v2, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 387
    invoke-virtual {v2, v4}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->isSupportExtHapticFeedback(I)Z

    .line 389
    move-result v2

    .line 392
    if-eqz v2, :cond_d

    .line 393
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 395
    move-result-object v1

    .line 398
    check-cast v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 399
    check-cast v1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 401
    const-string v2, "mesh_normal"

    .line 403
    invoke-virtual {v1, v7, v2, v10, v3}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 405
    goto :goto_6

    .line 408
    :cond_d
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 409
    move-result-object v1

    .line 412
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 413
    const-string/jumbo v2, "vibrator"

    .line 415
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 418
    move-result-object v1

    .line 421
    check-cast v1, Landroid/os/Vibrator;

    .line 422
    if-eqz v1, :cond_e

    .line 424
    const-wide/16 v2, 0xc

    .line 426
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 428
    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getTitle()Ljava/lang/String;

    .line 431
    move-result-object v1

    .line 434
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getSubTitle()Ljava/lang/String;

    .line 435
    move-result-object v2

    .line 438
    invoke-virtual {v0, v1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->showTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 442
    const/4 v2, 0x4

    .line 444
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    :cond_f
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCurrentSelectItem:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 448
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 450
    goto/16 :goto_b

    .line 453
    :cond_10
    invoke-virtual {v0, v1, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->caculateSelectQucikOpenItem(FF)Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 455
    move-result-object p0

    .line 458
    if-eqz p0, :cond_11

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    .line 461
    const-string v3, "open quick app: "

    .line 463
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getTag()Ljava/lang/String;

    .line 468
    move-result-object v3

    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v3, ", x = "

    .line 475
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 480
    const-string v1, ", y = "

    .line 483
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    move-result-object v1

    .line 494
    const-string v2, "MiuiGxzwQuickOpenView"

    .line 495
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->handleQucikOpenItemTouchUp(Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;)V

    .line 500
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->dismiss()V

    .line 503
    goto/16 :goto_b

    .line 506
    :cond_11
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 508
    check-cast p0, Ljava/util/ArrayList;

    .line 510
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 512
    move-result p0

    .line 515
    if-lez p0, :cond_1c

    .line 516
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 518
    move-result-object p0

    .line 521
    sget-boolean v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->SUPPORT_QUICK_OPEN:Z

    .line 522
    if-nez v1, :cond_12

    .line 524
    goto :goto_7

    .line 526
    :cond_12
    sget v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenTeachValue:I

    .line 527
    if-ne v4, v10, :cond_13

    .line 529
    const-string v4, "quick_open"

    .line 531
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 533
    move-result-object p0

    .line 536
    const-string/jumbo v4, "sp_fod_show_quick_open_teach"

    .line 537
    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 540
    move-result p0

    .line 543
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenTeachValue:I

    .line 544
    :cond_13
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenTeachValue:I

    .line 546
    if-ne p0, v2, :cond_14

    .line 548
    move p0, v2

    .line 550
    goto :goto_8

    .line 551
    :cond_14
    :goto_7
    move p0, v3

    .line 552
    :goto_8
    if-nez p0, :cond_15

    .line 553
    iget-boolean p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTeachMode:Z

    .line 555
    if-eqz p0, :cond_1c

    .line 557
    :cond_15
    iput-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTeachMode:Z

    .line 559
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 561
    if-nez p0, :cond_16

    .line 563
    new-instance p0, Landroid/widget/TextView;

    .line 565
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 567
    move-result-object v4

    .line 570
    invoke-direct {p0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 571
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 574
    const v4, -0x65000001

    .line 576
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 579
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 582
    move-result-object p0

    .line 585
    const v4, 0x7f0703be    # @dimen/gxzw_quick_open_skip_teach '13.0sp'

    .line 586
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 589
    move-result p0

    .line 592
    iget-object v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 593
    int-to-float p0, p0

    .line 595
    invoke-virtual {v4, v3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 596
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 599
    const v4, 0x7f1304ed    # @string/gxzw_quick_open_skip_teach 'Skip tutorial'

    .line 601
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 604
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 607
    const v4, 0x7f080e9d    # @drawable/gxzw_quick_open_skip_teach_b 'res/drawable/gxzw_quick_open_skip_teach_b.xml'

    .line 609
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 612
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 615
    move-result-object p0

    .line 618
    const v4, 0x7f0703c1    # @dimen/gxzw_quick_open_skip_teach_padding_horizontal '18.0dp'

    .line 619
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 622
    move-result p0

    .line 625
    float-to-int p0, p0

    .line 626
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 627
    move-result-object v4

    .line 630
    const v5, 0x7f0703c2    # @dimen/gxzw_quick_open_skip_teach_padding_vertical '9.0dp'

    .line 631
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 634
    move-result v4

    .line 637
    float-to-int v4, v4

    .line 638
    iget-object v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 639
    invoke-virtual {v5, p0, v4, p0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 641
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 644
    const/16 v4, 0x11

    .line 646
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 648
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 651
    new-instance v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;

    .line 653
    invoke-direct {v4, v2, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;-><init>(ILjava/lang/Object;)V

    .line 655
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 661
    const/4 v4, -0x2

    .line 663
    invoke-direct {p0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 664
    const v4, 0x800035

    .line 667
    iput v4, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 670
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 672
    move-result-object v4

    .line 675
    const v5, 0x7f0703bf    # @dimen/gxzw_quick_open_skip_teach_margin_end '11.0dp'

    .line 676
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 679
    move-result v4

    .line 682
    float-to-int v4, v4

    .line 683
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 684
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 687
    move-result-object v4

    .line 690
    const v5, 0x7f0703c0    # @dimen/gxzw_quick_open_skip_teach_margin_top '25.0dp'

    .line 691
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 694
    move-result v4

    .line 697
    float-to-int v4, v4

    .line 698
    iput v4, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 699
    iget-object v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 701
    invoke-virtual {v0, v4, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    :cond_16
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 706
    if-nez p0, :cond_19

    .line 708
    new-instance p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 710
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 712
    move-result-object v4

    .line 715
    iget v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 716
    invoke-direct {p0, v4, v5}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;-><init>(Landroid/content/Context;F)V

    .line 718
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 721
    new-instance p0, Landroid/graphics/RectF;

    .line 723
    iget-object v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFingerRect:Landroid/graphics/RectF;

    .line 725
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 727
    iget v7, v4, Landroid/graphics/RectF;->top:F

    .line 729
    iget v9, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCicleRadius:F

    .line 731
    sub-float/2addr v7, v9

    .line 733
    iget v9, v4, Landroid/graphics/RectF;->right:F

    .line 734
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 736
    invoke-direct {p0, v5, v7, v9, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 738
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 741
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 743
    move-result v5

    .line 746
    float-to-int v5, v5

    .line 747
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 748
    move-result v7

    .line 751
    float-to-int v7, v7

    .line 752
    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 753
    const/16 v5, 0x33

    .line 756
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 758
    iget v5, p0, Landroid/graphics/RectF;->left:F

    .line 760
    float-to-int v5, v5

    .line 762
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 763
    iget v5, p0, Landroid/graphics/RectF;->top:F

    .line 765
    float-to-int v5, v5

    .line 767
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 768
    iget-object v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 770
    invoke-virtual {v0, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    iget-object v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 775
    check-cast v4, Ljava/util/ArrayList;

    .line 777
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 779
    move-result v4

    .line 782
    if-lez v4, :cond_19

    .line 783
    iget-object v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 785
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 787
    move-result v5

    .line 790
    const/high16 v7, 0x40000000    # 2.0f

    .line 791
    div-float/2addr v5, v7

    .line 793
    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    .line 794
    iget-object v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 797
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 799
    move-result p0

    .line 802
    iget v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 803
    sub-float/2addr p0, v5

    .line 805
    invoke-virtual {v4, p0}, Landroid/view/View;->setPivotY(F)V

    .line 806
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 809
    iget-object v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 811
    check-cast v4, Ljava/util/ArrayList;

    .line 813
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 815
    move-result v4

    .line 818
    rem-int/lit8 v5, v4, 0x2

    .line 819
    if-eqz v5, :cond_17

    .line 821
    const/4 v4, 0x0

    .line 823
    goto :goto_a

    .line 824
    :cond_17
    const/4 v5, 0x5

    .line 825
    if-ne v4, v5, :cond_18

    .line 826
    const/high16 v5, 0x42340000    # 45.0f

    .line 828
    goto :goto_9

    .line 830
    :cond_18
    const/high16 v5, 0x42700000    # 60.0f

    .line 831
    :goto_9
    div-int/lit8 v9, v4, 0x2

    .line 833
    add-int/2addr v9, v10

    .line 835
    int-to-float v4, v4

    .line 836
    sub-float/2addr v4, v8

    .line 837
    mul-float/2addr v4, v5

    .line 838
    const/high16 v8, 0x43340000    # 180.0f

    .line 839
    sub-float/2addr v8, v4

    .line 841
    div-float/2addr v8, v7

    .line 842
    const/high16 v4, -0x3ccc0000    # -180.0f

    .line 843
    add-float/2addr v8, v4

    .line 845
    int-to-float v4, v9

    .line 846
    mul-float/2addr v5, v4

    .line 847
    add-float/2addr v5, v8

    .line 848
    const/high16 v4, 0x42b40000    # 90.0f

    .line 849
    add-float/2addr v4, v5

    .line 851
    :goto_a
    invoke-virtual {p0, v4}, Landroid/view/View;->setRotation(F)V

    .line 852
    :cond_19
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 855
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 857
    if-eqz v4, :cond_1a

    .line 859
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 861
    :cond_1a
    new-array v4, v6, [F

    .line 864
    iget v5, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mCicleRadius:F

    .line 866
    const/high16 v6, 0x40400000    # 3.0f

    .line 868
    mul-float/2addr v6, v5

    .line 870
    aput v6, v4, v3

    .line 871
    neg-float v5, v5

    .line 873
    aput v5, v4, v2

    .line 874
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 876
    move-result-object v4

    .line 879
    iput-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 880
    const-wide/16 v5, 0x7d0

    .line 882
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 884
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 887
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    .line 889
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 891
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 894
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 897
    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 899
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 902
    invoke-virtual {v2, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 904
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 907
    new-instance v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView$1;

    .line 909
    invoke-direct {v4, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView$1;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;)V

    .line 911
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 914
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 917
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 919
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 922
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 925
    move-result-object p0

    .line 928
    if-nez v1, :cond_1b

    .line 929
    goto :goto_b

    .line 931
    :cond_1b
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenTeachValue:I

    .line 932
    if-eqz v0, :cond_20

    .line 934
    sput v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenTeachValue:I

    .line 936
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 938
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$4;

    .line 940
    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$4;-><init>(Landroid/content/Context;)V

    .line 942
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 945
    goto :goto_b

    .line 948
    :cond_1c
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 949
    move-result-object p0

    .line 952
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 953
    move-result-object p0

    .line 956
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 957
    move-result p0

    .line 960
    if-eqz p0, :cond_1d

    .line 961
    iget-boolean p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemsExpanded:Z

    .line 963
    if-nez p0, :cond_20

    .line 965
    :cond_1d
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->dismiss()V

    .line 967
    goto :goto_b

    .line 970
    :cond_1e
    iget-boolean p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTeachMode:Z

    .line 971
    if-eqz p0, :cond_20

    .line 973
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 975
    if-eqz p0, :cond_20

    .line 977
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 979
    if-eqz v0, :cond_1f

    .line 981
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 983
    :cond_1f
    const/4 v0, 0x0

    .line 986
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 987
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 989
    :cond_20
    :goto_b
    return-void
    .line 992
.end method
