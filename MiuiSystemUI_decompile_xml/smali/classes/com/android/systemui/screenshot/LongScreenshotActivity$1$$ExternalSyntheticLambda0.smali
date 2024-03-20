.class public final synthetic Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/LongScreenshotActivity$1;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/LongScreenshotActivity$1;FFI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/LongScreenshotActivity$1;

    .line 4
    iput p2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->f$1:F

    .line 6
    iput p3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->f$2:F

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    goto/16 :goto_1

    .line 15
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/LongScreenshotActivity$1;

    .line 17
    iget v7, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->f$1:F

    .line 19
    iget v0, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->f$2:F

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v12, Landroid/graphics/Rect;

    .line 26
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 28
    iget-object v8, v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 31
    iget-object v8, v8, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 35
    iget-object v8, v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 38
    iget-object v8, v8, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotData;

    .line 40
    iget-object v8, v8, Lcom/android/systemui/screenshot/LongScreenshotData;->mTransitionDestinationCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    const/4 v9, 0x0

    .line 44
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v8

    .line 48
    check-cast v8, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;

    .line 49
    new-instance v14, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;

    .line 51
    invoke-direct {v14, v1, v7, v0, v6}, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity$1;FFI)V

    .line 53
    iget-object v0, v8, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 56
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 58
    iput-boolean v6, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingSharedTransition:Z

    .line 60
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 62
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 64
    new-array v9, v5, [F

    .line 67
    fill-array-data v9, :array_0

    .line 69
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 72
    move-result-object v15

    .line 75
    new-instance v9, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;

    .line 76
    const/4 v10, 0x5

    .line 78
    invoke-direct {v9, v1, v10}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 79
    invoke-virtual {v15, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    iget-boolean v9, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mShowScrollablePreview:Z

    .line 85
    if-eqz v9, :cond_0

    .line 87
    iget-object v9, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 89
    iget-object v8, v8, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;->f$1:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 91
    invoke-virtual {v8}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->toBitmap()Landroid/graphics/Bitmap;

    .line 93
    move-result-object v10

    .line 96
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    iget-object v9, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {v9}, Landroid/widget/ImageView;->getX()F

    .line 102
    move-result v11

    .line 105
    iget-object v9, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {v9}, Landroid/widget/ImageView;->getY()F

    .line 108
    move-result v13

    .line 111
    iget-object v9, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLocationOnScreen()[I

    .line 114
    move-result-object v9

    .line 117
    float-to-int v10, v11

    .line 118
    aget v16, v9, v4

    .line 119
    sub-int v10, v10, v16

    .line 121
    float-to-int v4, v13

    .line 123
    aget v6, v9, v6

    .line 124
    sub-int/2addr v4, v6

    .line 126
    invoke-virtual {v12, v10, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 127
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 130
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 132
    iget-object v4, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 137
    iget-object v3, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 142
    iget-object v2, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 145
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 147
    move-result v2

    .line 150
    int-to-float v2, v2

    .line 151
    iget-object v3, v8, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 152
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    .line 154
    move-result v4

    .line 157
    int-to-float v4, v4

    .line 158
    div-float/2addr v2, v4

    .line 159
    new-instance v4, Landroid/graphics/Matrix;

    .line 160
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 162
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 165
    iget-object v6, v3, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 168
    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 170
    move-result-object v6

    .line 173
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 174
    int-to-float v6, v6

    .line 176
    mul-float/2addr v6, v2

    .line 177
    iget-object v3, v3, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 178
    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 180
    move-result-object v3

    .line 183
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 184
    int-to-float v3, v3

    .line 186
    mul-float/2addr v3, v2

    .line 187
    invoke-virtual {v4, v6, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 188
    iget-object v2, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 191
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 193
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 196
    move-result v2

    .line 199
    int-to-float v2, v2

    .line 200
    iget-object v3, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 201
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    .line 203
    move-result v3

    .line 206
    int-to-float v3, v3

    .line 207
    div-float v10, v2, v3

    .line 208
    new-array v2, v5, [F

    .line 210
    fill-array-data v2, :array_1

    .line 212
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 215
    move-result-object v2

    .line 218
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda8;

    .line 219
    move-object v8, v3

    .line 221
    move-object v9, v1

    .line 222
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;FFLandroid/graphics/Rect;F)V

    .line 223
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    new-array v3, v5, [F

    .line 229
    fill-array-data v3, :array_2

    .line 231
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 234
    move-result-object v3

    .line 237
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;

    .line 238
    const/4 v5, 0x6

    .line 240
    invoke-direct {v4, v1, v5}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 241
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 247
    move-result-object v4

    .line 250
    invoke-virtual {v4, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 251
    move-result-object v4

    .line 254
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 255
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotView$7;

    .line 258
    const/4 v4, 0x0

    .line 260
    invoke-direct {v3, v14, v4}, Lcom/android/systemui/screenshot/ScreenshotView$7;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;I)V

    .line 261
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v7, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 268
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$7;

    .line 271
    invoke-direct {v2, v14, v6}, Lcom/android/systemui/screenshot/ScreenshotView$7;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;I)V

    .line 273
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    :goto_0
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$9;

    .line 279
    invoke-direct {v2, v1, v4}, Lcom/android/systemui/screenshot/ScreenshotView$9;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 281
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 287
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 290
    invoke-virtual {v0}, Landroid/window/WindowContext;->closeSystemDialogs()V

    .line 292
    return-void

    .line 295
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/LongScreenshotActivity$1;

    .line 296
    iget v4, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->f$1:F

    .line 298
    iget v0, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;->f$2:F

    .line 300
    iget-object v7, v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 302
    iget-object v7, v7, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 304
    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 306
    move-result-object v7

    .line 309
    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 310
    iget-object v2, v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 313
    iget-object v2, v2, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 315
    sget-object v7, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 317
    invoke-virtual {v2, v7, v4}, Lcom/android/systemui/screenshot/CropView;->setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    .line 319
    iget-object v2, v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 322
    iget-object v2, v2, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 324
    sget-object v4, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 326
    invoke-virtual {v2, v4, v0}, Lcom/android/systemui/screenshot/CropView;->setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    .line 328
    iget-object v0, v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 331
    iget-object v0, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 333
    iput v3, v0, Lcom/android/systemui/screenshot/CropView;->mEntranceInterpolation:F

    .line 335
    new-instance v2, Landroid/animation/ValueAnimator;

    .line 337
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 339
    new-instance v3, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;

    .line 342
    invoke-direct {v3, v0}, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/CropView;)V

    .line 344
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 347
    new-array v0, v5, [F

    .line 350
    fill-array-data v0, :array_3

    .line 352
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 355
    const-wide/16 v3, 0x2ee

    .line 358
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 360
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 363
    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 365
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 371
    iget-object v0, v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 374
    iget-object v0, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 376
    const/4 v2, 0x0

    .line 378
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 382
    invoke-virtual {v0, v6}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->setButtonsEnabled(Z)V

    .line 384
    return-void

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 388
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 394
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 402
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 410
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 418
.end method
