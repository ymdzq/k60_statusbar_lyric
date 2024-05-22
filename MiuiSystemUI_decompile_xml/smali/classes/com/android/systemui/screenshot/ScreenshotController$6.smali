.class public final Lcom/android/systemui/screenshot/ScreenshotController$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic val$onAnimationComplete:Ljava/lang/Runnable;

.field public final synthetic val$screenRect:Landroid/graphics/Rect;

.field public final synthetic val$showFlash:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/graphics/Rect;ZLcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$6;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$6;->val$screenRect:Landroid/graphics/Rect;

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$6;->val$showFlash:Z

    .line 6
    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotController$6;->val$onAnimationComplete:Ljava/lang/Runnable;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController$6;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController$6;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 15
    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController$6;->val$screenRect:Landroid/graphics/Rect;

    .line 17
    iget-boolean v3, v0, Lcom/android/systemui/screenshot/ScreenshotController$6;->val$showFlash:Z

    .line 19
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController$6;->val$onAnimationComplete:Ljava/lang/Runnable;

    .line 21
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 23
    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    .line 27
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 33
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 35
    :cond_0
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v5, Landroid/graphics/Rect;

    .line 43
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 45
    iget-object v6, v4, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 50
    iget v6, v4, Lcom/android/systemui/screenshot/ScreenshotView;->mFixedSize:F

    .line 53
    iget-boolean v7, v4, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    .line 55
    if-eqz v7, :cond_1

    .line 57
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 59
    move-result v7

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 64
    move-result v7

    .line 67
    :goto_0
    int-to-float v7, v7

    .line 68
    div-float/2addr v6, v7

    .line 69
    const/high16 v7, 0x3f800000    # 1.0f

    .line 70
    div-float/2addr v7, v6

    .line 72
    new-instance v8, Landroid/animation/AnimatorSet;

    .line 73
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 75
    const/4 v9, 0x2

    .line 78
    new-array v10, v9, [F

    .line 79
    fill-array-data v10, :array_0

    .line 81
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 84
    move-result-object v10

    .line 87
    const-wide/16 v11, 0x85

    .line 88
    invoke-virtual {v10, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    iget-object v11, v4, Lcom/android/systemui/screenshot/ScreenshotView;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 93
    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    new-instance v11, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;

    .line 98
    const/4 v12, 0x0

    .line 100
    invoke-direct {v11, v4, v12}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 101
    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    new-array v11, v9, [F

    .line 107
    fill-array-data v11, :array_1

    .line 109
    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 112
    move-result-object v11

    .line 115
    const-wide/16 v13, 0xd9

    .line 116
    invoke-virtual {v11, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 118
    iget-object v13, v4, Lcom/android/systemui/screenshot/ScreenshotView;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 121
    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    new-instance v13, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;

    .line 126
    const/4 v14, 0x1

    .line 128
    invoke-direct {v13, v4, v14}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 129
    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    new-instance v13, Landroid/graphics/PointF;

    .line 135
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 137
    move-result v15

    .line 140
    int-to-float v15, v15

    .line 141
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 142
    move-result v9

    .line 145
    int-to-float v9, v9

    .line 146
    invoke-direct {v13, v15, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 147
    new-instance v9, Landroid/graphics/PointF;

    .line 150
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    .line 152
    move-result v15

    .line 155
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    .line 156
    move-result v14

    .line 159
    invoke-direct {v9, v15, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 160
    iget-object v14, v4, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLocationOnScreen()[I

    .line 165
    move-result-object v14

    .line 168
    iget v15, v5, Landroid/graphics/Rect;->left:I

    .line 169
    aget v17, v14, v12

    .line 171
    sub-int v15, v15, v17

    .line 173
    int-to-float v15, v15

    .line 175
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 176
    const/16 v16, 0x1

    .line 178
    aget v14, v14, v16

    .line 180
    sub-int/2addr v5, v14

    .line 182
    int-to-float v5, v5

    .line 183
    invoke-virtual {v13, v15, v5}, Landroid/graphics/PointF;->offset(FF)V

    .line 184
    const/4 v5, 0x2

    .line 187
    new-array v14, v5, [F

    .line 188
    fill-array-data v14, :array_2

    .line 190
    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 193
    move-result-object v5

    .line 196
    const-wide/16 v14, 0x1f4

    .line 197
    invoke-virtual {v5, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 199
    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotView$4;

    .line 202
    invoke-direct {v14, v4, v7}, Lcom/android/systemui/screenshot/ScreenshotView$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;F)V

    .line 204
    invoke-virtual {v5, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;

    .line 210
    invoke-direct {v14, v4, v7, v13, v9}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 212
    invoke-virtual {v5, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 215
    iget-object v7, v4, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 218
    const/4 v13, 0x0

    .line 220
    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 221
    iget-object v7, v4, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 224
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    const/4 v7, 0x2

    .line 229
    new-array v13, v7, [F

    .line 230
    fill-array-data v13, :array_3

    .line 232
    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 235
    move-result-object v13

    .line 238
    const-wide/16 v14, 0x64

    .line 239
    invoke-virtual {v13, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;

    .line 244
    invoke-direct {v14, v4, v7}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 246
    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    if-eqz v3, :cond_2

    .line 252
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 254
    move-result-object v3

    .line 257
    invoke-virtual {v3, v10}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 258
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 261
    move-result-object v3

    .line 264
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 265
    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 269
    :goto_1
    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 272
    move-result-object v3

    .line 275
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 276
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotView$5;

    .line 279
    invoke-direct {v3, v4, v9, v2, v6}, Lcom/android/systemui/screenshot/ScreenshotView$5;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V

    .line 281
    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    iput-object v8, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 287
    if-eqz v0, :cond_3

    .line 289
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$9;

    .line 291
    invoke-direct {v2, v1, v0, v12}, Lcom/android/systemui/screenshot/ScreenshotController$9;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/lang/Object;I)V

    .line 293
    invoke-virtual {v8, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    :cond_3
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda4;

    .line 299
    const/4 v2, 0x1

    .line 301
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    .line 302
    iget-object v3, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 305
    iget-object v3, v3, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 307
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    .line 309
    invoke-virtual {v3, v0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 311
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 314
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 316
    return v2

    .line 319
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 320
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 328
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 336
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 344
.end method
