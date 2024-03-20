.class public final Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$2;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$2;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4
    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 8
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    const/4 v3, 0x0

    .line 27
    if-eqz p1, :cond_c

    .line 28
    const/high16 v4, 0x40600000    # 3.5f

    .line 30
    if-eq p1, v0, :cond_6

    .line 32
    const/4 v5, 0x2

    .line 34
    if-eq p1, v5, :cond_1

    .line 35
    const/4 p2, 0x3

    .line 37
    if-eq p1, p2, :cond_6

    .line 38
    goto/16 :goto_4

    .line 40
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    .line 42
    if-eqz p1, :cond_4

    .line 44
    iget p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    .line 46
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    .line 48
    sub-float/2addr p1, v1

    .line 50
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    .line 51
    neg-int v1, v1

    .line 53
    int-to-float v1, v1

    .line 54
    div-float/2addr v1, v4

    .line 55
    cmpl-float p1, p1, v1

    .line 56
    if-lez p1, :cond_2

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 60
    move-result p1

    .line 63
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    .line 64
    sub-float/2addr p1, v1

    .line 66
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    .line 67
    neg-int v1, v1

    .line 69
    int-to-float v1, v1

    .line 70
    div-float/2addr v1, v4

    .line 71
    cmpg-float p1, p1, v1

    .line 72
    if-ltz p1, :cond_3

    .line 74
    :cond_2
    iget p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    .line 76
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    .line 78
    sub-float/2addr p1, v1

    .line 80
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    .line 81
    int-to-float v1, v1

    .line 83
    div-float/2addr v1, v4

    .line 84
    cmpg-float p1, p1, v1

    .line 85
    if-gez p1, :cond_4

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 89
    move-result p1

    .line 92
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    .line 93
    sub-float/2addr p1, v1

    .line 95
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    .line 96
    int-to-float v1, v1

    .line 98
    div-float/2addr v1, v4

    .line 99
    cmpl-float p1, p1, v1

    .line 100
    if-lez p1, :cond_4

    .line 102
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 106
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 109
    move-result p1

    .line 112
    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 115
    move-result p1

    .line 118
    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYCur:F

    .line 119
    iget-boolean p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsShowNavigationHandle:Z

    .line 121
    if-nez p2, :cond_5

    .line 123
    iget-boolean p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFinishGestureDetection:Z

    .line 125
    if-nez p2, :cond_5

    .line 127
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    .line 129
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    .line 131
    sub-float/2addr p2, v1

    .line 133
    float-to-double v4, p2

    .line 134
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    .line 135
    sub-float/2addr p1, p2

    .line 137
    float-to-double p1, p1

    .line 138
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    .line 139
    move-result-wide p1

    .line 142
    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    .line 143
    cmpl-double p1, p1, v4

    .line 145
    if-lez p1, :cond_5

    .line 147
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFinishGestureDetection:Z

    .line 149
    iget p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYCur:F

    .line 151
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    .line 153
    sub-float/2addr p1, p2

    .line 155
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 156
    move-result p1

    .line 159
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    .line 160
    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    .line 162
    sub-float/2addr p2, v1

    .line 164
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 165
    move-result p2

    .line 168
    const/high16 v1, 0x40000000    # 2.0f

    .line 169
    mul-float/2addr p2, v1

    .line 171
    cmpl-float p1, p1, p2

    .line 172
    if-lez p1, :cond_5

    .line 174
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    .line 176
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    .line 178
    if-eqz p1, :cond_d

    .line 180
    iget p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    .line 182
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYCur:F

    .line 184
    sub-float/2addr p1, p2

    .line 186
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenHeight:I

    .line 187
    int-to-float p2, p2

    .line 189
    div-float/2addr p1, p2

    .line 190
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 191
    move-result p1

    .line 194
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    .line 195
    move-result p1

    .line 198
    const p2, 0x3f333333    # 0.7f

    .line 199
    mul-float/2addr p1, p2

    .line 202
    sub-float/2addr v2, p1

    .line 203
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 204
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 206
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 209
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 211
    iget p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    .line 214
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    .line 216
    sub-float/2addr p1, p2

    .line 218
    float-to-int p1, p1

    .line 219
    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mTranslationX:I

    .line 220
    iget-object p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 222
    int-to-float p1, p1

    .line 224
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 225
    iget p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYCur:F

    .line 228
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    .line 230
    sub-float/2addr p1, p2

    .line 232
    const p2, 0x3e3851ec    # 0.18f

    .line 233
    mul-float/2addr p1, p2

    .line 236
    float-to-int p1, p1

    .line 237
    int-to-float p1, p1

    .line 238
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 239
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 241
    goto/16 :goto_4

    .line 244
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    .line 246
    if-eqz p1, :cond_b

    .line 248
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 250
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 252
    move-result-object p2

    .line 255
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 256
    move-result p2

    .line 259
    int-to-float p2, p2

    .line 260
    const/16 v5, 0x3e8

    .line 261
    invoke-virtual {p1, v5, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 263
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 266
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 268
    move-result p1

    .line 271
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mTranslationX:I

    .line 272
    int-to-float v5, p2

    .line 274
    iget v6, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    .line 275
    neg-int v7, v6

    .line 277
    int-to-float v7, v7

    .line 278
    div-float/2addr v7, v4

    .line 279
    cmpg-float v7, v5, v7

    .line 280
    if-ltz v7, :cond_a

    .line 282
    if-gez p2, :cond_7

    .line 284
    iget v7, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityThreshold:F

    .line 286
    neg-float v7, v7

    .line 288
    cmpg-float v7, p1, v7

    .line 289
    if-gez v7, :cond_7

    .line 291
    goto :goto_1

    .line 293
    :cond_7
    int-to-float v7, v6

    .line 294
    div-float/2addr v7, v4

    .line 295
    cmpl-float v4, v5, v7

    .line 296
    if-gtz v4, :cond_9

    .line 298
    if-lez p2, :cond_8

    .line 300
    iget p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityThreshold:F

    .line 302
    cmpl-float p1, p1, p2

    .line 304
    if-lez p1, :cond_8

    .line 306
    goto :goto_0

    .line 308
    :cond_8
    move p1, v3

    .line 309
    goto :goto_3

    .line 310
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 311
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/ScrollerLayout;->getHorizontalGap()I

    .line 313
    move-result p1

    .line 316
    add-int/2addr p1, v6

    .line 317
    goto :goto_2

    .line 318
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 319
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/ScrollerLayout;->getHorizontalGap()I

    .line 321
    move-result p1

    .line 324
    add-int/2addr p1, v6

    .line 325
    neg-int p1, p1

    .line 326
    :goto_2
    int-to-float p1, p1

    .line 327
    :goto_3
    iget-object p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 328
    invoke-virtual {p2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 330
    move-result-object p2

    .line 333
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 334
    move-result-object p2

    .line 337
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 338
    move-result-object p2

    .line 341
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 342
    move-result-object p2

    .line 345
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 346
    move-result-object p2

    .line 349
    const-wide/16 v4, 0xc8

    .line 350
    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 352
    move-result-object p2

    .line 355
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 356
    cmpl-float p1, p1, v3

    .line 359
    if-eqz p1, :cond_b

    .line 361
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 363
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 365
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->handler:Landroid/os/Handler;

    .line 368
    new-instance p2, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;

    .line 370
    invoke-direct {p2, p0, v1}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;-><init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;I)V

    .line 372
    const-wide/16 v1, 0x1f4

    .line 375
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 380
    if-eqz p1, :cond_d

    .line 382
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 384
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 387
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 389
    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 393
    goto :goto_4

    .line 395
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 396
    move-result p1

    .line 399
    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    .line 400
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 402
    move-result p1

    .line 405
    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    .line 406
    invoke-static {p0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    .line 408
    move-result p1

    .line 411
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsShowNavigationHandle:Z

    .line 412
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFinishGestureDetection:Z

    .line 414
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    .line 416
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 418
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 420
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 423
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 425
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 428
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 430
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 433
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 435
    :cond_d
    :goto_4
    return v0
    .line 438
.end method
