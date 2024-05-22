.class public final Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    const-string p1, "NVP#onLayout"

    .line 2
    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 7
    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    .line 9
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 12
    const/4 p3, 0x1

    .line 14
    iput-boolean p3, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    .line 15
    iget-boolean p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 17
    const/4 p5, 0x0

    .line 19
    if-eqz p4, :cond_0

    .line 20
    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 22
    iget-object p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 25
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 27
    invoke-virtual {p4, p2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 29
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 32
    iget p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingVelocity:F

    .line 34
    const/high16 p6, 0x3f800000    # 1.0f

    .line 36
    invoke-virtual {p2, p4, p6, p3, p5}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(FFZZ)V

    .line 38
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 41
    iput-boolean p5, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 45
    iget-boolean p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 47
    if-nez p4, :cond_2

    .line 49
    iget-object p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 51
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    .line 53
    move-result p4

    .line 56
    if-eqz p4, :cond_1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    move p4, p5

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    move p4, p3

    .line 62
    :goto_1
    xor-int/2addr p4, p3

    .line 63
    invoke-virtual {p2, p4}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    .line 64
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 67
    iget-object p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 69
    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 71
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    .line 73
    move-result p4

    .line 76
    int-to-float p4, p4

    .line 77
    iget-object p6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 78
    iget-object p6, p6, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 80
    invoke-virtual {p6}, Landroid/widget/FrameLayout;->getWidth()I

    .line 82
    move-result p6

    .line 85
    int-to-float p6, p6

    .line 86
    cmpl-float p4, p4, p6

    .line 87
    if-nez p4, :cond_3

    .line 89
    move p4, p3

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move p4, p5

    .line 93
    :goto_2
    iput-boolean p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFullWidth:Z

    .line 94
    iget-object p6, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 96
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    iget-object p6, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 101
    iget-object p6, p6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 103
    invoke-virtual {p6, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsFullWidth(Z)V

    .line 105
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 108
    iput-boolean p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 110
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 112
    if-eqz p2, :cond_4

    .line 114
    invoke-interface {p2, p4}, Lcom/android/systemui/plugins/qs/QS;->setIsNotificationPanelFullWidth(Z)V

    .line 116
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 119
    iget-object p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 121
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 123
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    .line 125
    move-result p2

    .line 128
    int-to-float p2, p2

    .line 129
    iget-object p6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 130
    iget-object p6, p6, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 132
    invoke-virtual {p6}, Landroid/widget/FrameLayout;->getHeight()I

    .line 134
    iget-object p6, p4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 137
    check-cast p6, Lcom/android/keyguard/KeyguardStatusView;

    .line 139
    const/high16 p7, 0x40000000    # 2.0f

    .line 141
    div-float/2addr p2, p7

    .line 143
    invoke-virtual {p6, p2}, Landroid/widget/GridLayout;->setPivotX(F)V

    .line 144
    iget-object p2, p4, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 147
    iget-object p4, p2, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 149
    iget-object p4, p4, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 151
    if-nez p4, :cond_5

    .line 153
    move p2, p5

    .line 155
    goto :goto_3

    .line 156
    :cond_5
    iget-object p2, p2, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    .line 157
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 159
    move-result p2

    .line 162
    if-nez p2, :cond_6

    .line 163
    invoke-interface {p4}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 165
    move-result-object p2

    .line 168
    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockFaceController;->getView()Landroid/view/View;

    .line 169
    move-result-object p2

    .line 172
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 173
    move-result p2

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    invoke-interface {p4}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 178
    move-result-object p2

    .line 181
    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockFaceController;->getView()Landroid/view/View;

    .line 182
    move-result-object p2

    .line 185
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 186
    move-result p2

    .line 189
    :goto_3
    int-to-float p2, p2

    .line 190
    div-float/2addr p2, p7

    .line 191
    invoke-virtual {p6, p2}, Landroid/widget/GridLayout;->setPivotY(F)V

    .line 192
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 195
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 197
    iget p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 199
    invoke-virtual {p2}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 201
    move-result p6

    .line 204
    if-eqz p6, :cond_7

    .line 205
    invoke-virtual {p2}, Lcom/android/systemui/shade/QuickSettingsController;->updateMinHeight()V

    .line 207
    iget-object p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 210
    invoke-interface {p6}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    .line 212
    move-result p6

    .line 215
    iput p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 216
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 218
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 220
    invoke-virtual {p2, p6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    .line 222
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 225
    invoke-virtual {p2, p5}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 227
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 230
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 232
    iget-boolean p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 234
    if-eqz p6, :cond_a

    .line 236
    iget-boolean p7, p2, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 238
    if-eqz p7, :cond_a

    .line 240
    iget p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 242
    int-to-float p6, p6

    .line 244
    iput p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 245
    iget-object p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 247
    if-eqz p6, :cond_8

    .line 249
    iget-object p6, p6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 251
    invoke-virtual {p6, p5}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 253
    invoke-virtual {p6}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    .line 256
    :cond_8
    iget p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 259
    if-eq p6, p4, :cond_d

    .line 261
    iget-object p7, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 263
    if-eqz p7, :cond_9

    .line 265
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 267
    move-result-object p4

    .line 270
    check-cast p4, Ljava/lang/Integer;

    .line 271
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 273
    move-result p4

    .line 276
    iget-object p7, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 277
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->cancel()V

    .line 279
    :cond_9
    filled-new-array {p4, p6}, [I

    .line 282
    move-result-object p4

    .line 285
    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 286
    move-result-object p4

    .line 289
    iput-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 290
    const-wide/16 p6, 0x12c

    .line 292
    invoke-virtual {p4, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 294
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 297
    sget-object p6, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 299
    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 304
    new-instance p6, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda4;

    .line 306
    invoke-direct {p6, p2, p3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    .line 308
    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 314
    new-instance p6, Lcom/android/systemui/shade/QuickSettingsController$1;

    .line 316
    invoke-direct {p6, p2, p5}, Lcom/android/systemui/shade/QuickSettingsController$1;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    .line 318
    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 324
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 326
    goto :goto_5

    .line 329
    :cond_a
    if-nez p6, :cond_c

    .line 330
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 332
    if-eqz p4, :cond_b

    .line 334
    move p4, p3

    .line 336
    goto :goto_4

    .line 337
    :cond_b
    move p4, p5

    .line 338
    :goto_4
    if-nez p4, :cond_c

    .line 339
    iget p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 341
    int-to-float p4, p4

    .line 343
    iget p6, p2, Lcom/android/systemui/shade/QuickSettingsController;->mLastOverscroll:F

    .line 344
    add-float/2addr p4, p6

    .line 346
    invoke-virtual {p2, p4}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 347
    goto :goto_5

    .line 350
    :cond_c
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 351
    const-string p4, "onLayoutChange: qs expansion not set"

    .line 353
    invoke-virtual {p2, p4}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 355
    :cond_d
    :goto_5
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 358
    iget p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 360
    invoke-virtual {p2, p4}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 362
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 365
    invoke-static {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mupdateHeader(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 367
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 370
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 372
    iget-object p4, p2, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 374
    if-eqz p4, :cond_e

    .line 376
    goto :goto_6

    .line 378
    :cond_e
    move p3, p5

    .line 379
    :goto_6
    if-nez p3, :cond_f

    .line 380
    invoke-virtual {p2}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 382
    move-result p3

    .line 385
    if-eqz p3, :cond_f

    .line 386
    iget-object p2, p2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 388
    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    .line 390
    move-result p3

    .line 393
    invoke-interface {p2, p3}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 394
    :cond_f
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 397
    iget-object p3, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 399
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 401
    move-result p3

    .line 404
    iget p4, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 405
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 407
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 409
    invoke-virtual {p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpBoundaries(II)V

    .line 411
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 414
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 419
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    .line 421
    if-eqz p2, :cond_10

    .line 423
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 425
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 428
    const/4 p2, 0x0

    .line 430
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    .line 431
    :cond_10
    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 433
    return-void
    .line 436
.end method
