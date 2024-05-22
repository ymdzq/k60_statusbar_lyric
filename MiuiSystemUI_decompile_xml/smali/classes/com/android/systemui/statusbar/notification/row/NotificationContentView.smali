.class public Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationFadeAware;


# instance fields
.field public mAnimate:Z

.field public mAnimationStartVisibleType:I

.field public mBeforeN:Z

.field public mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public mCachedExpandedRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

.field public mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public mCachedHeadsUpRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

.field public mClipBottomAmount:I

.field public final mClipBounds:Landroid/graphics/Rect;

.field public mClipToActualHeight:Z

.field public mClipTopAmount:I

.field public mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mContentAnimating:Z

.field public mContentHeight:I

.field public mContentHeightAtAnimationStart:I

.field public mContractedChild:Landroid/view/View;

.field public mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field public mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

.field public final mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

.field public mExpandClickListener:Landroid/view/View$OnClickListener;

.field public mExpandable:Z

.field public mExpandedChild:Landroid/view/View;

.field public mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

.field public mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

.field public mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field public mExpandedVisibleListener:Ljava/lang/Runnable;

.field public mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field public mFocusOnVisibilityChange:Z

.field public mForceSelectNextLayout:Z

.field public mHeadsUpAnimatingAway:Z

.field public mHeadsUpChild:Landroid/view/View;

.field public mHeadsUpHeight:I

.field public mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

.field public mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

.field public mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field public mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field public final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

.field public mIsChildInGroup:Z

.field public mIsContentExpandable:Z

.field public mIsHeadsUp:Z

.field public mLegacy:Z

.field public mMinContractedHeight:I

.field public mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mNotificationMaxHeight:I

.field public final mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

.field public mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

.field public mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field public mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

.field public mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field public mRemoteInputSubcomponentFactory:Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;

.field public mRemoteInputVisible:Z

.field public mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

.field public mSingleLineWidthIndention:I

.field public mSmallHeight:I

.field public mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field public mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mTransformationStartVisibleType:I

.field public mUnrestrictedContentHeight:I

.field public mUserExpanding:Z

.field public mVisibleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 10
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 13
    new-instance p2, Landroid/util/ArrayMap;

    .line 15
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 20
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    .line 22
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    .line 24
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    .line 27
    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    .line 30
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 32
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    .line 34
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 36
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p2

    .line 43
    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object p1

    .line 52
    const p2, 0x7f0707c5    # @dimen/min_notification_layout_height '73.45dp'

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    move-result p1

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    .line 60
    return-void
    .line 62
.end method

.method public static applyExternalSmartReplyState(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->hasPhishingAction:Z

    .line 6
    if-eqz v2, :cond_0

    .line 8
    move v2, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    const v3, 0x1020446    # @android:id/portrait

    .line 13
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 19
    const/16 v4, 0x8

    .line 20
    if-eqz v3, :cond_2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    move v2, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v2, v4

    .line 28
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_2
    if-eqz p1, :cond_4

    .line 32
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->suppressedActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;

    .line 34
    if-eqz p1, :cond_3

    .line 36
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;->suppressedActionIndices:Ljava/util/List;

    .line 38
    if-nez p1, :cond_5

    .line 40
    :cond_3
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 42
    goto :goto_2

    .line 44
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 45
    move-result-object p1

    .line 48
    :cond_5
    :goto_2
    const v2, 0x10201cd    # @android:id/actions_container

    .line 49
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p0

    .line 55
    check-cast p0, Landroid/view/ViewGroup;

    .line 56
    if-eqz p0, :cond_8

    .line 58
    move v2, v1

    .line 60
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    move-result v3

    .line 64
    if-ge v2, v3, :cond_8

    .line 65
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    move-result-object v3

    .line 70
    const v5, 0x10203fd    # @android:id/notification_material_reply_text_3

    .line 71
    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 77
    instance-of v6, v5, Ljava/lang/Integer;

    .line 78
    if-eqz v6, :cond_6

    .line 80
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 85
    if-eqz v5, :cond_6

    .line 86
    move v5, v0

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    move v5, v1

    .line 90
    :goto_4
    if-eqz v5, :cond_7

    .line 91
    move v5, v4

    .line 93
    goto :goto_5

    .line 94
    :cond_7
    move v5, v1

    .line 95
    :goto_5
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 99
    goto :goto_3

    .line 101
    :cond_8
    return-void
    .line 102
.end method

.method public static applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .locals 6

    .line 1
    const v0, 0x10204ec    # @android:id/specialUse

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    instance-of v0, p0, Landroid/widget/LinearLayout;

    .line 9
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    return-object v1

    .line 14
    :cond_0
    check-cast p0, Landroid/widget/LinearLayout;

    .line 15
    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Z

    .line 17
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    const/16 p1, 0x8

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    return-object v1

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 29
    move-result p1

    .line 32
    const/4 v0, 0x0

    .line 33
    move v2, v0

    .line 34
    :goto_0
    if-ge v2, p1, :cond_3

    .line 35
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 41
    move-result v4

    .line 44
    const v5, 0x7f0a089e    # @id/smart_reply_view

    .line 45
    if-ne v4, v5, :cond_2

    .line 48
    instance-of v3, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 50
    if-eqz v3, :cond_2

    .line 52
    goto :goto_1

    .line 54
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    :goto_1
    if-ge v2, p1, :cond_4

    .line 58
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 60
    :cond_4
    if-eqz p3, :cond_5

    .line 63
    iget-object p1, p3, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;->smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 65
    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 69
    move-object v1, p1

    .line 72
    :cond_5
    if-eqz v1, :cond_7

    .line 73
    iput-object p0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    .line 75
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    iget p1, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    .line 80
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    .line 82
    iget-object p1, p3, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;->smartSuggestionButtons:Ljava/util/List;

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object p1

    .line 90
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result p3

    .line 94
    if-eqz p3, :cond_6

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object p3

    .line 100
    check-cast p3, Landroid/widget/Button;

    .line 101
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;)V

    .line 106
    goto :goto_2

    .line 109
    :cond_6
    new-instance p1, Ljava/util/PriorityQueue;

    .line 110
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 112
    move-result p3

    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    .line 117
    move-result p3

    .line 120
    sget-object v2, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    .line 121
    invoke-direct {p1, p3, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 123
    iput-object p1, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 126
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 128
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundTint()I

    .line 130
    move-result p1

    .line 133
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 134
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 136
    move-result-object p2

    .line 139
    invoke-virtual {p2}, Landroid/app/Notification;->isColorized()Z

    .line 140
    move-result p2

    .line 143
    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    :cond_7
    return-object v1
    .line 150
.end method

.method private getMinContentHeightHint()I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 2
    const v1, 0x1050202    # @android:dimen/notification_custom_view_max_image_width

    .line 4
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 27
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x2

    .line 31
    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 34
    if-eqz v0, :cond_a

    .line 36
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 38
    if-eq v0, v4, :cond_1

    .line 40
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 42
    if-ne v5, v4, :cond_2

    .line 44
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 46
    if-ne v5, v3, :cond_2

    .line 48
    move v5, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v5, v2

    .line 52
    :goto_0
    if-nez v5, :cond_6

    .line 53
    if-eq v0, v3, :cond_3

    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 57
    if-ne v0, v3, :cond_4

    .line 59
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 61
    if-ne v0, v4, :cond_4

    .line 63
    move v0, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move v0, v2

    .line 67
    :goto_1
    if-eqz v0, :cond_5

    .line 68
    goto :goto_2

    .line 70
    :cond_5
    move v0, v2

    .line 71
    goto :goto_3

    .line 72
    :cond_6
    :goto_2
    move v0, v3

    .line 73
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    .line 74
    move-result v5

    .line 77
    if-nez v5, :cond_8

    .line 78
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    .line 80
    if-nez v5, :cond_7

    .line 82
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 84
    if-eqz v5, :cond_8

    .line 86
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 88
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    .line 90
    move-result v5

    .line 93
    if-eqz v5, :cond_8

    .line 94
    move v5, v3

    .line 96
    goto :goto_4

    .line 97
    :cond_8
    move v5, v2

    .line 98
    :goto_4
    if-nez v0, :cond_9

    .line 99
    if-eqz v5, :cond_a

    .line 101
    :cond_9
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 103
    move-result v0

    .line 106
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 107
    move-result p0

    .line 110
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 111
    move-result p0

    .line 114
    return p0

    .line 115
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 116
    if-ne v0, v3, :cond_b

    .line 118
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 120
    const/4 v5, -0x1

    .line 122
    if-eq v0, v5, :cond_b

    .line 123
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 125
    if-eqz v5, :cond_b

    .line 127
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 129
    move-result p0

    .line 132
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 133
    move-result p0

    .line 136
    return p0

    .line 137
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 138
    if-eqz v0, :cond_c

    .line 140
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    .line 142
    move-result v0

    .line 145
    if-eqz v0, :cond_c

    .line 146
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 148
    move-result v0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 152
    if-eqz v1, :cond_f

    .line 154
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mIsAnimatingAppearance:Z

    .line 156
    if-eqz v1, :cond_f

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 160
    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    sget-object v4, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 167
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    goto :goto_5

    .line 174
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 175
    if-eqz v0, :cond_d

    .line 177
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 179
    move-result v0

    .line 182
    goto :goto_5

    .line 183
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 184
    if-eqz v0, :cond_e

    .line 186
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 188
    move-result v0

    .line 191
    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    move-result-object v4

    .line 197
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 198
    move-result v1

    .line 201
    add-int/2addr v0, v1

    .line 202
    goto :goto_5

    .line 203
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    .line 204
    move-result v0

    .line 207
    :cond_f
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 208
    if-eqz v1, :cond_10

    .line 210
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    .line 212
    move-result v1

    .line 215
    if-eqz v1, :cond_10

    .line 216
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 218
    move-result p0

    .line 221
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 222
    move-result v0

    .line 225
    :cond_10
    return v0
    .line 226
.end method

.method public static updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    invoke-interface {p3, p0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 9
    :cond_1
    return-void
    .line 12
.end method


# virtual methods
.method public final applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 8
    if-nez v0, :cond_0

    .line 10
    goto/16 :goto_2

    .line 12
    :cond_0
    const v0, 0x1020227    # @android:id/butt

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    const v1, 0x10201ce    # @android:id/actions_container_layout

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 29
    const v2, 0x10203fe    # @android:id/notification_media_content

    .line 30
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/LinearLayout;

    .line 37
    if-eqz v0, :cond_5

    .line 39
    if-nez v1, :cond_1

    .line 41
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldShowBubbleButton(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 44
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    .line 52
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    const v3, 0x7f080ba4    # @drawable/bubble_ic_stop_bubble 'res/drawable/bubble_ic_stop_bubble.xml'

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    const v3, 0x7f080ba0    # @drawable/bubble_ic_create_bubble 'res/drawable/bubble_ic_create_bubble.xml'

    .line 62
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object v2

    .line 68
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object v3

    .line 74
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    .line 75
    move-result p2

    .line 78
    if-eqz p2, :cond_3

    .line 79
    const p2, 0x7f130888    # @string/notification_conversation_unbubble 'Remove bubbles'

    .line 81
    goto :goto_1

    .line 84
    :cond_3
    const p2, 0x7f130886    # @string/notification_conversation_bubble 'Show bubble'

    .line 85
    :goto_1
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 91
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getBubbleClickListener()Landroid/view/View$OnClickListener;

    .line 100
    move-result-object p0

    .line 103
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const/4 p0, 0x0

    .line 107
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    if-eqz p1, :cond_5

    .line 114
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 116
    move-result-object p1

    .line 119
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 120
    if-eqz p2, :cond_5

    .line 122
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 124
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 126
    if-lez p2, :cond_5

    .line 128
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 130
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 132
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 134
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 136
    goto :goto_2

    .line 139
    :cond_4
    const/16 p0, 0x8

    .line 140
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :cond_5
    :goto_2
    return-void
    .line 145
.end method

.method public final applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/policy/RemoteInputViewController;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;-><init>()V

    .line 4
    const v1, 0x10201ce    # @android:id/actions_container_layout

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 13
    instance-of v2, v1, Landroid/widget/FrameLayout;

    .line 14
    if-eqz v2, :cond_13

    .line 16
    sget-object v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 23
    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 24
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 26
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 30
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getController()Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 35
    move-result-object p1

    .line 38
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 39
    :cond_0
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 41
    const/4 v3, 0x0

    .line 43
    if-nez p1, :cond_3

    .line 44
    if-eqz p3, :cond_3

    .line 46
    check-cast v1, Landroid/widget/FrameLayout;

    .line 48
    if-nez p5, :cond_2

    .line 50
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 52
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 56
    move-result-object p1

    .line 59
    const p6, 0x7f0d0319    # @layout/remote_input 'res/layout/remote_input.xml'

    .line 60
    invoke-virtual {p1, p6, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    move-result-object p1

    .line 66
    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 67
    iput-object p5, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 69
    iput-object p2, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 71
    iget-object p5, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 73
    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 75
    move-result-object p5

    .line 78
    sget-object p6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 79
    invoke-virtual {p6, p5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p6

    .line 84
    if-eqz p6, :cond_1

    .line 85
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 87
    move-result p5

    .line 90
    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 91
    move-result-object p5

    .line 94
    :cond_1
    iget-object p6, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 95
    iput-object p5, p6, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mUser:Landroid/os/UserHandle;

    .line 97
    invoke-virtual {p6, p5}, Landroid/widget/EditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    .line 99
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 102
    const/16 p5, 0x8

    .line 105
    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    const/4 p6, -0x1

    .line 112
    invoke-direct {p5, p6, p6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v1, p1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 119
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputSubcomponentFactory:Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;

    .line 121
    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 123
    invoke-interface {p5, p1, p6}, Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;->create(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent;

    .line 125
    move-result-object p1

    .line 128
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent;->getController()Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 129
    move-result-object p1

    .line 132
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 133
    iget-object p5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 135
    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setController(Lcom/android/systemui/statusbar/policy/RemoteInputViewController;)V

    .line 137
    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 144
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 147
    iput-object p5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 150
    iput-object p6, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 152
    :cond_3
    :goto_0
    if-eqz p3, :cond_12

    .line 154
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 156
    invoke-virtual {p1, p7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V

    .line 158
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 161
    new-instance p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda0;

    .line 163
    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    .line 165
    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnVisibilityChangedListeners:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    if-nez p4, :cond_4

    .line 173
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 177
    move-result p0

    .line 180
    if-eqz p0, :cond_12

    .line 181
    :cond_4
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 183
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 185
    move-result-object p0

    .line 188
    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 189
    if-eqz p4, :cond_5

    .line 191
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 193
    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 195
    iput-object p4, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    .line 197
    :cond_5
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 199
    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 201
    if-nez p0, :cond_6

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    goto/16 :goto_7

    .line 208
    :cond_6
    iget-object p3, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    .line 210
    const/4 p4, 0x0

    .line 212
    if-eqz p3, :cond_7

    .line 213
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 215
    move-result-object p3

    .line 218
    goto :goto_1

    .line 219
    :cond_7
    move-object p3, p4

    .line 220
    :goto_1
    if-nez p3, :cond_8

    .line 221
    goto :goto_7

    .line 223
    :cond_8
    move p5, v3

    .line 224
    :goto_2
    array-length p6, p0

    .line 225
    const/4 p7, 0x1

    .line 226
    if-ge p5, p6, :cond_9

    .line 227
    move p6, p7

    .line 229
    goto :goto_3

    .line 230
    :cond_9
    move p6, v3

    .line 231
    :goto_3
    if-eqz p6, :cond_10

    .line 232
    add-int/lit8 p6, p5, 0x1

    .line 234
    :try_start_0
    aget-object p5, p0, p5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    iget-object v1, p5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 238
    if-nez v1, :cond_a

    .line 240
    goto :goto_6

    .line 242
    :cond_a
    invoke-virtual {p5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 243
    move-result-object p5

    .line 246
    if-nez p5, :cond_b

    .line 247
    goto :goto_6

    .line 249
    :cond_b
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 250
    move-result-object v2

    .line 253
    invoke-virtual {p3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 254
    move-result v2

    .line 257
    if-eqz v2, :cond_f

    .line 258
    array-length v2, p5

    .line 260
    move v4, v3

    .line 261
    :goto_4
    if-ge v4, v2, :cond_d

    .line 262
    aget-object v5, p5, v4

    .line 264
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    .line 266
    move-result v6

    .line 269
    if-eqz v6, :cond_c

    .line 270
    goto :goto_5

    .line 272
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 273
    goto :goto_4

    .line 275
    :cond_d
    move-object v5, p4

    .line 276
    :goto_5
    if-nez v5, :cond_e

    .line 277
    goto :goto_6

    .line 279
    :cond_e
    iput-object v1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    .line 280
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->setRemoteInput(Landroid/app/RemoteInput;)V

    .line 282
    iput-object p5, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputs:[Landroid/app/RemoteInput;

    .line 285
    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 287
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    .line 289
    goto :goto_8

    .line 291
    :cond_f
    :goto_6
    move p5, p6

    .line 292
    goto :goto_2

    .line 293
    :catch_0
    move-exception p0

    .line 294
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 295
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    .line 297
    move-result-object p0

    .line 300
    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 301
    throw p1

    .line 304
    :cond_10
    :goto_7
    move p7, v3

    .line 305
    :goto_8
    if-eqz p7, :cond_11

    .line 306
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 310
    move-result p0

    .line 313
    if-nez p0, :cond_12

    .line 314
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    .line 318
    goto :goto_9

    .line 321
    :cond_11
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 324
    move-result p0

    .line 327
    if-eqz p0, :cond_12

    .line 328
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 330
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 332
    sget p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->$r8$clinit:I

    .line 334
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 336
    :cond_12
    :goto_9
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 339
    if-eqz p0, :cond_13

    .line 341
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundTint()I

    .line 345
    move-result p0

    .line 348
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 349
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 351
    move-result-object p1

    .line 354
    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    .line 355
    move-result p1

    .line 358
    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 359
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundTintColor(IZ)V

    .line 361
    :cond_13
    return-object v0
    .line 364
.end method

.method public final applySystemActions(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto/16 :goto_1

    .line 8
    :cond_0
    const v0, 0x10204f4    # @android:id/src_atop

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/ImageView;

    .line 17
    const v1, 0x10201ce    # @android:id/actions_container_layout

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 25
    if-eqz v0, :cond_4

    .line 26
    if-nez v1, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    .line 31
    move-result v2

    .line 34
    xor-int/lit8 v2, v2, 0x1

    .line 35
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 37
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowSnooze()Z

    .line 39
    move-result v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    if-eqz v2, :cond_2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 48
    const v3, 0x7f0811b2    # @drawable/ic_snooze 'res/drawable/ic_snooze.xml'

    .line 50
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 53
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 62
    move-result-object v2

    .line 65
    const v4, 0x7f0d028e    # @layout/notification_snooze 'res/layout/notification_snooze.xml'

    .line 66
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    move-result-object v2

    .line 74
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 75
    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 77
    const v5, 0x7f130892    # @string/notification_menu_snooze_description 'notification snooze options'

    .line 79
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 85
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    .line 86
    iget-object v8, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {v7, v8, v4, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    .line 90
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object v2

    .line 98
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda0;

    .line 111
    invoke-direct {v3, v2, v7, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Object;I)V

    .line 113
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 122
    goto :goto_1

    .line 125
    :cond_3
    :goto_0
    const/16 v1, 0x8

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 131
    return-void
    .line 134
.end method

.method public final calculateVisibleType()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    .line 2
    if-eqz v0, :cond_5

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 16
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    .line 32
    move-result v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxContentHeight()I

    .line 39
    move-result v0

    .line 42
    :goto_1
    if-nez v0, :cond_2

    .line 43
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    .line 45
    :cond_2
    int-to-float v0, v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    .line 48
    move-result v0

    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 52
    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    .line 56
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    const/4 v1, 0x3

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 64
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    .line 66
    move-result v1

    .line 69
    int-to-float v1, v1

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    .line 71
    move-result v1

    .line 74
    :goto_2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 75
    if-ne p0, v1, :cond_4

    .line 77
    goto :goto_3

    .line 79
    :cond_4
    move v0, v1

    .line 80
    :goto_3
    return v0

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 84
    move-result v0

    .line 87
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    .line 88
    if-eqz v0, :cond_6

    .line 90
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 92
    move-result v1

    .line 95
    :cond_6
    int-to-float v0, v1

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    .line 97
    move-result p0

    .line 100
    return p0
    .line 101
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const-string v0, "Drawing view failed: "

    .line 7
    const-string v1, "NotificationContentView"

    .line 9
    invoke-static {v0, p1, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 11
    const/16 v0, 0x8

    .line 14
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 21
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 23
    if-eqz v2, :cond_0

    .line 25
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 32
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 33
    move-result v5

    .line 36
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 37
    move-result v6

    .line 40
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    .line 41
    move-result v7

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 45
    move-result-object v8

    .line 48
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 53
    move-result v9

    .line 56
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    goto :goto_0

    .line 60
    :catch_1
    move-exception p0

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "cancelNotification failed: "

    .line 64
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    return-void
    .line 79
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 8
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 12
    if-ne v1, v2, :cond_0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 19
    if-ne v1, v2, :cond_1

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 29
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 35
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    .line 37
    move-result v3

    .line 40
    sub-int/2addr v2, v3

    .line 41
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 42
    int-to-float v3, v3

    .line 44
    cmpg-float v3, v0, v3

    .line 45
    if-gtz v3, :cond_2

    .line 47
    int-to-float v3, v2

    .line 49
    cmpl-float v0, v0, v3

    .line 50
    if-ltz v0, :cond_2

    .line 52
    neg-int p0, v2

    .line 54
    int-to-float p0, p0

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 57
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    move-result p0

    .line 63
    return p0

    .line 64
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 65
    move-result p0

    .line 68
    return p0
    .line 69
.end method

.method public final fireExpandedVisibleListenerIfVisible()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 24
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 27
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 5
    const/4 v1, 0x1

    .line 7
    if-eq v0, p1, :cond_2

    .line 8
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 10
    if-ne p0, p1, :cond_1

    .line 12
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    move p0, v1

    .line 17
    :goto_1
    if-nez p0, :cond_3

    .line 18
    const/4 p0, 0x4

    .line 20
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_2

    .line 24
    :cond_3
    invoke-interface {p3, v1}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 25
    :goto_2
    return-void
    .line 28
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    .line 14
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    .line 31
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
    .line 37
.end method

.method public getAllViews()[Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 8
    filled-new-array {v0, v1, v2, p0}, [Landroid/view/View;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public final getBackgroundColor(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    .line 8
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public getBackgroundColorForExpansionState()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleType()I

    .line 15
    move-result v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    .line 20
    move-result v0

    .line 23
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    .line 24
    move-result p0

    .line 27
    return p0
    .line 28
.end method

.method public getContentHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCurrentSmartReplyState()Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    .line 2
    return-object p0
    .line 4
.end method

.method public getExpandHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    move v0, v1

    .line 13
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    .line 20
    move-result p0

    .line 23
    add-int/2addr p0, v0

    .line 24
    return p0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    .line 26
    move-result p0

    .line 29
    return p0
    .line 30
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public getExpandedRemoteInput()Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 5
    move-result v1

    .line 8
    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 17
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 19
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 21
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 23
    iget-object v1, v1, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v1, p1, :cond_0

    .line 32
    move p1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p1, v0

    .line 36
    :goto_0
    if-eqz p1, :cond_1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    move v2, v0

    .line 40
    :goto_1
    if-eqz v2, :cond_3

    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p0

    .line 46
    const p1, 0x105020f    # @android:dimen/notification_header_padding_top

    .line 47
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_3
    return v0
    .line 55
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHeadsUpHeight(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 13
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    .line 19
    move-result v0

    .line 22
    add-int/2addr v0, p1

    .line 23
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    .line 26
    move-result p0

    .line 29
    add-int/2addr p0, v0

    .line 30
    return p0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    .line 32
    move-result p0

    .line 35
    return p0
    .line 36
.end method

.method public getMaxHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    .line 14
    move-result p0

    .line 17
    :goto_0
    add-int/2addr p0, v0

    .line 18
    return p0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 37
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    .line 43
    move-result p0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 48
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 52
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    .line 57
    return p0
    .line 59
.end method

.method public getMinHeight()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result p0

    return p0
.end method

.method public final getMinHeight(Z)I
    .locals 0

    if-nez p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    goto :goto_1

    .line 6
    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    :goto_1
    return p0
.end method

.method public getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    return-object v0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 20
    if-eqz v0, :cond_2

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 24
    if-eqz p0, :cond_2

    .line 26
    return-object p0

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    return-object p0
    .line 30
.end method

.method public getOriginalIconColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getOriginalIconColor()I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getShelfTransformationTarget()Landroid/view/View;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
    .line 16
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 11
    return-object p0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 14
    return-object p0

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 17
    return-object p0

    .line 19
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 20
    return-object p0
    .line 22
.end method

.method public final getViewForVisibleType(I)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 11
    return-object p0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 14
    return-object p0

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 17
    return-object p0

    .line 19
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 20
    return-object p0
    .line 22
.end method

.method public final getViewHeight(IZ)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 10
    if-ne v0, v2, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 17
    if-ne v0, v2, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 24
    if-ne v0, v2, :cond_2

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getHeaderTranslation(Z)I

    .line 34
    move-result p2

    .line 37
    add-int/2addr v1, p2

    .line 38
    :cond_3
    const/4 p2, 0x2

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eq p1, p2, :cond_6

    .line 41
    instance-of p2, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 43
    if-eqz p2, :cond_4

    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    .line 47
    move-result p2

    .line 50
    if-lez p2, :cond_4

    .line 51
    const/4 p2, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    move p2, v2

    .line 55
    :goto_1
    if-eqz p2, :cond_5

    .line 56
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    .line 58
    move-result p2

    .line 61
    goto :goto_2

    .line 62
    :cond_5
    move p2, v2

    .line 63
    :goto_2
    add-int/2addr v1, p2

    .line 64
    :cond_6
    if-nez p1, :cond_8

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 67
    instance-of p1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 69
    if-nez p1, :cond_7

    .line 71
    instance-of p1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    .line 73
    if-nez p1, :cond_7

    .line 75
    instance-of p1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    .line 77
    if-nez p1, :cond_7

    .line 79
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 81
    if-eqz p1, :cond_7

    .line 83
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->getMiniBarHeight()I

    .line 87
    move-result p0

    .line 90
    add-int/2addr v2, p0

    .line 91
    :cond_7
    add-int/2addr v1, v2

    .line 92
    :cond_8
    return v1
    .line 93
.end method

.method public getVisibleType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 2
    return p0
    .line 4
.end method

.method public getVisibleWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method public final getVisualTypeForHeight(F)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 13
    move-result v3

    .line 16
    int-to-float v3, v3

    .line 17
    cmpl-float v3, p1, v3

    .line 18
    if-nez v3, :cond_1

    .line 20
    return v1

    .line 22
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    .line 23
    if-nez v3, :cond_2

    .line 25
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 27
    if-eqz v3, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    .line 31
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    const/4 p0, 0x3

    .line 37
    return p0

    .line 38
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    .line 39
    if-nez v3, :cond_3

    .line 41
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 43
    if-eqz v3, :cond_6

    .line 45
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 47
    if-eqz v3, :cond_6

    .line 49
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 51
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    .line 53
    move-result v3

    .line 56
    if-eqz v3, :cond_6

    .line 57
    const/4 v3, 0x2

    .line 59
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 60
    move-result p0

    .line 63
    int-to-float p0, p0

    .line 64
    cmpg-float p0, p1, p0

    .line 65
    if-lez p0, :cond_5

    .line 67
    if-eqz v0, :cond_4

    .line 69
    goto :goto_1

    .line 71
    :cond_4
    return v1

    .line 72
    :cond_5
    :goto_1
    return v3

    .line 73
    :cond_6
    if-nez v0, :cond_9

    .line 74
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 76
    if-eqz v3, :cond_7

    .line 78
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 80
    move-result v3

    .line 83
    int-to-float v3, v3

    .line 84
    cmpg-float p1, p1, v3

    .line 85
    if-gtz p1, :cond_7

    .line 87
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 89
    if-eqz p1, :cond_9

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    .line 93
    move-result p1

    .line 96
    if-nez p1, :cond_9

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 101
    move-result p0

    .line 104
    if-nez p0, :cond_7

    .line 105
    goto :goto_2

    .line 107
    :cond_7
    if-nez v0, :cond_8

    .line 108
    return v1

    .line 110
    :cond_8
    const/4 p0, -0x1

    .line 111
    return p0

    .line 112
    :cond_9
    :goto_2
    return v2
    .line 113
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isAnimatingVisibleType()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 2
    const/4 v0, -0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public final isGroupExpanded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isVisibleOrTransitioning(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 6
    if-eq v0, p1, :cond_1

    .line 8
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 10
    if-ne p0, p1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateVisibility()V

    .line 5
    return-void
    .line 8
.end method

.method public final onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 2
    const/4 p2, 0x1

    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 9
    move-result p3

    .line 12
    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result p3

    .line 18
    if-eqz p3, :cond_1

    .line 19
    iget p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 21
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 23
    move-result-object p3

    .line 26
    if-eq p3, p1, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 p2, 0x0

    .line 30
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 33
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Runnable;

    .line 39
    if-eqz p0, :cond_3

    .line 41
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 43
    :cond_3
    return-void
    .line 46
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 7
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 13
    if-eqz v0, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p1

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 31
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    .line 34
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    .line 39
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    .line 41
    const/4 p2, 0x1

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    .line 44
    return-void
    .line 47
.end method

.method public final onMeasure(II)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 7
    const/4 v8, 0x0

    .line 8
    const/high16 v9, 0x40000000    # 2.0f

    .line 9
    if-ne v0, v9, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v8

    .line 15
    :goto_0
    const/high16 v10, -0x80000000

    .line 16
    if-ne v0, v10, :cond_1

    .line 18
    const/4 v0, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v0, v8

    .line 22
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 23
    move-result v11

    .line 26
    const v12, 0x3fffffff    # 1.9999999f

    .line 27
    if-nez v1, :cond_3

    .line 30
    if-eqz v0, :cond_2

    .line 32
    goto :goto_2

    .line 34
    :cond_2
    move v13, v12

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 37
    move-result v0

    .line 40
    move v13, v0

    .line 41
    :goto_3
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 42
    if-eqz v0, :cond_a

    .line 44
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    .line 46
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 48
    if-eqz v1, :cond_4

    .line 50
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    .line 52
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    :cond_4
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 57
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    .line 59
    move-result v1

    .line 62
    add-int/2addr v1, v0

    .line 63
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    move-result-object v0

    .line 69
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    if-ltz v0, :cond_5

    .line 72
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 74
    move-result v1

    .line 77
    const/4 v0, 0x1

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move v0, v8

    .line 80
    :goto_4
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 81
    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 83
    instance-of v4, v2, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 85
    if-eqz v4, :cond_6

    .line 87
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    .line 89
    move-result v5

    .line 92
    if-lez v5, :cond_6

    .line 93
    const/4 v5, 0x1

    .line 95
    goto :goto_5

    .line 96
    :cond_6
    move v5, v8

    .line 97
    :goto_5
    if-eqz v5, :cond_7

    .line 98
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    .line 100
    move-result v5

    .line 103
    goto :goto_6

    .line 104
    :cond_7
    move v5, v8

    .line 105
    :goto_6
    add-int/2addr v5, v8

    .line 106
    if-nez v4, :cond_8

    .line 107
    instance-of v4, v2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    .line 109
    if-nez v4, :cond_8

    .line 111
    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    .line 113
    if-nez v2, :cond_8

    .line 115
    instance-of v2, v3, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 117
    if-eqz v2, :cond_8

    .line 119
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 121
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->getMiniBarHeight()I

    .line 123
    move-result v2

    .line 126
    add-int/2addr v2, v8

    .line 127
    goto :goto_7

    .line 128
    :cond_8
    move v2, v8

    .line 129
    :goto_7
    add-int v14, v2, v5

    .line 130
    add-int/2addr v1, v14

    .line 132
    if-eqz v0, :cond_9

    .line 133
    move v0, v9

    .line 135
    goto :goto_8

    .line 136
    :cond_9
    move v0, v10

    .line 137
    :goto_8
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 138
    move-result v4

    .line 141
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 142
    const/4 v3, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    move-object/from16 v0, p0

    .line 146
    move/from16 v2, p1

    .line 148
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 150
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 155
    move-result v0

    .line 158
    add-int/2addr v0, v14

    .line 159
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 160
    move-result v0

    .line 163
    move v14, v0

    .line 164
    goto :goto_9

    .line 165
    :cond_a
    move v14, v8

    .line 166
    :goto_9
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 167
    const-string v15, "miui.customHeight"

    .line 169
    if-eqz v0, :cond_18

    .line 171
    iget v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmallHeight:I

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 175
    move-result-object v0

    .line 178
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    if-ltz v0, :cond_b

    .line 181
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 183
    move-result v1

    .line 186
    const/4 v0, 0x1

    .line 187
    goto :goto_a

    .line 188
    :cond_b
    move v0, v8

    .line 189
    :goto_a
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 190
    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 192
    instance-of v4, v2, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 194
    if-eqz v4, :cond_c

    .line 196
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    .line 198
    move-result v5

    .line 201
    if-lez v5, :cond_c

    .line 202
    const/4 v5, 0x1

    .line 204
    goto :goto_b

    .line 205
    :cond_c
    move v5, v8

    .line 206
    :goto_b
    if-eqz v5, :cond_d

    .line 207
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    .line 209
    move-result v5

    .line 212
    goto :goto_c

    .line 213
    :cond_d
    move v5, v8

    .line 214
    :goto_c
    add-int/2addr v5, v8

    .line 215
    if-nez v4, :cond_e

    .line 216
    instance-of v4, v2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    .line 218
    if-nez v4, :cond_e

    .line 220
    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    .line 222
    if-nez v2, :cond_e

    .line 224
    instance-of v2, v3, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 226
    if-eqz v2, :cond_e

    .line 228
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 230
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->getMiniBarHeight()I

    .line 232
    move-result v2

    .line 235
    add-int/2addr v2, v8

    .line 236
    goto :goto_d

    .line 237
    :cond_e
    move v2, v8

    .line 238
    :goto_d
    add-int v16, v2, v5

    .line 239
    add-int v1, v1, v16

    .line 241
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 243
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 245
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 247
    move-result v2

    .line 250
    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 251
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 253
    if-nez v3, :cond_f

    .line 255
    goto :goto_f

    .line 257
    :cond_f
    if-eqz v2, :cond_10

    .line 258
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 260
    move-result-object v2

    .line 263
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 264
    invoke-virtual {v2, v15, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 266
    move-result v2

    .line 269
    if-eqz v2, :cond_10

    .line 270
    const/4 v2, 0x1

    .line 272
    goto :goto_e

    .line 273
    :cond_10
    move v2, v8

    .line 274
    :goto_e
    if-nez v2, :cond_12

    .line 275
    invoke-static {v3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 277
    move-result v2

    .line 280
    if-eqz v2, :cond_11

    .line 281
    goto :goto_10

    .line 283
    :cond_11
    :goto_f
    move v2, v8

    .line 284
    goto :goto_11

    .line 285
    :cond_12
    :goto_10
    const/4 v2, 0x1

    .line 286
    :goto_11
    if-eqz v2, :cond_13

    .line 287
    const v0, 0x7fffffff

    .line 289
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 292
    move-result v0

    .line 295
    :goto_12
    move v4, v0

    .line 296
    goto :goto_15

    .line 297
    :cond_13
    iget-boolean v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mBeforeN:Z

    .line 298
    if-eqz v2, :cond_14

    .line 300
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 302
    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    .line 304
    if-eqz v2, :cond_14

    .line 306
    const/4 v2, 0x1

    .line 308
    goto :goto_13

    .line 309
    :cond_14
    move v2, v8

    .line 310
    :goto_13
    if-nez v2, :cond_16

    .line 311
    if-eqz v0, :cond_15

    .line 313
    goto :goto_14

    .line 315
    :cond_15
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 316
    move-result v0

    .line 319
    goto :goto_12

    .line 320
    :cond_16
    :goto_14
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 321
    move-result v0

    .line 324
    goto :goto_12

    .line 325
    :goto_15
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 326
    const/4 v3, 0x0

    .line 328
    const/4 v5, 0x0

    .line 329
    move-object/from16 v0, p0

    .line 330
    move/from16 v2, p1

    .line 332
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 334
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 337
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 339
    move-result v0

    .line 342
    add-int v5, v0, v16

    .line 343
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    .line 345
    if-ge v5, v0, :cond_17

    .line 347
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 349
    move-result v4

    .line 352
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 353
    const/4 v3, 0x0

    .line 355
    const/16 v16, 0x0

    .line 356
    move-object/from16 v0, p0

    .line 358
    move/from16 v2, p1

    .line 360
    move v7, v5

    .line 362
    move/from16 v5, v16

    .line 363
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 365
    goto :goto_16

    .line 368
    :cond_17
    move v7, v5

    .line 369
    :goto_16
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    .line 370
    move-result v14

    .line 373
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 374
    if-eqz v0, :cond_18

    .line 376
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 378
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 380
    move-result v0

    .line 383
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 384
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 386
    move-result v1

    .line 389
    if-le v0, v1, :cond_18

    .line 390
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 394
    move-result v0

    .line 397
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 398
    move-result v4

    .line 401
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 402
    const/4 v3, 0x0

    .line 404
    const/4 v5, 0x0

    .line 405
    move-object/from16 v0, p0

    .line 406
    move/from16 v2, p1

    .line 408
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 410
    :cond_18
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 413
    if-eqz v0, :cond_22

    .line 415
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpHeight:I

    .line 417
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 419
    if-eqz v1, :cond_19

    .line 421
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    .line 423
    move-result v1

    .line 426
    add-int/2addr v0, v1

    .line 427
    :cond_19
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 428
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    .line 430
    move-result v1

    .line 433
    add-int/2addr v1, v0

    .line 434
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 435
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 437
    move-result-object v0

    .line 440
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 441
    if-ltz v0, :cond_1a

    .line 443
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 445
    move-result v1

    .line 448
    const/4 v0, 0x1

    .line 449
    goto :goto_17

    .line 450
    :cond_1a
    move v0, v8

    .line 451
    :goto_17
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 452
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 454
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 456
    move-result-object v2

    .line 459
    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 460
    if-eqz v2, :cond_1b

    .line 462
    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 464
    if-eqz v2, :cond_1b

    .line 466
    const/4 v2, 0x1

    .line 468
    goto :goto_18

    .line 469
    :cond_1b
    move v2, v8

    .line 470
    :goto_18
    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 471
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 473
    if-nez v3, :cond_1c

    .line 475
    goto :goto_1a

    .line 477
    :cond_1c
    if-eqz v2, :cond_1d

    .line 478
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 480
    move-result-object v2

    .line 483
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 484
    invoke-virtual {v2, v15, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 486
    move-result v2

    .line 489
    if-eqz v2, :cond_1d

    .line 490
    const/4 v2, 0x1

    .line 492
    goto :goto_19

    .line 493
    :cond_1d
    move v2, v8

    .line 494
    :goto_19
    if-nez v2, :cond_1f

    .line 495
    invoke-static {v3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 497
    move-result v2

    .line 500
    if-eqz v2, :cond_1e

    .line 501
    goto :goto_1b

    .line 503
    :cond_1e
    :goto_1a
    move v7, v8

    .line 504
    goto :goto_1c

    .line 505
    :cond_1f
    :goto_1b
    const/4 v7, 0x1

    .line 506
    :goto_1c
    if-eqz v7, :cond_20

    .line 507
    goto :goto_1d

    .line 509
    :cond_20
    move v8, v0

    .line 510
    move v12, v1

    .line 511
    :goto_1d
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 512
    const/4 v3, 0x0

    .line 514
    if-eqz v8, :cond_21

    .line 515
    move v0, v9

    .line 517
    goto :goto_1e

    .line 518
    :cond_21
    move v0, v10

    .line 519
    :goto_1e
    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 520
    move-result v4

    .line 523
    const/4 v5, 0x0

    .line 524
    move-object/from16 v0, p0

    .line 525
    move/from16 v2, p1

    .line 527
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 529
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 532
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 534
    move-result v0

    .line 537
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    .line 538
    move-result v14

    .line 541
    :cond_22
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 542
    if-eqz v0, :cond_24

    .line 544
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    .line 546
    if-eqz v0, :cond_23

    .line 548
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 550
    move-result v0

    .line 553
    if-eqz v0, :cond_23

    .line 554
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    .line 556
    sub-int v0, v11, v0

    .line 558
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 560
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 562
    move-result v1

    .line 565
    add-int/2addr v1, v0

    .line 566
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 567
    move-result v0

    .line 570
    goto :goto_1f

    .line 571
    :cond_23
    move/from16 v0, p1

    .line 572
    :goto_1f
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 574
    iget v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    .line 576
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 578
    move-result v2

    .line 581
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 582
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 585
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 587
    move-result v0

    .line 590
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    .line 591
    move-result v14

    .line 594
    :cond_24
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    .line 595
    move-result v0

    .line 598
    invoke-virtual {v6, v11, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 599
    return-void
    .line 602
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    const v0, 0x7f0a07df    # @id/row_tag_for_content_view

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    return-void
    .line 13
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateVisibility()V

    .line 5
    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 22
    move-result-object p2

    .line 25
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 42
    check-cast p2, Ljava/lang/Runnable;

    .line 43
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 49
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 51
    :cond_1
    return-void
    .line 54
.end method

.method public final performWhenContentInactive(ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez p1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 28
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 33
    if-eq v2, p1, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 38
    goto :goto_1

    .line 40
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 41
    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void

    .line 46
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->run()V

    .line 47
    return-void
    .line 50
.end method

.method public final pointInView(FFF)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 5
    int-to-float v1, v1

    .line 7
    neg-float v2, p3

    .line 8
    cmpl-float v2, p1, v2

    .line 9
    if-ltz v2, :cond_0

    .line 11
    sub-float/2addr v0, p3

    .line 13
    cmpl-float v0, p2, v0

    .line 14
    if-ltz v0, :cond_0

    .line 16
    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    .line 18
    iget p0, p0, Landroid/widget/FrameLayout;->mLeft:I

    .line 20
    sub-int/2addr v0, p0

    .line 22
    int-to-float p0, v0

    .line 23
    add-float/2addr p0, p3

    .line 24
    cmpg-float p0, p1, p0

    .line 25
    if-gez p0, :cond_0

    .line 27
    add-float/2addr v1, p3

    .line 29
    cmpg-float p0, p2, v1

    .line 30
    if-gez p0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
    .line 37
.end method

.method public final removeContentInactiveRunnable(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 2
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
    .line 14
.end method

.method public final selectLayout(ZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    .line 7
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_9

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    .line 15
    move-result p1

    .line 18
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 19
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    .line 21
    move-result-object p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    .line 29
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 32
    goto/16 :goto_4

    .line 35
    :cond_1
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 37
    if-eq p1, p2, :cond_2

    .line 39
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    .line 43
    move-result-object p2

    .line 46
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    .line 49
    move-result-object v0

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-interface {p2, v5, v0}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 57
    move-result-object v6

    .line 60
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-interface {v0, v5, p2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 67
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 69
    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    .line 72
    const/4 v0, -0x1

    .line 74
    if-eqz p2, :cond_3

    .line 75
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 77
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 79
    invoke-virtual {p0, v4, p2, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 81
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 84
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 86
    invoke-virtual {p0, v3, p2, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 88
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 91
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 93
    invoke-virtual {p0, v2, p2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 95
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 98
    invoke-virtual {p0, v1, p2, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 103
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 106
    :cond_3
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 108
    if-eq p2, v0, :cond_8

    .line 110
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 112
    if-eq v0, p2, :cond_8

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 116
    move-result-object p2

    .line 119
    if-eqz p2, :cond_8

    .line 120
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    .line 124
    move-result-object p1

    .line 127
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    .line 130
    move-result-object p2

    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 134
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 136
    move-result v0

    .line 139
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 140
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    .line 142
    move-result v1

    .line 145
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    .line 146
    sub-int/2addr v2, v0

    .line 148
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 149
    move-result v2

    .line 152
    sub-int v3, v1, v0

    .line 153
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 155
    move-result v3

    .line 158
    const/high16 v5, 0x3f800000    # 1.0f

    .line 159
    if-nez v3, :cond_4

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v3, "the total transformation distance is 0\n StartType: "

    .line 165
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 171
    const-string v6, " height: "

    .line 173
    const-string v7, "\n VisibleType: "

    .line 175
    invoke-static {v2, v3, v6, v0, v7}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 180
    const-string v3, "\n mContentHeight: "

    .line 182
    invoke-static {v2, v0, v6, v1, v3}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 195
    const-string v1, "NotificationContentView"

    .line 196
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    goto :goto_0

    .line 201
    :cond_4
    int-to-float v0, v2

    .line 202
    int-to-float v1, v3

    .line 203
    div-float/2addr v0, v1

    .line 204
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    .line 205
    move-result v5

    .line 208
    :goto_0
    invoke-interface {p1, v5, p2}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 209
    invoke-interface {p2, v5, p1}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 212
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    .line 217
    move-result p1

    .line 220
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 221
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    .line 223
    move-result p2

    .line 226
    if-eq p1, p2, :cond_7

    .line 227
    if-nez p2, :cond_5

    .line 229
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 231
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    .line 233
    move-result p2

    .line 236
    :cond_5
    if-nez p1, :cond_6

    .line 237
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 239
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    .line 241
    move-result p1

    .line 244
    :cond_6
    invoke-static {v5, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(FII)I

    .line 245
    move-result p1

    .line 248
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 249
    invoke-virtual {p2, p1, v4, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    .line 251
    goto/16 :goto_4

    .line 254
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    .line 256
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 259
    goto/16 :goto_4

    .line 262
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    .line 264
    move-result v0

    .line 267
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 268
    if-eq v0, v5, :cond_a

    .line 270
    move v5, v3

    .line 272
    goto :goto_1

    .line 273
    :cond_a
    move v5, v4

    .line 274
    :goto_1
    if-nez v5, :cond_b

    .line 275
    if-eqz p2, :cond_18

    .line 277
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 279
    move-result-object p2

    .line 282
    if-eqz p2, :cond_d

    .line 283
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    if-ne v0, v2, :cond_c

    .line 288
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 290
    if-eqz p2, :cond_c

    .line 292
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 294
    if-eqz p2, :cond_c

    .line 296
    check-cast p2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 298
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 300
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 302
    move-result p2

    .line 305
    if-eqz p2, :cond_c

    .line 306
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 308
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 310
    check-cast p2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 312
    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputViewController;)V

    .line 314
    :cond_c
    if-ne v0, v3, :cond_d

    .line 317
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 319
    if-eqz p2, :cond_d

    .line 321
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 323
    if-eqz p2, :cond_d

    .line 325
    check-cast p2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 327
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 329
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 331
    move-result p2

    .line 334
    if-eqz p2, :cond_d

    .line 335
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 337
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 339
    check-cast p2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 341
    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputViewController;)V

    .line 343
    :cond_d
    if-eqz p1, :cond_14

    .line 346
    if-ne v0, v3, :cond_e

    .line 348
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 350
    if-nez p2, :cond_11

    .line 352
    :cond_e
    if-ne v0, v2, :cond_f

    .line 354
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 356
    if-nez p2, :cond_11

    .line 358
    :cond_f
    if-ne v0, v1, :cond_10

    .line 360
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 362
    if-nez p2, :cond_11

    .line 364
    :cond_10
    if-nez v0, :cond_14

    .line 366
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    .line 368
    move-result-object p2

    .line 371
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 372
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    .line 374
    move-result-object v1

    .line 377
    if-eq p2, v1, :cond_13

    .line 378
    if-nez v1, :cond_12

    .line 380
    goto :goto_2

    .line 382
    :cond_12
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 383
    iput v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 385
    invoke-interface {p2, v1}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    .line 390
    move-result-object v2

    .line 393
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 394
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$2;

    .line 397
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 399
    invoke-interface {v1, p2, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 405
    goto :goto_3

    .line 408
    :cond_13
    :goto_2
    invoke-interface {p2, v3}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 409
    goto :goto_3

    .line 412
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    .line 413
    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 416
    if-eqz v5, :cond_16

    .line 418
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 420
    if-eqz p2, :cond_16

    .line 422
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 424
    move-result-object p2

    .line 427
    if-eqz p2, :cond_15

    .line 428
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExpandButton()Landroid/view/View;

    .line 430
    move-result-object p2

    .line 433
    if-eqz p2, :cond_15

    .line 434
    invoke-virtual {p2}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 436
    :cond_15
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 439
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 441
    move-result-object p2

    .line 444
    if-eqz p2, :cond_17

    .line 445
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinContentHeightHint()I

    .line 449
    move-result v1

    .line 452
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 453
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 456
    :cond_18
    :goto_4
    return-void
    .line 459
.end method

.method public setBackgroundTintColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 4
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 28
    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundTintColor(IZ)V

    .line 32
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 35
    if-eqz p0, :cond_3

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundTintColor(IZ)V

    .line 39
    :cond_3
    return-void
    .line 42
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBottomAmount:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 4
    return-void
    .line 7
.end method

.method public setClipChildren(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputVisible:Z

    .line 4
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 11
    return-void
    .line 14
.end method

.method public setClipToActualHeight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 4
    return-void
    .line 7
.end method

.method public setClipTopAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 4
    return-void
    .line 7
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    return-void
    .line 4
.end method

.method public setContentHeight(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    .line 2
    move-result v0

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 6
    move-result p1

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 10
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 14
    move-result p1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    .line 20
    move-result v0

    .line 23
    sub-int/2addr p1, v0

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    .line 27
    move-result v0

    .line 30
    sub-int/2addr p1, v0

    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 32
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result p1

    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    .line 38
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    .line 40
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 43
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 46
    if-nez p1, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinContentHeightHint()I

    .line 51
    move-result p1

    .line 54
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 57
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 63
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 65
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 70
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 76
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 84
    return-void
    .line 87
.end method

.method public setContentHeightAnimating(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 5
    :cond_0
    return-void
    .line 7
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 22
    :cond_0
    if-nez p1, :cond_2

    .line 25
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 30
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 32
    if-nez p1, :cond_1

    .line 34
    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 37
    :cond_1
    return-void

    .line 39
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 49
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 51
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 55
    return-void
    .line 57
.end method

.method public setContractedWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 2
    return-void
    .line 4
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 2
    return-void
    .line 4
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    move-object v2, v0

    .line 28
    check-cast v2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 29
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    .line 31
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 35
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 37
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 39
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 44
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 59
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 75
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 80
    if-eqz v0, :cond_2

    .line 82
    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 84
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->unbind()V

    .line 86
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 89
    :cond_3
    if-nez p1, :cond_6

    .line 91
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 93
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 95
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 97
    const/4 v0, 0x1

    .line 99
    if-ne p1, v0, :cond_4

    .line 100
    const/4 p1, -0x1

    .line 102
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 103
    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 105
    if-ne p1, v0, :cond_5

    .line 107
    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 110
    :cond_5
    return-void

    .line 113
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 119
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 123
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 125
    move-result-object p1

    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 131
    if-eqz p1, :cond_7

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 135
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 137
    move-result-object p1

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySystemActions(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 141
    :cond_7
    return-void
.end method

.method public setExpandedInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 7
    :cond_0
    return-void
    .line 9
.end method

.method public setExpandedWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 2
    return-void
    .line 4
.end method

.method public setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 20
    if-eqz v0, :cond_2

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    .line 26
    :cond_2
    return-void
    .line 29
.end method

.method public setFocusOnVisibilityChange()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 3
    return-void
    .line 5
.end method

.method public setGroupMembershipManager(Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 16
    if-eqz p0, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 20
    :cond_2
    return-void
    .line 23
.end method

.method public setHeadsUp(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    .line 2
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    .line 11
    return-void
    .line 14
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 2
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 6
    return-void
    .line 9
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    move-object v2, v0

    .line 28
    check-cast v2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 29
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    .line 31
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 35
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 37
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 39
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 44
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 59
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 75
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 80
    if-eqz v0, :cond_2

    .line 82
    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 84
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->unbind()V

    .line 86
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    .line 89
    :cond_3
    if-nez p1, :cond_6

    .line 91
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 93
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 95
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 97
    const/4 v0, 0x2

    .line 99
    if-ne p1, v0, :cond_4

    .line 100
    const/4 p1, -0x1

    .line 102
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 103
    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 105
    if-ne p1, v0, :cond_5

    .line 107
    const/4 p1, 0x0

    .line 109
    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 111
    :cond_5
    return-void

    .line 114
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 124
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 126
    move-result-object p1

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 132
    if-eqz p1, :cond_7

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 136
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 138
    move-result-object p1

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySystemActions(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 142
    :cond_7
    return-void
    .line 145
.end method

.method public setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 7
    :cond_0
    return-void
    .line 9
.end method

.method public setHeadsUpWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 2
    return-void
    .line 4
.end method

.method public setHeights(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmallHeight:I

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpHeight:I

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    .line 6
    return-void
    .line 8
.end method

.method public setInflatedSmartReplyState(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    .line 2
    return-void
    .line 4
.end method

.method public setIsChildInGroup(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 24
    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 30
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    .line 35
    return-void
    .line 38
.end method

.method public setIsLowPriority(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setLegacy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateLegacy()V

    .line 4
    return-void
    .line 7
.end method

.method public setNotificationFaded(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    .line 20
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 23
    if-eqz p0, :cond_3

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->setNotificationFaded(Z)V

    .line 27
    :cond_3
    return-void
    .line 30
.end method

.method public setOnExpandedVisibleListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 4
    return-void
    .line 7
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 20
    if-eqz v0, :cond_2

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    .line 26
    :cond_2
    return-void
    .line 29
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 2
    return-void
    .line 4
.end method

.method public setRemoteInputVisible(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputVisible:Z

    .line 2
    xor-int/lit8 v0, p1, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipChildren(Z)V

    .line 6
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x4

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 14
    const v1, 0x10201cd    # @android:id/actions_container

    .line 16
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 30
    if-eqz p0, :cond_2

    .line 32
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 40
    :cond_2
    return-void
    .line 43
.end method

.method public setRemoved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 23
    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 30
    if-eqz p0, :cond_4

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    :cond_4
    return-void
    .line 37
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 5
    return-void
    .line 8
.end method

.method public setUserExpanding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 6
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    .line 14
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    .line 20
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public shouldShowBubbleButton(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v3

    .line 15
    :goto_0
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 16
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 18
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {p0, v1}, Lcom/android/systemui/wmshell/BubblesManager;->areBubblesEnabled(Landroid/content/Context;Landroid/os/UserHandle;)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 32
    if-eqz p0, :cond_1

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    move v2, v3

    .line 37
    :goto_1
    return v2
    .line 38
.end method

.method public final updateAllSingleLineViews()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 2
    if-eqz v0, :cond_8

    .line 4
    const-string v0, "NotifContentView#updateSingleLineView"

    .line 6
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 11
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    move v3, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v2

    .line 19
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 20
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 22
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 24
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 31
    move-result v7

    .line 34
    if-eqz v7, :cond_1

    .line 35
    const v7, 0x7f140191    # @style/HybridNotification

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    const v7, 0x7f140192    # @style/HybridNotificationMiui

    .line 41
    :goto_1
    if-nez v0, :cond_3

    .line 44
    const-string v0, "HybridGroupManager#bindFromNotification"

    .line 46
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 51
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {v0, v4, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 55
    const-class v4, Landroid/view/LayoutInflater;

    .line 58
    invoke-virtual {v0, v4}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 63
    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    instance-of v4, v5, Lcom/android/internal/widget/ConversationLayout;

    .line 66
    if-eqz v4, :cond_2

    .line 68
    const v4, 0x7f0d00db    # @layout/hybrid_conversation_notification 'res/layout/hybrid_conversation_notification.xml'

    .line 70
    goto :goto_2

    .line 73
    :cond_2
    const v4, 0x7f0d00dc    # @layout/hybrid_notification 'res/layout/hybrid_notification.xml'

    .line 74
    :goto_2
    invoke-virtual {v0, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    goto :goto_3

    .line 86
    :cond_3
    move v1, v2

    .line 87
    :goto_3
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 88
    move-result-object v2

    .line 91
    iget-object v4, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 92
    const-string v7, "android.title"

    .line 94
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 96
    move-result-object v4

    .line 99
    if-nez v4, :cond_4

    .line 100
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 102
    const-string v4, "android.title.big"

    .line 104
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 106
    move-result-object v4

    .line 109
    :cond_4
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 110
    move-result-object v2

    .line 113
    iget-object v6, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 114
    const-string v7, "android.text"

    .line 116
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 118
    move-result-object v6

    .line 121
    if-nez v6, :cond_5

    .line 122
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 124
    const-string v6, "android.bigText"

    .line 126
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 128
    move-result-object v6

    .line 131
    :cond_5
    invoke-virtual {v0, v4, v6, v5}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 132
    if-eqz v1, :cond_6

    .line 135
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 137
    :cond_6
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 140
    if-eqz v3, :cond_7

    .line 142
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 144
    const/4 v1, 0x3

    .line 146
    invoke-static {p0, v1, v0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 147
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 150
    goto :goto_4

    .line 153
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 154
    if-eqz v0, :cond_9

    .line 156
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 158
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 162
    :cond_9
    :goto_4
    return-void
    .line 164
.end method

.method public final updateBackgroundColor(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    .line 10
    return-void
    .line 13
.end method

.method public final updateClipping()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    .line 6
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 9
    move-result v1

    .line 12
    sub-float/2addr v0, v1

    .line 13
    float-to-int v0, v0

    .line 14
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 15
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBottomAmount:I

    .line 17
    sub-int/2addr v1, v2

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 21
    move-result v2

    .line 24
    sub-float/2addr v1, v2

    .line 25
    float-to-int v1, v1

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 27
    move-result v1

    .line 30
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 31
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 34
    move-result v4

    .line 37
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 48
    :goto_0
    return-void
    .line 51
.end method

.method public final updateExpandButtonsDuringLayout(ZZ)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    .line 15
    if-nez v0, :cond_0

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 19
    if-eqz v0, :cond_2

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 23
    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 38
    move-result v0

    .line 41
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 44
    move-result v2

    .line 47
    if-gt v0, v2, :cond_4

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 51
    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 57
    move-result v0

    .line 60
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 63
    move-result v2

    .line 66
    if-gt v0, v2, :cond_4

    .line 67
    :cond_3
    :goto_1
    move p1, v1

    .line 69
    :cond_4
    if-eqz p2, :cond_5

    .line 70
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    .line 72
    if-eq p2, p1, :cond_5

    .line 74
    const/4 v1, 0x1

    .line 76
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 77
    if-eqz p2, :cond_6

    .line 79
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 83
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;Z)V

    .line 85
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 88
    if-eqz p2, :cond_7

    .line 90
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 94
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;Z)V

    .line 96
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 99
    if-eqz p2, :cond_8

    .line 101
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 105
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;Z)V

    .line 107
    :cond_8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    .line 110
    return-void
    .line 112
.end method

.method public final updateLegacy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 28
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    .line 30
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 32
    :cond_2
    return-void
    .line 35
.end method

.method public final updateViewVisibilities(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 12
    const/4 v2, 0x1

    .line 14
    invoke-static {p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 20
    const/4 v2, 0x2

    .line 22
    invoke-static {p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 23
    const/4 v0, 0x3

    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 27
    invoke-static {p1, v0, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 32
    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 36
    return-void
    .line 38
.end method

.method public final updateVisibility()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    .line 21
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 27
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 33
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    .line 37
    :goto_0
    return-void
    .line 39
.end method
