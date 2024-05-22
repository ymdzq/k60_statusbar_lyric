.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;
.super Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public isDownOnKeyguard:Z

.field public isFullyCollapsedOnDown:Z

.field public isFullyExpandedOnDown:Z

.field public isKeyguardAwayWhenDown:Z

.field public isNcSwitchingWhenDown:Z

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mLastTouchY:F

.field public mTrackingPointer:I

.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final disallowInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    move-result v3

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 20
    move-result v4

    .line 23
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInContentBounds(FF)Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 30
    move-result v0

    .line 33
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 34
    iget-object v3, v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 36
    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/views/DismissView;->getVisibleBottom()I

    .line 40
    move-result v3

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v3, v2

    .line 45
    :goto_0
    int-to-float v3, v3

    .line 46
    cmpg-float v0, v0, v3

    .line 47
    if-gez v0, :cond_1

    .line 49
    move v0, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v0, v2

    .line 53
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 54
    move-result p1

    .line 57
    const/4 v3, 0x2

    .line 58
    if-ne p1, v3, :cond_2

    .line 59
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 61
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 63
    if-nez p1, :cond_2

    .line 65
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 67
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 69
    if-nez p0, :cond_2

    .line 71
    move p0, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move p0, v2

    .line 75
    :goto_2
    if-nez v0, :cond_4

    .line 76
    if-eqz p0, :cond_3

    .line 78
    goto :goto_3

    .line 80
    :cond_3
    move v1, v2

    .line 81
    :cond_4
    :goto_3
    return v1
    .line 82
.end method

.method public final handleCollapseState(FFF)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyExpandedOnDown:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 7
    move-result v0

    .line 10
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 11
    move-result p2

    .line 14
    cmpl-float p2, v0, p2

    .line 15
    if-lez p2, :cond_2

    .line 17
    const/4 p2, 0x0

    .line 19
    cmpg-float p2, p1, p2

    .line 20
    if-gez p2, :cond_2

    .line 22
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 24
    move-result p1

    .line 27
    iget-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 28
    iget v0, p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mTouchSlop:I

    .line 30
    int-to-float v0, v0

    .line 32
    cmpl-float p1, p1, v0

    .line 33
    if-lez p1, :cond_2

    .line 35
    iget-object p1, p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 37
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 39
    move-result p1

    .line 42
    int-to-float p1, p1

    .line 43
    iget-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 44
    iget v0, p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBottomAreaCollapseHotZone:F

    .line 46
    sub-float/2addr p1, v0

    .line 48
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 49
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 51
    move-result p2

    .line 54
    int-to-float p2, p2

    .line 55
    sub-float/2addr p1, p2

    .line 56
    cmpl-float p1, p3, p1

    .line 57
    const/4 p2, 0x1

    .line 59
    if-gtz p1, :cond_1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 62
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 64
    iget-boolean p1, p1, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 66
    if-nez p1, :cond_2

    .line 68
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 74
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    .line 78
    move-result p0

    .line 81
    if-lt p1, p0, :cond_0

    .line 82
    move p0, p2

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move p0, v1

    .line 86
    :goto_0
    if-eqz p0, :cond_2

    .line 87
    :cond_1
    move v1, p2

    .line 89
    :cond_2
    return v1
    .line 90
.end method

.method public final handleMiuiTouch(Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v10, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    move-result v1

    .line 9
    const-string v11, "NotificationPanelView"

    .line 10
    const/4 v12, 0x0

    .line 12
    const/4 v13, 0x1

    .line 13
    if-nez v1, :cond_5

    .line 14
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 16
    iget-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPendingWhenIntercept:Z

    .line 18
    if-nez v2, :cond_1

    .line 20
    iget-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 22
    if-eqz v2, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move v2, v12

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move v2, v13

    .line 29
    :goto_1
    sget-object v3, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 32
    move-result v1

    .line 35
    iget-object v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 36
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    .line 38
    move-result v3

    .line 41
    const-string v4, "handleMiuiTouch fullyCollapsed="

    .line 42
    const-string v5, " fullExp="

    .line 44
    const-string v6, " hidePanelPending="

    .line 46
    invoke-static {v4, v1, v5, v3, v6}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v1

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string v3, " "

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 63
    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 67
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 69
    move-result v1

    .line 72
    if-nez v1, :cond_3

    .line 73
    if-eqz v2, :cond_2

    .line 75
    goto :goto_2

    .line 77
    :cond_2
    move v1, v12

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    :goto_2
    move v1, v13

    .line 80
    :goto_3
    iput-boolean v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyCollapsedOnDown:Z

    .line 81
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 83
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    .line 85
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    if-nez v2, :cond_4

    .line 91
    move v1, v13

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    move v1, v12

    .line 95
    :goto_4
    iput-boolean v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyExpandedOnDown:Z

    .line 96
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 98
    iget-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 100
    iput-boolean v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isNcSwitchingWhenDown:Z

    .line 102
    iput-boolean v12, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPendingWhenIntercept:Z

    .line 104
    invoke-virtual {v1, v12}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMHidePanelPending(Z)V

    .line 106
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 109
    invoke-static {v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$cancelFlingSpring(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 111
    :cond_5
    const-class v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 114
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    move-result-object v1

    .line 119
    check-cast v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 120
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->maybeDispatchMotionEvent(Landroid/view/MotionEvent;)Z

    .line 122
    move-result v1

    .line 125
    if-eqz v1, :cond_6

    .line 126
    return v13

    .line 128
    :cond_6
    iget-boolean v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isNcSwitchingWhenDown:Z

    .line 129
    if-eqz v1, :cond_7

    .line 131
    return v13

    .line 133
    :cond_7
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 134
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 136
    if-eqz v2, :cond_8

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->resetPanelTouchState()V

    .line 140
    return v12

    .line 143
    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 144
    move-result v1

    .line 147
    const/4 v14, 0x3

    .line 148
    const/4 v15, 0x0

    .line 149
    if-eqz v1, :cond_10

    .line 150
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 152
    iget-object v1, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardEditLoadingContainer:Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

    .line 154
    if-eqz v1, :cond_9

    .line 156
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 158
    move-result v1

    .line 161
    if-nez v1, :cond_9

    .line 162
    move v1, v13

    .line 164
    goto :goto_5

    .line 165
    :cond_9
    move v1, v12

    .line 166
    :goto_5
    if-eqz v1, :cond_a

    .line 167
    return v13

    .line 169
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 170
    move-result v1

    .line 173
    if-nez v1, :cond_b

    .line 174
    iput-boolean v13, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isDownOnKeyguard:Z

    .line 176
    goto :goto_6

    .line 178
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 179
    move-result v1

    .line 182
    if-eq v1, v13, :cond_c

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 185
    move-result v1

    .line 188
    if-ne v1, v14, :cond_d

    .line 189
    :cond_c
    iput-boolean v12, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isDownOnKeyguard:Z

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->resetPanelTouchState()V

    .line 193
    :cond_d
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 196
    move-result v1

    .line 199
    if-eq v1, v14, :cond_e

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 202
    move-result v1

    .line 205
    if-ne v1, v13, :cond_f

    .line 206
    :cond_e
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 208
    iget v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSpringLength:F

    .line 210
    cmpl-float v2, v2, v15

    .line 212
    if-lez v2, :cond_f

    .line 214
    invoke-virtual {v1, v15}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMSpringLength(F)V

    .line 216
    :cond_f
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 219
    iget-object v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 221
    iget v3, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 223
    iget v4, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchX:F

    .line 225
    iget v5, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 227
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    .line 229
    move-result v6

    .line 232
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 233
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 235
    iget-object v8, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 237
    iget-boolean v8, v8, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 239
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 241
    move-object v1, v2

    .line 243
    move-object/from16 v2, p1

    .line 244
    invoke-virtual/range {v1 .. v9}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onTouchEvent(Landroid/view/MotionEvent;IFFZZZZ)Z

    .line 246
    move-result v1

    .line 249
    if-eqz v1, :cond_12

    .line 250
    return v13

    .line 252
    :cond_10
    iget-boolean v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isDownOnKeyguard:Z

    .line 253
    if-eqz v1, :cond_12

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 257
    move-result v1

    .line 260
    if-eq v1, v13, :cond_11

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 263
    move-result v1

    .line 266
    if-ne v1, v14, :cond_12

    .line 267
    :cond_11
    iput-boolean v12, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isDownOnKeyguard:Z

    .line 269
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 271
    iget-object v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 273
    iget v3, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 275
    iget v4, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchX:F

    .line 277
    iget v5, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 279
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    .line 281
    move-result v6

    .line 284
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 285
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 287
    iget-object v8, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 289
    iget-boolean v8, v8, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 291
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 293
    move-object v1, v2

    .line 295
    move-object/from16 v2, p1

    .line 296
    invoke-virtual/range {v1 .. v9}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onTouchEvent(Landroid/view/MotionEvent;IFFZZZZ)Z

    .line 298
    :cond_12
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 301
    iget-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mTrackingMiniWindowHeadsUp:Z

    .line 303
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 305
    instance-of v4, v3, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;

    .line 307
    if-eqz v4, :cond_13

    .line 309
    check-cast v3, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;

    .line 311
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mTrackingMiniWindowHeadsUp:Z

    .line 313
    if-eqz v3, :cond_13

    .line 315
    move v3, v13

    .line 317
    goto :goto_7

    .line 318
    :cond_13
    move v3, v12

    .line 319
    :goto_7
    iput-boolean v3, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mTrackingMiniWindowHeadsUp:Z

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 322
    move-result v1

    .line 325
    if-eq v1, v13, :cond_14

    .line 326
    if-eq v1, v14, :cond_14

    .line 328
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 330
    iget-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mTrackingMiniWindowHeadsUp:Z

    .line 332
    :cond_14
    if-eqz v2, :cond_15

    .line 334
    return v13

    .line 336
    :cond_15
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 337
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 339
    move-result v1

    .line 342
    if-nez v1, :cond_36

    .line 343
    iget-boolean v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyCollapsedOnDown:Z

    .line 345
    if-nez v1, :cond_16

    .line 347
    iget-boolean v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyExpandedOnDown:Z

    .line 349
    if-eqz v1, :cond_37

    .line 351
    :cond_16
    iget v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mTrackingPointer:I

    .line 353
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 355
    move-result v1

    .line 358
    if-gez v1, :cond_17

    .line 359
    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 361
    move-result v1

    .line 364
    iput v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mTrackingPointer:I

    .line 365
    move v1, v12

    .line 367
    :cond_17
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 368
    move-result v2

    .line 371
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 372
    move-result v1

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 376
    move-result v3

    .line 379
    if-eqz v3, :cond_34

    .line 380
    const/4 v4, 0x0

    .line 382
    if-eq v3, v13, :cond_2d

    .line 383
    const/4 v5, 0x2

    .line 385
    if-eq v3, v5, :cond_19

    .line 386
    if-eq v3, v14, :cond_2d

    .line 388
    const/4 v1, 0x6

    .line 390
    if-eq v3, v1, :cond_18

    .line 391
    goto/16 :goto_11

    .line 393
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 395
    goto/16 :goto_11

    .line 398
    :cond_19
    iget-object v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 400
    iget-boolean v5, v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchFromHeadsUpRequested:Z

    .line 402
    if-eqz v5, :cond_1a

    .line 404
    iput v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchX:F

    .line 406
    iput v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 408
    iput-boolean v12, v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchFromHeadsUpRequested:Z

    .line 410
    :cond_1a
    iget v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchX:F

    .line 412
    sub-float/2addr v2, v3

    .line 414
    iget v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 415
    sub-float v3, v1, v3

    .line 417
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->handleStretchState(FF)Z

    .line 419
    move-result v5

    .line 422
    iget v6, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 423
    invoke-virtual {v0, v3, v2, v6}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->handleCollapseState(FFF)Z

    .line 425
    move-result v6

    .line 428
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->handleSlideState(FF)Z

    .line 429
    move-result v2

    .line 432
    iget-object v7, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 433
    iget-boolean v8, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 435
    if-nez v8, :cond_1d

    .line 437
    if-nez v5, :cond_1c

    .line 439
    if-nez v6, :cond_1c

    .line 441
    if-eqz v2, :cond_1b

    .line 443
    goto :goto_8

    .line 445
    :cond_1b
    move v8, v12

    .line 446
    goto :goto_9

    .line 447
    :cond_1c
    :goto_8
    move v8, v13

    .line 448
    :goto_9
    iput-boolean v8, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 449
    :cond_1d
    iget-boolean v8, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyCollapsedOnDown:Z

    .line 451
    if-eqz v8, :cond_1f

    .line 453
    iget-boolean v2, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 455
    if-nez v2, :cond_1e

    .line 457
    move v2, v5

    .line 459
    goto :goto_a

    .line 460
    :cond_1e
    move v2, v13

    .line 461
    :goto_a
    iput-boolean v2, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 462
    goto :goto_c

    .line 464
    :cond_1f
    iget-boolean v8, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyExpandedOnDown:Z

    .line 465
    if-eqz v8, :cond_21

    .line 467
    iget-boolean v8, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 469
    if-nez v8, :cond_20

    .line 471
    goto :goto_b

    .line 473
    :cond_20
    move v2, v13

    .line 474
    :goto_b
    iput-boolean v2, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 475
    :cond_21
    :goto_c
    iget-boolean v2, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 477
    if-eqz v2, :cond_23

    .line 479
    iget-boolean v2, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 481
    if-nez v2, :cond_23

    .line 483
    iget-boolean v2, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 485
    if-nez v2, :cond_23

    .line 487
    cmpl-float v2, v3, v15

    .line 489
    if-lez v2, :cond_22

    .line 491
    move v2, v13

    .line 493
    goto :goto_d

    .line 494
    :cond_22
    move v2, v12

    .line 495
    :goto_d
    invoke-static {v7, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$setMPanelStretching(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 496
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 499
    invoke-virtual {v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelStretching()Z

    .line 501
    move-result v7

    .line 504
    xor-int/2addr v7, v13

    .line 505
    iput-boolean v7, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 506
    goto :goto_e

    .line 508
    :cond_23
    invoke-static {v7, v5}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$setMPanelStretching(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 509
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 512
    iput-boolean v6, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 514
    :goto_e
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 516
    iget-boolean v7, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 518
    if-eqz v7, :cond_2a

    .line 520
    iget-object v2, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 522
    if-eqz v2, :cond_24

    .line 524
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 526
    move-result v3

    .line 529
    if-eqz v3, :cond_24

    .line 530
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 532
    :cond_24
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 535
    iget-object v3, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 537
    if-nez v3, :cond_26

    .line 539
    if-eqz v3, :cond_25

    .line 541
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 543
    :cond_25
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 546
    move-result-object v3

    .line 549
    iput-object v3, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 550
    :cond_26
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 552
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 554
    iget-object v2, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 556
    if-eqz v2, :cond_27

    .line 558
    invoke-interface {v2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 560
    move-result-object v2

    .line 563
    if-eqz v2, :cond_27

    .line 564
    const v3, 0x7f0a076e    # @id/quick_settings_container

    .line 566
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 569
    move-result-object v2

    .line 572
    move-object v4, v2

    .line 573
    check-cast v4, Lcom/android/systemui/qs/MiuiQSContainer;

    .line 574
    :cond_27
    if-eqz v4, :cond_28

    .line 576
    iget-object v2, v4, Lcom/android/systemui/qs/MiuiQSContainer;->mContainerFolme:Lmiuix/animation/IFolme;

    .line 578
    if-eqz v2, :cond_28

    .line 580
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 582
    move-result-object v2

    .line 585
    if-eqz v2, :cond_28

    .line 586
    invoke-interface {v2}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 588
    :cond_28
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 591
    iget-object v2, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 593
    if-eqz v2, :cond_29

    .line 595
    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 597
    :cond_29
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 600
    iget v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mLastTouchY:F

    .line 602
    sub-float v3, v1, v3

    .line 604
    invoke-static {v2, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$handleNssCoverQs(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;F)V

    .line 606
    goto :goto_f

    .line 609
    :cond_2a
    invoke-virtual {v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelStretching()Z

    .line 610
    move-result v2

    .line 613
    if-nez v2, :cond_2b

    .line 614
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 616
    iget-boolean v2, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 618
    if-eqz v2, :cond_2c

    .line 620
    :cond_2b
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 622
    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMStretchLength(F)V

    .line 624
    :cond_2c
    :goto_f
    iput v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mLastTouchY:F

    .line 627
    sget-object v1, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 629
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 631
    invoke-virtual {v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelStretching()Z

    .line 633
    move-result v1

    .line 636
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 637
    iget-boolean v3, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 639
    iget-boolean v4, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 641
    iget v7, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 643
    iget-boolean v8, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyCollapsedOnDown:Z

    .line 645
    iget-boolean v9, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyExpandedOnDown:Z

    .line 647
    iget-boolean v2, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 649
    const-string v10, "MNPVC touch: stretching="

    .line 651
    const-string v14, " collapsing="

    .line 653
    const-string v15, " mPanelStretching="

    .line 655
    invoke-static {v10, v5, v14, v6, v15}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    move-result-object v5

    .line 660
    const-string v6, " mPanelCollapsing="

    .line 661
    const-string v10, " mPanelOpening="

    .line 663
    invoke-static {v5, v1, v6, v3, v10}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 665
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 668
    const-string v1, " mStretchLength="

    .line 671
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 676
    const-string v1, " fullCollapsedOnDown="

    .line 679
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v1, " fullExpOnDown="

    .line 684
    const-string v3, " mHidePanelPending="

    .line 686
    invoke-static {v5, v8, v1, v9, v3}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 688
    invoke-static {v5, v2, v11}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 691
    goto/16 :goto_11

    .line 694
    :cond_2d
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 696
    iget-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 698
    if-eqz v2, :cond_32

    .line 700
    iget-object v1, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 702
    if-eqz v1, :cond_2e

    .line 704
    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 706
    :cond_2e
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 709
    iget-object v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 711
    if-eqz v2, :cond_2f

    .line 713
    const/16 v3, 0x3e8

    .line 715
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 717
    :cond_2f
    iget-object v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 720
    if-eqz v2, :cond_30

    .line 722
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 724
    move-result v2

    .line 727
    goto :goto_10

    .line 728
    :cond_30
    move v2, v15

    .line 729
    :goto_10
    invoke-static {v1, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$endNssCoveringQsMotion(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;F)V

    .line 730
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 733
    iget-object v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 735
    if-eqz v2, :cond_31

    .line 737
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 739
    :cond_31
    iput-object v4, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 742
    :cond_32
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 744
    iput-boolean v12, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 746
    invoke-static {v1, v12}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$setMPanelStretching(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 748
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 751
    iput-boolean v12, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 753
    iput-boolean v12, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 755
    iput-boolean v12, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isTouchingOnPanel:Z

    .line 757
    invoke-virtual {v1, v15}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMStretchLength(F)V

    .line 759
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 762
    iget-object v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 764
    iput-boolean v12, v2, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->disableFakeWhenExpandingFromHeadsUp:Z

    .line 766
    invoke-virtual {v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelAppeared()Z

    .line 768
    move-result v1

    .line 771
    if-nez v1, :cond_35

    .line 772
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 774
    iget-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 776
    if-nez v2, :cond_35

    .line 778
    iget v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBgBlurRadius:I

    .line 780
    if-nez v2, :cond_33

    .line 782
    iput-boolean v13, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRequested:Z

    .line 784
    iget-object v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRunnable:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 786
    invoke-virtual {v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->run()V

    .line 788
    invoke-virtual {v1, v12}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMHidePanelPending(Z)V

    .line 791
    goto :goto_11

    .line 794
    :cond_33
    invoke-virtual {v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 795
    move-result v2

    .line 798
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMHidePanelPending(Z)V

    .line 799
    iput-boolean v12, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRequested:Z

    .line 802
    goto :goto_11

    .line 804
    :cond_34
    iput v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchX:F

    .line 805
    iput v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 807
    iput v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mLastTouchY:F

    .line 809
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 811
    iput-boolean v12, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 813
    invoke-static {v1, v12}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$setMPanelStretching(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 815
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 818
    iput-boolean v12, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 820
    iput-boolean v12, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 822
    iput-boolean v13, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isTouchingOnPanel:Z

    .line 824
    :cond_35
    :goto_11
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 826
    iget-boolean v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 828
    if-eqz v0, :cond_37

    .line 830
    return v13

    .line 832
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->resetPanelTouchState()V

    .line 833
    :cond_37
    return v12
    .line 836
.end method

.method public final handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mTrackingPointer:I

    .line 10
    if-ne v1, v0, :cond_1

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 15
    move-result v2

    .line 18
    if-eq v2, v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 23
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mTrackingPointer:I

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 29
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchX:F

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 35
    move-result p1

    .line 38
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 39
    :cond_1
    return-void
    .line 41
.end method

.method public final handleSlideState(FF)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyExpandedOnDown:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 9
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 15
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 17
    if-nez v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 23
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 25
    if-nez v0, :cond_4

    .line 27
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 29
    move-result v0

    .line 32
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 33
    move-result p2

    .line 36
    cmpl-float p2, v0, p2

    .line 37
    if-lez p2, :cond_4

    .line 39
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 41
    move-result p2

    .line 44
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 45
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mTouchSlop:I

    .line 47
    int-to-float v0, v0

    .line 49
    cmpl-float p2, p2, v0

    .line 50
    if-lez p2, :cond_4

    .line 52
    iget-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 54
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 56
    if-nez p2, :cond_4

    .line 58
    iget-boolean p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 60
    const/4 v0, 0x1

    .line 62
    const/4 v2, 0x0

    .line 63
    if-eqz p2, :cond_1

    .line 64
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 70
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 72
    if-nez p0, :cond_0

    .line 74
    move p0, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move p0, v1

    .line 78
    :goto_0
    if-eqz p0, :cond_4

    .line 79
    cmpl-float p0, p1, v2

    .line 81
    if-lez p0, :cond_4

    .line 83
    return v0

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 90
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 92
    if-nez p2, :cond_2

    .line 94
    move v3, v0

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    move v3, v1

    .line 98
    :goto_1
    if-eqz v3, :cond_4

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    .line 101
    move-result p0

    .line 104
    if-lt p2, p0, :cond_3

    .line 105
    move p0, v0

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move p0, v1

    .line 109
    :goto_2
    if-nez p0, :cond_4

    .line 110
    cmpg-float p0, p1, v2

    .line 112
    if-gez p0, :cond_4

    .line 114
    return v0

    .line 116
    :cond_4
    return v1
    .line 117
.end method

.method public final handleStretchState(FF)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 2
    move-result v0

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 6
    move-result p2

    .line 9
    cmpl-float p2, v0, p2

    .line 10
    const/4 v0, 0x0

    .line 12
    if-lez p2, :cond_5

    .line 13
    iget-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 15
    iget v1, p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mTouchSlop:I

    .line 17
    int-to-float v1, v1

    .line 19
    cmpl-float p1, p1, v1

    .line 20
    if-lez p1, :cond_5

    .line 22
    sget-object p1, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 24
    iget p1, p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBgBlurRadius:I

    .line 26
    iget-boolean p2, p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "handleStretchState mBgBlurRadius="

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p1, " hidePanelPending="

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    const-string p2, "NotificationPanelView"

    .line 52
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 57
    iget-object p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 59
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 64
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 65
    iget-boolean p1, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 67
    iget-boolean p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyCollapsedOnDown:Z

    .line 69
    const/4 v1, 0x1

    .line 71
    if-eqz p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 74
    iget-boolean v2, p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 76
    if-nez v2, :cond_0

    .line 78
    iget-boolean p2, p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 80
    if-nez p2, :cond_0

    .line 82
    move p2, v1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move p2, v0

    .line 86
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyExpandedOnDown:Z

    .line 87
    if-eqz v2, :cond_2

    .line 89
    if-eqz p1, :cond_2

    .line 91
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 93
    iget-object v2, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 95
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 97
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 99
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 101
    if-nez v2, :cond_1

    .line 103
    move v2, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    move v2, v0

    .line 107
    :goto_1
    if-eqz v2, :cond_2

    .line 108
    move v2, v1

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move v2, v0

    .line 112
    :goto_2
    if-nez p2, :cond_3

    .line 113
    if-eqz v2, :cond_5

    .line 115
    :cond_3
    if-eqz p1, :cond_4

    .line 117
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 119
    invoke-virtual {p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelStretching()Z

    .line 121
    move-result p1

    .line 124
    if-nez p1, :cond_4

    .line 125
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 127
    invoke-static {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$cancelFlingSpring(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 129
    :cond_4
    return v1

    .line 132
    :cond_5
    return v0
    .line 133
.end method

.method public final isKeyguardAway()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    if-nez v0, :cond_2

    .line 23
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 25
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 29
    if-eqz p0, :cond_1

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    move v1, v2

    .line 34
    :cond_2
    :goto_1
    return v1
    .line 35
.end method

.method public final onMiuiIntercept(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const-string v1, "NotificationPanelView"

    .line 6
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v0, :cond_3

    .line 10
    sget-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 16
    move-result v0

    .line 19
    iget-object v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 20
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    .line 22
    move-result v4

    .line 25
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 26
    iget-boolean v5, v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 28
    const-string v6, "onMiuiIntercept fullCollapse="

    .line 30
    const-string v7, " fullExp="

    .line 32
    const-string v8, " hidePanelPending="

    .line 34
    invoke-static {v6, v0, v7, v4, v8}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    const-string v4, " "

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 55
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 57
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 63
    iget-boolean v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 65
    if-eqz v0, :cond_0

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    move v0, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    move v0, v3

    .line 72
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyCollapsedOnDown:Z

    .line 73
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 75
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    .line 77
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 83
    iget-boolean v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 85
    if-nez v0, :cond_2

    .line 87
    move v0, v3

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move v0, v2

    .line 91
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isFullyExpandedOnDown:Z

    .line 92
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 94
    iget-boolean v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isNcSwitchingWhenDown:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isKeyguardAway()Z

    .line 100
    move-result v0

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isKeyguardAwayWhenDown:Z

    .line 104
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 106
    iget-boolean v4, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 108
    iput-boolean v4, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPendingWhenIntercept:Z

    .line 110
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMHidePanelPending(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 115
    invoke-static {v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$cancelFlingSpring(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 120
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 122
    move-result v0

    .line 125
    if-nez v0, :cond_e

    .line 126
    const-class v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 128
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 133
    check-cast v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 134
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->maybeDispatchMotionEvent(Landroid/view/MotionEvent;)Z

    .line 136
    move-result v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 142
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 144
    const-string p1, "MiuiNotificationPanelViewController MotionEvent onMiuiIntercept: ModalController"

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 148
    return v3

    .line 151
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isNcSwitchingWhenDown:Z

    .line 152
    if-eqz v0, :cond_5

    .line 154
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 156
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 158
    const-string p1, "MiuiNotificationPanelViewController MotionEvent onMiuiIntercept: isNcSwitchingWhenDown"

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 162
    return v3

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 166
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 168
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 170
    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 172
    iget v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mTrackingPointer:I

    .line 174
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 176
    move-result v4

    .line 179
    if-gez v4, :cond_6

    .line 180
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 182
    move-result v4

    .line 185
    iput v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mTrackingPointer:I

    .line 186
    move v4, v2

    .line 188
    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 189
    move-result v5

    .line 192
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 193
    move-result v4

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 197
    move-result v6

    .line 200
    if-eqz v6, :cond_d

    .line 201
    if-eq v6, v3, :cond_c

    .line 203
    const/4 v7, 0x2

    .line 205
    if-eq v6, v7, :cond_8

    .line 206
    const/4 v1, 0x3

    .line 208
    if-eq v6, v1, :cond_c

    .line 209
    const/4 v1, 0x6

    .line 211
    if-eq v6, v1, :cond_7

    .line 212
    goto/16 :goto_5

    .line 214
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 216
    goto/16 :goto_5

    .line 219
    :cond_8
    iget v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchX:F

    .line 221
    sub-float/2addr v5, v6

    .line 223
    iget v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 224
    sub-float v6, v4, v6

    .line 226
    iget-object v7, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 228
    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->handleStretchState(FF)Z

    .line 230
    move-result v8

    .line 233
    invoke-static {v7, v8}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$setMPanelStretching(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 234
    iget-object v7, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 237
    iget v8, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 239
    invoke-virtual {p0, v6, v5, v8}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->handleCollapseState(FFF)Z

    .line 241
    move-result v8

    .line 244
    iput-boolean v8, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 245
    iget-object v7, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 247
    iget-boolean v8, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 249
    if-nez v8, :cond_9

    .line 251
    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->handleSlideState(FF)Z

    .line 253
    move-result v5

    .line 256
    iput-boolean v5, v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 257
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 259
    invoke-virtual {v5}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelStretching()Z

    .line 261
    move-result v6

    .line 264
    if-nez v6, :cond_b

    .line 265
    iget-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 267
    iget-boolean v7, v6, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 269
    if-nez v7, :cond_b

    .line 271
    iget-boolean v6, v6, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 273
    if-eqz v6, :cond_a

    .line 275
    goto :goto_3

    .line 277
    :cond_a
    move v6, v2

    .line 278
    goto :goto_4

    .line 279
    :cond_b
    :goto_3
    move v6, v3

    .line 280
    :goto_4
    iput-boolean v6, v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 281
    sget-object v5, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 283
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 285
    invoke-virtual {v5}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelStretching()Z

    .line 287
    move-result v5

    .line 290
    iget-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 291
    iget-boolean v6, v6, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    .line 295
    const-string v8, "MNPVC intercept Stretching="

    .line 297
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 302
    const-string v5, " collapsing="

    .line 305
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    move-result-object v5

    .line 316
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    goto :goto_5

    .line 320
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 321
    iput-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 323
    invoke-static {v1, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$setMPanelStretching(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 328
    iput-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 330
    goto :goto_5

    .line 332
    :cond_d
    iput v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchX:F

    .line 333
    iput v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mInitialTouchY:F

    .line 335
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 337
    iput-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 339
    invoke-static {v1, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$setMPanelStretching(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 344
    iput-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 346
    iput-boolean v2, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 348
    :goto_5
    iput v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->mLastTouchY:F

    .line 350
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 352
    iget-boolean v4, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 354
    if-eqz v4, :cond_e

    .line 356
    if-nez v0, :cond_e

    .line 358
    iget-object p0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 360
    const-string p1, "MiuiNotificationPanelViewController MotionEvent onMiuiIntercept: onPanelIntercept"

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 364
    return v3

    .line 367
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 368
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 370
    move-result v0

    .line 373
    if-eqz v0, :cond_1f

    .line 374
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 376
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 378
    iget-boolean v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 380
    if-nez v1, :cond_1f

    .line 382
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardEditLoadingContainer:Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

    .line 384
    if-eqz v0, :cond_f

    .line 386
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 388
    move-result v0

    .line 391
    if-nez v0, :cond_f

    .line 392
    move v0, v3

    .line 394
    goto :goto_6

    .line 395
    :cond_f
    move v0, v2

    .line 396
    :goto_6
    if-eqz v0, :cond_10

    .line 397
    return v3

    .line 399
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 400
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    const-class v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 407
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 409
    move-result-object v1

    .line 412
    check-cast v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 413
    iget-object v4, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 415
    if-eqz v4, :cond_1a

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 419
    move-result v4

    .line 422
    if-nez v4, :cond_16

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 425
    move-result v4

    .line 428
    iput v4, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchDownX:F

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 431
    move-result v4

    .line 434
    iput v4, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchDownY:F

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 437
    move-result v4

    .line 440
    iget-object v5, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 441
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 443
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTop()I

    .line 446
    move-result v5

    .line 449
    iget-object v6, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 450
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 452
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    .line 455
    move-result v6

    .line 458
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 459
    move-result v5

    .line 462
    if-gtz v5, :cond_12

    .line 463
    iget-object v5, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationTextBottom:Landroid/widget/TextView;

    .line 465
    if-eqz v5, :cond_11

    .line 467
    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    .line 469
    move-result-object v5

    .line 472
    goto :goto_7

    .line 473
    :cond_11
    const/4 v5, 0x0

    .line 474
    :goto_7
    check-cast v5, Landroid/view/View;

    .line 475
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 477
    move-result v5

    .line 480
    :cond_12
    int-to-float v5, v5

    .line 481
    cmpl-float v4, v4, v5

    .line 482
    if-ltz v4, :cond_13

    .line 484
    move v4, v3

    .line 486
    goto :goto_8

    .line 487
    :cond_13
    move v4, v2

    .line 488
    :goto_8
    if-eqz v4, :cond_15

    .line 489
    iget-object v4, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 491
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 493
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 496
    move-result v4

    .line 499
    if-nez v4, :cond_15

    .line 500
    iget-object v4, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 502
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 507
    move-result v4

    .line 510
    const/high16 v5, 0x3f800000    # 1.0f

    .line 511
    cmpg-float v4, v4, v5

    .line 513
    if-nez v4, :cond_14

    .line 515
    move v4, v3

    .line 517
    goto :goto_9

    .line 518
    :cond_14
    move v4, v2

    .line 519
    :goto_9
    if-eqz v4, :cond_15

    .line 520
    move v4, v3

    .line 522
    goto :goto_a

    .line 523
    :cond_15
    move v4, v2

    .line 524
    :goto_a
    iput-boolean v4, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchAtKeyguardBottomArea:Z

    .line 525
    :cond_16
    iget-boolean v4, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchAtKeyguardBottomArea:Z

    .line 527
    if-eqz v4, :cond_1a

    .line 529
    iget-object v4, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 531
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 533
    move-result-object v4

    .line 536
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 537
    move-result v4

    .line 540
    iget-boolean v5, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchAtKeyguardBottomArea:Z

    .line 541
    if-eqz v5, :cond_18

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 545
    move-result v5

    .line 548
    iget v6, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchDownX:F

    .line 549
    sub-float/2addr v5, v6

    .line 551
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 552
    move-result v5

    .line 555
    int-to-float v4, v4

    .line 556
    cmpl-float v5, v5, v4

    .line 557
    if-gez v5, :cond_17

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 561
    move-result v5

    .line 564
    iget v1, v1, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchDownY:F

    .line 565
    sub-float/2addr v5, v1

    .line 567
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 568
    move-result v1

    .line 571
    cmpl-float v1, v1, v4

    .line 572
    if-ltz v1, :cond_18

    .line 574
    :cond_17
    move v1, v3

    .line 576
    goto :goto_b

    .line 577
    :cond_18
    move v1, v2

    .line 578
    :goto_b
    if-nez v1, :cond_19

    .line 579
    goto :goto_c

    .line 581
    :cond_19
    move v1, v2

    .line 582
    goto :goto_d

    .line 583
    :cond_1a
    :goto_c
    move v1, v3

    .line 584
    :goto_d
    if-eqz v1, :cond_1d

    .line 585
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 587
    if-eqz v0, :cond_1e

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 591
    move-result v1

    .line 594
    if-nez v1, :cond_1e

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 597
    move-result v1

    .line 600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 601
    move-result v3

    .line 604
    iput v3, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mInitialTouchX:F

    .line 605
    iput v1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mInitialTouchY:F

    .line 607
    iget-object v4, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 609
    if-eqz v4, :cond_1b

    .line 611
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 613
    :cond_1b
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 616
    move-result-object v4

    .line 619
    iput-object v4, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 620
    if-eqz v4, :cond_1c

    .line 622
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 624
    :cond_1c
    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 627
    iget-object p1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 629
    invoke-static {p1, v3, v1}, Lcom/android/keyguard/KeyguardMoveHelper;->isOnIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FF)Z

    .line 631
    move-result p1

    .line 634
    iput-boolean p1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mIsTouchRightIcon:Z

    .line 635
    goto :goto_e

    .line 637
    :cond_1d
    move v2, v3

    .line 638
    :cond_1e
    :goto_e
    if-eqz v2, :cond_1f

    .line 639
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 641
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 643
    const-string p1, "MiuiNotificationPanelViewController MotionEvent onMiuiIntercept: KeyguardIntercept"

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 647
    :cond_1f
    return v2
    .line 650
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result p1

    .line 5
    const-string v0, "NotificationPanelView"

    .line 6
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isKeyguardAway()Z

    .line 11
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isKeyguardAwayWhenDown:Z

    .line 15
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 17
    iget-boolean v2, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPendingWhenIntercept:Z

    .line 19
    if-nez v2, :cond_1

    .line 21
    iget-boolean v2, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 23
    if-eqz v2, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    move v2, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 30
    :goto_1
    iget v3, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBgBlurRadius:I

    .line 31
    iget v4, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMinTouchableRaduis:I

    .line 33
    if-ge v3, v4, :cond_2

    .line 35
    if-eqz v2, :cond_2

    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 39
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 45
    iget-object p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 47
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 52
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 53
    iget-boolean p1, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 55
    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 59
    move-result p1

    .line 62
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 63
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 65
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    .line 67
    move-result v2

    .line 70
    int-to-float v2, v2

    .line 71
    const/high16 v3, 0x40000000    # 2.0f

    .line 72
    div-float/2addr v2, v3

    .line 74
    cmpl-float p1, p1, v2

    .line 75
    if-ltz p1, :cond_2

    .line 77
    sget-object p1, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 79
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 81
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBgBlurRadius:I

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 85
    move-result p1

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v2, "shadeBgBlurWhenDown="

    .line 91
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string p0, " x="

    .line 100
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 105
    const-string p0, ", ignore touch"

    .line 108
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 121
    invoke-virtual {p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 123
    move-result p1

    .line 126
    if-eqz p1, :cond_3

    .line 127
    sget-object p1, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 129
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->isKeyguardAwayWhenDown:Z

    .line 131
    if-eqz p1, :cond_4

    .line 133
    sget-object p0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 135
    const-string p0, "KeyguardAwayWhenDown, ignore touch"

    .line 137
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v1

    .line 142
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    move-result p0

    .line 146
    return p0
    .line 147
.end method

.method public final resetPanelTouchState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 5
    invoke-static {v0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$setMPanelStretching(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 10
    iput-boolean v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMStretchLength(F)V

    .line 17
    return-void
    .line 20
.end method
