.class public Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/statusbar/notification/stack/SwipeableView;
.implements Lcom/android/systemui/statusbar/notification/NotificationFadeAware$FadeOptimizedNotification;


# static fields
.field public static final BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

.field public static final FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

.field public static final PINNED:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

.field public static final RECENTLY_ALERTED_THRESHOLD_MS:J

.field public static final TRANSLATE_CONTENT:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$2;


# instance fields
.field public mAboveShelf:Z

.field public mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

.field public mAnimatePinnedRoundness:Z

.field public mAnimationRunning:Z

.field public mAppName:Ljava/lang/String;

.field public mBubblesManagerOptional:Ljava/util/Optional;

.field public mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public mChildAfterViewWhenDismissed:Landroid/view/View;

.field public mChildIsExpanding:Z

.field public mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

.field public mChildrenContainerStub:Landroid/view/ViewStub;

.field public mChildrenExpanded:Z

.field public mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

.field public mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

.field public mEnableNonGroupedNotificationExpand:Z

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mExpandAnimationRunning:Z

.field public final mExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

.field public mExpandable:Z

.field public mExpandedWhenPinned:Z

.field public mExpandingClipPath:Landroid/graphics/Path;

.field public mExpansionChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;

.field public final mExpireRecentlyAlertedFlag:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda2;

.field public mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mGroupExpansionChanging:Z

.field public mGroupExpansionChangingPending:Z

.field public mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

.field public mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public mGroupParentWhenDismissed:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public mGutsStub:Landroid/view/ViewStub;

.field public mHasUserChangedExpansion:Z

.field public mHeaderVisibleAmount:F

.field public mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

.field public mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mHeadsupDisappearRunning:Z

.field public mHideSensitiveForIntrinsicHeight:Z

.field public mIconTransformContentShift:I

.field public mIgnoreLockscreenConstraints:Z

.field public final mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

.field public mIsFaded:Z

.field public mIsHeadsUp:Z

.field public mIsInlineReplyAnimationFlagEnabled:Z

.field public mIsLowPriority:Z

.field public mIsPinned:Z

.field public mIsSnoozed:Z

.field public mIsSummaryWithChildren:Z

.field public mIsSystemChildExpanded:Z

.field public mIsSystemExpanded:Z

.field public mJustClicked:Z

.field public mKeepInParentForDismissAnimation:Z

.field public mLastChronometerRunning:Z

.field public mLayoutListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;

.field public mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field public mLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

.field public mLoggingKey:Ljava/lang/String;

.field public mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

.field public mMaxExpandedHeight:I

.field public mMaxHeadsUpHeight:I

.field public mMaxHeadsUpHeightBeforeN:I

.field public mMaxHeadsUpHeightBeforeP:I

.field public mMaxHeadsUpHeightBeforeS:I

.field public mMaxHeadsUpHeightIncreased:I

.field public mMaxSmallHeight:I

.field public mMaxSmallHeightBeforeN:I

.field public mMaxSmallHeightBeforeP:I

.field public mMaxSmallHeightBeforeS:I

.field public mMaxSmallHeightLarge:I

.field public mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMustStayOnScreen:Z

.field public mNotificationColor:I

.field public mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public mNotificationLaunchHeight:I

.field public mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final mOldConfig:Landroid/content/res/Configuration;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mOnDragSuccessListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnDragSuccessListener;

.field public mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

.field public mOnFeedbackClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda0;

.field public mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

.field public mOnKeyguard:Z

.field public mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

.field public mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

.field public mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field public mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field public mRemoved:Z

.field public mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

.field public mSaveSpaceOnLockscreen:Z

.field public mSecureStateProvider:Ljava/util/function/BooleanSupplier;

.field public mSensitive:Z

.field public mSensitiveHiddenInGeneral:Z

.field public mShowGroupBackgroundWhenExpanded:Z

.field public mShowNoBackground:Z

.field public mShowSnooze:Z

.field public mShowingPublic:Z

.field public mShowingPublicInitialized:Z

.field public final mSmallRoundness:F

.field public mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public mTranslateAnim:Landroid/animation/Animator;

.field public mTranslateableViews:Ljava/util/ArrayList;

.field public mTranslationWhenRemoved:F

.field public mUpdateSelfBackgroundOnUpdate:Z

.field public mUseIncreasedCollapsedHeight:Z

.field public mUseIncreasedHeadsUpHeight:Z

.field public mUserExpanded:Z

.field public mUserLocked:Z

.field public mWasChildInGroupWhenRemoved:Z


# direct methods
.method public static $r8$lambda$ImAdach01hncETjoDcKRSxqgaiI(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda0;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 5
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 12
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getFeedbackMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 20
    move-result v1

    .line 23
    div-int/lit8 v1, v1, 0x2

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 26
    move-result p2

    .line 29
    div-int/lit8 p2, p2, 0x2

    .line 30
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 32
    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 34
    :cond_1
    :goto_0
    return-void
    .line 37
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    const-wide/16 v1, 0x1e

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->RECENTLY_ALERTED_THRESHOLD_MS:J

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 12
    const-string v1, "BaseValue"

    .line 14
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    .line 16
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 19
    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 21
    const-string v1, "FromParent(ENR)"

    .line 23
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    .line 25
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 30
    const-string v1, "Pinned"

    .line 32
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    .line 34
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->PINNED:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$2;

    .line 39
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$2;-><init>()V

    .line 41
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->TRANSLATE_CONTENT:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$2;

    .line 44
    return-void
    .line 46
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUpdateSelfBackgroundOnUpdate:Z

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowSnooze:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAnimatePinnedRoundness:Z

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    .line 15
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsInlineReplyAnimationFlagEnabled:Z

    .line 19
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    .line 21
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 23
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    .line 26
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda2;

    .line 28
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 30
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpireRecentlyAlertedFlag:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda2;

    .line 33
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;

    .line 37
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;-><init>()V

    .line 39
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;)V

    .line 42
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p1

    .line 50
    const p2, 0x7f070d8f    # @dimen/notification_corner_radius_small '4.0dp'

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 54
    move-result p1

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxRadius()F

    .line 58
    move-result p2

    .line 61
    div-float/2addr p1, p2

    .line 62
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSmallRoundness:F

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->initDimens()V

    .line 65
    new-instance p1, Landroid/content/res/Configuration;

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 74
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOldConfig:Landroid/content/res/Configuration;

    .line 81
    return-void
    .line 83
.end method

.method public static synthetic access$001(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J

    .line 2
    return-void
    .line 5
.end method

.method private getHeadsUpHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpHeight(Z)I

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public static setChronometerRunningForChild(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    const v0, 0x1020254    # @android:id/clipBounds

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p0

    .line 10
    instance-of v0, p0, Landroid/widget/Chronometer;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    check-cast p0, Landroid/widget/Chronometer;

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setStarted(Z)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public static setIconAnimationRunningForChild(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    const v0, 0x1020006    # @android:id/icon

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 11
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setImageViewAnimationRunning(Landroid/widget/ImageView;Z)V

    .line 13
    const v0, 0x102049b    # @android:id/scrim

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Landroid/widget/ImageView;

    .line 23
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setImageViewAnimationRunning(Landroid/widget/ImageView;Z)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public static setImageViewAnimationRunning(Landroid/widget/ImageView;Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 7
    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 20
    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 24
    if-eqz v0, :cond_3

    .line 26
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 28
    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 32
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 36
    :cond_3
    :goto_0
    return-void
    .line 39
.end method


# virtual methods
.method public final addChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 8
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mKeepInParentForDismissAnimation:Z

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

    .line 15
    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 23
    move-result-object p0

    .line 26
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    .line 27
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mLogBufferLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 34
    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger$logSkipAttachingKeepInParentChild$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger$logSkipAttachingKeepInParentChild$2;

    .line 36
    const/4 v2, 0x0

    .line 38
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 39
    const-string v3, "NotifRow"

    .line 41
    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 43
    move-result-object v0

    .line 46
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 50
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    invoke-interface {v0, p0}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 61
    :cond_1
    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainerForAdditionTo(Landroid/view/ViewGroup;)V

    .line 76
    :cond_3
    if-gez p2, :cond_4

    .line 79
    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 81
    check-cast p2, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result p2

    .line 88
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 89
    check-cast v1, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 99
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 101
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    .line 104
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 111
    check-cast v2, Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    const/4 p2, 0x0

    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setContentTransformationAmount(FZ)V

    .line 120
    iget-boolean p2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotificationIsFaded:Z

    .line 123
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNotificationFaded(Z)V

    .line 125
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 128
    move-result-object p2

    .line 131
    if-eqz p2, :cond_5

    .line 132
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->cancelAnimations(Landroid/view/View;)V

    .line 134
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearDrawing()V

    .line 137
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->applyRoundnessAndInvalidate()V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAttachedChildrenCountChanged()V

    .line 143
    const/4 p2, 0x1

    .line 146
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 147
    return-void
    .line 150
.end method

.method public final appendTraceStyleTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 9
    move-result-object p0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 13
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    .line 19
    move-result-object p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    const-string p0, "(nostyle)"

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    const-string v0, "("

    .line 32
    invoke-static {p1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string p0, ")"

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 53
    return-object p0
    .line 54
.end method

.method public final applyContentTransformation(FF)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mIsLastChild:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 8
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    aget-object v3, v0, v2

    .line 14
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 16
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setTranslationY(F)V

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 32
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 34
    :cond_2
    return-void
    .line 37
.end method

.method public final applyLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 13
    return-void

    .line 16
    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    .line 17
    if-nez v1, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 21
    move-result p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    const/4 p1, 0x4

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 28
    :cond_2
    return-void

    .line 31
    :cond_3
    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 32
    const-wide/16 v6, 0x32

    .line 34
    const-wide/16 v4, 0x0

    .line 36
    sget-object v2, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    .line 38
    sget-object v8, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 40
    iget v3, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->linearProgress:F

    .line 42
    move-object v2, v8

    .line 44
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    .line 45
    move-result v2

    .line 48
    check-cast v1, Landroid/view/animation/PathInterpolator;

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 51
    move-result v2

    .line 54
    iget v3, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startTranslationZ:F

    .line 55
    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationLaunchHeight:I

    .line 57
    int-to-float v4, v4

    .line 59
    invoke-static {v3, v4, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 60
    move-result v2

    .line 63
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 64
    iget v3, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 67
    iget v4, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 69
    sub-int/2addr v3, v4

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 72
    move-result v4

    .line 75
    sub-int/2addr v3, v4

    .line 76
    int-to-float v3, v3

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 78
    iget v4, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startRoundedTopClipping:I

    .line 81
    if-lez v4, :cond_4

    .line 83
    const-wide/16 v12, 0x64

    .line 85
    const-wide/16 v10, 0x0

    .line 87
    iget v9, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->linearProgress:F

    .line 89
    invoke-static/range {v8 .. v13}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    .line 91
    move-result v4

    .line 94
    invoke-virtual {v1, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 95
    move-result v1

    .line 98
    iget v4, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startNotificationTop:I

    .line 99
    iget v5, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 101
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 103
    move-result v1

    .line 106
    int-to-float v4, v4

    .line 107
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 108
    move-result v1

    .line 111
    float-to-int v1, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iget v1, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 114
    :goto_0
    iget v4, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 116
    sub-int/2addr v4, v1

    .line 118
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    .line 119
    iget v5, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->notificationParentTop:I

    .line 122
    sub-int/2addr v1, v5

    .line 124
    iget v6, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startClipTopAmount:I

    .line 125
    iget v7, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->progress:F

    .line 127
    invoke-static {v6, v0, v7}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 129
    move-result v7

    .line 132
    float-to-int v7, v7

    .line 133
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 134
    if-eqz v8, :cond_5

    .line 136
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 138
    move-result v6

    .line 141
    int-to-float v1, v1

    .line 142
    sub-float/2addr v1, v6

    .line 143
    float-to-int v1, v1

    .line 144
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 145
    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 147
    iget v2, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->parentStartClipTopAmount:I

    .line 150
    add-int/2addr v7, v1

    .line 152
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 153
    move-result v2

    .line 156
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 157
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 162
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 164
    iget v2, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 167
    sub-int/2addr v2, v5

    .line 169
    int-to-float v2, v2

    .line 170
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 171
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 173
    move-result v3

    .line 176
    int-to-float v3, v3

    .line 177
    add-float/2addr v3, v6

    .line 178
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 179
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    .line 181
    move-result v7

    .line 184
    int-to-float v7, v7

    .line 185
    sub-float/2addr v3, v7

    .line 186
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 187
    move-result v2

    .line 190
    iget v3, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 191
    sub-int/2addr v3, v5

    .line 193
    int-to-float v3, v3

    .line 194
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    .line 195
    move-result v3

    .line 198
    sub-float/2addr v2, v3

    .line 199
    float-to-int v2, v2

    .line 200
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 201
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setMinimumHeightForClipping(I)V

    .line 203
    goto :goto_1

    .line 206
    :cond_5
    if-eqz v6, :cond_6

    .line 207
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    .line 209
    :cond_6
    :goto_1
    int-to-float v1, v1

    .line 212
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    .line 216
    move-result-object v1

    .line 219
    aget v0, v1, v0

    .line 220
    int-to-float v0, v0

    .line 222
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 223
    move-result v1

    .line 226
    int-to-float v1, v1

    .line 227
    const/high16 v2, 0x40000000    # 2.0f

    .line 228
    div-float/2addr v1, v2

    .line 230
    add-float/2addr v1, v0

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 232
    move-result v0

    .line 235
    sub-float/2addr v1, v0

    .line 236
    iget v0, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 237
    int-to-float v3, v0

    .line 239
    iget v5, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 240
    sub-int/2addr v5, v0

    .line 242
    int-to-float v0, v5

    .line 243
    div-float/2addr v0, v2

    .line 244
    add-float/2addr v0, v3

    .line 245
    sub-float/2addr v0, v1

    .line 246
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxRadius()F

    .line 250
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 253
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 256
    iget v0, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 258
    iget p1, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 260
    sub-int/2addr v0, p1

    .line 262
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setExpandAnimationSize(II)V

    .line 263
    return-void
    .line 266
.end method

.method public final applyRoundnessAndInvalidate()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTopRoundness()F

    .line 8
    move-result v1

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getBottomRoundness()F

    .line 12
    move-result v2

    .line 15
    sget-object v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 16
    const/4 v4, 0x0

    .line 18
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 19
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyRoundnessAndInvalidate()V

    .line 22
    return-void
    .line 25
.end method

.method public final areChildrenExpanded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    .line 2
    return p0
    .line 4
.end method

.method public final areGutsExposed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final canShowHeadsUp()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 7
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    if-nez v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 23
    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    move v0, v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    move v0, v1

    .line 36
    :goto_2
    if-nez v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isStickyAndNotDemoted()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIgnoreLockscreenConstraints:Z

    .line 47
    if-nez v0, :cond_4

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSaveSpaceOnLockscreen:Z

    .line 51
    if-eqz p0, :cond_4

    .line 53
    :cond_3
    return v2

    .line 55
    :cond_4
    return v1
    .line 56
.end method

.method public final canViewBeDismissed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;->isDismissable(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    .line 20
    if-nez p0, :cond_1

    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final childNeedsClipping(Landroid/view/View;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_5

    .line 5
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isClippingNeeded()Z

    .line 10
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    return v1

    .line 16
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->hasRoundedCorner()Z

    .line 17
    move-result v2

    .line 20
    if-eqz v2, :cond_8

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTopRoundness()F

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getBottomRoundness()F

    .line 26
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    cmpl-float v2, v2, v3

    .line 31
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_1

    .line 34
    move v2, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v2, v3

    .line 38
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleType()I

    .line 39
    move-result v4

    .line 42
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 43
    move-result-object v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    move v4, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->shouldClipToRounding(Z)Z

    .line 51
    move-result v4

    .line 54
    :goto_1
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    .line 55
    if-eqz v5, :cond_4

    .line 57
    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 59
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 61
    move-result-object v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->shouldClipToRounding(Z)Z

    .line 68
    move-result v3

    .line 71
    :goto_2
    or-int/2addr v4, v3

    .line 72
    :cond_4
    if-eqz v4, :cond_8

    .line 73
    return v1

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 76
    if-ne p1, v0, :cond_7

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isClippingNeeded()Z

    .line 80
    move-result v0

    .line 83
    if-nez v0, :cond_6

    .line 84
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->hasRoundedCorner()Z

    .line 86
    move-result v0

    .line 89
    if-eqz v0, :cond_8

    .line 90
    :cond_6
    return v1

    .line 92
    :cond_7
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 93
    if-eqz v0, :cond_8

    .line 95
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->hasRoundedCorner()Z

    .line 97
    move-result p0

    .line 100
    return p0

    .line 101
    :cond_8
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->childNeedsClipping(Landroid/view/View;)Z

    .line 102
    move-result p0

    .line 105
    return p0
    .line 106
.end method

.method public final createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 16
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 18
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 25
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 30
    return-object p0
    .line 32
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandingClipPath:Landroid/graphics/Path;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 9
    if-nez v1, :cond_0

    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 13
    if-eqz v1, :cond_1

    .line 15
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 17
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 23
    return-void
    .line 26
.end method

.method public final doLongClickCallback(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method

.method public final doLongClickCallback(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 40

    move-object/from16 v0, p0

    .line 5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    if-eqz v1, :cond_1a

    if-eqz p1, :cond_1a

    .line 6
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 8
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->onClick(Landroid/view/View;)V

    goto/16 :goto_c

    .line 12
    :cond_1
    :goto_0
    const-class v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 13
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 14
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1, v4, v2}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto/16 :goto_c

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getLongPressIntent()Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    if-eqz v5, :cond_5

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " LongPressJump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotificationLongPress"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getLongPressIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 20
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 21
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iput-object v4, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 22
    sget-object v4, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 23
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 24
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "miui_unimportant"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "miui_unimportant_click_type"

    if-eqz v4, :cond_4

    .line 25
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 26
    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performClick()Z

    .line 28
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1a

    .line 29
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 30
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 31
    :cond_5
    const-class v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-nez v5, :cond_6

    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v3

    goto :goto_2

    :cond_6
    move v5, v2

    :goto_2
    if-eqz v5, :cond_1a

    .line 34
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mShowMenu:Z

    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    .line 36
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v6, "enterModal "

    const-string v7, "ModalController"

    .line 37
    invoke-static {v6, v5, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    if-nez v5, :cond_1a

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isAnimating:Z

    if-eqz v5, :cond_7

    goto/16 :goto_c

    .line 39
    :cond_7
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalRowInflater:Lcom/android/systemui/statusbar/notification/modal/ModalRowInflater;

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    move-object v5, v4

    .line 40
    :goto_3
    iget-object v13, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v12

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    if-nez v6, :cond_9

    move-object v6, v4

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    iget-object v7, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v11, 0x0

    if-eqz v7, :cond_e

    .line 42
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 43
    iget-object v6, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 44
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 45
    :cond_a
    iget-object v5, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 46
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v5

    if-nez v5, :cond_b

    .line 47
    iget-object v5, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 48
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 49
    :cond_b
    iget-object v5, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 50
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 51
    :goto_4
    iget-object v5, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 52
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 53
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez v7, :cond_d

    .line 54
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    :cond_d
    move v5, v11

    goto/16 :goto_9

    .line 55
    :cond_e
    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d035b    # @layout/status_bar_notification_row 'res/layout/status_bar_notification_row.xml'

    .line 56
    invoke-virtual {v7, v8, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 57
    move-object v10, v6

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v14, v10

    .line 58
    iget-object v6, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRowController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    .line 59
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mRemoteInputViewSubcomponentFactory:Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;

    move-object/from16 v16, v7

    .line 60
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mAppName:Ljava/lang/String;

    move-object/from16 v17, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationKey:Ljava/lang/String;

    move-object/from16 v18, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mLoggerCallback:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

    move-object/from16 v19, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v20, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    move-object/from16 v21, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    move-object/from16 v22, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v23, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    move-object/from16 v24, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    move-object/from16 v25, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnFeedbackClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda0;

    move-object/from16 v26, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v27, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v28, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v29, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    move-object/from16 v30, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    move-object/from16 v31, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mBubblesManagerOptional:Ljava/util/Optional;

    move-object/from16 v32, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v33, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    move-object/from16 v34, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v35, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    move-object/from16 v36, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    move-object/from16 v37, v7

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v38, v7

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v39, v6

    move-object v15, v12

    invoke-virtual/range {v14 .. v39}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->initialize(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda0;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 61
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/modal/ModalRowInflater;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    if-eqz v6, :cond_f

    goto :goto_5

    :cond_f
    move-object v6, v4

    .line 62
    :goto_5
    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 63
    invoke-virtual {v10, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    .line 64
    iput-object v10, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 65
    new-instance v9, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;

    invoke-direct {v9}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;-><init>()V

    .line 66
    iget-object v6, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 67
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 68
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/modal/ModalRowInflater;->contentInflater:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;

    if-eqz v5, :cond_10

    move-object v6, v5

    goto :goto_6

    :cond_10
    move-object v6, v4

    :goto_6
    const/4 v5, 0x1

    const/16 v15, 0xf

    const/16 v16, 0x0

    move-object v7, v12

    move-object v8, v10

    move-object/from16 p0, v10

    move v10, v5

    move v5, v11

    move v11, v15

    move-object v15, v12

    move-object v12, v14

    move-object/from16 v14, v16

    .line 69
    invoke-virtual/range {v6 .. v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateNotificationViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;ZILandroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onNotificationUpdated()V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 72
    iget-object v7, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 73
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 74
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    if-nez v6, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 75
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    if-nez v6, :cond_13

    goto :goto_8

    :cond_13
    iput v2, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    :goto_8
    move-object/from16 v6, p0

    .line 76
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez v8, :cond_14

    .line 77
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 78
    :cond_14
    :goto_9
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    .line 79
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isAnimating:Z

    .line 80
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v6, :cond_15

    .line 81
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_a

    :cond_15
    move-object v6, v4

    .line 82
    :goto_a
    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 83
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowManager:Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->setBlurRatio(F)V

    if-eqz v6, :cond_16

    .line 84
    new-instance v5, Lcom/android/systemui/statusbar/notification/modal/ModalController$enterModal$1;

    invoke-direct {v5, v1, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalController$enterModal$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;I)V

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    if-eqz v6, :cond_17

    const v5, 0x7f0a0102    # @id/backgroundNormal

    .line 85
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz v5, :cond_17

    .line 86
    iput-boolean v3, v5, Lcom/miui/systemui/views/BlurOnDefaultThemeView;->mBlurDisabled:Z

    .line 87
    :cond_17
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    if-nez v5, :cond_18

    goto :goto_b

    :cond_18
    move-object v4, v5

    :goto_b
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v8, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mShowMenu:Z

    invoke-virtual {v4, v5, v8}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->enterModal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 88
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 89
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v8, v8, -0x9

    and-int/lit8 v8, v8, -0x21

    .line 92
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 93
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->apply()V

    .line 94
    const-class v4, Lcom/miui/interfaces/IHapticFeedBack;

    .line 95
    invoke-static {v4}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/interfaces/IHapticFeedBack;

    check-cast v4, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    const-string v7, "long_press"

    .line 96
    invoke-virtual {v4, v3, v7, v5, v2}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 97
    instance-of v2, v6, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    if-eqz v2, :cond_19

    .line 98
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->setIsInModal(Z)V

    .line 99
    :cond_19
    new-instance v2, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;I)V

    .line 100
    new-instance v3, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/modal/ModalController;)V

    const-wide/16 v0, 0x12c

    .line 101
    invoke-static {v2, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->startAnimator(Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;Landroid/animation/Animator$AnimatorListener;J)V

    :cond_1a
    :goto_c
    return-void
.end method

.method public final doSmartActionClick(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 11
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 13
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    .line 19
    move-result-object p2

    .line 22
    instance-of p2, p2, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    .line 23
    if-eqz p2, :cond_1

    .line 25
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    .line 27
    move-result-object p2

    .line 30
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    .line 31
    const/4 v0, 0x2

    .line 33
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->setSelectedAction(I)V

    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 37
    return-void
    .line 40
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 2
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "Notification: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 13
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda5;

    .line 27
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 29
    invoke-static {p1, v0}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    .line 32
    return-void
    .line 35
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getActiveRemoteInputText()Ljava/lang/CharSequence;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getAttachedChildren()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public bridge synthetic getBottomRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getBubbleClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public getChildAfterViewWhenDismissed()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCollapsedHeight()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public getContentTransformationShift()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIconTransformContentShift:I

    .line 2
    int-to-float p0, p0

    .line 4
    return p0
    .line 5
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 12
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method

.method public final getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    .line 7
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return-object p0
    .line 13
.end method

.method public getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    return-object p0
    .line 4
.end method

.method public getExistingSmartReplyState()Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getCurrentSmartReplyState()Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getFeedbackOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnFeedbackClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda0;

    .line 2
    return-object p0
    .line 4
.end method

.method public getGroupParentWhenDismissed()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupParentWhenDismissed:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    return-object p0
    .line 4
.end method

.method public getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    return-object p0
    .line 4
.end method

.method public getHeaderVisibleAmount()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    .line 2
    return p0
    .line 4
.end method

.method public getHeadsUpHeightWithoutHeader()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCollapsedHeightWithoutHeader()I

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 30
    move-result-object p0

    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpHeight(Z)I

    .line 35
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    .line 40
    move-result p0

    .line 43
    return p0
    .line 44
.end method

.method public getHeightWithoutLockscreenConstraints()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIgnoreLockscreenConstraints:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIgnoreLockscreenConstraints:Z

    .line 10
    return v0
    .line 12
.end method

.method public getImageResolver()Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    .line 2
    return-object p0
    .line 4
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getIntrinsicHeight()I

    .line 19
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 30
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    .line 38
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 43
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    .line 49
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 54
    if-eqz v0, :cond_4

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    .line 60
    move-result p0

    .line 63
    return p0

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    .line 65
    move-result v0

    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz v0, :cond_8

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    .line 72
    move-result v0

    .line 75
    if-eqz v0, :cond_8

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 78
    if-nez v0, :cond_7

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 82
    if-eqz v0, :cond_5

    .line 84
    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 87
    move-result v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    .line 93
    move-result v0

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    .line 97
    move-result p0

    .line 100
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 101
    move-result p0

    .line 104
    return p0

    .line 105
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    .line 106
    move-result v0

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    .line 110
    move-result p0

    .line 113
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 114
    move-result p0

    .line 117
    return p0

    .line 118
    :cond_7
    :goto_0
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    .line 120
    move-result p0

    .line 123
    return p0

    .line 124
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 125
    move-result v0

    .line 128
    if-eqz v0, :cond_9

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    .line 131
    move-result p0

    .line 134
    return p0

    .line 135
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    .line 136
    move-result p0

    .line 139
    return p0
    .line 140
.end method

.method public getIsNonblockable()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBlockable:Z

    .line 8
    xor-int/2addr p0, v0

    .line 10
    return p0
    .line 11
.end method

.method public getLayouts()[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 9
    return-object p0
    .line 11
.end method

.method public getMaxContentHeight()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMaxHeight()I

    .line 23
    move-result p0

    .line 26
    return p0
    .line 27
.end method

.method public getMaxExpandHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandHeight()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public bridge synthetic getMaxRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getMaxRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getMinHeight(Z)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getIntrinsicHeight()I

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 31
    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 33
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    .line 35
    if-eqz v0, :cond_1

    .line 37
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    .line 40
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 45
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 49
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 55
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight()I

    .line 63
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_2
    if-nez p1, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    .line 70
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    .line 76
    move-result p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    .line 82
    move-result p0

    .line 85
    return p0

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 87
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    .line 91
    move-result p0

    .line 94
    return p0
    .line 95
.end method

.method public getNotificationColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    return-object p0
    .line 4
.end method

.method public getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method

.method public getNumUniqueChannels()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public getOriginalIconColor()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getOriginalIconColor()I

    .line 18
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getOriginalIconColor()I

    .line 27
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    return v0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 35
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 37
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 39
    const/4 v4, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 44
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    move v3, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v3, v4

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    .line 53
    move-result p0

    .line 56
    if-eqz v3, :cond_3

    .line 57
    goto :goto_1

    .line 59
    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 60
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 62
    move-result-object v3

    .line 65
    iget v4, v3, Landroid/app/Notification;->color:I

    .line 66
    :goto_1
    iget v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    .line 68
    if-ne v3, v4, :cond_4

    .line 70
    iget v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    .line 72
    if-eq v3, v1, :cond_4

    .line 74
    goto :goto_2

    .line 76
    :cond_4
    invoke-static {v2, v4, p0}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    .line 77
    move-result v3

    .line 80
    iput v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    .line 81
    iput v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    .line 83
    :goto_2
    return v3
    .line 85
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result p0

    return p0
.end method

.method public final getPinnedHeadsUpHeight(Z)I
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result p0

    return p0
.end method

.method public getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 2
    return-object p0
    .line 4
.end method

.method public getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSaveSpaceOnLockscreen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSaveSpaceOnLockscreen:Z

    .line 2
    return p0
    .line 4
.end method

.method public getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 8
    return-object p0
    .line 10
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getShelfTransformationTarget()Landroid/view/View;

    .line 18
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getShelfTransformationTarget()Landroid/view/View;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method public getShowSnooze()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowSnooze:Z

    .line 2
    return p0
    .line 4
.end method

.method public getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 11
    :goto_0
    return-object p0
    .line 13
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getTargetPoint()Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetPoint:Landroid/graphics/Point;

    .line 2
    return-object p0
    .line 4
.end method

.method public bridge synthetic getTopRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->TRANSLATE_CONTENT:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$2;

    .line 9
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [F

    .line 12
    const/4 v2, 0x0

    .line 14
    aput p1, v1, v2

    .line 15
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 17
    move-result-object v0

    .line 20
    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    :cond_1
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;

    .line 26
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;F)V

    .line 28
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 34
    return-object v0
    .line 36
.end method

.method public getTranslation()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 18
    if-lez v0, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Landroid/view/View;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 30
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return p0
    .line 36
.end method

.method public getTranslationWhenRemoved()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 2
    return p0
    .line 4
.end method

.method public getUniqueChannels()Landroid/util/ArraySet;
    .locals 8

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_1

    .line 29
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 35
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 37
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 41
    move-result-object v5

    .line 44
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 45
    move-result-object v4

    .line 48
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 49
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 51
    move-result-object v6

    .line 54
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 55
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 57
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 59
    move-result-object v7

    .line 62
    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 69
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 71
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 73
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v4

    .line 80
    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_1
    return-object v0
    .line 89
.end method

.method public bridge synthetic getUpdatedRadii()[F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getUpdatedRadii()[F

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getVisibleNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 14
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final hasExpandingChild()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 2
    return p0
    .line 4
.end method

.method public final hasFinishedInitialization()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final hideBackground()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x1

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final initDimens()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    const v1, 0x7f070dc9    # @dimen/notification_min_height_legacy '64.0dp'

    .line 4
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 7
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeightBeforeN:I

    .line 11
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 13
    const v1, 0x7f070dc6    # @dimen/notification_min_height_before_p '92.0dp'

    .line 15
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeightBeforeP:I

    .line 22
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 24
    const v1, 0x7f070dc7    # @dimen/notification_min_height_before_s '106.0dp'

    .line 26
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 29
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeightBeforeS:I

    .line 33
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 35
    const v1, 0x7f070dc5    # @dimen/notification_min_height '106.0dp'

    .line 37
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 40
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeight:I

    .line 44
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 46
    const v1, 0x7f070dc8    # @dimen/notification_min_height_increased '146.0dp'

    .line 48
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 51
    move-result v0

    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeightLarge:I

    .line 55
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 57
    const v1, 0x7f070dbf    # @dimen/notification_max_height '358.0dp'

    .line 59
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 62
    move-result v0

    .line 65
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxExpandedHeight:I

    .line 66
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 68
    const v1, 0x7f070dbe    # @dimen/notification_max_heads_up_height_legacy '128.0dp'

    .line 70
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 73
    move-result v0

    .line 76
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeN:I

    .line 77
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 79
    const v1, 0x7f070dbb    # @dimen/notification_max_heads_up_height_before_p '148.0dp'

    .line 81
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 84
    move-result v0

    .line 87
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeP:I

    .line 88
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 90
    const v1, 0x7f070dbc    # @dimen/notification_max_heads_up_height_before_s '162.0dp'

    .line 92
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 95
    move-result v0

    .line 98
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeS:I

    .line 99
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 101
    const v1, 0x7f070dba    # @dimen/notification_max_heads_up_height '136.0dp'

    .line 103
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 106
    move-result v0

    .line 109
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    .line 110
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 112
    const v1, 0x7f070dbd    # @dimen/notification_max_heads_up_height_increased '188.0dp'

    .line 114
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 117
    move-result v0

    .line 120
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 123
    move-result-object v0

    .line 126
    const v1, 0x7f050029    # @bool/config_enableNonGroupedNotificationExpand 'true'

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 130
    move-result v1

    .line 133
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEnableNonGroupedNotificationExpand:Z

    .line 134
    const v1, 0x7f050053    # @bool/config_showGroupNotificationBgWhenExpanded 'false'

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 139
    move-result v0

    .line 142
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowGroupBackgroundWhenExpanded:Z

    .line 143
    return-void
    .line 145
.end method

.method public final initialize(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda0;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p7

    .line 3
    move-object v2, p1

    .line 5
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    move-object v2, p3

    .line 8
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 9
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 11
    if-nez v2, :cond_0

    .line 13
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

    .line 15
    iget-object v3, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 17
    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 22
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 24
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 26
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 32
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 34
    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 36
    :cond_1
    move-object v2, p5

    .line 39
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

    .line 40
    move-object v2, p4

    .line 42
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    .line 43
    move-object v2, p6

    .line 45
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 46
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 48
    move-object/from16 v2, p8

    .line 50
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    .line 52
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 54
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setGroupMembershipManager(Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)V

    .line 56
    move-object/from16 v1, p9

    .line 59
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 61
    move-object/from16 v1, p10

    .line 63
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 65
    move-object/from16 v1, p11

    .line 67
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    .line 69
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda0;

    .line 71
    const/4 v2, 0x1

    .line 73
    move-object/from16 v3, p12

    .line 74
    invoke-direct {v1, p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Object;I)V

    .line 76
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnFeedbackClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda0;

    .line 79
    move-object/from16 v1, p13

    .line 81
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 83
    move-object/from16 v1, p14

    .line 85
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 87
    move-object/from16 v1, p15

    .line 89
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 91
    move-object/from16 v1, p16

    .line 93
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 95
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 97
    array-length v2, v1

    .line 99
    const/4 v3, 0x0

    .line 100
    :goto_0
    if-ge v3, v2, :cond_2

    .line 101
    aget-object v4, v1, v3

    .line 103
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 105
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 107
    move-object v5, p2

    .line 109
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputSubcomponentFactory:Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;

    .line 110
    move-object/from16 v6, p22

    .line 112
    iput-object v6, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 114
    move-object/from16 v7, p23

    .line 116
    iput-object v7, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 118
    move-object/from16 v8, p25

    .line 120
    iput-object v8, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 124
    goto :goto_0

    .line 126
    :cond_2
    move-object/from16 v3, p17

    .line 127
    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    .line 129
    move-object/from16 v1, p18

    .line 131
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 133
    move-object/from16 v1, p19

    .line 135
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 137
    move-object/from16 v1, p21

    .line 139
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 141
    move-object/from16 v1, p20

    .line 143
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    .line 145
    move-object/from16 v1, p24

    .line 147
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 149
    return-void
    .line 151
.end method

.method public final isAboveShelf()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 8
    if-nez v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 12
    if-nez v0, :cond_1

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelf:Z

    .line 20
    if-nez v0, :cond_1

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 24
    if-nez v0, :cond_1

    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 28
    if-eqz p0, :cond_2

    .line 30
    :cond_1
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
    .line 35
.end method

.method public final isChildInGroup()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final isContentExpandable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 14
    move-result-object p0

    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    .line 18
    return p0
    .line 20
.end method

.method public final isConversation$1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

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

.method public final isExpandAnimationRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isExpandable()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    .line 13
    xor-int/2addr p0, v1

    .line 15
    return p0

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEnableNonGroupedNotificationExpand:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandable:Z

    .line 21
    if-eqz p0, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1
    .line 27
.end method

.method public final isExpanded(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-eqz p1, :cond_3

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 8
    if-nez p1, :cond_1

    .line 10
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 12
    if-nez p1, :cond_2

    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    .line 16
    if-nez p1, :cond_2

    .line 18
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserExpanded:Z

    .line 20
    if-eqz p0, :cond_3

    .line 22
    :cond_2
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final isGroupExpanded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->isGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final isGroupExpansionChanging()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 15
    return p0
    .line 17
.end method

.method public final isHeadsUp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isHeadsUpAnimatingAway()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isHeadsUpState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method

.method public final isPinned()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isRemoved()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isSoundEffectsEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSecureStateProvider:Ljava/util/function/BooleanSupplier;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    :goto_0
    if-nez v0, :cond_1

    .line 27
    invoke-super {p0}, Landroid/widget/FrameLayout;->isSoundEffectsEnabled()Z

    .line 29
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :goto_1
    return v1
    .line 37
.end method

.method public final isSummaryWithChildren()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    return p0
    .line 4
.end method

.method public final mustStayOnScreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMustStayOnScreen:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final notifyHeightChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_1

    .line 10
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    .line 12
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move p0, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 20
    return-void
    .line 23
.end method

.method public final onAppearAnimationFinished(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetAllContentAlphas()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNotificationFaded(Z)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 12
    :goto_0
    return-void
    .line 15
.end method

.method public final onAttachedChildrenCountChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    .line 7
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 16
    if-eqz v0, :cond_2

    .line 18
    const-string v0, "ExpNotRow#onChildCountChanged (summary)"

    .line 20
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 27
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    .line 33
    move-result-object v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 39
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isConversation$1()Z

    .line 43
    move-result v3

    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateNotificationHeader(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;Z)V

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable()Z

    .line 59
    move-result v2

    .line 62
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 66
    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 70
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenAppearance()V

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 78
    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTopRoundness()F

    .line 84
    move-result v2

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getBottomRoundness()F

    .line 88
    move-result v3

    .line 91
    sget-object v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 92
    invoke-interface {v0, v2, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 94
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 97
    if-eqz p0, :cond_5

    .line 99
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 101
    :cond_5
    return-void
    .line 104
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 11
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSmallRoundness:F

    .line 17
    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 19
    invoke-interface {p0, v0, v0, v1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;)V

    .line 21
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 15
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onConfigurationChanged()V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->getMaxImageWidth()I

    .line 24
    move-result v1

    .line 27
    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mMaxImageWidth:I

    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->getMaxImageHeight()I

    .line 30
    move-result v1

    .line 33
    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mMaxImageHeight:I

    .line 34
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOldConfig:Landroid/content/res/Configuration;

    .line 38
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 40
    if-ne v0, v2, :cond_2

    .line 42
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 44
    or-int/lit8 v0, v0, 0xf

    .line 46
    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 48
    or-int/lit8 v1, v1, 0xf

    .line 50
    if-eq v0, v1, :cond_3

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 54
    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 60
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOldConfig:Landroid/content/res/Configuration;

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 65
    return-void
    .line 68
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onDensityOrFontScaleChanged()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->initDimens()V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reInflateViews()V

    .line 11
    return-void
    .line 14
.end method

.method public final onExpandedByGesture(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    move-result-object v0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    const/16 v0, 0x19a

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    const/16 v0, 0x199

    .line 22
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 26
    return-void
    .line 29
.end method

.method public final onExpansionChanged(ZZ)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 3
    move-result v1

    .line 6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 7
    if-eqz v2, :cond_1

    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 11
    if-eqz v2, :cond_0

    .line 13
    if-eqz p2, :cond_1

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->isGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 21
    move-result v1

    .line 24
    :cond_1
    if-eq v1, p2, :cond_7

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 27
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

    .line 30
    if-eqz p2, :cond_5

    .line 32
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    .line 34
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    .line 36
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 38
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 40
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 42
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 44
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 46
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 48
    move-result-object v3

    .line 51
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 52
    move-result-object v3

    .line 55
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    .line 56
    invoke-virtual {p2, v2, p1, v1, v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->onExpansionChanged(Ljava/lang/String;ZZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)V

    .line 58
    const-class p2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 61
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    move-result-object p2

    .line 66
    check-cast p2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 67
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 69
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 71
    move-result-object v12

    .line 74
    if-nez v12, :cond_2

    .line 75
    goto/16 :goto_0

    .line 77
    :cond_2
    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 79
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 84
    const-string v3, "com.miui.systemAdSolution"

    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v2

    .line 90
    if-nez v2, :cond_3

    .line 91
    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 93
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 98
    const-string v3, "com.miui.msa.global"

    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    :cond_3
    const/4 v0, 0x1

    .line 107
    :cond_4
    if-eqz v0, :cond_5

    .line 108
    new-instance v0, Lcom/miui/systemui/events/ExpansionEvent;

    .line 110
    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 112
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 117
    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 118
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 120
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 122
    move-result-wide v5

    .line 125
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 126
    move-result-object v7

    .line 129
    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 130
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 132
    move-result v8

    .line 135
    invoke-virtual {p2, v12}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifIndex(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 136
    move-result v9

    .line 139
    move-object v2, v0

    .line 140
    move v10, p1

    .line 141
    move v11, v1

    .line 142
    invoke-direct/range {v2 .. v11}, Lcom/miui/systemui/events/ExpansionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZIZZ)V

    .line 143
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 146
    invoke-interface {v2, v0}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 148
    new-instance v2, Ljava/util/HashMap;

    .line 151
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-virtual {v0}, Lcom/miui/systemui/events/ExpansionEvent;->getIndex()I

    .line 156
    move-result v0

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v0

    .line 163
    const-string v3, "index"

    .line 164
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v0, "user_action"

    .line 169
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    move-result-object p1

    .line 175
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string p1, "expanded"

    .line 179
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    move-result-object v0

    .line 184
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object p1, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 188
    const-string/jumbo v0, "sbn"

    .line 190
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 196
    const-string v0, "notification_expansion_changed"

    .line 198
    invoke-virtual {p2, p1, v0, v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 200
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 203
    if-eqz p1, :cond_6

    .line 205
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 207
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->onExpansionChanged$1()V

    .line 209
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpansionChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;

    .line 212
    if-eqz p0, :cond_7

    .line 214
    check-cast p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1;

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1;->onExpansionChanged(Z)V

    .line 218
    :cond_7
    return-void
    .line 221
.end method

.method public onFinishInflate()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a034b    # @id/expandedPublic

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 14
    const v0, 0x7f0a034a    # @id/expanded

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 27
    filled-new-array {v0, v1}, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 29
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 33
    array-length v1, v0

    .line 35
    const/4 v2, 0x0

    .line 36
    move v3, v2

    .line 37
    :goto_0
    if-ge v3, v1, :cond_0

    .line 38
    aget-object v4, v0, v3

    .line 40
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    .line 42
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContainingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    const v0, 0x7f0a06aa    # @id/notification_guts_stub

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Landroid/view/ViewStub;

    .line 60
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    .line 62
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda3;

    .line 64
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 69
    const v0, 0x7f0a01e8    # @id/child_container_stub

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v0

    .line 78
    check-cast v0, Landroid/view/ViewStub;

    .line 79
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    .line 81
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda3;

    .line 83
    const/4 v3, 0x1

    .line 85
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 97
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 99
    move-result v0

    .line 102
    if-ge v2, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 107
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    .line 126
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    return-void
    .line 131
.end method

.method public onFinishedExpansionChange()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 5
    return-void
    .line 8
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    .line 5
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    move v0, v1

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    move v0, v2

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 21
    if-eqz v0, :cond_3

    .line 23
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v1

    .line 37
    :goto_0
    if-eqz v0, :cond_3

    .line 38
    move v0, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move v0, v1

    .line 42
    :goto_1
    xor-int/2addr v0, v2

    .line 43
    :goto_2
    if-eqz v0, :cond_4

    .line 44
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 46
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 48
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSnoozed:Z

    .line 60
    if-nez v0, :cond_5

    .line 62
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 66
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 69
    move-result v0

    .line 72
    if-nez v0, :cond_8

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 75
    if-eqz v0, :cond_7

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 79
    if-eqz v0, :cond_6

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 83
    move-result v0

    .line 86
    if-eqz v0, :cond_9

    .line 87
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 89
    move-result v0

    .line 92
    move v1, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 95
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 99
    move-result v1

    .line 102
    goto :goto_3

    .line 103
    :cond_8
    move v2, v0

    .line 104
    :cond_9
    :goto_3
    if-eqz v2, :cond_b

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSnoozed:Z

    .line 107
    if-nez v0, :cond_b

    .line 109
    if-eqz v1, :cond_a

    .line 111
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 115
    goto :goto_4

    .line 118
    :cond_a
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 121
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 124
    move-result-object v0

    .line 127
    if-eqz v0, :cond_c

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 130
    move-result-object v1

    .line 133
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 134
    move-result-object v0

    .line 137
    if-eqz v0, :cond_c

    .line 138
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 140
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 142
    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    move-result-object p0

    .line 149
    const v1, 0x7f130891    # @string/notification_menu_snooze_action 'Remind me'

    .line 150
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 156
    const v1, 0x7f0a0088    # @id/action_snooze

    .line 157
    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 163
    :cond_c
    return-void
    .line 166
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 8
    const/4 v1, 0x2

    .line 10
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 8
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 8
    move-result p1

    .line 11
    div-int/lit8 p1, p1, 0x2

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 14
    move-result p2

    .line 17
    div-int/lit8 p2, p2, 0x2

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(II)V

    .line 20
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
    .line 26
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performClick()Z

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    const-string v0, "ExpNotRow#onLayout"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->appendTraceStyleTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 11
    move-result v0

    .line 14
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 18
    move-result p1

    .line 21
    if-eq v0, p1, :cond_1

    .line 22
    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 26
    move-result p1

    .line 29
    if-lez p1, :cond_1

    .line 30
    :cond_0
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 36
    if-eqz p1, :cond_2

    .line 38
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 40
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 46
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onParentHeightUpdate()V

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getVisibleNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 51
    move-result-object p1

    .line 54
    const/4 p2, 0x0

    .line 55
    if-nez p1, :cond_3

    .line 56
    move-object p1, p2

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getIcon()Lcom/android/internal/widget/CachingIconView;

    .line 60
    move-result-object p1

    .line 63
    :goto_0
    if-eqz p1, :cond_4

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    .line 66
    move-result p3

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->getHeight()I

    .line 70
    move-result p1

    .line 73
    add-int/2addr p1, p3

    .line 74
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIconTransformContentShift:I

    .line 75
    goto :goto_1

    .line 77
    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentShift:I

    .line 78
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIconTransformContentShift:I

    .line 80
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;

    .line 82
    if-eqz p0, :cond_5

    .line 84
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    .line 86
    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;

    .line 96
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 98
    return-void
    .line 101
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    const-string v0, "ExpNotRow#onMeasure"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->appendTraceStyleTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onMeasure(II)V

    .line 11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 14
    return-void
    .line 17
.end method

.method public onNotificationRankingUpdated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 8
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public onNotificationUpdated()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    const-string v1, "ExpNotRow#onNotifUpdated (summary)"

    .line 8
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "ExpNotRow#onNotifUpdated (leaf)"

    .line 14
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 16
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 19
    array-length v2, v1

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_1
    const/4 v5, 0x1

    .line 23
    if-ge v4, v2, :cond_1a

    .line 24
    aget-object v14, v1, v4

    .line 26
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 28
    iput-object v15, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 30
    iget v6, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    .line 32
    const/16 v7, 0x18

    .line 34
    if-ge v6, v7, :cond_1

    .line 36
    move v6, v5

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    const/4 v6, 0x0

    .line 40
    :goto_2
    iput-boolean v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mBeforeN:Z

    .line 41
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    .line 43
    iget-object v6, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 46
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 48
    if-eqz v7, :cond_2

    .line 50
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 52
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 54
    :cond_2
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 57
    if-eqz v7, :cond_3

    .line 59
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 61
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 63
    :cond_3
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 66
    if-eqz v7, :cond_4

    .line 68
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 70
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 72
    :cond_4
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 75
    const/4 v13, 0x0

    .line 77
    if-eqz v6, :cond_e

    .line 78
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 80
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 82
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 84
    move-result-object v6

    .line 87
    invoke-virtual {v6, v5}, Landroid/app/Notification;->findRemoteInputActionPair(Z)Landroid/util/Pair;

    .line 88
    move-result-object v6

    .line 91
    if-eqz v6, :cond_5

    .line 92
    move/from16 v16, v5

    .line 94
    goto :goto_3

    .line 96
    :cond_5
    const/16 v16, 0x0

    .line 97
    :goto_3
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 99
    if-eqz v7, :cond_6

    .line 101
    iget-object v8, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 103
    iget-object v10, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 105
    iget-object v11, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 107
    iget-object v12, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 109
    iget-object v9, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 111
    move-object v6, v14

    .line 113
    move-object/from16 v17, v9

    .line 114
    move/from16 v9, v16

    .line 116
    move-object v3, v13

    .line 118
    move-object/from16 v13, v17

    .line 119
    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/policy/RemoteInputViewController;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;

    .line 121
    move-result-object v6

    .line 124
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 125
    iput-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 127
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 129
    iput-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 131
    if-eqz v6, :cond_8

    .line 133
    check-cast v6, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 135
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->bind()V

    .line 137
    goto :goto_4

    .line 140
    :cond_6
    move-object v3, v13

    .line 141
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 142
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 144
    if-eqz v6, :cond_7

    .line 146
    check-cast v6, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 148
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->unbind()V

    .line 150
    :cond_7
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 153
    :cond_8
    :goto_4
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 155
    if-eqz v6, :cond_9

    .line 157
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 159
    if-eq v6, v7, :cond_9

    .line 161
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 163
    :cond_9
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 166
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 168
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 170
    if-eqz v7, :cond_a

    .line 172
    iget-object v8, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 174
    iget-object v10, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 176
    iget-object v11, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 178
    iget-object v12, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 180
    iget-object v13, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 182
    move-object v6, v14

    .line 184
    move/from16 v9, v16

    .line 185
    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/policy/RemoteInputViewController;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;

    .line 187
    move-result-object v6

    .line 190
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 191
    iput-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 193
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 195
    iput-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 197
    if-eqz v6, :cond_c

    .line 199
    check-cast v6, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 201
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->bind()V

    .line 203
    goto :goto_5

    .line 206
    :cond_a
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 207
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 209
    if-eqz v6, :cond_b

    .line 211
    check-cast v6, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 213
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->unbind()V

    .line 215
    :cond_b
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 218
    :cond_c
    :goto_5
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 220
    if-eqz v6, :cond_d

    .line 222
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 224
    if-eq v6, v7, :cond_d

    .line 226
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 228
    :cond_d
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 231
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 233
    goto :goto_6

    .line 235
    :cond_e
    move-object v3, v13

    .line 236
    :goto_6
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    .line 237
    if-nez v6, :cond_f

    .line 239
    goto/16 :goto_c

    .line 241
    :cond_f
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 243
    if-eqz v7, :cond_10

    .line 245
    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyExternalSmartReplyState(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)V

    .line 247
    :cond_10
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 250
    if-eqz v6, :cond_18

    .line 252
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    .line 254
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyExternalSmartReplyState(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)V

    .line 256
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 259
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    .line 261
    iget-object v8, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 263
    iget-object v9, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    .line 265
    invoke-static {v6, v7, v8, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 267
    move-result-object v6

    .line 270
    iput-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 271
    if-eqz v6, :cond_18

    .line 273
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    .line 275
    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    .line 277
    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 279
    if-nez v7, :cond_11

    .line 281
    if-eqz v6, :cond_18

    .line 283
    :cond_11
    if-nez v7, :cond_12

    .line 285
    const/16 v20, 0x0

    .line 287
    goto :goto_7

    .line 289
    :cond_12
    iget-object v8, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    .line 290
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 292
    move-result v8

    .line 295
    move/from16 v20, v8

    .line 296
    :goto_7
    if-nez v6, :cond_13

    .line 298
    const/16 v21, 0x0

    .line 300
    goto :goto_8

    .line 302
    :cond_13
    iget-object v8, v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    .line 303
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 305
    move-result v8

    .line 308
    move/from16 v21, v8

    .line 309
    :goto_8
    if-nez v7, :cond_14

    .line 311
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->fromAssistant:Z

    .line 313
    goto :goto_9

    .line 315
    :cond_14
    iget-boolean v6, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    .line 316
    :goto_9
    move/from16 v22, v6

    .line 318
    if-eqz v7, :cond_17

    .line 320
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 322
    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    .line 324
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    .line 326
    move-result v7

    .line 329
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    if-eq v7, v5, :cond_16

    .line 333
    const/4 v8, 0x2

    .line 335
    if-eq v7, v8, :cond_15

    .line 336
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEditChoicesBeforeSending:Z

    .line 338
    goto :goto_a

    .line 340
    :cond_15
    move v6, v5

    .line 341
    goto :goto_a

    .line 342
    :cond_16
    const/4 v6, 0x0

    .line 343
    :goto_a
    if-eqz v6, :cond_17

    .line 344
    move/from16 v23, v5

    .line 346
    goto :goto_b

    .line 348
    :cond_17
    const/16 v23, 0x0

    .line 349
    :goto_b
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 351
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 353
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    :try_start_0
    iget-object v6, v6, Lcom/android/systemui/statusbar/SmartReplyController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 358
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 360
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 362
    move-result-object v19

    .line 365
    move-object/from16 v18, v6

    .line 366
    invoke-interface/range {v18 .. v23}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :catch_0
    :cond_18
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 371
    if-eqz v6, :cond_19

    .line 373
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    .line 375
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyExternalSmartReplyState(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)V

    .line 377
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 380
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mShowInHeadsUp:Z

    .line 382
    if-eqz v6, :cond_19

    .line 384
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 386
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    .line 388
    iget-object v8, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 390
    iget-object v9, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    .line 392
    invoke-static {v6, v7, v8, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 394
    move-result-object v6

    .line 397
    iput-object v6, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 398
    :cond_19
    :goto_c
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateLegacy()V

    .line 400
    iput-boolean v5, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    .line 403
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 405
    iput-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 407
    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 409
    invoke-virtual {v14, v3, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySystemActions(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 411
    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 414
    invoke-virtual {v14, v3, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySystemActions(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 416
    add-int/lit8 v4, v4, 0x1

    .line 419
    goto/16 :goto_1

    .line 421
    :cond_1a
    const/4 v3, 0x0

    .line 423
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 426
    move-result-object v1

    .line 429
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 430
    move-result-object v1

    .line 433
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 434
    and-int/lit8 v1, v1, 0x30

    .line 436
    const/16 v2, 0x20

    .line 438
    if-ne v1, v2, :cond_1b

    .line 440
    move v3, v5

    .line 442
    goto :goto_d

    .line 443
    :cond_1b
    const/4 v3, 0x0

    .line 444
    :goto_d
    iget-object v1, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 445
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 447
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 449
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 451
    move-result-object v2

    .line 454
    iget v2, v2, Landroid/app/Notification;->color:I

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    .line 457
    move-result v4

    .line 460
    invoke-static {v1, v2, v4, v3}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    .line 461
    move-result v1

    .line 464
    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationColor:I

    .line 465
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 467
    if-eqz v1, :cond_1c

    .line 469
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 471
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 473
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 475
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 478
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 480
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 482
    :cond_1c
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 485
    if-eqz v1, :cond_1d

    .line 487
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 489
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isConversation$1()Z

    .line 493
    move-result v3

    .line 496
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateNotificationHeader(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;Z)V

    .line 497
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 500
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->onNotificationUpdated()V

    .line 502
    :cond_1d
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAnimationRunning:Z

    .line 505
    if-eqz v1, :cond_1e

    .line 507
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAnimationRunning(Z)V

    .line 509
    :cond_1e
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 512
    if-eqz v1, :cond_1f

    .line 514
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 516
    :cond_1f
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 519
    if-eqz v1, :cond_20

    .line 521
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 523
    if-eqz v2, :cond_20

    .line 525
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 527
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenAppearance()V

    .line 529
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAttachedChildrenCountChanged()V

    .line 532
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 535
    const/4 v2, 0x0

    .line 537
    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateLimits()V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateRippleAllowed()V

    .line 547
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUpdateSelfBackgroundOnUpdate:Z

    .line 550
    if-eqz v1, :cond_21

    .line 552
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUpdateSelfBackgroundOnUpdate:Z

    .line 554
    invoke-super/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    .line 556
    :cond_21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 559
    return-void
    .line 562
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 4
    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 8
    move-result-object p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    const/4 p2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    if-eqz p2, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 19
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 31
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldUseDefaultMenuItems()Z

    .line 33
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 39
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createConversationItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 46
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createPartialConversationItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 80
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuItems(Ljava/util/ArrayList;)V

    .line 82
    :cond_3
    if-eqz p2, :cond_4

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 87
    :cond_4
    :goto_1
    return-void
    .line 90
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 4
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 6
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    .line 15
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 24
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 28
    :cond_1
    return-void
    .line 31
.end method

.method public final onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 18
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
    .line 24
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    move-result p0

    .line 26
    return p0
    .line 27
.end method

.method public final onUiModeChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUpdateSelfBackgroundOnUpdate:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reInflateViews()V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onUiModeChanged()V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    return-void
    .line 36
.end method

.method public final performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

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
    const/16 p2, 0x20

    .line 10
    if-eq p1, p2, :cond_6

    .line 12
    const/high16 p2, 0x40000

    .line 14
    if-eq p1, p2, :cond_5

    .line 16
    const/high16 p2, 0x80000

    .line 18
    if-eq p1, p2, :cond_5

    .line 20
    const/high16 p2, 0x100000

    .line 22
    if-eq p1, p2, :cond_4

    .line 24
    const p2, 0x7f0a0088    # @id/action_snooze

    .line 26
    const/4 v1, 0x0

    .line 29
    if-ne p1, p2, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 32
    move-result-object p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    return v1

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p2

    .line 42
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 43
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 49
    move-result p2

    .line 52
    div-int/lit8 p2, p2, 0x2

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 55
    move-result p2

    .line 58
    div-int/lit8 p2, p2, 0x2

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 61
    :cond_2
    return v0

    .line 64
    :cond_3
    return v1

    .line 65
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performDismiss(Z)V

    .line 66
    return v0

    .line 69
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    .line 70
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->onClick(Landroid/view/View;)V

    .line 72
    return v0

    .line 75
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 76
    move-result p1

    .line 79
    div-int/lit8 p1, p1, 0x2

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 82
    move-result p2

    .line 85
    div-int/lit8 p2, p2, 0x2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(II)V

    .line 88
    return v0
    .line 91
.end method

.method public final performClick()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateRippleAllowed()V

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public final performDismiss(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2
    const-string v1, "notification_dismissed"

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDismissed:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mRefocusOnDismiss:Z

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setDragController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupParentWhenDismissed:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 27
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 29
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 31
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDismissed()V

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 42
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 44
    move-result-object p1

    .line 47
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 48
    move-result v0

    .line 51
    const/4 v1, -0x1

    .line 52
    if-eq v0, v1, :cond_0

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    move-result v1

    .line 58
    sub-int/2addr v1, v2

    .line 59
    if-ge v0, v1, :cond_0

    .line 60
    add-int/2addr v0, v2

    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 66
    check-cast p1, Landroid/view/View;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 73
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    .line 75
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;->isDismissable(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 77
    move-result p1

    .line 80
    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    .line 83
    if-eqz p1, :cond_1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;

    .line 89
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;)V

    .line 91
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 94
    const/4 v1, 0x2

    .line 96
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->registerFutureDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;

    .line 97
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->run()V

    .line 101
    :cond_1
    return-void
    .line 104
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    const-wide/16 v3, 0x0

    .line 3
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    .line 17
    move-result-object v9

    .line 20
    if-eqz v9, :cond_0

    .line 21
    new-instance v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;

    .line 23
    move-object v0, v10

    .line 25
    move-object v1, p0

    .line 26
    move-wide v2, p1

    .line 27
    move/from16 v4, p5

    .line 28
    move/from16 v5, p6

    .line 30
    move/from16 v6, p7

    .line 32
    move-object/from16 v7, p8

    .line 34
    move-object/from16 v8, p9

    .line 36
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;JFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    .line 38
    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41
    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    .line 44
    invoke-virtual {v9}, Landroid/animation/Animator;->getDuration()J

    .line 47
    move-result-wide v0

    .line 50
    return-wide v0

    .line 51
    :cond_0
    move-object v0, p0

    .line 52
    move-wide v1, p1

    .line 53
    move/from16 v5, p5

    .line 54
    move/from16 v6, p6

    .line 56
    move/from16 v7, p7

    .line 58
    move-object/from16 v8, p8

    .line 60
    move-object/from16 v9, p9

    .line 62
    invoke-super/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J

    .line 64
    const-wide/16 v0, 0x0

    .line 67
    return-wide v0
    .line 69
.end method

.method public final reInflateViews()V
    .locals 7

    .line 1
    const-string v0, "ExpandableNotificationRow#reInflateViews"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 13
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->reInflateViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 20
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 25
    move-result v2

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 29
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    move-result-object v3

    .line 37
    const v4, 0x7f0d0286    # @layout/notification_guts 'res/layout/notification_guts.xml'

    .line 38
    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 45
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 47
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 49
    if-eqz v0, :cond_1

    .line 51
    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/16 v0, 0x8

    .line 55
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 60
    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 65
    const/4 v2, 0x0

    .line 67
    if-nez v0, :cond_3

    .line 68
    move-object v0, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    :goto_1
    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 78
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 80
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 82
    invoke-interface {v0, p0, v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 87
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 89
    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 94
    array-length v3, v0

    .line 96
    :goto_2
    if-ge v1, v3, :cond_6

    .line 97
    aget-object v4, v0, v1

    .line 99
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v5

    .line 104
    const v6, 0x7f0707c5    # @dimen/min_notification_layout_height '73.45dp'

    .line 105
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 108
    move-result v5

    .line 111
    iput v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    .line 112
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 114
    if-eqz v5, :cond_5

    .line 116
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 118
    if-eqz v5, :cond_5

    .line 120
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 122
    iput-object v2, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 125
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    .line 127
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 130
    goto :goto_2

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 133
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 135
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->clearPackageContext()V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 147
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 148
    const/4 v1, 0x1

    .line 150
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mViewsNeedReinflation:Z

    .line 151
    iget v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    .line 153
    iget v3, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    .line 155
    or-int/2addr v1, v3

    .line 157
    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 162
    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/statusbar/notification/row/BindStage;->requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;

    .line 164
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 167
    return-void
    .line 170
.end method

.method public final removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 7
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setKeepInParentForDismissAnimation(Z)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAttachedChildrenCountChanged()V

    .line 13
    const/4 p0, 0x0

    .line 16
    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 17
    return-void
    .line 20
.end method

.method public final removeChildrenWithKeepInParent()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 9
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_3

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 34
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mKeepInParentForDismissAnimation:Z

    .line 36
    if-eqz v4, :cond_1

    .line 38
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 40
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 42
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 46
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setKeepInParentForDismissAnimation(Z)V

    .line 49
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

    .line 52
    if-eqz v4, :cond_2

    .line 54
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 56
    move-result-object v3

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 60
    move-result-object v5

    .line 63
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    .line 64
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mLogBufferLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;

    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 71
    sget-object v7, Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger$logKeepInParentChildDetached$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger$logKeepInParentChildDetached$2;

    .line 73
    const-string v8, "NotifRow"

    .line 75
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 77
    invoke-virtual {v4, v8, v6, v7, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 79
    move-result-object v2

    .line 82
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 86
    invoke-interface {v2, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 87
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 93
    invoke-interface {v2, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 97
    :cond_2
    const/4 v2, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAttachedChildrenCountChanged()V

    .line 104
    :cond_4
    return-void
    .line 107
.end method

.method public final resetAllContentAlphas()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 9
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 33
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 35
    :cond_0
    return-void
    .line 38
.end method

.method public resetTranslation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 14
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 20
    if-eqz p0, :cond_2

    .line 22
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 24
    :cond_2
    return-void
    .line 27
.end method

.method public final resetUserExpansion()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 3
    move-result v1

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserExpanded:Z

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 11
    move-result v2

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->onExpansionChanged$1()V

    .line 23
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 29
    return-void
    .line 32
.end method

.method public setAboveShelf(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 2
    move-result v0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelf:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 8
    move-result p1

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    .line 14
    xor-int/lit8 p1, v0, 0x1

    .line 16
    check-cast p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->onAboveShelfStateChanged(Z)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public setAboveShelfChangedListener(Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    .line 2
    return-void
    .line 4
.end method

.method public setActualHeight(IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setActualHeight(IZ)V

    .line 12
    if-eqz v0, :cond_1

    .line 15
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    .line 17
    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object p2

    .line 24
    check-cast p2, Landroid/view/ViewGroup;

    .line 25
    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 32
    if-eqz p2, :cond_2

    .line 34
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 36
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setActualHeight(I)V

    .line 40
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    .line 44
    move-result p2

    .line 47
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result p2

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 52
    array-length v2, v0

    .line 54
    :goto_1
    if-ge v1, v2, :cond_4

    .line 55
    aget-object v3, v0, v1

    .line 57
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsInlineReplyAnimationFlagEnabled:Z

    .line 59
    if-eqz v4, :cond_3

    .line 61
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContentHeight(I)V

    .line 63
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContentHeight(I)V

    .line 67
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_1

    .line 72
    :cond_4
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 73
    if-eqz p2, :cond_5

    .line 75
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 77
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setActualHeight(I)V

    .line 79
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 82
    if-eqz p2, :cond_6

    .line 84
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setActualHeight(I)V

    .line 86
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 89
    if-eqz p1, :cond_7

    .line 91
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 93
    move-result-object p1

    .line 96
    if-eqz p1, :cond_7

    .line 97
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 99
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onParentHeightUpdate()V

    .line 101
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    .line 104
    if-eqz p1, :cond_8

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 108
    move-result p1

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 112
    move-result p2

    .line 115
    if-ne p1, p2, :cond_8

    .line 116
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    .line 118
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 120
    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    .line 124
    :cond_8
    return-void
    .line 126
.end method

.method public setActualHeightAnimating(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContentHeightAnimating(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setAnimationRunning(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_6

    .line 7
    aget-object v4, v0, v3

    .line 9
    if-eqz v4, :cond_5

    .line 11
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentAnimating:Z

    .line 13
    if-eq p1, v5, :cond_0

    .line 15
    const/4 v5, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    move v5, v2

    .line 19
    :goto_1
    if-eqz v5, :cond_4

    .line 20
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 22
    if-eqz v5, :cond_1

    .line 24
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setAnimationsRunning(Z)V

    .line 26
    :cond_1
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 29
    if-eqz v5, :cond_2

    .line 31
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setAnimationsRunning(Z)V

    .line 33
    :cond_2
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 36
    if-eqz v5, :cond_3

    .line 38
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setAnimationsRunning(Z)V

    .line 40
    :cond_3
    iput-boolean p1, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentAnimating:Z

    .line 43
    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    .line 45
    move-result-object v5

    .line 48
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    .line 49
    move-result-object v6

    .line 52
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    .line 53
    move-result-object v4

    .line 56
    invoke-static {v5, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(Landroid/view/View;Z)V

    .line 57
    invoke-static {v6, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(Landroid/view/View;Z)V

    .line 60
    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(Landroid/view/View;Z)V

    .line 63
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 69
    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 75
    move-result-object v0

    .line 78
    if-eqz v0, :cond_7

    .line 79
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getIcon()Lcom/android/internal/widget/CachingIconView;

    .line 81
    move-result-object v0

    .line 84
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(Landroid/view/View;Z)V

    .line 85
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 88
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getLowPriorityViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 90
    move-result-object v0

    .line 93
    if-eqz v0, :cond_8

    .line 94
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getIcon()Lcom/android/internal/widget/CachingIconView;

    .line 96
    move-result-object v0

    .line 99
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(Landroid/view/View;Z)V

    .line 100
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 105
    move-result-object v0

    .line 108
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 109
    move-result v1

    .line 112
    if-ge v2, v1, :cond_9

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 118
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 119
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAnimationRunning(Z)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 124
    goto :goto_2

    .line 126
    :cond_9
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAnimationRunning:Z

    .line 127
    return-void
    .line 129
.end method

.method public final setBackgroundTintColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 5
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setBackgroundTintColor(I)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setChildrenContainer(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2
    return-void
    .line 4
.end method

.method public setChildrenExpanded(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    .line 2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 4
    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setChildrenExpanded(Z)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 14
    return-void
    .line 17
.end method

.method public final setChronometerRunning(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Z)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 2
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunningForChild(Landroid/view/View;Z)V

    .line 6
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunningForChild(Landroid/view/View;Z)V

    .line 7
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunningForChild(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public setChronometerRunning(Z)V
    .locals 2

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Z)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Z)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 7
    if-eq p1, v0, :cond_2

    .line 9
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipBottomAmount(I)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 14
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_1

    .line 18
    aget-object v3, v0, v2

    .line 20
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipBottomAmount(I)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 28
    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setClipBottomAmount(I)V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 35
    if-eqz v0, :cond_3

    .line 37
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 39
    if-nez p0, :cond_3

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setClipBottomAmount(I)V

    .line 43
    :cond_3
    return-void
    .line 46
.end method

.method public setClipToActualHeight(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    .line 6
    if-eqz v2, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    move v2, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move v2, v1

    .line 13
    :goto_1
    invoke-super {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipToActualHeight(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 17
    move-result-object v2

    .line 20
    if-nez p1, :cond_2

    .line 21
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    .line 23
    if-eqz p0, :cond_3

    .line 25
    :cond_2
    move v0, v1

    .line 27
    :cond_3
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipToActualHeight(Z)V

    .line 28
    return-void
    .line 31
.end method

.method public setClipTopAmount(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 5
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    aget-object v3, v0, v2

    .line 11
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipTopAmount(I)V

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setClipTopAmount(I)V

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public setContentAlpha(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    aget-object v3, v0, v2

    .line 8
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 16
    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setContentAlpha(F)V

    .line 20
    :cond_1
    return-void
    .line 23
.end method

.method public setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    move-result-object v0

    .line 5
    if-ne v0, p3, :cond_0

    .line 6
    iget p3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 8
    if-eq p1, p3, :cond_0

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 12
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public setDismissUsingRowTranslationX(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 2
    if-eq p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpl-float v2, v0, v1

    .line 11
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setTranslation(F)V

    .line 15
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setDismissUsingRowTranslationX(Z)V

    .line 18
    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setTranslation(F)V

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 26
    if-eqz p0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 30
    move-result-object p0

    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 35
    move-result v1

    .line 38
    if-ge v0, v1, :cond_2

    .line 39
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 45
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setDismissUsingRowTranslationX(Z)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    return-void
    .line 53
.end method

.method public setDragController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    .line 2
    return-void
    .line 4
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    return-void
    .line 4
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->cancelAnimations(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 24
    const v2, 0x7f071291    # @dimen/z_distance_between_notifications '0.5dp'

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result v1

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v0

    .line 35
    mul-int/lit8 v0, v0, 0x4

    .line 36
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationLaunchHeight:I

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 44
    move-result v1

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 54
    if-eqz v1, :cond_1

    .line 56
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetAllContentAlphas()V

    .line 63
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 70
    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 77
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setMinimumHeightForClipping(I)V

    .line 79
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 82
    if-eqz v0, :cond_3

    .line 84
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 86
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 88
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 90
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setExpandAnimationRunning(Z)V

    .line 104
    return-void
    .line 107
.end method

.method public setExpandable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandable:Z

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable()Z

    .line 6
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    .line 11
    return-void
    .line 14
.end method

.method public setExpandingClipPath(Landroid/graphics/Path;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandingClipPath:Landroid/graphics/Path;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    .line 18
    return-void
    .line 21
.end method

.method public setGroupExpansionChanging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 2
    return-void
    .line 4
.end method

.method public setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 16
    move-result-object p0

    .line 19
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    .line 20
    move-result-object p1

    .line 23
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setGutsContent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_2

    .line 6
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 10
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    aget-object v4, v0, v3

    .line 17
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeaderVisibleAmount(F)V

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setHeaderVisibleAmount(F)V

    .line 29
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 32
    :cond_2
    return-void
    .line 35
.end method

.method public setHeadsUp(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 6
    move-result v1

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 12
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUp(Z)V

    .line 14
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 21
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 26
    move-result v2

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 33
    :cond_1
    const/4 v1, 0x1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMustStayOnScreen:Z

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 41
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 45
    move-result p1

    .line 48
    if-eq p1, v0, :cond_3

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    .line 51
    xor-int/lit8 p1, v0, 0x1

    .line 53
    check-cast p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->onAboveShelfStateChanged(Z)V

    .line 57
    :cond_3
    :goto_0
    return-void
    .line 60
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 14
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 16
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpAnimatingAway(Z)V

    .line 18
    if-eqz v1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object p1

    .line 30
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 34
    move-result p1

    .line 37
    if-eq p1, v0, :cond_2

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    .line 40
    xor-int/lit8 p1, v0, 0x1

    .line 42
    check-cast p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->onAboveShelfStateChanged(Z)V

    .line 46
    :cond_2
    return-void
    .line 49
.end method

.method public setHeadsUpAnimatingAwayListener(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

    .line 2
    return-void
    .line 4
.end method

.method public setHeadsUpIsVisible()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMustStayOnScreen:Z

    .line 6
    return-void
    .line 8
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    move-wide/from16 v2, p3

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 8
    move-result v4

    .line 11
    const/16 v5, 0x8

    .line 12
    if-ne v4, v5, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    .line 17
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitive:Z

    .line 19
    const/4 v6, 0x0

    .line 21
    if-eqz v5, :cond_1

    .line 22
    if-eqz p1, :cond_1

    .line 24
    const/4 v5, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v5, v6

    .line 28
    :goto_0
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    .line 29
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 31
    if-eqz v8, :cond_2

    .line 33
    if-ne v5, v4, :cond_2

    .line 35
    return-void

    .line 37
    :cond_2
    if-nez v1, :cond_5

    .line 38
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 40
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 46
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 49
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 51
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 55
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 58
    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 66
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetAllContentAlphas()V

    .line 69
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 72
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    .line 74
    if-eqz v3, :cond_4

    .line 76
    move v3, v6

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v3, 0x4

    .line 80
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 84
    goto/16 :goto_6

    .line 87
    :cond_5
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 89
    if-eqz v4, :cond_6

    .line 91
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 93
    filled-new-array {v4}, [Landroid/view/View;

    .line 95
    move-result-object v4

    .line 98
    goto :goto_2

    .line 99
    :cond_6
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 100
    filled-new-array {v4}, [Landroid/view/View;

    .line 102
    move-result-object v4

    .line 105
    :goto_2
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 106
    filled-new-array {v8}, [Landroid/view/View;

    .line 108
    move-result-object v8

    .line 111
    if-eqz v5, :cond_7

    .line 112
    move-object v9, v4

    .line 114
    goto :goto_3

    .line 115
    :cond_7
    move-object v9, v8

    .line 116
    :goto_3
    if-eqz v5, :cond_8

    .line 117
    move-object v4, v8

    .line 119
    :cond_8
    const-wide/16 v10, 0xa

    .line 120
    div-long v10, p5, v10

    .line 122
    const-wide/16 v12, 0x3

    .line 124
    div-long v12, p5, v12

    .line 126
    const-wide/16 v14, 0x2

    .line 128
    div-long/2addr v10, v14

    .line 130
    add-long/2addr v12, v10

    .line 131
    sub-long v14, p5, v12

    .line 132
    add-long/2addr v14, v10

    .line 134
    array-length v5, v9

    .line 135
    move v8, v6

    .line 136
    :goto_4
    const/4 v10, 0x0

    .line 137
    if-ge v8, v5, :cond_9

    .line 138
    aget-object v11, v9, v8

    .line 140
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 145
    move-result-object v16

    .line 148
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 149
    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 152
    move-result-object v7

    .line 155
    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 156
    move-result-object v7

    .line 159
    invoke-virtual {v7, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 160
    move-result-object v7

    .line 163
    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 164
    move-result-object v7

    .line 167
    new-instance v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda4;

    .line 168
    invoke-direct {v10, v11, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 170
    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 173
    add-int/lit8 v8, v8, 0x1

    .line 176
    goto :goto_4

    .line 178
    :cond_9
    array-length v5, v4

    .line 179
    move v7, v6

    .line 180
    :goto_5
    if-ge v7, v5, :cond_a

    .line 181
    aget-object v8, v4, v7

    .line 183
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    .line 188
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 191
    move-result-object v9

    .line 194
    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 195
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 198
    move-result-object v8

    .line 201
    const/high16 v9, 0x3f800000    # 1.0f

    .line 202
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 204
    move-result-object v8

    .line 207
    add-long v11, v2, p5

    .line 208
    sub-long/2addr v11, v14

    .line 210
    invoke-virtual {v8, v11, v12}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 211
    move-result-object v8

    .line 214
    invoke-virtual {v8, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 215
    add-int/lit8 v7, v7, 0x1

    .line 218
    goto :goto_5

    .line 220
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 221
    move-result-object v2

    .line 224
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 225
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable()Z

    .line 230
    move-result v2

    .line 233
    invoke-virtual {v1, v2, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 237
    const/4 v1, 0x1

    .line 240
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 243
    move-result v2

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 247
    move-result v3

    .line 250
    if-eq v2, v3, :cond_b

    .line 251
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 253
    :cond_b
    return-void
    .line 256
.end method

.method public setHideSensitiveAnimIfInitialized(Z)V
    .locals 7

    .line 1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 2
    const-wide/16 v3, 0x0

    .line 4
    const-wide/16 v5, 0x168

    .line 6
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHideSensitive(ZZJJ)V

    .line 10
    return-void
    .line 13
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 10
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 25
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    return-void
    .line 33
.end method

.method public setInlineReplyAnimationFlagEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsInlineReplyAnimationFlagEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public setIsChildInGroup(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    if-nez p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 17
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandingClipPath(Landroid/graphics/Path;)V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 33
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setMinimumHeightForClipping(I)V

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    move-object p2, v2

    .line 41
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 42
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 44
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setIsChildInGroup(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 52
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 55
    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    .line 59
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 69
    move-result p2

    .line 72
    xor-int/lit8 p2, p2, 0x1

    .line 73
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setBottomAmountClips(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 78
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 84
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V

    .line 86
    goto :goto_1

    .line 89
    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSmallRoundness:F

    .line 90
    sget-object p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 92
    invoke-interface {p0, p1, p1, p2}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;)V

    .line 94
    :goto_1
    return-void
    .line 97
.end method

.method public setIsLowPriority(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setIsLowPriority(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setIsLowPriority(Z)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public setJustClicked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mJustClicked:Z

    .line 2
    return-void
    .line 4
.end method

.method public setKeepInParentForDismissAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mKeepInParentForDismissAnimation:Z

    .line 2
    return-void
    .line 4
.end method

.method public setLastAudiblyAlertedMs(J)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    sget-wide p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->RECENTLY_ALERTED_THRESHOLD_MS:J

    .line 7
    cmp-long v2, v0, p1

    .line 9
    if-gez v2, :cond_0

    .line 11
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 16
    if-eqz v3, :cond_1

    .line 18
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 20
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setRecentlyAudiblyAlerted(Z)V

    .line 22
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 25
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setRecentlyAudiblyAlerted(Z)V

    .line 27
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 30
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setRecentlyAudiblyAlerted(Z)V

    .line 32
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpireRecentlyAlertedFlag:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda2;

    .line 35
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 37
    if-eqz v2, :cond_2

    .line 40
    sub-long/2addr p1, v0

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpireRecentlyAlertedFlag:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda2;

    .line 43
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :cond_2
    return-void
    .line 48
.end method

.method public setLayoutListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;

    .line 2
    return-void
    .line 4
.end method

.method public setLegacy(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    aget-object v2, p0, v1

    .line 8
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setLegacy(Z)V

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    return-void
    .line 16
.end method

.method public setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    .line 2
    return-void
    .line 4
.end method

.method public setNotificationFaded(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsFaded:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 8
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 23
    move-result-object v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 29
    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 40
    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    :goto_0
    move v0, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v0, v2

    .line 52
    :goto_1
    if-eqz v0, :cond_3

    .line 53
    goto :goto_2

    .line 55
    :cond_3
    move v1, v2

    .line 56
    :goto_2
    if-eqz v1, :cond_6

    .line 57
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    .line 59
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 62
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;

    .line 64
    if-eqz v0, :cond_4

    .line 66
    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setNotificationFaded(Z)V

    .line 68
    goto :goto_3

    .line 71
    :cond_4
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    .line 72
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 75
    array-length p1, p0

    .line 77
    move v0, v2

    .line 78
    :goto_4
    if-ge v0, p1, :cond_9

    .line 79
    aget-object v1, p0, v0

    .line 81
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;

    .line 83
    if-eqz v3, :cond_5

    .line 85
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setNotificationFaded(Z)V

    .line 87
    goto :goto_5

    .line 90
    :cond_5
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    .line 91
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 94
    goto :goto_4

    .line 96
    :cond_6
    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 100
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;

    .line 102
    if-eqz v1, :cond_7

    .line 104
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setNotificationFaded(Z)V

    .line 106
    goto :goto_6

    .line 109
    :cond_7
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    .line 110
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 113
    array-length v0, p0

    .line 115
    :goto_7
    if-ge v2, v0, :cond_9

    .line 116
    aget-object v1, p0, v2

    .line 118
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;

    .line 120
    if-eqz v3, :cond_8

    .line 122
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setNotificationFaded(Z)V

    .line 124
    goto :goto_8

    .line 127
    :cond_8
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    .line 128
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 131
    goto :goto_7

    .line 133
    :cond_9
    return-void
    .line 134
.end method

.method public setNotificationGroupWhen(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setNotificationGroupWhen(J)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v0, "setNotificationGroupWhen( whenMillis: "

    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    const-string p1, ") mIsSummaryWithChildren: false mChildrenContainer has not been inflated yet."

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    const-string p1, "ExpandableNotifRow"

    .line 32
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void
    .line 37
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 7
    return-void
    .line 10
.end method

.method public setOnDragSuccessListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnDragSuccessListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnDragSuccessListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnDragSuccessListener;

    .line 2
    return-void
    .line 4
.end method

.method public setOnExpansionChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpansionChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;

    .line 2
    return-void
    .line 4
.end method

.method public final setOnKeyguard(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    .line 2
    if-eq p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 11
    move-result v2

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 17
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 20
    move-result p1

    .line 23
    if-eq v2, p1, :cond_1

    .line 24
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 26
    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 30
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 32
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 38
    move-result p1

    .line 41
    if-eq p1, v0, :cond_2

    .line 42
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    .line 44
    xor-int/lit8 v0, v0, 0x1

    .line 46
    check-cast p1, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->onAboveShelfStateChanged(Z)V

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateRippleAllowed()V

    .line 53
    return-void
    .line 56
.end method

.method public setPinned(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 6
    move-result v1

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 12
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAnimationRunning(Z)V

    .line 25
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    .line 31
    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 35
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 38
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 43
    move-result v2

    .line 46
    if-eq v2, v1, :cond_3

    .line 47
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    .line 49
    xor-int/2addr v1, v0

    .line 51
    check-cast v2, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    .line 52
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->onAboveShelfStateChanged(Z)V

    .line 54
    :cond_3
    if-eqz p1, :cond_5

    .line 57
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAnimatePinnedRoundness:Z

    .line 59
    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 63
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    move v3, v0

    .line 69
    :cond_4
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->PINNED:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    .line 72
    invoke-interface {p0, v0, v0, p1, v3}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 74
    goto :goto_1

    .line 77
    :cond_5
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->PINNED:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 78
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAnimatePinnedRoundness:Z

    .line 83
    :goto_1
    return-void
    .line 85
.end method

.method public setPrivateLayout(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 4
    filled-new-array {p1, v0}, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 6
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 10
    return-void
    .line 12
.end method

.method public setPublicLayout(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 4
    filled-new-array {v0, p1}, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 6
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 10
    return-void
    .line 12
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    .line 4
    return-void
    .line 7
.end method

.method public setRemoved()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 5
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 11
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mWasChildInGroupWhenRemoved:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 29
    move-result v1

    .line 32
    add-float/2addr v1, v0

    .line 33
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 36
    array-length v0, p0

    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    if-ge v1, v0, :cond_1

    .line 40
    aget-object v2, p0, v1

    .line 42
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setRemoved()V

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    return-void
    .line 50
.end method

.method public setSaveSpaceOnLockscreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSaveSpaceOnLockscreen:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSecureStateProvider(Ljava/util/function/BooleanSupplier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSecureStateProvider:Ljava/util/function/BooleanSupplier;

    .line 2
    return-void
    .line 4
.end method

.method public setSensitive(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 2
    move-result v0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitive:Z

    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 10
    move-result p1

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 16
    sget-object p2, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public setShowSnooze(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowSnooze:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setSingleLineWidthIndention(I)V

    .line 4
    return-void
    .line 7
.end method

.method public setSystemChildExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSystemExpanded(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 7
    move-result v1

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 16
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 19
    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 25
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 28
    if-eqz p1, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method public setTranslation(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 9
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 13
    if-eqz v0, :cond_3

    .line 15
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v1

    .line 23
    if-ge v0, v1, :cond_2

    .line 24
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/View;

    .line 40
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 48
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 51
    if-eqz v0, :cond_4

    .line 53
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 55
    move-result-object v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 61
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onParentTranslationUpdate(F)V

    .line 63
    :cond_4
    return-void
    .line 66
.end method

.method public setUntruncatedChildCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUntruncatedChildCount(I)V

    .line 13
    return-void
    .line 16
.end method

.method public setUserExpanded(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    return-void
.end method

.method public setUserExpanded(ZZ)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->isGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 7
    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandable:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    .line 10
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserExpanded:Z

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_2
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setUserExpanding(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 22
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 28
    :cond_1
    return-void
    .line 31
.end method

.method public setUsesIncreasedCollapsedHeight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    .line 2
    return-void
    .line 4
.end method

.method public setUsesIncreasedHeadsUpHeight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    .line 2
    return-void
    .line 4
.end method

.method public final shouldClipToActualHeight()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public shouldShowPublic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitive:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public showChildBackground()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public showSummaryBackground()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final showingPulsing()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 9
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-nez v0, :cond_3

    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    .line 25
    if-eqz v0, :cond_4

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 29
    if-eqz p0, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 33
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    move p0, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    move p0, v2

    .line 42
    :goto_2
    if-eqz p0, :cond_4

    .line 43
    :cond_3
    move v1, v2

    .line 45
    :cond_4
    return v1
    .line 46
.end method

.method public final updateBackgroundColors()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 11
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundColors()V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    return-void
    .line 35
.end method

.method public updateBackgroundForGroupState()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowGroupBackgroundWhenExpanded:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showSummaryBackground()V

    .line 12
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 28
    move-result-object v0

    .line 31
    move v3, v2

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    move-result v4

    .line 36
    if-ge v3, v4, :cond_4

    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 42
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 43
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColorForExpansionState()I

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showChildBackground()Z

    .line 64
    move-result v0

    .line 67
    xor-int/lit8 v0, v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 70
    goto :goto_1

    .line 72
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 73
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 75
    if-eqz v0, :cond_5

    .line 77
    goto :goto_2

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    .line 80
    move-result v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    .line 86
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 88
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hideBackground()Z

    .line 91
    move-result v0

    .line 94
    if-eqz v0, :cond_7

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 97
    const/4 v0, 0x4

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    goto :goto_3

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 113
    :goto_3
    return-void
    .line 116
.end method

.method public final updateBackgroundTint()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 15
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 29
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    return-void
    .line 37
.end method

.method public final updateBubbleButton()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    aget-object v3, v0, v2

    .line 8
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 10
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 12
    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    return-void
    .line 20
.end method

.method public final updateChildrenVisibility()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 18
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    .line 20
    const/4 v4, 0x4

    .line 22
    if-nez v3, :cond_1

    .line 23
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 25
    if-nez v3, :cond_1

    .line 27
    if-nez v0, :cond_1

    .line 29
    move v3, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v4

    .line 33
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 34
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 37
    if-eqz v2, :cond_3

    .line 39
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    .line 41
    if-nez v3, :cond_2

    .line 43
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 45
    if-eqz v3, :cond_2

    .line 47
    if-nez v0, :cond_2

    .line 49
    goto :goto_2

    .line 51
    :cond_2
    move v1, v4

    .line 52
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateLimits()V

    .line 56
    return-void
    .line 59
.end method

.method public final updateClickAndFocus()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v2

    .line 19
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 20
    if-eqz v3, :cond_2

    .line 22
    if-eqz v0, :cond_2

    .line 24
    move v1, v2

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocusable()Z

    .line 27
    move-result v2

    .line 30
    if-eq v2, v0, :cond_3

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 33
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    .line 36
    move-result v0

    .line 39
    if-eq v0, v1, :cond_4

    .line 40
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 42
    :cond_4
    return-void
    .line 45
.end method

.method public final updateContentAccessibilityImportanceForGuts(Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x2

    .line 7
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 11
    const/4 v2, 0x4

    .line 13
    if-eqz v1, :cond_2

    .line 14
    if-eqz p1, :cond_1

    .line 16
    move v3, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v3, v2

    .line 20
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 24
    if-eqz v1, :cond_4

    .line 26
    array-length v3, v1

    .line 28
    move v4, v0

    .line 29
    :goto_2
    if-ge v4, v3, :cond_4

    .line 30
    aget-object v5, v1, v4

    .line 32
    if-eqz p1, :cond_3

    .line 34
    move v6, v0

    .line 36
    goto :goto_3

    .line 37
    :cond_3
    move v6, v2

    .line 38
    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 42
    goto :goto_2

    .line 44
    :cond_4
    if-eqz p1, :cond_5

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestAccessibilityFocus()Z

    .line 47
    :cond_5
    return-void
    .line 50
.end method

.method public final updateContentTransformation()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateContentTransformation()V

    .line 7
    return-void
    .line 10
.end method

.method public final updateLimits()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_f

    .line 7
    aget-object v4, v0, v3

    .line 9
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    .line 11
    move-result-object v5

    .line 14
    const/4 v6, 0x1

    .line 15
    const v7, 0x1020511    # @android:id/switch_old

    .line 16
    if-eqz v5, :cond_0

    .line 19
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 21
    move-result v8

    .line 24
    if-eq v8, v7, :cond_0

    .line 25
    move v8, v6

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move v8, v2

    .line 29
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 30
    iget v9, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    .line 32
    const/16 v10, 0x18

    .line 34
    if-ge v9, v10, :cond_1

    .line 36
    move v10, v6

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    move v10, v2

    .line 40
    :goto_2
    const/16 v11, 0x1c

    .line 41
    if-ge v9, v11, :cond_2

    .line 43
    move v11, v6

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    move v11, v2

    .line 47
    :goto_3
    const/16 v12, 0x1f

    .line 48
    if-ge v9, v12, :cond_3

    .line 50
    move v9, v6

    .line 52
    goto :goto_4

    .line 53
    :cond_3
    move v9, v2

    .line 54
    :goto_4
    instance-of v5, v5, Lcom/android/internal/widget/CallLayout;

    .line 55
    if-eqz v8, :cond_6

    .line 57
    if-eqz v9, :cond_6

    .line 59
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 61
    if-nez v8, :cond_6

    .line 63
    if-eqz v10, :cond_4

    .line 65
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeightBeforeN:I

    .line 67
    goto :goto_5

    .line 69
    :cond_4
    if-eqz v11, :cond_5

    .line 70
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeightBeforeP:I

    .line 72
    goto :goto_5

    .line 74
    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeightBeforeS:I

    .line 75
    goto :goto_5

    .line 77
    :cond_6
    if-eqz v5, :cond_7

    .line 78
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxExpandedHeight:I

    .line 80
    goto :goto_5

    .line 82
    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    .line 83
    if-eqz v5, :cond_8

    .line 85
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 87
    if-ne v4, v5, :cond_8

    .line 89
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeightLarge:I

    .line 91
    goto :goto_5

    .line 93
    :cond_8
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxSmallHeight:I

    .line 94
    :goto_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    .line 96
    move-result-object v8

    .line 99
    if-eqz v8, :cond_9

    .line 100
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    .line 102
    move-result-object v8

    .line 105
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 106
    move-result v8

    .line 109
    if-eq v8, v7, :cond_9

    .line 110
    goto :goto_6

    .line 112
    :cond_9
    move v6, v2

    .line 113
    :goto_6
    if-eqz v6, :cond_c

    .line 114
    if-eqz v9, :cond_c

    .line 116
    if-eqz v10, :cond_a

    .line 118
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeN:I

    .line 120
    goto :goto_7

    .line 122
    :cond_a
    if-eqz v11, :cond_b

    .line 123
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeP:I

    .line 125
    goto :goto_7

    .line 127
    :cond_b
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeS:I

    .line 128
    goto :goto_7

    .line 130
    :cond_c
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    .line 131
    if-eqz v6, :cond_d

    .line 133
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 135
    if-ne v4, v6, :cond_d

    .line 137
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    .line 139
    goto :goto_7

    .line 141
    :cond_d
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    .line 142
    :goto_7
    const/4 v7, 0x2

    .line 144
    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 145
    move-result-object v7

    .line 148
    if-eqz v7, :cond_e

    .line 149
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getMinLayoutHeight()I

    .line 151
    move-result v7

    .line 154
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 155
    move-result v6

    .line 158
    :cond_e
    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxExpandedHeight:I

    .line 159
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeights(III)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 164
    goto/16 :goto_0

    .line 166
    :cond_f
    return-void
    .line 168
.end method

.method public final updateRippleAllowed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 8
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 10
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setPressedAllowed(Z)V

    .line 24
    return-void
    .line 27
.end method

.method public updateShelfIconColor()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
