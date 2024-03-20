.class public Lcom/android/wm/shell/bubbles/BubbleStackView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field public static final DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

.field public static final ENABLE_FLING_TO_DISMISS_BUBBLE:Z

.field static final FLYOUT_HIDE_AFTER:I = 0x1388

.field public static final FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;


# instance fields
.field public mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

.field public final mAfterFlyoutTransitionSpring:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;

.field public mAnimateInFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

.field public final mAnimateTemporarilyInvisibleImmediate:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

.field public mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

.field public final mAnimatingOutSurfaceAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

.field public mAnimatingOutSurfaceReady:Z

.field public final mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

.field public final mBubbleClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

.field public final mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

.field public final mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

.field public final mBubbleElevation:I

.field public final mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

.field public mBubbleSize:I

.field public mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public final mBubbleTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

.field public final mBubbleTouchPadding:I

.field public mBubblesNavBarGestureTracker:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

.field public final mContainerSwipeListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

.field public final mCornerRadius:I

.field public mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

.field public final mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

.field public mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

.field public mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

.field public final mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

.field public mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public final mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

.field public final mExpandedViewContainer:Landroid/widget/FrameLayout;

.field public final mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

.field public final mExpandedViewPadding:I

.field public mExpandedViewTemporarilyHidden:Z

.field public mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

.field public final mFlyoutClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

.field public final mFlyoutCollapseProperty:Lcom/android/wm/shell/bubbles/BubbleStackView$3;

.field public mFlyoutDragDeltaX:F

.field public final mFlyoutTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

.field public final mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

.field public final mIndividualBubbleMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

.field public mIsBubbleSwitchAnimating:Z

.field public mIsDraggingStack:Z

.field public mIsExpanded:Z

.field public mIsExpansionAnimating:Z

.field public mIsGestureInProgress:Z

.field public mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

.field public mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mManageDontBubbleView:Landroid/view/ViewGroup;

.field public mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

.field public mManageMenu:Landroid/view/ViewGroup;

.field public final mManageMenuScrim:Landroid/view/View;

.field public mManageSettingsIcon:Landroid/widget/ImageView;

.field public mManageSettingsText:Landroid/widget/TextView;

.field public mManageSettingsView:Landroid/view/ViewGroup;

.field public final mManageSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public final mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

.field public mPointerIndexDown:I

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

.field public mRemovingLastBubbleWhileExpanded:Z

.field public final mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public final mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public final mScrim:Landroid/view/View;

.field public mScrimAnimating:Z

.field public mShowedUserEducationInTouchListenerActive:Z

.field public mShowingManage:Z

.field public final mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

.field public mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

.field public final mStackMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

.field public mStackOnLeftOrWillBe:Z

.field public final mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

.field public final mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

.field public final mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

.field public final mSystemGestureExcludeUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda14;

.field public final mSystemGestureExclusionRects:Ljava/util/List;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTemporarilyInvisible:Z

.field public final mTranslateSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public mUnbubbleConversationCallback:Ljava/util/function/Consumer;

.field public mViewBeingDismissed:Landroid/view/View;

.field public mViewUpdatedRequested:Z

.field public final mViewUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$2;


# direct methods
.method public static $r8$lambda$AoIA5H0yVZ7i6_KcZyeSEF7ISXM(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 6
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 8
    if-eqz v2, :cond_3

    .line 10
    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 15
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    move-object v1, v2

    .line 22
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 23
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 25
    new-instance v4, Landroid/content/Intent;

    .line 27
    const-string v5, "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

    .line 29
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 34
    const-string v6, "android.provider.extra.APP_PACKAGE"

    .line 36
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    .line 41
    const/4 v6, -0x1

    .line 43
    if-eq v5, v6, :cond_0

    .line 44
    goto :goto_1

    .line 46
    :cond_0
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 47
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 49
    move-result v5

    .line 52
    invoke-static {v5, v3}, Lcom/android/wm/shell/bubbles/BubbleController;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 53
    move-result-object v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    :try_start_0
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 60
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 65
    invoke-virtual {v3, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 66
    move-result-object v3

    .line 69
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_1

    .line 72
    :catch_0
    move-exception v3

    .line 73
    const-string v5, "Bubble"

    .line 74
    const-string v7, "cannot find uid"

    .line 76
    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_0
    move v5, v6

    .line 81
    :goto_1
    if-eq v5, v6, :cond_2

    .line 82
    const-string v3, "app_uid"

    .line 84
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    :cond_2
    const/high16 v3, 0x8000000

    .line 89
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    const/high16 v3, 0x10000000

    .line 94
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    const/high16 v3, 0x20000000

    .line 99
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 104
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 106
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 109
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 111
    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 113
    const/16 v0, 0x9

    .line 116
    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 118
    :cond_3
    return-void
    .line 121
.end method

.method public static $r8$lambda$s0WCjUx5yAgTCJiiYFN4g6dDZTU(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 2
    if-eqz v0, :cond_8

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 6
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_8

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 16
    instance-of v1, v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 18
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 24
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v3

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    move v0, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v3

    .line 37
    :goto_1
    if-nez v0, :cond_2

    .line 38
    goto :goto_3

    .line 40
    :cond_2
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 47
    move-result-object v0

    .line 50
    const-string v1, "HasSeenBubblesManageOnboarding"

    .line 51
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    move-result-object v0

    .line 64
    const-string v1, "force_show_bubbles_user_education"

    .line 65
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 67
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    move v0, v2

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v0, v3

    .line 75
    :goto_2
    if-eqz v0, :cond_5

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 78
    if-eqz v0, :cond_5

    .line 80
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 82
    move-result-object v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    goto :goto_4

    .line 88
    :cond_5
    :goto_3
    move v2, v3

    .line 89
    :goto_4
    if-nez v2, :cond_6

    .line 90
    goto :goto_5

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 93
    if-nez v0, :cond_7

    .line 95
    new-instance v0, Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 97
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 99
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 101
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/ManageEducationView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 103
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 111
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 113
    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 115
    move-result-object p0

    .line 118
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->show(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    .line 119
    :cond_8
    :goto_5
    return-void
    .line 122
.end method

.method public static -$$Nest$manimateDismissBubble(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewBeingDismissed:Landroid/view/View;

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 16
    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    .line 20
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    .line 25
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleStackView$13;

    .line 27
    const/4 v0, 0x2

    .line 29
    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$13;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 30
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    .line 36
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 38
    :goto_0
    return-void
    .line 41
.end method

.method public static -$$Nest$mresetDismissAnimator(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewBeingDismissed:Landroid/view/View;

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 18
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewBeingDismissed:Landroid/view/View;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 41
    :cond_1
    return-void
    .line 44
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "persist.wm.debug.fling_to_dismiss_bubble"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->ENABLE_FLING_TO_DISMISS_BUBBLE:Z

    .line 9
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 11
    const/high16 v1, 0x43480000    # 200.0f

    .line 13
    const v2, 0x3f666666    # 0.9f

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 18
    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 21
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    .line 23
    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$1;-><init>()V

    .line 25
    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    .line 28
    return-void
    .line 30
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$1;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v3, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 11
    const/high16 v4, 0x43960000    # 300.0f

    .line 13
    const v5, 0x3f666666    # 0.9f

    .line 15
    invoke-direct {v3, v4, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 18
    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 21
    new-instance v3, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 23
    const/high16 v4, 0x44610000    # 900.0f

    .line 25
    const/high16 v5, 0x3f800000    # 1.0f

    .line 27
    invoke-direct {v3, v4, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 29
    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 32
    new-instance v3, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 34
    const/high16 v4, 0x42480000    # 50.0f

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 38
    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTranslateSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 41
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 43
    invoke-direct {v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;-><init>()V

    .line 45
    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 48
    new-instance v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 50
    invoke-direct {v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;-><init>()V

    .line 52
    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 55
    const/4 v3, 0x2

    .line 57
    new-array v4, v3, [F

    .line 58
    fill-array-data v4, :array_0

    .line 60
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 63
    move-result-object v4

    .line 66
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 67
    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 69
    const/16 v6, 0xc

    .line 71
    invoke-direct {v5, v0, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 73
    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 76
    const/4 v5, 0x0

    .line 78
    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 79
    const/4 v5, 0x1

    .line 81
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 82
    const/4 v6, 0x0

    .line 84
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 85
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    .line 87
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    .line 89
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 91
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRemovingLastBubbleWhileExpanded:Z

    .line 93
    new-array v7, v3, [F

    .line 95
    fill-array-data v7, :array_1

    .line 97
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 100
    move-result-object v7

    .line 103
    iput-object v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 104
    const/4 v8, -0x1

    .line 106
    iput v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    .line 107
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 109
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 111
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 113
    new-instance v9, Landroid/graphics/Rect;

    .line 115
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 117
    iput-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    .line 120
    new-instance v9, Landroid/graphics/Rect;

    .line 122
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 124
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 127
    move-result-object v9

    .line 130
    iput-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 131
    new-instance v9, Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    .line 133
    invoke-direct {v9, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$2;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 135
    iput-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    .line 138
    new-instance v9, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda14;

    .line 140
    invoke-direct {v9, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda14;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 142
    iput-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda14;

    .line 145
    new-instance v9, Lcom/android/wm/shell/bubbles/BubbleStackView$3;

    .line 147
    invoke-direct {v9, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$3;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 149
    iput-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutCollapseProperty:Lcom/android/wm/shell/bubbles/BubbleStackView$3;

    .line 152
    new-instance v10, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 154
    invoke-direct {v10, v9, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 156
    iput-object v10, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 159
    const/4 v9, 0x0

    .line 161
    iput v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 162
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;

    .line 164
    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 166
    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutTransitionSpring:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;

    .line 169
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 171
    invoke-direct {v12, v0, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 173
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIndividualBubbleMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 176
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 178
    invoke-direct {v12, v0, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 180
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 183
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    .line 185
    invoke-direct {v12, v0, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$6;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 187
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    .line 190
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 192
    invoke-direct {v12, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 194
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 197
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 199
    invoke-direct {v12, v0, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 201
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mContainerSwipeListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 204
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 206
    invoke-direct {v12, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 208
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 211
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    .line 213
    invoke-direct {v12, v0, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView$6;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 215
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    .line 218
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 220
    invoke-direct {v12, v0, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView$8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 222
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 225
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    .line 227
    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 229
    new-instance v12, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 231
    const v13, 0x44bb8000    # 1500.0f

    .line 233
    const/high16 v14, 0x3f400000    # 0.75f

    .line 236
    invoke-direct {v12, v13, v14}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 238
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 241
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 243
    const/16 v13, 0xd

    .line 245
    invoke-direct {v12, v0, v13}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 247
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 250
    move-object/from16 v12, p6

    .line 252
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 254
    move-object/from16 v12, p2

    .line 256
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 258
    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 262
    move-result-object v13

    .line 265
    const v15, 0x7f07016c    # @dimen/bubble_size '60.0dp'

    .line 266
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 269
    move-result v15

    .line 272
    iput v15, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 273
    const v15, 0x7f070138    # @dimen/bubble_elevation '1.0dp'

    .line 275
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 278
    move-result v9

    .line 281
    iput v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleElevation:I

    .line 282
    const v9, 0x7f070172    # @dimen/bubble_touch_padding '12.0dp'

    .line 284
    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 287
    move-result v9

    .line 290
    iput v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    .line 291
    const v9, 0x7f07013e    # @dimen/bubble_expanded_view_padding '16.0dp'

    .line 293
    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 296
    move-result v9

    .line 299
    iput v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    .line 300
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 302
    move-result v9

    .line 305
    invoke-virtual/range {p2 .. p2}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 306
    move-result-object v12

    .line 309
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 310
    iget-object v13, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 312
    const v15, 0x1010571    # @android:attr/dialogCornerRadius

    .line 314
    filled-new-array {v15}, [I

    .line 317
    move-result-object v15

    .line 320
    invoke-virtual {v13, v15}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 321
    move-result-object v13

    .line 324
    invoke-virtual {v13, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 325
    move-result v15

    .line 328
    iput v15, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mCornerRadius:I

    .line 329
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    new-instance v13, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 334
    const/16 v3, 0xe

    .line 336
    invoke-direct {v13, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 338
    new-instance v3, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 341
    new-instance v14, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda16;

    .line 343
    invoke-direct {v14, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda16;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 345
    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 348
    const/16 v8, 0xf

    .line 350
    invoke-direct {v5, v0, v8}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 352
    move-object/from16 v16, v3

    .line 355
    move-object/from16 v17, p5

    .line 357
    move-object/from16 v18, v14

    .line 359
    move-object/from16 v19, v13

    .line 361
    move-object/from16 v20, v5

    .line 363
    move-object/from16 v21, v12

    .line 365
    invoke-direct/range {v16 .. v21}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;-><init>(Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda16;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 367
    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 370
    new-instance v5, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 372
    invoke-direct {v5, v12, v13, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;-><init>(Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 374
    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 377
    new-instance v5, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 379
    invoke-direct {v5, v1, v12}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 381
    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 384
    if-eqz p4, :cond_0

    .line 386
    move-object/from16 v5, p4

    .line 388
    goto :goto_0

    .line 390
    :cond_0
    sget-object v5, Lcom/android/wm/shell/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    .line 391
    :goto_0
    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    .line 393
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 395
    new-instance v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 398
    invoke-direct {v5, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;-><init>(Landroid/content/Context;)V

    .line 400
    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 403
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 405
    int-to-float v3, v9

    .line 408
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 409
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 412
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 415
    const/4 v9, -0x1

    .line 417
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 418
    invoke-virtual {v0, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    new-instance v8, Landroid/widget/FrameLayout;

    .line 424
    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 426
    iput-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 429
    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 431
    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 434
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 437
    new-instance v1, Landroid/widget/FrameLayout;

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 442
    move-result-object v3

    .line 445
    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 446
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 449
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 451
    const/4 v9, -0x2

    .line 453
    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 454
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 460
    new-instance v3, Landroid/view/SurfaceView;

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 465
    move-result-object v9

    .line 468
    invoke-direct {v3, v9}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 469
    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    .line 472
    const/4 v9, 0x1

    .line 474
    invoke-virtual {v3, v9}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 475
    iget-object v9, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 478
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 480
    move-result-object v9

    .line 483
    invoke-static {v9}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    .line 484
    move-result v9

    .line 487
    if-eqz v9, :cond_1

    .line 488
    int-to-float v9, v15

    .line 490
    goto :goto_1

    .line 491
    :cond_1
    const/4 v9, 0x0

    .line 492
    :goto_1
    invoke-virtual {v3, v9}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    .line 493
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 496
    invoke-direct {v9, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 498
    invoke-virtual {v3, v9}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 504
    move-result-object v9

    .line 507
    new-instance v13, Lcom/android/wm/shell/bubbles/BubbleStackView$12;

    .line 508
    invoke-direct {v13, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$12;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 510
    invoke-interface {v9, v13}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 513
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 516
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 519
    move-result v3

    .line 522
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 523
    move-result v9

    .line 526
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 527
    move-result v13

    .line 530
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 531
    move-result v8

    .line 534
    invoke-virtual {v1, v3, v9, v13, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpManageMenu()V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpFlyout()V

    .line 541
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 544
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 546
    const/high16 v3, 0x43480000    # 200.0f

    .line 549
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 551
    move-result-object v1

    .line 554
    const/high16 v3, 0x3f400000    # 0.75f

    .line 555
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 557
    move-result-object v1

    .line 560
    iput-object v1, v10, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 561
    invoke-virtual {v10, v11}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpDismissView()V

    .line 566
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 569
    const/4 v1, 0x1

    .line 572
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 573
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 576
    iget-object v1, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 579
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 581
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 583
    move-result-object v2

    .line 586
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 587
    move-result v3

    .line 590
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 591
    iget v9, v12, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 593
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 595
    invoke-virtual {v5, v2, v3, v8, v6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflow()V

    .line 601
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 604
    move-result-object v1

    .line 607
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    .line 608
    const/4 v3, 0x5

    .line 610
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 611
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    new-instance v1, Landroid/view/View;

    .line 617
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 619
    move-result-object v2

    .line 622
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 623
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    .line 626
    const/4 v2, 0x2

    .line 628
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 629
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 634
    move-result-object v3

    .line 637
    const v5, 0x1060029    # @android:color/system_neutral1_1000

    .line 638
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 641
    move-result v3

    .line 644
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 645
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 651
    const/4 v2, 0x0

    .line 654
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 655
    new-instance v1, Landroid/view/View;

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 660
    move-result-object v2

    .line 663
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 664
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenuScrim:Landroid/view/View;

    .line 667
    const/4 v2, 0x2

    .line 669
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 670
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 675
    move-result-object v3

    .line 678
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 679
    move-result v3

    .line 682
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 683
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 686
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 689
    const/4 v3, -0x1

    .line 691
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 692
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    const/4 v2, 0x0

    .line 698
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 699
    const/4 v2, 0x4

    .line 702
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 703
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    .line 706
    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 708
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 713
    move-result-object v1

    .line 716
    const v3, 0x7f0702cc    # @dimen/dismiss_circle_size '96.0dp'

    .line 717
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 720
    move-result v1

    .line 723
    int-to-float v1, v1

    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 725
    move-result-object v3

    .line 728
    const v5, 0x7f0702cd    # @dimen/dismiss_circle_small '60.0dp'

    .line 729
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 732
    move-result v3

    .line 735
    int-to-float v3, v3

    .line 736
    div-float/2addr v3, v1

    .line 737
    const/4 v1, 0x2

    .line 738
    new-array v1, v1, [F

    .line 739
    fill-array-data v1, :array_2

    .line 741
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 744
    move-result-object v1

    .line 747
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    .line 748
    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda18;

    .line 750
    invoke-direct {v5, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda18;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;F)V

    .line 752
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 755
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    .line 758
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 760
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 766
    move-result-object v1

    .line 769
    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    .line 770
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 772
    move-result-object v1

    .line 775
    const-wide/16 v8, 0x140

    .line 776
    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 778
    const-wide/16 v8, 0x96

    .line 781
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 783
    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 786
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$13;

    .line 789
    invoke-direct {v1, v0, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$13;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 791
    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 794
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda13;

    .line 797
    invoke-direct {v1, v0, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 799
    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 802
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 805
    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 808
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda13;

    .line 811
    const/4 v2, 0x1

    .line 813
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 814
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 817
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$13;

    .line 820
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$13;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 822
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 825
    return-void

    .line 828
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getVisibleManageMenuHeight()F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 24
    move-result v2

    .line 27
    int-to-float v2, v2

    .line 28
    add-float/2addr v0, v2

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    return v0
    .line 33
.end method


# virtual methods
.method public final animateFlyoutCollapsed(FZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 8
    iget-object v1, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 12
    if-eqz v2, :cond_0

    .line 14
    const v2, 0x44bb8000    # 1500.0f

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const/high16 v2, 0x43480000    # 200.0f

    .line 20
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 25
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 27
    iput v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 29
    const/4 v2, 0x1

    .line 31
    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 32
    iput p1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 34
    if-eqz p2, :cond_2

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 40
    move-result p0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    neg-int p0, p0

    .line 46
    :cond_1
    int-to-float p0, p0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    :goto_1
    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 50
    return-void
    .line 53
.end method

.method public animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    .line 2
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 4
    sget-object v2, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    .line 6
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showFlyout()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 28
    if-nez v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 32
    if-nez v0, :cond_1

    .line 34
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 36
    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 40
    if-nez v0, :cond_1

    .line 42
    if-nez v1, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    move v0, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 51
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 53
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    .line 59
    :cond_2
    move v0, v4

    .line 62
    :goto_1
    if-nez v0, :cond_3

    .line 63
    return-void

    .line 65
    :cond_3
    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 67
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 69
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateInFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    .line 76
    if-nez v0, :cond_4

    .line 78
    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->run()V

    .line 81
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    .line 85
    :goto_2
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    .line 87
    invoke-direct {v0, p0, p1, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/lang/Object;I)V

    .line 89
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    .line 92
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 94
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    .line 96
    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 101
    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    .line 104
    :cond_5
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    .line 107
    invoke-direct {v0, p0, p1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/lang/Object;I)V

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 112
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 115
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 119
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 122
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 124
    const-wide/16 v2, 0x1388

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    const/16 v0, 0x10

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 133
    return-void
    .line 136
.end method

.method public final dismissBubbleIfExists(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 4
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 16
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 21
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 23
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    move-result v0

    .line 30
    if-le v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 43
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p0, v1, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    .line 49
    :cond_1
    return-void
    .line 52
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 9
    move-result v0

    .line 12
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    .line 13
    if-eq v0, v2, :cond_0

    .line 15
    return v1

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    move-result v0

    .line 21
    const/4 v2, 0x3

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 33
    move-result v0

    .line 36
    if-eq v0, v3, :cond_2

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 39
    move-result v0

    .line 42
    if-ne v0, v2, :cond_3

    .line 43
    :cond_2
    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    .line 46
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 54
    if-nez v4, :cond_4

    .line 56
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 58
    if-eqz v4, :cond_4

    .line 60
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 62
    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 64
    move v0, v3

    .line 67
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 68
    move-result v4

    .line 71
    if-eq v4, v3, :cond_5

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 74
    move-result p1

    .line 77
    if-eq p1, v2, :cond_5

    .line 78
    move v1, v3

    .line 80
    :cond_5
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 81
    return v0
    .line 83
.end method

.method public getBubbleCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 4
    move-result p0

    .line 7
    add-int/lit8 p0, p0, -0x1

    .line 8
    return p0
    .line 10
.end method

.method public final getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 6
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getIconView$1()Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public getBubblesOnScreen()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 8
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 14
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 19
    instance-of v3, v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 20
    if-eqz v3, :cond_0

    .line 22
    check-cast v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 24
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getKey()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 30
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
    .line 42
.end method

.method public getExpandedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 2
    return-object p0
    .line 4
.end method

.method public getNormalizedXPosition()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    .line 12
    move-result-object p0

    .line 15
    iget p0, p0, Landroid/graphics/PointF;->x:F

    .line 16
    int-to-float v0, v0

    .line 18
    div-float/2addr p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 22
    float-to-double v1, p0

    .line 24
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 25
    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 28
    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 30
    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    .line 37
    move-result p0

    .line 40
    return p0
    .line 41
.end method

.method public getNormalizedYPosition()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    .line 12
    move-result-object p0

    .line 15
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 16
    int-to-float v0, v0

    .line 18
    div-float/2addr p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 22
    float-to-double v1, p0

    .line 24
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 25
    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 28
    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 30
    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    .line 37
    move-result p0

    .line 40
    return p0
    .line 41
.end method

.method public getStackPosition()Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 4
    return-object p0
    .line 6
.end method

.method public getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 4
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 6
    move-result v1

    .line 9
    iput v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->numberOfBubbles:I

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    .line 16
    move-result v1

    .line 19
    iput v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->selectedIndex:I

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 22
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 24
    iput-boolean p0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->onLeft:Z

    .line 26
    return-object v0
    .line 28
.end method

.method public final hideCurrentInputMethod()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    .line 5
    iput v1, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeHeight:I

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 14
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->hideCurrentInputMethodForBubbles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 21
    :goto_0
    return-void
    .line 24
.end method

.method public final hideFlyoutImmediate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateInFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    .line 9
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->run()V

    .line 15
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateInFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 40
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    .line 43
    :cond_1
    const/16 v0, 0x8

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 47
    return-void
    .line 50
.end method

.method public isManageEduVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 6
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public isManageMenuDontBubbleVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageDontBubbleView:Landroid/view/ViewGroup;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 6
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public isManageMenuSettingsVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsView:Landroid/view/ViewGroup;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 6
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public isStackEduVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 6
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V
    .locals 13

    .line 1
    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "null"

    .line 14
    :goto_0
    move-object v2, v0

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 17
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 19
    move-result v6

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    .line 23
    move-result v5

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getNormalizedXPosition()F

    .line 27
    move-result v8

    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getNormalizedYPosition()F

    .line 31
    move-result v9

    .line 34
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    .line 35
    if-nez p1, :cond_1

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const/16 v1, 0x95

    .line 42
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    move v7, p2

    .line 50
    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)V

    .line 51
    goto :goto_1

    .line 54
    :cond_1
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 58
    const-string v3, "Overflow"

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    const/4 p1, 0x3

    .line 67
    if-ne p2, p1, :cond_3

    .line 68
    iget p1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mCurrentUserId:I

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    sget-object p2, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_SELECTED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 77
    invoke-interface {p0, p2, p1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 79
    goto :goto_1

    .line 82
    :cond_2
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    const/16 v1, 0x95

    .line 88
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    .line 90
    iget v4, p1, Lcom/android/wm/shell/bubbles/Bubble;->mNotificationId:I

    .line 92
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 94
    move-result v10

    .line 97
    const/4 v11, 0x0

    .line 98
    const/4 v12, 0x0

    .line 99
    move v7, p2

    .line 100
    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)V

    .line 101
    :cond_3
    :goto_1
    return-void
    .line 104
.end method

.method public final maybeShowStackEdu()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->shouldShowStackEdu()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 13
    if-nez v0, :cond_1

    .line 15
    new-instance v0, Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 17
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/android/wm/shell/bubbles/StackEducationView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleController;)V

    .line 25
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 33
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 38
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 40
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    .line 42
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 51
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    .line 53
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->show(Landroid/graphics/PointF;)Z

    .line 57
    move-result p0

    .line 60
    return p0

    .line 61
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 62
    return p0
    .line 63
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda14;

    .line 21
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 23
    return-void
    .line 26
.end method

.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 20
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 24
    move-result v3

    .line 27
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    goto :goto_2

    .line 31
    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 32
    if-nez v1, :cond_3

    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 36
    move-result v1

    .line 39
    if-gtz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 42
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    .line 44
    if-eqz v3, :cond_1

    .line 46
    iget-boolean v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 48
    if-eqz v1, :cond_1

    .line 50
    const/4 v1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v2

    .line 54
    :goto_0
    if-eqz v1, :cond_5

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 63
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 66
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    .line 68
    sub-int/2addr v1, v2

    .line 70
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 71
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 73
    sub-int/2addr v1, v2

    .line 75
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 76
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 78
    add-int/2addr v1, v2

    .line 80
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 81
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 83
    add-int/2addr v1, v2

    .line 85
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 86
    goto :goto_1

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 89
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 91
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 94
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 96
    iget-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    .line 98
    if-eqz v4, :cond_4

    .line 100
    iget v2, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeHeight:I

    .line 102
    :cond_4
    sub-int/2addr v1, v2

    .line 104
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 105
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 107
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 109
    move-result v1

    .line 112
    if-nez v1, :cond_6

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    .line 115
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 117
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 120
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 125
    :cond_6
    :goto_2
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 128
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    .line 130
    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 132
    return-void
    .line 135
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda14;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 30
    if-eqz p0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 34
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->cleanUpExpandedState()V

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 42
    :cond_1
    return-void
    .line 44
.end method

.method public final onDisplaySizeChanged()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpFlyout()V

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpDismissView()V

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateUserEdu()V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 14
    iget v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 16
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 20
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 40
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 42
    if-nez v2, :cond_1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    const-string v3, "Display size changed. Icon null: "

    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 59
    const-string v2, "Bubbles"

    .line 60
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 68
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 76
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateDimensions()V

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 84
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 86
    move-result-object v0

    .line 89
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 92
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 100
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateResources()V

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 105
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 107
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v1

    .line 118
    const v2, 0x7f070166    # @dimen/bubble_padding_top '16.0dp'

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    move-result v1

    .line 125
    iput v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 128
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/DismissView;->updateResources()V

    .line 130
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 133
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 135
    mul-int/lit8 v1, v1, 0x2

    .line 137
    iput v1, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->magneticFieldRadiusPx:I

    .line 139
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 141
    move-result v0

    .line 144
    if-nez v0, :cond_6

    .line 145
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 147
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 149
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    .line 151
    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 155
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 157
    move-result v3

    .line 160
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 161
    move-result-object v2

    .line 164
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 165
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 167
    move-result v4

    .line 170
    const/high16 v5, 0x40000000    # 2.0f

    .line 171
    div-float/2addr v4, v5

    .line 173
    cmpg-float v3, v3, v4

    .line 174
    if-gez v3, :cond_4

    .line 176
    const/4 v3, 0x1

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    const/4 v3, 0x0

    .line 180
    :goto_1
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 181
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 183
    sub-float/2addr v1, v4

    .line 185
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 186
    move-result v2

    .line 189
    div-float/2addr v1, v2

    .line 190
    const/high16 v2, 0x3f800000    # 1.0f

    .line 191
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 193
    move-result v1

    .line 196
    const/4 v2, 0x0

    .line 197
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 198
    move-result v1

    .line 201
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 202
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getBubbleCount()I

    .line 204
    move-result v4

    .line 207
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 208
    move-result-object v2

    .line 211
    new-instance v4, Landroid/graphics/PointF;

    .line 212
    if-eqz v3, :cond_5

    .line 214
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 216
    goto :goto_2

    .line 218
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    .line 219
    :goto_2
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 221
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 223
    move-result v2

    .line 226
    mul-float/2addr v2, v1

    .line 227
    add-float/2addr v2, v5

    .line 228
    invoke-direct {v4, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 229
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 232
    :cond_6
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 235
    if-eqz v0, :cond_7

    .line 237
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    .line 239
    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpManageMenu()V

    .line 242
    return-void
    .line 245
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setupLocalMenu(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5
    return-void
    .line 8
.end method

.method public final onOrientationChanged()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 12
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 16
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    .line 30
    return-void
    .line 33
.end method

.method public final performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    .line 2
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    return v0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 12
    move-result v1

    .line 15
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 16
    move-result-object p2

    .line 19
    const/high16 v1, 0x100000

    .line 20
    if-ne p1, v1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 24
    const/4 p2, 0x6

    .line 26
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissAll(I)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p1

    .line 33
    const p2, 0x7f130051    # @string/accessibility_bubble_dismissed 'Bubble dismissed.'

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 41
    return v0

    .line 44
    :cond_1
    const/high16 v1, 0x80000

    .line 45
    const/4 v2, 0x0

    .line 47
    if-ne p1, v1, :cond_2

    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 52
    return v0

    .line 55
    :cond_2
    const/high16 v1, 0x40000

    .line 56
    if-ne p1, v1, :cond_3

    .line 58
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 62
    return v0

    .line 65
    :cond_3
    const v1, 0x7f0a0081    # @id/action_move_top_left

    .line 66
    const/high16 v3, 0x442f0000    # 700.0f

    .line 69
    if-ne p1, v1, :cond_4

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 73
    iget p1, p2, Landroid/graphics/RectF;->left:F

    .line 75
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 77
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    .line 79
    return v0

    .line 82
    :cond_4
    const v1, 0x7f0a0082    # @id/action_move_top_right

    .line 83
    if-ne p1, v1, :cond_5

    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 88
    iget p1, p2, Landroid/graphics/RectF;->right:F

    .line 90
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 92
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    .line 94
    return v0

    .line 97
    :cond_5
    const v1, 0x7f0a0078    # @id/action_move_bottom_left

    .line 98
    if-ne p1, v1, :cond_6

    .line 101
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 103
    iget p1, p2, Landroid/graphics/RectF;->left:F

    .line 105
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 107
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    .line 109
    return v0

    .line 112
    :cond_6
    const v1, 0x7f0a0079    # @id/action_move_bottom_right

    .line 113
    if-ne p1, v1, :cond_7

    .line 116
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 118
    iget p1, p2, Landroid/graphics/RectF;->right:F

    .line 120
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 122
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    .line 124
    return v0

    .line 127
    :cond_7
    return v2
    .line 128
.end method

.method public final releaseAnimatingOutBubbleBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 16
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final requestUpdate()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 23
    :cond_1
    :goto_0
    return-void
    .line 26
.end method

.method public final screenshotAnimatingOutBubbleIntoSurface(Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 2
    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 6
    if-eqz v0, :cond_5

    .line 8
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 10
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    goto/16 :goto_3

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 18
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 20
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->releaseAnimatingOutBubbleBuffer()V

    .line 28
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->snapshotActivitySurface()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 31
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "Bubbles"

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 49
    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 53
    move-result-object v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    goto/16 :goto_2

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 61
    sget-object v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 63
    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 65
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 72
    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 76
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 81
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 84
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 86
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 92
    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 96
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 98
    move-result v0

    .line 101
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 102
    iget v2, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    .line 104
    iget v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerOverlap:I

    .line 106
    sub-int/2addr v2, v1

    .line 108
    add-int/2addr v2, v0

    .line 109
    int-to-float v0, v2

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 112
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 114
    move-result v0

    .line 117
    int-to-float v0, v0

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 121
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 124
    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 127
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 130
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 132
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskViewLocationOnScreen()[I

    .line 136
    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    .line 140
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLocationOnScreen()[I

    .line 142
    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 146
    const/4 v3, 0x1

    .line 148
    aget v0, v0, v3

    .line 149
    aget v1, v1, v3

    .line 151
    sub-int/2addr v0, v1

    .line 153
    int-to-float v0, v0

    .line 154
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 155
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    .line 158
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 164
    invoke-virtual {v1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 166
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 170
    move-result v1

    .line 173
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    .line 176
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 178
    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 182
    invoke-virtual {v1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 184
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 188
    move-result v1

    .line 191
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 192
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    .line 194
    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 196
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    .line 199
    const/4 v1, 0x0

    .line 201
    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/function/Consumer;I)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void

    .line 208
    :cond_4
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 209
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    .line 211
    return-void

    .line 214
    :cond_5
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 215
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    .line 217
    return-void
    .line 220
.end method

.method public setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    .line 2
    return-void
    .line 4
.end method

.method public setExpanded(Z)V
    .locals 13

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->releaseAnimatingOutBubbleBuffer()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 7
    if-ne p1, v0, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideCurrentInputMethod()V

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 15
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v2, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;

    .line 22
    iget-object v3, v1, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysUiState:Lcom/android/systemui/model/SysUiState;

    .line 24
    const/4 v4, 0x0

    .line 26
    invoke-direct {v2, v1, v3, p1, v4}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Lcom/android/systemui/model/SysUiState;ZI)V

    .line 27
    iget-object p1, v1, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 30
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    const/4 p1, 0x1

    .line 35
    const/4 v1, 0x3

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v5, 0x4

    .line 39
    if-eqz v0, :cond_a

    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->stopMonitoringSwipeUpGestureInternal()V

    .line 42
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 45
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

    .line 47
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 49
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 54
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isManageEduVisible()Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 64
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->hide()V

    .line 66
    :cond_2
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 69
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 71
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRemovingLastBubbleWhileExpanded:Z

    .line 73
    if-nez v0, :cond_3

    .line 75
    invoke-virtual {p0, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 80
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 82
    if-nez v3, :cond_4

    .line 84
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    .line 87
    move-result-object v3

    .line 90
    new-array v6, v4, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 91
    invoke-interface {v3, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    move-result-object v3

    .line 96
    check-cast v3, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 97
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimationsOfProperties([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 102
    sget-object v3, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 104
    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 106
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 115
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 123
    iput-boolean p1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    .line 125
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 127
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 129
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 132
    invoke-direct {v1, p0, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 134
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 137
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 139
    if-eqz v6, :cond_8

    .line 141
    invoke-virtual {v6, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    .line 143
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 146
    if-eqz v6, :cond_5

    .line 148
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 150
    :cond_5
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 153
    new-instance v7, Ljava/util/ArrayList;

    .line 155
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget v8, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    .line 160
    float-to-int v8, v8

    .line 162
    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    .line 163
    move-result v6

    .line 166
    filled-new-array {v8, v6}, [I

    .line 167
    move-result-object v6

    .line 170
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 171
    move-result-object v6

    .line 174
    sget-object v8, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 175
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    const-wide/16 v8, 0xfa

    .line 180
    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 182
    new-instance v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda1;

    .line 185
    invoke-direct {v8, v3}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;)V

    .line 187
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 190
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 196
    sget-object v8, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->MANAGE_BUTTON_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;

    .line 198
    new-array v9, p1, [F

    .line 200
    aput v2, v9, v4

    .line 202
    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 204
    move-result-object v6

    .line 207
    const-wide/16 v8, 0x4e

    .line 208
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 210
    sget-object v10, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 213
    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 221
    sget-object v11, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->CONTENT_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;

    .line 223
    new-array v12, p1, [F

    .line 225
    aput v2, v12, v4

    .line 227
    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 229
    move-result-object v6

    .line 232
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    const-wide/16 v11, 0x5d

    .line 239
    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 241
    new-array v11, p1, [Z

    .line 244
    aput-boolean v4, v11, v4

    .line 246
    new-instance v12, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;

    .line 248
    invoke-direct {v12, v11, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;-><init>([ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;)V

    .line 250
    invoke-virtual {v6, v12}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 259
    sget-object v6, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->BACKGROUND_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;

    .line 261
    new-array p1, p1, [F

    .line 263
    aput v2, p1, v4

    .line 265
    invoke-static {v0, v6, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 267
    move-result-object p1

    .line 270
    invoke-virtual {p1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 271
    invoke-virtual {p1, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    const-wide/16 v8, 0xac

    .line 277
    invoke-virtual {p1, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 279
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 285
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 287
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;

    .line 290
    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;)V

    .line 292
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 298
    iput-object p1, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 301
    iget p1, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    .line 303
    iget v0, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mMinFlingVelocity:I

    .line 305
    int-to-float v0, v0

    .line 307
    cmpl-float p1, p1, v0

    .line 308
    if-ltz p1, :cond_7

    .line 310
    iget-object p1, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 312
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    .line 314
    move-result p1

    .line 317
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 318
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 320
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 323
    iget v8, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    .line 325
    int-to-float v9, p1

    .line 327
    iget v10, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    .line 328
    sub-float v11, v9, v8

    .line 330
    move-object v7, v0

    .line 332
    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 333
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 336
    move-result-wide v1

    .line 339
    long-to-float p1, v1

    .line 340
    const/high16 v1, 0x437a0000    # 250.0f

    .line 341
    div-float/2addr p1, v1

    .line 343
    iget-object v1, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 344
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    .line 346
    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 350
    move-result-object v1

    .line 353
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    move-result v2

    .line 357
    if-eqz v2, :cond_6

    .line 358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    move-result-object v2

    .line 363
    check-cast v2, Landroid/animation/Animator;

    .line 364
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    .line 366
    move-result-wide v6

    .line 369
    long-to-float v6, v6

    .line 370
    mul-float/2addr v6, p1

    .line 371
    float-to-long v6, v6

    .line 372
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 373
    invoke-virtual {v2}, Landroid/animation/Animator;->getDuration()J

    .line 376
    move-result-wide v6

    .line 379
    long-to-float v6, v6

    .line 380
    mul-float/2addr v6, p1

    .line 381
    float-to-long v6, v6

    .line 382
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 383
    goto :goto_1

    .line 386
    :cond_6
    iget-object p1, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 387
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 389
    move-result-object v0

    .line 392
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 393
    :cond_7
    iget-object p1, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 396
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 398
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 401
    if-eqz p1, :cond_9

    .line 403
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 405
    move-result-object p1

    .line 408
    if-eqz p1, :cond_9

    .line 409
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 411
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 413
    move-result-object p1

    .line 416
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 417
    :cond_9
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 420
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 423
    invoke-virtual {p0, p1, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 425
    goto/16 :goto_9

    .line 428
    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 430
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

    .line 432
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 434
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 439
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 441
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 443
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 445
    move-result v0

    .line 448
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 449
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 451
    move-result v6

    .line 454
    if-eqz v6, :cond_b

    .line 455
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 457
    invoke-virtual {v6, p1}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    .line 459
    :cond_b
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 462
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    .line 464
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedBubble()V

    .line 467
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    .line 470
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateZOrder()V

    .line 476
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadges(Z)V

    .line 479
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 482
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 484
    invoke-virtual {v3, v6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    .line 489
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition(Z)V

    .line 492
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 495
    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 497
    const/4 v6, 0x5

    .line 499
    invoke-direct {v4, p0, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 500
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    .line 503
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 506
    if-eqz v3, :cond_c

    .line 508
    const-string v4, "Overflow"

    .line 510
    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 512
    move-result-object v3

    .line 515
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    move-result v3

    .line 519
    if-eqz v3, :cond_c

    .line 520
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 522
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 524
    move-result-object v3

    .line 527
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 528
    move-result v3

    .line 531
    goto :goto_2

    .line 532
    :cond_c
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 533
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    .line 535
    move-result v3

    .line 538
    :goto_2
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 539
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 541
    move-result-object v6

    .line 544
    invoke-virtual {v4, v3, v6}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    .line 545
    move-result-object v3

    .line 548
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 549
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 551
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 553
    move-result v7

    .line 556
    if-eqz v7, :cond_d

    .line 557
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 559
    goto :goto_3

    .line 561
    :cond_d
    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 562
    :goto_3
    invoke-virtual {v4, v6, v7}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY(Lcom/android/wm/shell/bubbles/BubbleViewProvider;F)F

    .line 564
    move-result v4

    .line 567
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 568
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 570
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 573
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 575
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 578
    const/high16 v6, 0x3f800000    # 1.0f

    .line 580
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 582
    if-eqz v0, :cond_e

    .line 585
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 587
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 589
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 591
    goto :goto_4

    .line 593
    :cond_e
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 594
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 596
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 598
    :goto_4
    if-eqz v0, :cond_f

    .line 600
    iget v6, v3, Landroid/graphics/PointF;->y:F

    .line 602
    goto :goto_5

    .line 604
    :cond_f
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 605
    :goto_5
    sub-float v4, v6, v4

    .line 607
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 609
    move-result v4

    .line 612
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 613
    move-result v7

    .line 616
    if-lez v7, :cond_10

    .line 617
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 619
    move-result v7

    .line 622
    int-to-float v7, v7

    .line 623
    const/high16 v8, 0x41f00000    # 30.0f

    .line 624
    const v9, 0x43520001    # 210.00002f

    .line 626
    invoke-static {v4, v7, v8, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 629
    move-result v4

    .line 632
    float-to-long v7, v4

    .line 633
    goto :goto_6

    .line 634
    :cond_10
    const-wide/16 v7, 0x0

    .line 635
    :goto_6
    const/high16 v4, 0x40000000    # 2.0f

    .line 637
    const v9, 0x3f666666    # 0.9f

    .line 639
    if-eqz v0, :cond_12

    .line 642
    iget-boolean v10, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 644
    if-eqz v10, :cond_11

    .line 646
    iget v10, v3, Landroid/graphics/PointF;->x:F

    .line 648
    iget v11, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 650
    int-to-float v11, v11

    .line 652
    add-float/2addr v10, v11

    .line 653
    iget v11, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    .line 654
    int-to-float v11, v11

    .line 656
    add-float/2addr v10, v11

    .line 657
    goto :goto_7

    .line 658
    :cond_11
    iget v10, v3, Landroid/graphics/PointF;->x:F

    .line 659
    iget v11, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    .line 661
    int-to-float v11, v11

    .line 663
    sub-float/2addr v10, v11

    .line 664
    :goto_7
    iget-object v11, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 665
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 667
    iget v12, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 669
    int-to-float v12, v12

    .line 671
    div-float/2addr v12, v4

    .line 672
    add-float/2addr v12, v3

    .line 673
    invoke-virtual {v11, v9, v9, v10, v12}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    .line 674
    goto :goto_8

    .line 677
    :cond_12
    iget-object v10, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 678
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 680
    iget v12, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 682
    int-to-float v12, v12

    .line 684
    div-float v4, v12, v4

    .line 685
    add-float/2addr v4, v11

    .line 687
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 688
    add-float/2addr v3, v12

    .line 690
    iget v11, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    .line 691
    int-to-float v11, v11

    .line 693
    add-float/2addr v3, v11

    .line 694
    invoke-virtual {v10, v9, v9, v4, v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    .line 695
    :goto_8
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 698
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 700
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 702
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 705
    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 707
    move-result-object v3

    .line 710
    if-eqz v3, :cond_13

    .line 711
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 713
    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 715
    move-result-object v3

    .line 718
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentAlpha(F)V

    .line 719
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 722
    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 724
    move-result-object v3

    .line 727
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setBackgroundAlpha(F)V

    .line 728
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 731
    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 733
    move-result-object v2

    .line 736
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    .line 737
    :cond_13
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

    .line 740
    invoke-direct {v2, p0, v0, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;ZF)V

    .line 742
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

    .line 745
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 747
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 749
    invoke-virtual {v0, v2, v7, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 751
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 754
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 756
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 759
    const/16 v1, 0xf

    .line 761
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 763
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 766
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;

    .line 768
    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 770
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 773
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;

    .line 775
    invoke-direct {v3, v0, v1, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/lang/Object;I)V

    .line 777
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    new-instance p1, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;

    .line 783
    invoke-direct {p1, v2, v3, v5}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;I)V

    .line 785
    iget-object v0, v2, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 788
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 790
    :goto_9
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 793
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 795
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    .line 797
    if-eqz p0, :cond_14

    .line 799
    if-eqz p1, :cond_14

    .line 801
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 803
    move-result-object p1

    .line 806
    invoke-interface {p0, p1, v0}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;->onBubbleExpandChanged(Ljava/lang/String;Z)V

    .line 807
    :cond_14
    return-void
    .line 810
.end method

.method public final setFlyoutStateForDragLength(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 4
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 11
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 13
    move-result v0

    .line 16
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 17
    if-eqz v0, :cond_1

    .line 19
    neg-float p1, p1

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 22
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 24
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    div-float/2addr p1, v1

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 30
    const/4 v2, 0x0

    .line 32
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 33
    move-result v3

    .line 36
    const/high16 v4, 0x3f800000    # 1.0f

    .line 37
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 39
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    .line 43
    cmpg-float v1, p1, v2

    .line 46
    if-ltz v1, :cond_2

    .line 48
    cmpl-float v3, p1, v4

    .line 50
    if-lez v3, :cond_a

    .line 52
    :cond_2
    cmpl-float v2, p1, v4

    .line 54
    const/4 v3, 0x0

    .line 56
    const/4 v5, 0x1

    .line 57
    if-lez v2, :cond_3

    .line 58
    move v6, v5

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v6, v3

    .line 62
    :goto_0
    if-eqz v0, :cond_4

    .line 63
    if-gtz v2, :cond_5

    .line 65
    :cond_4
    if-nez v0, :cond_6

    .line 67
    if-gez v1, :cond_6

    .line 69
    :cond_5
    move v3, v5

    .line 71
    :cond_6
    if-eqz v6, :cond_7

    .line 72
    sub-float/2addr p1, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_7
    const/high16 v0, -0x40800000    # -1.0f

    .line 76
    mul-float/2addr p1, v0

    .line 78
    :goto_1
    if-eqz v3, :cond_8

    .line 79
    const/4 v0, -0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_8
    move v0, v5

    .line 83
    :goto_2
    int-to-float v0, v0

    .line 84
    mul-float/2addr p1, v0

    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 86
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 88
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    if-eqz v6, :cond_9

    .line 93
    const/4 v5, 0x2

    .line 95
    :cond_9
    int-to-float v1, v5

    .line 96
    const/high16 v2, 0x41000000    # 8.0f

    .line 97
    div-float/2addr v2, v1

    .line 99
    div-float/2addr v0, v2

    .line 100
    mul-float v2, v0, p1

    .line 101
    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 103
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->getRestingTranslationX()F

    .line 105
    move-result p1

    .line 108
    add-float/2addr p1, v2

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 110
    return-void
    .line 113
.end method

.method public setImeVisible(Z)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 15
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;

    .line 17
    invoke-direct {v2, p0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;ZI)V

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    .line 22
    return-void

    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 26
    if-nez v0, :cond_6

    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 30
    move-result v0

    .line 33
    if-lez v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 36
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 38
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getBubbleCount()I

    .line 40
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 44
    move-result-object v2

    .line 47
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 48
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 50
    const v3, -0x7fffffff

    .line 52
    if-eqz p1, :cond_2

    .line 55
    iget v4, v8, Landroid/graphics/PointF;->y:F

    .line 57
    cmpl-float v5, v4, v2

    .line 59
    if-lez v5, :cond_3

    .line 61
    iget v5, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 63
    cmpl-float v5, v5, v3

    .line 65
    if-nez v5, :cond_3

    .line 67
    iput v4, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    iget v2, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 72
    cmpl-float v4, v2, v3

    .line 74
    if-eqz v4, :cond_3

    .line 76
    iput v3, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 78
    :goto_0
    move v9, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v9, v3

    .line 82
    :goto_1
    cmpl-float v10, v9, v3

    .line 83
    sget-object v11, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 85
    if-eqz v10, :cond_4

    .line 87
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    .line 89
    move-result-object v2

    .line 92
    const/high16 v3, 0x43480000    # 200.0f

    .line 93
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 95
    move-result-object v4

    .line 98
    const/4 v5, 0x0

    .line 99
    new-array v7, v1, [Ljava/lang/Runnable;

    .line 100
    move-object v2, v0

    .line 102
    move-object v3, v11

    .line 103
    move v6, v9

    .line 104
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 105
    iget v2, v8, Landroid/graphics/PointF;->x:F

    .line 108
    invoke-virtual {v0, v2, v9}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->notifyFloatingCoordinatorStackAnimatingTo(FF)V

    .line 110
    :cond_4
    if-eqz v10, :cond_5

    .line 113
    goto :goto_2

    .line 115
    :cond_5
    iget v9, v8, Landroid/graphics/PointF;->y:F

    .line 116
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 118
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 120
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 122
    sub-float/2addr v9, v0

    .line 124
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 125
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 127
    move-result v0

    .line 130
    if-nez v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 133
    sget-object v2, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 135
    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 137
    move-result-object v0

    .line 140
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 141
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 143
    move-result v2

    .line 146
    add-float/2addr v2, v9

    .line 147
    sget-object v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 148
    const/4 v4, 0x0

    .line 150
    invoke-virtual {v0, v11, v2, v4, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 151
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 154
    :cond_6
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 157
    if-eqz v0, :cond_a

    .line 159
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 161
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->animateForImeVisibilityChange(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 166
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 168
    move-result v0

    .line 171
    if-eqz v0, :cond_a

    .line 172
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 174
    if-eqz v0, :cond_a

    .line 176
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 178
    move-result-object v0

    .line 181
    if-eqz v0, :cond_a

    .line 182
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 184
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 186
    move-result-object v2

    .line 189
    iget v2, v2, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->selectedIndex:I

    .line 190
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 192
    move-result-object v3

    .line 195
    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    .line 196
    move-result-object v0

    .line 199
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 200
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 202
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 204
    invoke-virtual {v2, v3, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY(Lcom/android/wm/shell/bubbles/BubbleViewProvider;F)F

    .line 206
    move-result v0

    .line 209
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 210
    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 212
    move-result-object v2

    .line 215
    iput-boolean p1, v2, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mImeVisible:Z

    .line 216
    if-nez p1, :cond_7

    .line 218
    iget-boolean p1, v2, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    .line 220
    if-eqz p1, :cond_7

    .line 222
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateHeight()V

    .line 224
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 227
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 229
    move-result-object p1

    .line 232
    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mUsingMaxHeight:Z

    .line 233
    if-nez p1, :cond_8

    .line 235
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 237
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 239
    move-result-object p1

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 243
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    .line 246
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    move v0, v1

    .line 251
    :goto_3
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 252
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 254
    move-result v2

    .line 257
    const/4 v3, 0x1

    .line 258
    if-ge v0, v2, :cond_9

    .line 259
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 261
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 263
    move-result-object v2

    .line 266
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 267
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 269
    move-result-object v5

    .line 272
    invoke-virtual {v4, v0, v5}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    .line 273
    move-result-object v4

    .line 276
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 277
    sget-object v5, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    .line 279
    new-array v3, v3, [F

    .line 281
    aput v4, v3, v1

    .line 283
    invoke-static {v2, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 285
    move-result-object v2

    .line 288
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v0, v0, 0x1

    .line 292
    goto :goto_3

    .line 294
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition(Z)V

    .line 295
    new-instance p0, Landroid/animation/AnimatorSet;

    .line 298
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 300
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 303
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 306
    :cond_a
    return-void
    .line 309
.end method

.method public setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    .line 7
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 10
    if-ne v1, p1, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    const-string v2, "Overflow"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 28
    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 33
    iput-boolean v0, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    .line 35
    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 37
    if-eqz v1, :cond_3

    .line 39
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 41
    if-eqz v1, :cond_3

    .line 43
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 45
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

    .line 47
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 49
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    .line 58
    sget-object v3, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 60
    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 62
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 66
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 69
    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 78
    const/4 v3, 0x0

    .line 80
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 81
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 84
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 87
    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 91
    if-eqz v0, :cond_5

    .line 93
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 95
    move-result-object v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 101
    if-nez v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 105
    if-eqz v0, :cond_4

    .line 107
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 109
    move-result-object v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 115
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 117
    move-result-object v0

    .line 120
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    .line 121
    :cond_4
    :try_start_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;

    .line 124
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->screenshotAnimatingOutBubbleIntoSurface(Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showNewlySelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    goto :goto_1

    .line 140
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showNewlySelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 141
    :goto_1
    return-void
    .line 144
.end method

.method public setTemporarilyInvisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public setUnbubbleConversationCallback(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mUnbubbleConversationCallback:Ljava/util/function/Consumer;

    .line 2
    return-void
    .line 4
.end method

.method public final setUpDismissView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    new-instance v0, Lcom/android/wm/shell/bubbles/DismissView;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/DismissView;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 23
    const v1, 0x7f070138    # @dimen/bubble_elevation '1.0dp'

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 36
    int-to-float v0, v0

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    move-result-object v0

    .line 49
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 50
    mul-int/lit8 v1, v1, 0x2

    .line 52
    const-string v2, "bubble_dismiss_radius"

    .line 54
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 56
    move-result v0

    .line 59
    new-instance v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 60
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 62
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 64
    move-result-object v2

    .line 67
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;-><init>(ILcom/android/wm/shell/common/DismissCircleView;)V

    .line 68
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 75
    return-void
    .line 78
.end method

.method public final setUpFlyout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 20
    const/16 v1, 0x8

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 41
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    const/4 v2, -0x2

    .line 45
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    return-void
    .line 52
.end method

.method public final setUpManageMenu()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object v0

    .line 16
    const v1, 0x7f0d005a    # @layout/bubble_manage_menu 'res/layout/bubble_manage_menu.xml'

    .line 17
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 27
    const/4 v1, 0x4

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 33
    const v1, 0x11200ae    # @android:^attr-private/materialColorSurfaceContainer

    .line 35
    filled-new-array {v1}, [I

    .line 38
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 42
    move-result-object v0

    .line 45
    const/4 v1, -0x1

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 47
    move-result v1

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object v0

    .line 59
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 60
    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 65
    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 67
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 71
    iput-object v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 75
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$15;

    .line 77
    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$15;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 82
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 85
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 91
    const v3, 0x7f0a018d    # @id/bubble_manage_menu_dismiss_container

    .line 93
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 99
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    .line 100
    invoke-direct {v3, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 102
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 108
    const v2, 0x7f0a018e    # @id/bubble_manage_menu_dont_bubble_container

    .line 110
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 116
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    .line 117
    invoke-direct {v3, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 125
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v0

    .line 130
    check-cast v0, Landroid/view/ViewGroup;

    .line 131
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageDontBubbleView:Landroid/view/ViewGroup;

    .line 133
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 135
    const v1, 0x7f0a018f    # @id/bubble_manage_menu_settings_container

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 143
    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsView:Landroid/view/ViewGroup;

    .line 146
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    .line 148
    const/4 v2, 0x2

    .line 150
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 157
    const v1, 0x7f0a0190    # @id/bubble_manage_menu_settings_icon

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v0

    .line 165
    check-cast v0, Landroid/widget/ImageView;

    .line 166
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsIcon:Landroid/widget/ImageView;

    .line 168
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 170
    const v1, 0x7f0a0191    # @id/bubble_manage_menu_settings_name

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsText:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 183
    const/4 v1, 0x3

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 186
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateManageButtonListener()V

    .line 194
    return-void
    .line 197
.end method

.method public final setupLocalMenu(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 8
    const v2, 0x7f130223    # @string/bubble_accessibility_action_move_top_left 'Move top left'

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 16
    const v3, 0x7f0a0081    # @id/action_move_top_left

    .line 17
    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 23
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 26
    const v2, 0x7f130224    # @string/bubble_accessibility_action_move_top_right 'Move top right'

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    const v3, 0x7f0a0082    # @id/action_move_top_right

    .line 35
    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 41
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 44
    const v2, 0x7f130221    # @string/bubble_accessibility_action_move_bottom_left 'Move bottom left'

    .line 46
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 52
    const v3, 0x7f0a0078    # @id/action_move_bottom_left

    .line 53
    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 59
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 62
    const v2, 0x7f130222    # @string/bubble_accessibility_action_move_bottom_right 'Move bottom right'

    .line 64
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    const v2, 0x7f0a0079    # @id/action_move_bottom_right

    .line 71
    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 77
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 82
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 85
    if-eqz p0, :cond_0

    .line 87
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 91
    goto :goto_0

    .line 94
    :cond_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 97
    :goto_0
    return-void
    .line 100
.end method

.method public final shouldShowStackEdu()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 4
    instance-of v1, v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v3

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, v3

    .line 25
    :goto_1
    if-nez v0, :cond_2

    .line 26
    return v3

    .line 28
    :cond_2
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 35
    move-result-object v0

    .line 38
    const-string v1, "HasSeenBubblesOnboarding"

    .line 39
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    move-result-object p0

    .line 52
    const-string v0, "force_show_bubbles_user_education"

    .line 53
    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 55
    move-result p0

    .line 58
    if-eqz p0, :cond_3

    .line 59
    move p0, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move p0, v3

    .line 63
    :goto_2
    if-eqz p0, :cond_4

    .line 64
    goto :goto_3

    .line 66
    :cond_4
    move v2, v3

    .line 67
    :cond_5
    :goto_3
    return v2
    .line 68
.end method

.method public showManageMenu(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    .line 8
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v4

    .line 18
    :goto_0
    if-ne v2, v1, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    .line 22
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 24
    if-eqz v2, :cond_e

    .line 26
    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 28
    move-result-object v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    goto/16 :goto_9

    .line 34
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    if-eqz v1, :cond_3

    .line 38
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenuScrim:Landroid/view/View;

    .line 40
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenuScrim:Landroid/view/View;

    .line 45
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getElevation()F

    .line 49
    move-result v6

    .line 52
    sub-float/2addr v6, v2

    .line 53
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 54
    :cond_3
    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;

    .line 57
    invoke-direct {v5, v0, v1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;ZI)V

    .line 59
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 62
    iget-object v6, v6, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 64
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    new-instance v7, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;

    .line 69
    iget-object v8, v6, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysUiState:Lcom/android/systemui/model/SysUiState;

    .line 71
    invoke-direct {v7, v6, v8, v1, v3}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Lcom/android/systemui/model/SysUiState;ZI)V

    .line 73
    iget-object v6, v6, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 76
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenuScrim:Landroid/view/View;

    .line 81
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 83
    move-result-object v6

    .line 86
    if-eqz v1, :cond_4

    .line 87
    sget-object v7, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 89
    goto :goto_1

    .line 91
    :cond_4
    sget-object v7, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 92
    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 94
    move-result-object v6

    .line 97
    const/4 v7, 0x0

    .line 98
    if-eqz v1, :cond_5

    .line 99
    const v8, 0x3f19999a    # 0.6f

    .line 101
    goto :goto_2

    .line 104
    :cond_5
    move v8, v7

    .line 105
    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 106
    move-result-object v6

    .line 109
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 110
    move-result-object v5

    .line 113
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 114
    if-eqz v1, :cond_7

    .line 117
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 119
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 121
    invoke-interface {v6}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 123
    move-result-object v6

    .line 126
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 127
    move-result-object v5

    .line 130
    if-eqz v5, :cond_6

    .line 131
    iget-boolean v6, v5, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    .line 133
    if-nez v6, :cond_6

    .line 135
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageDontBubbleView:Landroid/view/ViewGroup;

    .line 137
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 139
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsIcon:Landroid/widget/ImageView;

    .line 142
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/Bubble;->mRawBadgeBitmap:Landroid/graphics/Bitmap;

    .line 144
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsText:Landroid/widget/TextView;

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 151
    move-result-object v8

    .line 154
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    .line 155
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 157
    move-result-object v5

    .line 160
    const v9, 0x7f13022b    # @string/bubbles_app_settings '%1$s settings'

    .line 161
    invoke-virtual {v8, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    move-result-object v5

    .line 167
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsView:Landroid/view/ViewGroup;

    .line 171
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 173
    goto :goto_3

    .line 176
    :cond_6
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageDontBubbleView:Landroid/view/ViewGroup;

    .line 177
    const/16 v6, 0x8

    .line 179
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 181
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsView:Landroid/view/ViewGroup;

    .line 184
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 186
    :cond_7
    :goto_3
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 189
    invoke-interface {v5}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 191
    move-result-object v5

    .line 194
    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskView()Lcom/android/wm/shell/taskview/TaskView;

    .line 195
    move-result-object v5

    .line 198
    if-eqz v5, :cond_9

    .line 199
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 201
    invoke-interface {v5}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 203
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskView()Lcom/android/wm/shell/taskview/TaskView;

    .line 207
    move-result-object v5

    .line 210
    iget-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    .line 211
    if-eqz v6, :cond_8

    .line 213
    new-instance v6, Landroid/graphics/Rect;

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 217
    move-result v8

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 221
    move-result v9

    .line 224
    invoke-direct {v6, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 225
    goto :goto_4

    .line 228
    :cond_8
    const/4 v6, 0x0

    .line 229
    :goto_4
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/taskview/TaskView;->setObscuredTouchRect(Landroid/graphics/Rect;)V

    .line 230
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 233
    move-result-object v5

    .line 236
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 237
    move-result-object v5

    .line 240
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 241
    move-result v5

    .line 244
    if-nez v5, :cond_a

    .line 245
    move v5, v3

    .line 247
    goto :goto_5

    .line 248
    :cond_a
    move v5, v4

    .line 249
    :goto_5
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 250
    invoke-interface {v6}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 252
    move-result-object v6

    .line 255
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    .line 256
    iget-object v6, v6, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    .line 258
    invoke-virtual {v6, v8}, Landroid/widget/Button;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 260
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 263
    invoke-interface {v6}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 265
    move-result-object v6

    .line 268
    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getManageButtonMargin()I

    .line 269
    move-result v6

    .line 272
    int-to-float v6, v6

    .line 273
    if-eqz v5, :cond_b

    .line 274
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    .line 276
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 278
    int-to-float v8, v8

    .line 280
    goto :goto_6

    .line 281
    :cond_b
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    .line 282
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 284
    int-to-float v8, v8

    .line 286
    add-float/2addr v8, v6

    .line 287
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 288
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    .line 290
    move-result v6

    .line 293
    int-to-float v6, v6

    .line 294
    :goto_6
    sub-float/2addr v8, v6

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getVisibleManageMenuHeight()F

    .line 296
    move-result v6

    .line 299
    iget-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    .line 300
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 302
    int-to-float v9, v9

    .line 304
    sub-float/2addr v9, v6

    .line 305
    if-eqz v5, :cond_c

    .line 306
    move v5, v3

    .line 308
    goto :goto_7

    .line 309
    :cond_c
    const/4 v5, -0x1

    .line 310
    :goto_7
    iget-object v10, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 311
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    .line 313
    move-result v10

    .line 316
    mul-int/2addr v10, v5

    .line 317
    int-to-float v5, v10

    .line 318
    const/high16 v10, 0x40800000    # 4.0f

    .line 319
    div-float/2addr v5, v10

    .line 321
    sget-object v11, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 322
    sget-object v12, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 324
    sget-object v13, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 326
    sget-object v14, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 328
    sget-object v15, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 330
    const/high16 v3, 0x3f000000    # 0.5f

    .line 332
    if-eqz v1, :cond_d

    .line 334
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 336
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 338
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 341
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 343
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 346
    sub-float v3, v8, v5

    .line 348
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 350
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 353
    div-float/2addr v6, v10

    .line 355
    add-float/2addr v6, v9

    .line 356
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 357
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 360
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 362
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 365
    sget-object v3, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 367
    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 369
    move-result-object v1

    .line 372
    invoke-virtual {v1, v15, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 373
    invoke-virtual {v1, v14, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 376
    invoke-virtual {v1, v13, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 379
    invoke-virtual {v1, v12, v8}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 382
    invoke-virtual {v1, v11, v9}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 385
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 388
    invoke-direct {v2, v0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 390
    filled-new-array {v2}, [Ljava/lang/Runnable;

    .line 393
    move-result-object v2

    .line 396
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 397
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 400
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 403
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 405
    goto :goto_8

    .line 408
    :cond_d
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 409
    sget-object v2, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 411
    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 413
    move-result-object v1

    .line 416
    invoke-virtual {v1, v15, v7}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 417
    invoke-virtual {v1, v14, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 420
    invoke-virtual {v1, v13, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 423
    sub-float/2addr v8, v5

    .line 426
    invoke-virtual {v1, v12, v8}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 427
    div-float/2addr v6, v10

    .line 430
    add-float/2addr v6, v9

    .line 431
    invoke-virtual {v1, v11, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 432
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 435
    const/4 v3, 0x1

    .line 437
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 438
    filled-new-array {v2}, [Ljava/lang/Runnable;

    .line 441
    move-result-object v0

    .line 444
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 445
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 448
    :goto_8
    return-void

    .line 451
    :cond_e
    :goto_9
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 452
    const/4 v2, 0x4

    .line 454
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 455
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenuScrim:Landroid/view/View;

    .line 458
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 463
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 465
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;

    .line 470
    iget-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysUiState:Lcom/android/systemui/model/SysUiState;

    .line 472
    const/4 v3, 0x1

    .line 474
    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Lcom/android/systemui/model/SysUiState;ZI)V

    .line 475
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 478
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 480
    return-void
    .line 483
.end method

.method public final showNewlySelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 6
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 8
    move-result-object v2

    .line 11
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 12
    if-eqz v3, :cond_2

    .line 14
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 16
    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 20
    :cond_0
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 23
    if-eqz v3, :cond_1

    .line 25
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 27
    :cond_1
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->reset()V

    .line 30
    :cond_2
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 33
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 35
    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideCurrentInputMethod()V

    .line 39
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 42
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 45
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    .line 48
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;

    .line 50
    const/4 v3, 0x0

    .line 52
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Ljava/lang/Object;I)V

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    new-instance p0, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;

    .line 59
    invoke-direct {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 61
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 64
    move-result-object p1

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 68
    :cond_3
    return-void
    .line 71
.end method

.method public final showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$18;

    .line 2
    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView$18;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;)V

    .line 4
    if-eqz p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 11
    move-result-object p0

    .line 14
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 17
    move-result-object p0

    .line 20
    const p1, 0x3f19999a    # 0.6f

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 38
    move-result-object p0

    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 43
    move-result-object p0

    .line 46
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 53
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 57
    :goto_0
    return-void
    .line 60
.end method

.method public final startMonitoringSwipeUpGesture()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->stopMonitoringSwipeUpGestureInternal()V

    .line 2
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 10
    const v1, 0x10e00c2    # @android:integer/config_notificationStripRemoteViewSizeBytes

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_3

    .line 24
    new-instance v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    .line 26
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 32
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubblesNavBarGestureTracker:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    .line 35
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 37
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    .line 39
    const/4 v5, 0x0

    .line 41
    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {v4}, Landroid/view/InputEventReceiver;->dispose()V

    .line 44
    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    .line 47
    :cond_1
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    .line 49
    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v4}, Landroid/view/InputMonitor;->dispose()V

    .line 53
    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    .line 56
    :cond_2
    const-class v4, Landroid/hardware/input/InputManager;

    .line 58
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 63
    check-cast v4, Landroid/hardware/input/InputManager;

    .line 64
    const-string v5, "bubbles-gesture"

    .line 66
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 68
    move-result v6

    .line 71
    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 72
    move-result-object v4

    .line 75
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    .line 76
    invoke-virtual {v4}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 78
    move-result-object v4

    .line 81
    new-instance v5, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;

    .line 82
    new-instance v6, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker$$ExternalSyntheticLambda0;

    .line 84
    invoke-direct {v6, v0}, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;)V

    .line 86
    invoke-direct {v5, v1, v2, v6, v3}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker$$ExternalSyntheticLambda0;Lcom/android/wm/shell/bubbles/BubbleStackView$4;)V

    .line 89
    new-instance v1, Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    .line 92
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 94
    move-result-object v2

    .line 97
    invoke-direct {v1, v4, v2, v5}, Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/view/Choreographer;Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;)V

    .line 98
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    .line 101
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mContainerSwipeListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    :cond_3
    return-void
    .line 108
.end method

.method public final stopMonitoringSwipeUpGestureInternal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubblesNavBarGestureTracker:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 11
    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1}, Landroid/view/InputMonitor;->dispose()V

    .line 20
    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    .line 23
    :cond_1
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubblesNavBarGestureTracker:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    .line 25
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    :cond_2
    return-void
    .line 30
.end method

.method public final updateBadges(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_4

    .line 8
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 10
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 16
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 18
    const/4 v5, 0x1

    .line 20
    if-eqz v4, :cond_1

    .line 21
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 23
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 25
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 31
    if-nez v4, :cond_0

    .line 33
    goto :goto_1

    .line 35
    :cond_0
    move v5, v1

    .line 36
    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showDotAndBadge(Z)V

    .line 37
    goto :goto_2

    .line 40
    :cond_1
    if-eqz p1, :cond_3

    .line 41
    if-nez v2, :cond_2

    .line 43
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 45
    xor-int/2addr v4, v5

    .line 47
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showDotAndBadge(Z)V

    .line 48
    goto :goto_2

    .line 51
    :cond_2
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 52
    xor-int/2addr v4, v5

    .line 54
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->hideDotAndBadge(Z)V

    .line 55
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_4
    return-void
    .line 61
.end method

.method public final updateBubbleShadows(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_4

    .line 8
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 10
    iget v3, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    .line 12
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleElevation:I

    .line 14
    mul-int/2addr v3, v4

    .line 16
    sub-int/2addr v3, v2

    .line 17
    int-to-float v3, v3

    .line 18
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 19
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v4

    .line 24
    check-cast v4, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 25
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 27
    if-eqz v5, :cond_0

    .line 29
    iget-object v5, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    .line 31
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    const/4 v5, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move v5, v1

    .line 41
    :goto_1
    if-nez p1, :cond_3

    .line 42
    if-eqz v5, :cond_1

    .line 44
    goto :goto_3

    .line 46
    :cond_1
    const/4 v5, 0x2

    .line 47
    if-ge v2, v5, :cond_2

    .line 48
    goto :goto_2

    .line 50
    :cond_2
    const/4 v3, 0x0

    .line 51
    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setZ(F)V

    .line 52
    goto :goto_4

    .line 55
    :cond_3
    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setZ(F)V

    .line 56
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    return-void
    .line 62
.end method

.method public final updateExpandedBubble()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 15
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 21
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 23
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 28
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 31
    const/4 v2, 0x1

    .line 33
    xor-int/2addr v1, v2

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 38
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 44
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    .line 46
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 49
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 51
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 54
    const/4 v4, 0x4

    .line 56
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 60
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 62
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 70
    const/4 v1, 0x6

    .line 72
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 73
    const-wide/16 v3, 0x0

    .line 76
    invoke-virtual {p0, v0, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 81
    if-nez v0, :cond_0

    .line 83
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    .line 87
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 89
    const/4 v2, 0x7

    .line 91
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    new-instance p0, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;

    .line 98
    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 103
    move-result-object v0

    .line 106
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 107
    :cond_0
    return-void
    .line 110
.end method

.method public final updateExpandedView()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string v3, "Overflow"

    .line 8
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
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
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 23
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 25
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 27
    move-result v4

    .line 30
    iget v5, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    .line 31
    iget v6, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerOverlap:I

    .line 33
    sub-int/2addr v5, v6

    .line 35
    if-eqz v0, :cond_1

    .line 36
    iget-boolean v6, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    .line 38
    if-eqz v6, :cond_1

    .line 40
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 44
    move-result v6

    .line 47
    iget v7, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    .line 48
    sub-int/2addr v6, v7

    .line 50
    iget v7, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowWidth:I

    .line 51
    sub-int/2addr v6, v7

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget v6, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetFurthestEdge:I

    .line 55
    :goto_1
    iget-boolean v7, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    .line 57
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x2

    .line 60
    const/4 v10, 0x3

    .line 61
    iget-object v11, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPaddings:[I

    .line 62
    if-eqz v7, :cond_5

    .line 64
    if-eqz v4, :cond_2

    .line 66
    iget v7, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    .line 68
    sub-int/2addr v7, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move v7, v6

    .line 72
    :goto_2
    aput v7, v11, v2

    .line 73
    aput v2, v11, v1

    .line 75
    if-eqz v4, :cond_3

    .line 77
    goto :goto_3

    .line 79
    :cond_3
    iget v4, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenInsetClosestEdge:I

    .line 80
    sub-int v6, v4, v5

    .line 82
    :goto_3
    aput v6, v11, v9

    .line 84
    if-eqz v0, :cond_4

    .line 86
    iget v0, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    .line 88
    goto :goto_4

    .line 90
    :cond_4
    move v0, v2

    .line 91
    :goto_4
    aput v0, v11, v10

    .line 92
    goto :goto_a

    .line 94
    :cond_5
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    .line 95
    iget v7, v6, Landroid/graphics/Insets;->left:I

    .line 97
    iget v12, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    .line 99
    add-int/2addr v7, v12

    .line 101
    iget v6, v6, Landroid/graphics/Insets;->right:I

    .line 102
    add-int/2addr v6, v12

    .line 104
    if-eqz v0, :cond_6

    .line 105
    iget v12, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowWidth:I

    .line 107
    goto :goto_5

    .line 109
    :cond_6
    iget v12, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    .line 110
    :goto_5
    int-to-float v12, v12

    .line 112
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 113
    move-result v13

    .line 116
    if-eqz v13, :cond_a

    .line 117
    if-nez v4, :cond_8

    .line 119
    iget v4, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 121
    sub-int/2addr v4, v5

    .line 123
    add-int/2addr v6, v4

    .line 124
    int-to-float v4, v7

    .line 125
    if-eqz v0, :cond_7

    .line 126
    iget-object v0, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 130
    move-result v0

    .line 133
    sub-int/2addr v0, v6

    .line 134
    int-to-float v0, v0

    .line 135
    sub-float/2addr v0, v12

    .line 136
    goto :goto_6

    .line 137
    :cond_7
    move v0, v8

    .line 138
    :goto_6
    add-float/2addr v4, v0

    .line 139
    float-to-int v7, v4

    .line 140
    goto :goto_8

    .line 141
    :cond_8
    iget v4, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 142
    sub-int/2addr v4, v5

    .line 144
    add-int/2addr v7, v4

    .line 145
    int-to-float v4, v6

    .line 146
    if-eqz v0, :cond_9

    .line 147
    iget-object v0, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 151
    move-result v0

    .line 154
    sub-int/2addr v0, v7

    .line 155
    int-to-float v0, v0

    .line 156
    sub-float/2addr v0, v12

    .line 157
    goto :goto_7

    .line 158
    :cond_9
    move v0, v8

    .line 159
    :goto_7
    add-float/2addr v4, v0

    .line 160
    float-to-int v6, v4

    .line 161
    :cond_a
    :goto_8
    aput v7, v11, v2

    .line 162
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 164
    move-result v0

    .line 167
    if-eqz v0, :cond_b

    .line 168
    move v0, v2

    .line 170
    goto :goto_9

    .line 171
    :cond_b
    iget v0, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerMargin:I

    .line 172
    :goto_9
    aput v0, v11, v1

    .line 174
    aput v6, v11, v9

    .line 176
    aput v2, v11, v10

    .line 178
    :goto_a
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 180
    aget v3, v11, v2

    .line 182
    aget v1, v11, v1

    .line 184
    aget v4, v11, v9

    .line 186
    aget v5, v11, v10

    .line 188
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 190
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 193
    if-eqz v0, :cond_f

    .line 195
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 197
    move-result-object v0

    .line 200
    if-eqz v0, :cond_f

    .line 201
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 203
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 205
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    .line 207
    move-result v1

    .line 210
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 211
    move-result-object v3

    .line 214
    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    .line 215
    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 219
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 221
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 223
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 225
    move-result v5

    .line 228
    if-eqz v5, :cond_c

    .line 229
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 231
    goto :goto_b

    .line 233
    :cond_c
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 234
    :goto_b
    invoke-virtual {v3, v4, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY(Lcom/android/wm/shell/bubbles/BubbleViewProvider;F)F

    .line 236
    move-result v0

    .line 239
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 240
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 243
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 245
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 248
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 250
    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 254
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    .line 256
    move-result-object v1

    .line 259
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    .line 260
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateHeight()V

    .line 262
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 265
    if-eqz v1, :cond_d

    .line 267
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getVisibility()I

    .line 269
    move-result v1

    .line 272
    if-nez v1, :cond_d

    .line 273
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 275
    invoke-virtual {v1}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    .line 277
    move-result v1

    .line 280
    if-eqz v1, :cond_d

    .line 281
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 283
    invoke-virtual {v1}, Lcom/android/wm/shell/taskview/TaskView;->onLocationChanged()V

    .line 285
    :cond_d
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    .line 288
    if-eqz v1, :cond_e

    .line 290
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;

    .line 292
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 294
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 297
    :cond_e
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition(Z)V

    .line 300
    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 303
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 305
    move-result v0

    .line 308
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 309
    return-void
    .line 311
.end method

.method public final updateManageButtonListener()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 16
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 18
    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    .line 22
    const/4 v2, 0x3

    .line 24
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 25
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_0
    return-void
    .line 33
.end method

.method public final updateOverflow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    .line 4
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 14
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    const v2, 0x7f080ba3    # @drawable/bubble_ic_overflow_button 'res/drawable/bubble_ic_overflow_button.xml'

    .line 20
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setIconImageResource(I)V

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateBtnTheme()V

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 31
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 33
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 37
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 39
    move-result v2

    .line 42
    add-int/lit8 v2, v2, -0x1

    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->reorderView(ILcom/android/wm/shell/bubbles/BadgedImageView;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    .line 48
    return-void
    .line 51
.end method

.method public final updateOverflowVisibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 9
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p0, v2

    .line 21
    :goto_0
    if-eqz p0, :cond_1

    .line 22
    goto :goto_1

    .line 24
    :cond_1
    const/16 v2, 0x8

    .line 25
    :cond_2
    :goto_1
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 27
    if-nez p0, :cond_3

    .line 29
    goto :goto_2

    .line 31
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 32
    :goto_2
    return-void
    .line 35
.end method

.method public final updatePointerPosition(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    .line 15
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 25
    move-result-object v2

    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    .line 29
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 33
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 35
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 46
    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 48
    move-result-object v1

    .line 51
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 52
    invoke-virtual {v1, v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setPointerPosition(FZZ)V

    .line 54
    :cond_3
    :goto_1
    return-void
    .line 57
.end method

.method public final updateTemporarilyInvisibleAnimation(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 16
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    if-nez p1, :cond_2

    .line 31
    const-wide/16 v2, 0x3e8

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    const-wide/16 v2, 0x0

    .line 36
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    return-void
    .line 41
.end method

.method public final updateUserEdu()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 8
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 14
    new-instance v0, Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 17
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/android/wm/shell/bubbles/StackEducationView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleController;)V

    .line 25
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 33
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 38
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 40
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    .line 42
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 49
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 51
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    .line 53
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/StackEducationView;->show(Landroid/graphics/PointF;)Z

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isManageEduVisible()Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 68
    new-instance v0, Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 71
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 73
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 75
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/ManageEducationView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 77
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 85
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 87
    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->show(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    .line 93
    :cond_1
    return-void
    .line 96
.end method

.method public final updateZOrder()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 15
    const/4 v3, 0x2

    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 20
    iget v3, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    .line 22
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleElevation:I

    .line 24
    mul-int/2addr v3, v4

    .line 26
    sub-int/2addr v3, v1

    .line 27
    int-to-float v3, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setZ(F)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    return-void
    .line 37
.end method
