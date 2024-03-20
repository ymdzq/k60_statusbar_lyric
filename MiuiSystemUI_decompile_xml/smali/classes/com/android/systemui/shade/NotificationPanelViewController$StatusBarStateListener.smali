.class public final Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    .line 4
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLinearDarkAmount:F

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 9
    return-void
    .line 12
.end method

.method public final onStateChanged(I)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->goingToFullShade()Z

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 12
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 14
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 16
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-ne p1, v5, :cond_0

    .line 20
    move v6, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v6, v4

    .line 24
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 25
    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 27
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldDelayKeyguardShow()Z

    .line 29
    move-result v7

    .line 32
    if-eqz v7, :cond_1

    .line 33
    if-nez v3, :cond_1

    .line 35
    if-ne p1, v5, :cond_1

    .line 37
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 39
    iget-object v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 41
    iget v9, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 43
    iget v10, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockYFullyDozing:I

    .line 45
    iget v8, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 47
    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(FIIZ)V

    .line 49
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 52
    iget v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 54
    iget-object v7, v7, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 56
    invoke-virtual {v7, p1, v8, v2, v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    .line 61
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 64
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 66
    iput p1, v2, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 68
    const/4 v7, 0x2

    .line 70
    if-ne p1, v5, :cond_3

    .line 71
    if-eqz v3, :cond_2

    .line 73
    if-ne v3, v7, :cond_3

    .line 75
    :cond_2
    move v8, v5

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v8, v4

    .line 79
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 80
    if-eqz v9, :cond_4

    .line 82
    if-eqz v8, :cond_4

    .line 84
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->closeQs()V

    .line 86
    :cond_4
    const/4 v8, 0x4

    .line 89
    const/high16 v9, 0x3f800000    # 1.0f

    .line 90
    if-ne v3, v5, :cond_7

    .line 92
    if-nez v0, :cond_5

    .line 94
    if-ne p1, v7, :cond_7

    .line 96
    :cond_5
    iget-boolean p1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 98
    if-eqz p1, :cond_6

    .line 100
    iget-wide v10, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    iget-wide v0, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    .line 107
    const-wide/16 v10, 0x2

    .line 109
    div-long/2addr v0, v10

    .line 111
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 117
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 119
    const/4 v3, 0x0

    .line 121
    const-string v10, "KeyguardStatusBarViewController"

    .line 122
    const-string v11, "animating status bar out"

    .line 124
    invoke-virtual {v1, v10, v0, v11, v3}, Lcom/android/keyguard/logging/KeyguardLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    iget-object v0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 129
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 131
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 133
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 136
    iput v9, p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarAnimateAlpha:F

    .line 139
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->updateMinHeight()V

    .line 141
    goto :goto_6

    .line 144
    :cond_7
    if-ne v3, v7, :cond_8

    .line 145
    if-ne p1, v5, :cond_8

    .line 147
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 149
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->animateKeyguardStatusBarIn()V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    .line 156
    goto :goto_6

    .line 159
    :cond_8
    if-nez v3, :cond_9

    .line 160
    if-ne p1, v5, :cond_9

    .line 162
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 164
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->isKeyguardShowDelayed()Z

    .line 166
    move-result p1

    .line 169
    if-eqz p1, :cond_9

    .line 170
    move p1, v5

    .line 172
    goto :goto_2

    .line 173
    :cond_9
    move p1, v4

    .line 174
    :goto_2
    if-nez p1, :cond_d

    .line 175
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 177
    if-eqz v6, :cond_a

    .line 179
    const-string v0, "Updating keyguard status bar state to visible"

    .line 181
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 183
    goto :goto_3

    .line 186
    :cond_a
    const-string v0, "Updating keyguard status bar state to invisible"

    .line 187
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 189
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 192
    if-eqz v6, :cond_b

    .line 194
    move v0, v4

    .line 196
    goto :goto_4

    .line 197
    :cond_b
    move v0, v8

    .line 198
    :goto_4
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    .line 199
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    .line 201
    if-eqz v1, :cond_c

    .line 203
    goto :goto_5

    .line 205
    :cond_c
    move v8, v0

    .line 206
    :goto_5
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 207
    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 209
    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 211
    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 214
    :cond_d
    if-eqz v6, :cond_e

    .line 217
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 219
    if-eq v3, p1, :cond_e

    .line 221
    iget-object p1, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 223
    if-eqz p1, :cond_e

    .line 225
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    .line 227
    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 230
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateForHeadsUp()V

    .line 232
    if-eqz v6, :cond_f

    .line 235
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    .line 237
    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 239
    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 241
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 243
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 245
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 247
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 250
    :cond_f
    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    .line 252
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 255
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 257
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 260
    if-ne v0, v7, :cond_10

    .line 262
    new-array v0, v7, [F

    .line 264
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 266
    aput p0, v0, v4

    .line 268
    const/4 p0, 0x0

    .line 270
    aput p0, v0, v5

    .line 271
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 273
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 276
    goto :goto_7

    .line 279
    :cond_10
    iput v9, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 280
    :goto_7
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->updateQsState()V

    .line 282
    return-void
    .line 285
.end method
