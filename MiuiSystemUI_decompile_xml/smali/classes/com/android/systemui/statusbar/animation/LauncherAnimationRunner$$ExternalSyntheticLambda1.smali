.class public final synthetic Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$$ExternalSyntheticLambda0;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$2:[Landroid/view/RemoteAnimationTarget;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    .line 6
    iget-object v8, v0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$2:[Landroid/view/RemoteAnimationTarget;

    .line 8
    iget-object v0, v1, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->mAnimationResult:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;

    .line 10
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;->finish()V

    .line 15
    iput-object v3, v1, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->mAnimationResult:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;

    .line 18
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;

    .line 20
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;)V

    .line 22
    iput-object v0, v1, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->mAnimationResult:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;

    .line 25
    check-cast v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 27
    iget-object v2, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 29
    iget-object v2, v2, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 36
    check-cast v2, Landroid/view/View;

    .line 37
    if-eqz v2, :cond_18

    .line 39
    iget-object v4, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->iconLoc:Landroid/graphics/Rect;

    .line 41
    if-eqz v4, :cond_18

    .line 43
    iget-object v4, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 45
    iget-object v4, v4, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mContext:Landroid/content/Context;

    .line 47
    new-instance v5, Landroid/graphics/Rect;

    .line 49
    sget-object v6, Lcom/android/systemui/statusbar/animation/AnimationUtilities;->MAIN_THREAD_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 51
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v6

    .line 56
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 57
    move-result-object v6

    .line 60
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 61
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    move-result-object v4

    .line 70
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    const/4 v7, 0x0

    .line 73
    invoke-direct {v5, v7, v7, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    array-length v4, v8

    .line 77
    move v6, v7

    .line 78
    :goto_0
    if-ge v6, v4, :cond_2

    .line 79
    aget-object v9, v8, v6

    .line 81
    iget v10, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 83
    if-nez v10, :cond_1

    .line 85
    iget-object v10, v9, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 87
    if-eqz v10, :cond_1

    .line 89
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 91
    move-result v10

    .line 94
    if-lez v10, :cond_1

    .line 95
    iget-object v10, v9, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 99
    move-result v10

    .line 102
    if-lez v10, :cond_1

    .line 103
    iget-object v4, v9, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    iget-object v4, v9, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    .line 110
    iget v6, v4, Landroid/graphics/Point;->x:I

    .line 112
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 114
    invoke-virtual {v5, v6, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 116
    goto :goto_1

    .line 119
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 120
    goto :goto_0

    .line 122
    :cond_2
    :goto_1
    iget-object v4, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 123
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    array-length v4, v8

    .line 128
    move v6, v7

    .line 129
    :goto_2
    if-ge v6, v4, :cond_4

    .line 130
    aget-object v9, v8, v6

    .line 132
    iget v10, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 134
    if-nez v10, :cond_3

    .line 136
    goto :goto_3

    .line 138
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 139
    goto :goto_2

    .line 141
    :cond_4
    move-object v9, v3

    .line 142
    :goto_3
    const-string v3, "StatusBarLaunchAnimator"

    .line 143
    if-nez v9, :cond_5

    .line 145
    const-string v2, "onCreateAnimation: can\'t find opening target"

    .line 147
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->finishExistingAnimation(Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;)V

    .line 152
    goto/16 :goto_d

    .line 155
    :cond_5
    iget-object v4, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 157
    iget-object v4, v4, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mContext:Landroid/content/Context;

    .line 159
    invoke-static {v4}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    .line 161
    move-result v4

    .line 164
    new-instance v10, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;

    .line 165
    invoke-direct {v10}, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;-><init>()V

    .line 167
    iget-object v6, v9, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    .line 170
    iget-object v11, v10, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v11, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 174
    iget-object v6, v9, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 177
    iget-object v12, v10, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 179
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 181
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 184
    move-result v6

    .line 187
    if-eqz v6, :cond_6

    .line 188
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 190
    move-result v6

    .line 193
    if-nez v6, :cond_7

    .line 194
    :cond_6
    iget-object v6, v9, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    .line 196
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    :cond_7
    iget-object v6, v9, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    .line 201
    iget v13, v6, Landroid/graphics/Point;->x:I

    .line 203
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 205
    invoke-virtual {v12, v13, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    .line 210
    const-string/jumbo v13, "updateSourceStack  mSourceInsets="

    .line 212
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    const-string v13, ", mSourceStackBounds="

    .line 221
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v6

    .line 232
    const-string v13, "ClipAnimationHelper"

    .line 233
    invoke-static {v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput v7, v10, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mBoostModeTargetLayers:I

    .line 238
    iget-object v6, v10, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 240
    iget v7, v11, Landroid/graphics/Rect;->left:I

    .line 242
    int-to-float v7, v7

    .line 244
    iget v14, v11, Landroid/graphics/Rect;->top:I

    .line 245
    int-to-float v14, v14

    .line 247
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 248
    move-result v15

    .line 251
    int-to-float v15, v15

    .line 252
    move-object/from16 p0, v0

    .line 253
    iget v0, v11, Landroid/graphics/Rect;->right:I

    .line 255
    int-to-float v0, v0

    .line 257
    sub-float/2addr v15, v0

    .line 258
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 259
    move-result v0

    .line 262
    int-to-float v0, v0

    .line 263
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 264
    int-to-float v11, v11

    .line 266
    sub-float/2addr v0, v11

    .line 267
    invoke-virtual {v6, v7, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 268
    iget-object v0, v10, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    .line 271
    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 273
    new-instance v7, Landroid/graphics/RectF;

    .line 276
    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 278
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    .line 281
    move-result v11

    .line 284
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 285
    move-result v14

    .line 288
    div-float/2addr v11, v14

    .line 289
    invoke-static {v7, v11}, Lcom/android/systemui/statusbar/animation/AnimationUtilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 290
    iget v11, v6, Landroid/graphics/RectF;->left:F

    .line 293
    iget v14, v6, Landroid/graphics/RectF;->top:F

    .line 295
    invoke-virtual {v7, v11, v14}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 297
    iget-object v11, v10, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    .line 300
    iget v14, v7, Landroid/graphics/RectF;->left:F

    .line 302
    const/4 v15, 0x0

    .line 304
    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    .line 305
    move-result v14

    .line 308
    move-object/from16 v16, v9

    .line 309
    iget v9, v7, Landroid/graphics/RectF;->top:F

    .line 311
    invoke-static {v9, v15}, Ljava/lang/Math;->max(FF)F

    .line 313
    move-result v9

    .line 316
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 317
    move-result v15

    .line 320
    int-to-float v15, v15

    .line 321
    move-object/from16 v17, v8

    .line 322
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .line 324
    sub-float/2addr v15, v8

    .line 326
    const/4 v8, 0x0

    .line 327
    invoke-static {v15, v8}, Ljava/lang/Math;->max(FF)F

    .line 328
    move-result v8

    .line 331
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 332
    move-result v15

    .line 335
    int-to-float v15, v15

    .line 336
    move-object/from16 v18, v3

    .line 337
    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    .line 339
    sub-float/2addr v15, v3

    .line 341
    const/4 v3, 0x0

    .line 342
    invoke-static {v15, v3}, Ljava/lang/Math;->max(FF)F

    .line 343
    move-result v3

    .line 346
    invoke-virtual {v11, v14, v9, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 347
    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    .line 353
    const-string/jumbo v7, "updateTargetRect  mSourceRect="

    .line 355
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    const-string v6, "   mTargetRect="

    .line 364
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    const-string v0, "   mSourceWindowClipInsets="

    .line 372
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    const-string v0, "   mHomeStackBounds="

    .line 380
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v0, v10, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    .line 385
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    const-string v0, "   targetRect="

    .line 390
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    move-result-object v0

    .line 401
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v6, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper$TransformParams;

    .line 405
    invoke-direct {v6}, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper$TransformParams;-><init>()V

    .line 407
    iget-object v0, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 410
    const/4 v3, 0x0

    .line 412
    iput-object v3, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 413
    instance-of v3, v2, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;

    .line 415
    if-eqz v3, :cond_8

    .line 417
    sget-boolean v3, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mIsLowEndDevice:Z

    .line 419
    if-nez v3, :cond_8

    .line 421
    move-object v3, v2

    .line 423
    check-cast v3, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;

    .line 424
    new-instance v7, Ljava/lang/ref/WeakReference;

    .line 426
    invoke-direct {v7, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 428
    iput-object v7, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 431
    goto :goto_4

    .line 433
    :cond_8
    const/4 v3, 0x0

    .line 434
    :goto_4
    new-instance v0, Landroid/graphics/RectF;

    .line 435
    invoke-direct {v0, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 437
    iget v7, v12, Landroid/graphics/Rect;->top:I

    .line 440
    neg-int v7, v7

    .line 442
    int-to-float v7, v7

    .line 443
    const/4 v8, 0x0

    .line 444
    invoke-virtual {v0, v8, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 445
    new-instance v11, Landroid/graphics/RectF;

    .line 448
    iget-object v7, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->iconLoc:Landroid/graphics/Rect;

    .line 450
    invoke-direct {v11, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 452
    sget-boolean v7, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mIsLowEndDevice:Z

    .line 455
    if-eqz v7, :cond_9

    .line 457
    invoke-virtual {v11, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 459
    const v8, 0x3f6b851f    # 0.92f

    .line 462
    invoke-static {v11, v8}, Lcom/android/systemui/statusbar/animation/AnimationUtilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 465
    :cond_9
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 468
    move-result v5

    .line 471
    int-to-float v5, v5

    .line 472
    const/high16 v8, 0x3f800000    # 1.0f

    .line 473
    mul-float/2addr v5, v8

    .line 475
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    .line 476
    move-result v8

    .line 479
    div-float v12, v5, v8

    .line 480
    if-eqz v3, :cond_a

    .line 482
    move-object v3, v2

    .line 484
    check-cast v3, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;

    .line 485
    invoke-interface {v3}, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;->getIconRadius()F

    .line 487
    move-result v3

    .line 490
    goto :goto_5

    .line 491
    :cond_a
    const/high16 v3, 0x41a00000    # 20.0f

    .line 492
    :goto_5
    mul-float/2addr v3, v12

    .line 494
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 495
    move-result-object v2

    .line 498
    iget-object v5, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 499
    iget-object v5, v5, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mContext:Landroid/content/Context;

    .line 501
    invoke-static {v5, v2}, Lcom/android/systemui/fsgesture/CornerRadiusUtils;->getPhoneRadius(Landroid/content/Context;Landroid/view/WindowInsets;)I

    .line 503
    move-result v2

    .line 506
    int-to-float v2, v2

    .line 507
    if-eqz v7, :cond_b

    .line 508
    move v3, v2

    .line 510
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 511
    const-string v8, "onCreateAnimation, rotation="

    .line 513
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    const-string v4, ", mIsLowEndDevice="

    .line 521
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 526
    const-string v4, ", startRectF="

    .line 529
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    const-string v4, ", endRectF="

    .line 537
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 542
    const-string v4, ", startRadius = "

    .line 545
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 550
    const-string v4, ", endRadius = "

    .line 553
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    move-result-object v4

    .line 564
    move-object/from16 v5, v18

    .line 565
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    .line 570
    iget-object v4, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 572
    iget-object v4, v4, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mContext:Landroid/content/Context;

    .line 574
    new-instance v5, Landroid/graphics/RectF;

    .line 576
    invoke-direct {v5, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 578
    move-object/from16 v19, v13

    .line 581
    move-object/from16 v20, v4

    .line 583
    move-object/from16 v21, v5

    .line 585
    move-object/from16 v22, v0

    .line 587
    move/from16 v23, v3

    .line 589
    move/from16 v24, v2

    .line 591
    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    .line 593
    const/16 v0, 0x3e9

    .line 596
    iput v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mProgressCalculateType:I

    .line 598
    sget-object v0, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->ALPHA:Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;

    .line 600
    sget-object v2, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->RADIUS:Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;

    .line 602
    sget-object v3, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->RECT_RATIO:Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;

    .line 604
    sget-object v4, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->RECT_WIDTH:Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;

    .line 606
    sget-object v5, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->RECT_CENTERY:Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;

    .line 608
    sget-object v7, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->RECT_CENTERX:Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;

    .line 610
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 612
    move-result v8

    .line 615
    const/4 v9, 0x2

    .line 616
    const v14, 0x3e3851ec    # 0.18f

    .line 617
    const v15, 0x3f7d70a4    # 0.99f

    .line 620
    if-eqz v8, :cond_c

    .line 623
    invoke-virtual {v13, v7, v15, v14}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 625
    invoke-virtual {v13, v5, v15, v14}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 628
    invoke-virtual {v13, v4, v15, v14}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 631
    invoke-virtual {v13, v3, v15, v14}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 634
    const v3, 0x3e666666    # 0.225f

    .line 637
    invoke-virtual {v13, v2, v15, v3}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 640
    const v2, 0x3e0a3d71    # 0.135f

    .line 643
    invoke-virtual {v13, v0, v15, v2}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 646
    goto/16 :goto_8

    .line 649
    :cond_c
    sget v8, Lcom/miui/utils/configs/MiuiConfigs;->sDeviceLevelFromFolme:I

    .line 651
    if-ne v8, v9, :cond_d

    .line 653
    const/4 v9, 0x1

    .line 655
    goto :goto_6

    .line 656
    :cond_d
    const/4 v9, 0x0

    .line 657
    :goto_6
    const/high16 v14, 0x3e800000    # 0.25f

    .line 658
    const v15, 0x3e19999a    # 0.15f

    .line 660
    if-eqz v9, :cond_e

    .line 663
    const v8, 0x3f75c28f    # 0.96f

    .line 665
    const v9, 0x3e99999a    # 0.3f

    .line 668
    invoke-virtual {v13, v7, v8, v9}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 671
    invoke-virtual {v13, v5, v8, v9}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 674
    const v5, 0x3ed1eb85    # 0.41f

    .line 677
    invoke-virtual {v13, v4, v8, v5}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 680
    const v4, 0x3eae147b    # 0.34f

    .line 683
    invoke-virtual {v13, v3, v8, v4}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 686
    invoke-virtual {v13, v2, v8, v14}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 689
    invoke-virtual {v13, v0, v8, v15}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 692
    goto :goto_8

    .line 695
    :cond_e
    if-nez v8, :cond_f

    .line 696
    const/4 v8, 0x1

    .line 698
    goto :goto_7

    .line 699
    :cond_f
    const/4 v8, 0x0

    .line 700
    :goto_7
    const v9, 0x3e851eb8    # 0.26f

    .line 701
    if-eqz v8, :cond_10

    .line 704
    const v8, 0x3e4ccccd    # 0.2f

    .line 706
    const v14, 0x3f7d70a4    # 0.99f

    .line 709
    invoke-virtual {v13, v7, v14, v8}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 712
    invoke-virtual {v13, v5, v14, v8}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 715
    invoke-virtual {v13, v4, v14, v9}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 718
    const v4, 0x3e6147ae    # 0.22f

    .line 721
    invoke-virtual {v13, v3, v14, v4}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 724
    const v3, 0x3e3851ec    # 0.18f

    .line 727
    invoke-virtual {v13, v2, v14, v3}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 730
    invoke-virtual {v13, v0, v14, v15}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 733
    goto :goto_8

    .line 736
    :cond_10
    const v14, 0x3f7d70a4    # 0.99f

    .line 737
    invoke-virtual {v13, v7, v14, v9}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 740
    invoke-virtual {v13, v5, v14, v9}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 743
    const v5, 0x3ea8f5c3    # 0.33f

    .line 746
    invoke-virtual {v13, v4, v14, v5}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 749
    const v4, 0x3e9eb852    # 0.31f

    .line 752
    invoke-virtual {v13, v3, v14, v4}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 755
    const/high16 v3, 0x3e800000    # 0.25f

    .line 758
    invoke-virtual {v13, v2, v14, v3}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 760
    invoke-virtual {v13, v0, v14, v15}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->setAnimParam(Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;FF)V

    .line 763
    :goto_8
    iget-object v0, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 766
    const/4 v2, 0x0

    .line 768
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mIsReleaseOpenFloatingIconLayer:Z

    .line 769
    new-instance v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$$ExternalSyntheticLambda0;

    .line 771
    move-object v3, v0

    .line 773
    move-object v4, v1

    .line 774
    move-object v5, v13

    .line 775
    move-object v7, v10

    .line 776
    move-object/from16 v8, v17

    .line 777
    move-object/from16 v9, v16

    .line 779
    move v10, v12

    .line 781
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;Lcom/android/systemui/statusbar/animation/RectFSpringAnim;Lcom/android/systemui/statusbar/animation/ClipAnimationHelper$TransformParams;Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;[Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;F)V

    .line 782
    iget-object v2, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    .line 785
    check-cast v2, Ljava/util/ArrayList;

    .line 787
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    new-instance v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;

    .line 792
    move-object/from16 v2, p0

    .line 794
    invoke-direct {v0, v1, v11, v2}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;-><init>(Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;Landroid/graphics/RectF;Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;)V

    .line 796
    iget-object v3, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 799
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    new-instance v0, Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 804
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 806
    move-result-object v4

    .line 809
    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/animation/LooperExecutor;-><init>(Landroid/os/Looper;)V

    .line 810
    iput-object v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mLooperExecutor:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 813
    const/4 v0, 0x1

    .line 815
    iput-boolean v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAllAnimSucceed:Z

    .line 816
    iget-object v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mContext:Landroid/content/Context;

    .line 818
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 820
    move-result-object v0

    .line 823
    iget-boolean v4, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAnimsStarted:Z

    .line 824
    iget-object v5, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 826
    if-nez v4, :cond_12

    .line 828
    if-eqz v0, :cond_12

    .line 830
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 832
    move-result v0

    .line 835
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 836
    div-float/2addr v4, v0

    .line 838
    iget v0, v5, Landroid/graphics/RectF;->left:F

    .line 839
    const/4 v6, 0x0

    .line 841
    mul-float/2addr v4, v6

    .line 842
    const/high16 v6, 0x40000000    # 2.0f

    .line 843
    div-float/2addr v4, v6

    .line 845
    add-float/2addr v0, v4

    .line 846
    iget v6, v5, Landroid/graphics/RectF;->top:F

    .line 847
    add-float/2addr v6, v4

    .line 849
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 850
    move-result v7

    .line 853
    add-float/2addr v7, v4

    .line 854
    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    .line 855
    move-result v8

    .line 858
    if-eqz v8, :cond_11

    .line 859
    const/high16 v4, 0x3f800000    # 1.0f

    .line 861
    goto :goto_9

    .line 863
    :cond_11
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 864
    move-result v8

    .line 867
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 868
    move-result v9

    .line 871
    div-float/2addr v8, v9

    .line 872
    add-float/2addr v4, v8

    .line 873
    :goto_9
    add-float v8, v0, v7

    .line 874
    mul-float/2addr v7, v4

    .line 876
    add-float/2addr v7, v6

    .line 877
    invoke-virtual {v5, v0, v6, v8, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 878
    :cond_12
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 881
    move-result v0

    .line 884
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 885
    move-result v4

    .line 888
    mul-float/2addr v4, v0

    .line 889
    iget-object v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 890
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 892
    move-result v6

    .line 895
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 896
    move-result v7

    .line 899
    mul-float/2addr v7, v6

    .line 900
    iput v7, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mTargetAcreageSize:F

    .line 901
    sub-float/2addr v7, v4

    .line 903
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 904
    move-result v4

    .line 907
    iput v4, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAnimAcreageSize:F

    .line 908
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 910
    move-result v4

    .line 913
    iput v4, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentCenterX:F

    .line 914
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 916
    move-result v4

    .line 919
    iget-object v6, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 920
    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 922
    move-result-object v4

    .line 925
    iget v7, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCenterXDamping:F

    .line 926
    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 928
    move-result-object v4

    .line 931
    iget v7, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCenterXStiffness:F

    .line 932
    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 934
    iget-object v4, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 937
    iput-object v6, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 939
    iget v6, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentCenterX:F

    .line 941
    iput v6, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 943
    const/4 v6, 0x1

    .line 945
    iput-boolean v6, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 946
    const/4 v6, 0x0

    .line 948
    iput v6, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 949
    iget v6, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 951
    invoke-virtual {v4, v6}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 953
    new-instance v6, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;

    .line 956
    const/4 v7, 0x0

    .line 958
    invoke-direct {v6, v13, v7}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;I)V

    .line 959
    invoke-virtual {v4, v6}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 962
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 965
    move-result v6

    .line 968
    iput v6, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentCenterY:F

    .line 969
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 971
    move-result v6

    .line 974
    iget-object v7, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 975
    invoke-virtual {v7, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 977
    move-result-object v6

    .line 980
    iget v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCenterYDamping:F

    .line 981
    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 983
    move-result-object v6

    .line 986
    iget v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCenterYStiffness:F

    .line 987
    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 989
    iget-object v6, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 992
    iput-object v7, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 994
    iget v7, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentCenterY:F

    .line 996
    iput v7, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 998
    const/4 v7, 0x1

    .line 1000
    iput-boolean v7, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 1001
    const/4 v8, 0x0

    .line 1003
    iput v8, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 1004
    iget v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 1006
    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 1008
    new-instance v8, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;

    .line 1011
    invoke-direct {v8, v13, v7}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;I)V

    .line 1013
    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 1016
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 1019
    move-result v7

    .line 1022
    iput v7, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentWidth:F

    .line 1023
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 1025
    move-result v7

    .line 1028
    iget-object v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1029
    invoke-virtual {v8, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1031
    move-result-object v7

    .line 1034
    iget v9, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mWidthDamping:F

    .line 1035
    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1037
    move-result-object v7

    .line 1040
    iget v9, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mWidthStiffness:F

    .line 1041
    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1043
    iget-object v7, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1046
    iput-object v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1048
    iget v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentWidth:F

    .line 1050
    iput v8, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 1052
    const/4 v8, 0x1

    .line 1054
    iput-boolean v8, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 1055
    const/4 v8, 0x0

    .line 1057
    iput v8, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 1058
    iget v9, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 1060
    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 1062
    new-instance v9, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;

    .line 1065
    const/4 v10, 0x2

    .line 1067
    invoke-direct {v9, v13, v10}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;I)V

    .line 1068
    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 1071
    iput v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentRatio:F

    .line 1074
    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    .line 1076
    move-result v8

    .line 1079
    if-nez v8, :cond_13

    .line 1080
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 1082
    move-result v8

    .line 1085
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 1086
    move-result v5

    .line 1089
    div-float/2addr v8, v5

    .line 1090
    iput v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentRatio:F

    .line 1091
    :cond_13
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 1093
    move-result v5

    .line 1096
    if-nez v5, :cond_14

    .line 1097
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 1099
    move-result v5

    .line 1102
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 1103
    move-result v0

    .line 1106
    div-float/2addr v5, v0

    .line 1107
    goto :goto_a

    .line 1108
    :cond_14
    const/4 v5, 0x0

    .line 1109
    :goto_a
    iget-object v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1110
    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1112
    move-result-object v5

    .line 1115
    iget v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRatioDamping:F

    .line 1116
    invoke-virtual {v5, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1118
    move-result-object v5

    .line 1121
    iget v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRatioStiffness:F

    .line 1122
    invoke-virtual {v5, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1124
    iget-object v5, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1127
    iput-object v0, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1129
    iget v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentRatio:F

    .line 1131
    iput v0, v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 1133
    const/4 v0, 0x1

    .line 1135
    iput-boolean v0, v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 1136
    iget v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRatioMinVisibleChange:F

    .line 1138
    invoke-virtual {v5, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 1140
    const/4 v0, 0x0

    .line 1143
    iput v0, v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 1144
    new-instance v0, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;

    .line 1146
    const/4 v8, 0x3

    .line 1148
    invoke-direct {v0, v13, v8}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;I)V

    .line 1149
    invoke-virtual {v5, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 1152
    iget v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mStartRadius:F

    .line 1155
    iput v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentRadius:F

    .line 1157
    iget v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mEndRadius:F

    .line 1159
    iget-object v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1161
    invoke-virtual {v8, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1163
    move-result-object v0

    .line 1166
    iget v9, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRadiusDamping:F

    .line 1167
    invoke-virtual {v0, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1169
    move-result-object v0

    .line 1172
    iget v9, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRadiusStiffness:F

    .line 1173
    invoke-virtual {v0, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1175
    iget-object v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1178
    iput-object v8, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1180
    iget v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentRadius:F

    .line 1182
    iput v8, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 1184
    const/4 v8, 0x1

    .line 1186
    iput-boolean v8, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 1187
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1189
    invoke-virtual {v0, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 1191
    const/4 v8, 0x0

    .line 1194
    iput v8, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 1195
    new-instance v8, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;

    .line 1197
    const/4 v9, 0x4

    .line 1199
    invoke-direct {v8, v13, v9}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;I)V

    .line 1200
    invoke-virtual {v0, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 1203
    iget v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mStartAlpha:F

    .line 1206
    iput v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentAlpha:F

    .line 1208
    iget v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mEndAlpha:F

    .line 1210
    iget-object v9, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1212
    invoke-virtual {v9, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1214
    move-result-object v8

    .line 1217
    iget v10, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAlphaDamping:F

    .line 1218
    invoke-virtual {v8, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1220
    move-result-object v8

    .line 1223
    iget v10, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAlphaStiffness:F

    .line 1224
    invoke-virtual {v8, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1226
    iget-object v8, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1229
    iput-object v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1231
    iget v9, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentAlpha:F

    .line 1233
    iput v9, v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 1235
    const/4 v9, 0x1

    .line 1237
    iput-boolean v9, v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 1238
    const v9, 0x3d4ccccd    # 0.05f

    .line 1240
    invoke-virtual {v8, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 1243
    const/4 v9, 0x0

    .line 1246
    iput v9, v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 1247
    new-instance v9, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;

    .line 1249
    const/4 v10, 0x5

    .line 1251
    invoke-direct {v9, v13, v10}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;I)V

    .line 1252
    invoke-virtual {v8, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 1255
    iget-object v9, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    .line 1258
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1260
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    const/4 v0, 0x1

    .line 1281
    iput-boolean v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAnimsStarted:Z

    .line 1282
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 1284
    move-result-object v0

    .line 1287
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1288
    move-result v3

    .line 1291
    if-eqz v3, :cond_15

    .line 1292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1294
    move-result-object v3

    .line 1297
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 1298
    const/4 v4, 0x0

    .line 1300
    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1301
    goto :goto_b

    .line 1304
    :cond_15
    iget-object v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1305
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 1307
    move-result-object v0

    .line 1310
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1311
    move-result v3

    .line 1314
    if-nez v3, :cond_17

    .line 1315
    iget-object v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mLooperExecutor:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 1317
    iget-object v0, v0, Lcom/android/systemui/statusbar/animation/LooperExecutor;->mHandler:Landroid/os/Handler;

    .line 1319
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 1321
    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 1325
    move-result v0

    .line 1328
    if-eqz v0, :cond_16

    .line 1329
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->startAllAnimDirectly()V

    .line 1331
    goto :goto_c

    .line 1334
    :cond_16
    iget-object v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mLooperExecutor:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 1335
    new-instance v3, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda0;

    .line 1337
    invoke-direct {v3, v13}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)V

    .line 1339
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/animation/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1342
    :goto_c
    iget-boolean v0, v13, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAllAnimSucceed:Z

    .line 1345
    if-nez v0, :cond_19

    .line 1347
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->finishExistingAnimation(Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;)V

    .line 1349
    goto :goto_d

    .line 1352
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1353
    move-result-object v0

    .line 1356
    invoke-static {v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 1357
    const/4 v0, 0x0

    .line 1360
    throw v0

    .line 1361
    :cond_18
    move-object v2, v0

    .line 1362
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;->finish()V

    .line 1363
    :cond_19
    :goto_d
    return-void
    .line 1366
.end method
