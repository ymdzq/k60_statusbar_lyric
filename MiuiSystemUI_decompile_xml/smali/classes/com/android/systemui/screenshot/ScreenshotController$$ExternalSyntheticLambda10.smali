.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/lang/Object;Landroid/os/UserHandle;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$2:Landroid/os/UserHandle;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_3

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 12
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 14
    check-cast v4, Landroid/view/ScrollCaptureResponse;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$2:Landroid/os/UserHandle;

    .line 18
    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 20
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLongScreenshotFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->cancel(Z)Z

    .line 26
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScrollCaptureController:Lcom/android/systemui/screenshot/ScrollCaptureController;

    .line 29
    iput-boolean v3, v1, Lcom/android/systemui/screenshot/ScrollCaptureController;->mCancelled:Z

    .line 31
    new-instance v3, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {v3, v1, v4}, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScrollCaptureController;Landroid/view/ScrollCaptureResponse;)V

    .line 35
    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 38
    move-result-object v1

    .line 41
    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLongScreenshotFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 42
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;

    .line 44
    invoke-direct {v3, v0, p0, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/UserHandle;I)V

    .line 46
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 49
    iget-object v0, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 51
    invoke-virtual {v0, v3, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 53
    return-void

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 59
    check-cast v1, Landroid/view/ScrollCaptureResponse;

    .line 61
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$2:Landroid/os/UserHandle;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 68
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 78
    invoke-virtual {v5, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 80
    move-result-object v5

    .line 83
    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 87
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    new-instance v5, Landroid/graphics/Rect;

    .line 92
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 94
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 96
    invoke-direct {v5, v3, v3, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mImageCapture:Lcom/android/systemui/screenshot/ImageCaptureImpl;

    .line 101
    invoke-virtual {v4, v5}, Lcom/android/systemui/screenshot/ImageCaptureImpl;->captureDisplay(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 103
    move-result-object v4

    .line 106
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 107
    iget-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 109
    iget-boolean v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotTakenInPortrait:Z

    .line 111
    iget-boolean v8, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    .line 113
    if-ne v7, v8, :cond_1

    .line 115
    move v7, v2

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    move v7, v3

    .line 119
    :goto_0
    iput-boolean v7, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mShowScrollablePreview:Z

    .line 120
    iget-object v7, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 122
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v4, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-boolean v4, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mShowScrollablePreview:Z

    .line 132
    if-eqz v4, :cond_4

    .line 134
    new-instance v4, Landroid/graphics/Rect;

    .line 136
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse;->getBoundsInWindow()Landroid/graphics/Rect;

    .line 138
    move-result-object v7

    .line 141
    invoke-direct {v4, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 142
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse;->getWindowBounds()Landroid/graphics/Rect;

    .line 145
    move-result-object v7

    .line 148
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 149
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 151
    invoke-virtual {v4, v8, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 153
    new-instance v7, Landroid/graphics/Rect;

    .line 156
    iget-object v8, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 158
    iget v9, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 160
    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 162
    invoke-direct {v7, v3, v3, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 164
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 167
    iget v7, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mFixedSize:F

    .line 170
    iget-boolean v8, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    .line 172
    if-eqz v8, :cond_2

    .line 174
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 176
    move-result v8

    .line 179
    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 181
    move-result v8

    .line 184
    :goto_1
    int-to-float v8, v8

    .line 185
    div-float/2addr v7, v8

    .line 186
    iget-object v8, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 187
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 189
    move-result-object v8

    .line 192
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 193
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 195
    move-result v9

    .line 198
    int-to-float v9, v9

    .line 199
    mul-float/2addr v9, v7

    .line 200
    float-to-int v9, v9

    .line 201
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 202
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 204
    move-result v9

    .line 207
    int-to-float v9, v9

    .line 208
    mul-float/2addr v9, v7

    .line 209
    float-to-int v9, v9

    .line 210
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 211
    new-instance v8, Landroid/graphics/Matrix;

    .line 213
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 215
    invoke-virtual {v8, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 218
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 221
    neg-int v9, v9

    .line 223
    int-to-float v9, v9

    .line 224
    mul-float/2addr v9, v7

    .line 225
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 226
    neg-int v10, v10

    .line 228
    int-to-float v10, v10

    .line 229
    mul-float/2addr v10, v7

    .line 230
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 231
    iget-object v9, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 234
    iget-boolean v10, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mDirectionLTR:Z

    .line 236
    if-eqz v10, :cond_3

    .line 238
    iget v10, v4, Landroid/graphics/Rect;->left:I

    .line 240
    goto :goto_2

    .line 242
    :cond_3
    iget v10, v4, Landroid/graphics/Rect;->right:I

    .line 243
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    .line 245
    move-result v11

    .line 248
    sub-int/2addr v10, v11

    .line 249
    :goto_2
    int-to-float v10, v10

    .line 250
    mul-float/2addr v10, v7

    .line 251
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 252
    iget-object v9, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 255
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 257
    int-to-float v4, v4

    .line 259
    mul-float/2addr v7, v4

    .line 260
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 261
    iget-object v4, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 264
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 266
    iget-object v4, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 269
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    iget-object v4, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 274
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :cond_4
    iget-object v3, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 279
    const/16 v4, 0x8

    .line 281
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 283
    iget-object v3, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 286
    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 288
    iget-object v3, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 291
    const/4 v4, 0x4

    .line 293
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v3, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreviewBorder:Landroid/view/View;

    .line 297
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v3, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 302
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v3, v5, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 307
    sget-object v6, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 309
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 311
    const/4 v3, 0x2

    .line 314
    new-array v3, v3, [F

    .line 315
    fill-array-data v3, :array_0

    .line 317
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 320
    move-result-object v3

    .line 323
    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;

    .line 324
    invoke-direct {v6, v5, v4}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 326
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 329
    const-wide/16 v4, 0xc8

    .line 332
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 334
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 337
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 340
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;

    .line 342
    invoke-direct {v4, v0, v1, p0, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/lang/Object;Landroid/os/UserHandle;I)V

    .line 344
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void

    .line 350
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 351
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 353
    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 355
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;->f$2:Landroid/os/UserHandle;

    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    const-string v4, "Screenshot"

    .line 362
    const-string v5, "ScrollCapture: "

    .line 364
    const-string v6, "ScrollCapture: connected to window ["

    .line 366
    :try_start_0
    iget-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 368
    if-eqz v7, :cond_5

    .line 370
    invoke-virtual {v7}, Landroid/view/ScrollCaptureResponse;->close()V

    .line 372
    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 375
    :cond_5
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 377
    move-result v1

    .line 380
    if-eqz v1, :cond_6

    .line 381
    goto :goto_4

    .line 383
    :cond_6
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 384
    move-result-object v1

    .line 387
    check-cast v1, Landroid/view/ScrollCaptureResponse;

    .line 388
    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 390
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse;->isConnected()Z

    .line 392
    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    const-string v2, "]"

    .line 396
    if-nez v1, :cond_7

    .line 398
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 400
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 405
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse;->getDescription()Ljava/lang/String;

    .line 407
    move-result-object v1

    .line 410
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, " ["

    .line 414
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 419
    invoke-virtual {v0}, Landroid/view/ScrollCaptureResponse;->getWindowTitle()Ljava/lang/String;

    .line 421
    move-result-object v0

    .line 424
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    move-result-object p0

    .line 434
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    goto :goto_4

    .line 438
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 444
    invoke-virtual {v5}, Landroid/view/ScrollCaptureResponse;->getWindowTitle()Ljava/lang/String;

    .line 446
    move-result-object v5

    .line 449
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    move-result-object v1

    .line 459
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 463
    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 465
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse;->getPackageName()Ljava/lang/String;

    .line 467
    move-result-object v5

    .line 470
    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;

    .line 471
    invoke-direct {v6, v0, v1, p0, v3}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/lang/Object;Landroid/os/UserHandle;I)V

    .line 473
    invoke-virtual {v2, v6, v5}, Lcom/android/systemui/screenshot/ScreenshotView;->showScrollChip(Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    goto :goto_4

    .line 479
    :catch_0
    move-exception p0

    .line 480
    const-string/jumbo v0, "requestScrollCapture failed"

    .line 481
    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    :goto_4
    return-void

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 488
    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
    .end array-data
    .line 496
.end method
