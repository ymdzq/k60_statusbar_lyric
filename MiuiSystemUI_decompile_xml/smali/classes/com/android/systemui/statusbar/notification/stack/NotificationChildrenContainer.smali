.class public Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationFadeAware;
.implements Lcom/android/systemui/statusbar/notification/Roundable;


# static fields
.field public static final ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$1;

.field public static final FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

.field public static final NUMBER_OF_CHILDREN_WHEN_CHILDREN_EXPANDED:I

.field public static final NUMBER_OF_CHILDREN_WHEN_COLLAPSED:I = 0x3

.field static final NUMBER_OF_CHILDREN_WHEN_SYSTEM_EXPANDED:I = 0x3


# instance fields
.field public mActualHeight:I

.field public final mAttachedChildren:Ljava/util/List;

.field public mChildClipPath:Landroid/graphics/Path;

.field public mChildPadding:I

.field public mChildrenExpanded:Z

.field public mClipBottomAmount:I

.field public mCollapsedBottomPadding:F

.field public mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mContainingNotificationIsFaded:Z

.field public mCurrentHeader:Landroid/view/ViewGroup;

.field public mCurrentHeaderTranslation:I

.field public mDividerAlpha:F

.field public mDividerHeight:I

.field public final mDividers:Ljava/util/List;

.field public mEnableShadowOnChildNotifications:Z

.field public mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field public mGroupingUtil:Lcom/android/systemui/statusbar/NotificationGroupingUtil;

.field public mHeaderClickListener:Landroid/view/View$OnClickListener;

.field public mHeaderHeight:I

.field public final mHeaderPath:Landroid/graphics/Path;

.field public mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field public mHeaderVisibleAmount:F

.field public mHideDividersDuringExpand:Z

.field public final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

.field public mIsConversation:Z

.field public mIsLowPriority:Z

.field public mNeverAppliedGroupState:Z

.field public mNotificationHeader:Landroid/view/NotificationHeaderView;

.field public mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

.field public mNotificationHeaderMargin:I

.field public mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

.field public mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

.field public mNotificationTopPadding:I

.field public mOverflowNumber:Landroid/widget/TextView;

.field public mRealHeight:I

.field public final mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

.field public mShowDividersWhenExpanded:Z

.field public mShowGroupCountInExpander:Z

.field public mTranslationForHeader:I

.field public mUntruncatedChildCount:I

.field public mUserLocked:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_NOTIFICATION:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/16 v0, 0x1f4

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0xa

    .line 9
    :goto_0
    sput v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->NUMBER_OF_CHILDREN_WHEN_CHILDREN_EXPANDED:I

    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$1;

    .line 13
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$1;-><init>()V

    .line 15
    const-wide/16 v1, 0xc8

    .line 18
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 20
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$1;

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 24
    const-string v1, "FromParent(NCC)"

    .line 26
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    .line 28
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 31
    return-void
    .line 33
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildClipPath:Landroid/graphics/Path;

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderPath:Landroid/graphics/Path;

    .line 8
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotificationIsFaded:Z

    .line 11
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 12
    new-instance p1, Lcom/android/systemui/statusbar/notification/RoundableState;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p0, p2}, Lcom/android/systemui/statusbar/notification/RoundableState;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/notification/Roundable;F)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->initDimens()V

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private getVisibleChildrenExpandHeight()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 4
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 7
    add-int/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 10
    add-int/2addr v0, v1

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 22
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    move v5, v4

    .line 27
    :goto_0
    if-ge v4, v1, :cond_2

    .line 28
    if-lt v5, v3, :cond_0

    .line 30
    goto :goto_2

    .line 32
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 33
    check-cast v6, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v6

    .line 40
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 41
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 43
    move-result v7

    .line 46
    if-eqz v7, :cond_1

    .line 47
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    .line 49
    move-result v6

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 54
    move-result-object v6

    .line 57
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    .line 58
    move-result v6

    .line 61
    :goto_1
    int-to-float v6, v6

    .line 62
    int-to-float v0, v0

    .line 63
    add-float/2addr v0, v6

    .line 64
    float-to-int v0, v0

    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    :goto_2
    return v0
    .line 71
.end method


# virtual methods
.method public final applyRoundnessAndInvalidate()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getTopRoundness()F

    .line 7
    move-result v2

    .line 10
    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 11
    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getTopRoundness()F

    .line 20
    move-result v2

    .line 23
    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 24
    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v0

    .line 36
    const/4 v2, 0x1

    .line 37
    sub-int/2addr v0, v2

    .line 38
    :goto_0
    if-ltz v0, :cond_4

    .line 39
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 41
    check-cast v3, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 49
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 51
    move-result v4

    .line 54
    const/16 v5, 0x8

    .line 55
    if-ne v4, v5, :cond_2

    .line 57
    goto :goto_2

    .line 59
    :cond_2
    const/4 v4, 0x0

    .line 60
    if-eqz v2, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getBottomRoundness()F

    .line 63
    move-result v2

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v2, v4

    .line 68
    :goto_1
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 69
    invoke-interface {v3, v4, v2, v5, v1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 71
    move v2, v1

    .line 74
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->applyRoundnessAndInvalidate()V

    .line 78
    return-void
    .line 81
.end method

.method public applyState()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 10
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 12
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 15
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    .line 20
    move-result v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 26
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x0

    .line 31
    if-nez v4, :cond_2

    .line 32
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 34
    if-nez v4, :cond_1

    .line 36
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 38
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    .line 40
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    :cond_1
    move v4, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v4, v6

    .line 48
    :goto_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 49
    if-eqz v7, :cond_3

    .line 51
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    .line 53
    if-nez v7, :cond_4

    .line 55
    :cond_3
    if-eqz v4, :cond_5

    .line 57
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    .line 59
    if-nez v4, :cond_5

    .line 61
    :cond_4
    move v4, v5

    .line 63
    goto :goto_2

    .line 64
    :cond_5
    move v4, v6

    .line 65
    :goto_2
    move v7, v6

    .line 66
    :goto_3
    if-ge v7, v0, :cond_8

    .line 67
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 69
    check-cast v8, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v8

    .line 76
    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 77
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 79
    move-result-object v9

    .line 82
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 83
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 86
    check-cast v10, Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v10

    .line 93
    check-cast v10, Landroid/view/View;

    .line 94
    const/4 v11, 0x4

    .line 96
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 100
    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 103
    iget v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 105
    int-to-float v12, v12

    .line 107
    sub-float/2addr v11, v12

    .line 108
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 109
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 112
    if-eqz v11, :cond_6

    .line 114
    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 116
    cmpl-float v11, v11, v3

    .line 118
    if-eqz v11, :cond_6

    .line 120
    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerAlpha:F

    .line 122
    goto :goto_4

    .line 124
    :cond_6
    move v11, v3

    .line 125
    :goto_4
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 126
    if-eqz v12, :cond_7

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 130
    move-result v12

    .line 133
    if-nez v12, :cond_7

    .line 134
    iget v9, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 136
    cmpl-float v12, v9, v3

    .line 138
    if-eqz v12, :cond_7

    .line 140
    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerAlpha:F

    .line 142
    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    .line 144
    move-result v9

    .line 147
    invoke-static {v3, v11, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 148
    move-result v11

    .line 151
    :cond_7
    xor-int/lit8 v9, v4, 0x1

    .line 152
    iput-boolean v9, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 154
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 156
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v8, v3, v3, v6, v6}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    .line 162
    add-int/lit8 v7, v7, 0x1

    .line 165
    goto :goto_3

    .line 167
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 168
    if-eqz v0, :cond_9

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 174
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 179
    if-eqz v0, :cond_a

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 185
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 188
    return-void
    .line 191
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildClipPath:Landroid/graphics/Path;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    instance-of v2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7
    if-eqz v2, :cond_0

    .line 9
    move-object v2, p2

    .line 11
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 12
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    .line 14
    move-result v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 19
    move-result v2

    .line 22
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 23
    const/4 v3, 0x0

    .line 26
    cmpl-float v4, v2, v3

    .line 27
    if-eqz v4, :cond_1

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->offset(FF)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 34
    neg-float v2, v2

    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->offset(FF)V

    .line 38
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 42
    :goto_1
    move v0, v1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_2
    instance-of v2, p2, Landroid/view/NotificationHeaderView;

    .line 48
    if-eqz v2, :cond_4

    .line 50
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 52
    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/Roundable;->hasRoundedCorner()Z

    .line 54
    move-result v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 60
    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/Roundable;->getUpdatedRadii()[F

    .line 62
    move-result-object v8

    .line 65
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderPath:Landroid/graphics/Path;

    .line 66
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 68
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderPath:Landroid/graphics/Path;

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 73
    move-result v2

    .line 76
    int-to-float v4, v2

    .line 77
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 78
    move-result v2

    .line 81
    int-to-float v5, v2

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 83
    move-result v2

    .line 86
    int-to-float v6, v2

    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 88
    move-result v2

    .line 91
    int-to-float v7, v2

    .line 92
    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 93
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 95
    if-nez v0, :cond_3

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    goto :goto_3

    .line 103
    :cond_3
    move v1, v0

    .line 104
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderPath:Landroid/graphics/Path;

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 107
    move v0, v1

    .line 110
    :cond_4
    if-eqz v0, :cond_5

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 113
    move-result p0

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    return p0

    .line 120
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 121
    move-result p0

    .line 124
    return p0
    .line 125
.end method

.method public getAttachedChildren()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public bridge synthetic getBottomCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
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

.method public getCollapsedHeight()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 3
    move-result v0

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 7
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IIZ)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public getCollapsedHeightWithoutHeader()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 3
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IIZ)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public getContainingNotification()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCurrentHeaderView()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDividerHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getGroupExpandFraction()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    .line 8
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleChildrenExpandHeight()I

    .line 13
    move-result v0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    .line 17
    move-result v1

    .line 20
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 21
    sub-int/2addr p0, v1

    .line 23
    int-to-float p0, p0

    .line 24
    sub-int/2addr v0, v1

    .line 25
    int-to-float v0, v0

    .line 26
    div-float/2addr p0, v0

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 30
    move-result p0

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 35
    move-result p0

    .line 38
    return p0
    .line 39
.end method

.method public getGroupHeaderHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getIncreasedYPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)I
    .locals 0

    .line 1
    return p2
    .line 2
.end method

.method public getIntrinsicHeight()I
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 13
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    .line 15
    move-result p0

    .line 18
    goto/16 :goto_7

    .line 19
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 21
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 23
    add-int/2addr v1, v2

    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 26
    check-cast v2, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v2

    .line 33
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 34
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    .line 39
    move-result v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v3, v4

    .line 44
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 45
    const/4 v6, 0x1

    .line 47
    const/4 v7, 0x0

    .line 48
    move v8, v7

    .line 49
    move v9, v8

    .line 50
    :goto_1
    if-ge v8, v2, :cond_8

    .line 51
    int-to-float v10, v9

    .line 53
    cmpl-float v10, v10, v0

    .line 54
    if-ltz v10, :cond_2

    .line 56
    goto :goto_6

    .line 58
    :cond_2
    if-nez v6, :cond_5

    .line 59
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 61
    if-eqz v10, :cond_3

    .line 63
    int-to-float v1, v1

    .line 65
    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 66
    int-to-float v10, v10

    .line 68
    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 69
    int-to-float v11, v11

    .line 71
    invoke-static {v10, v11, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 72
    move-result v10

    .line 75
    add-float/2addr v10, v1

    .line 76
    float-to-int v1, v10

    .line 77
    goto :goto_5

    .line 78
    :cond_3
    if-eqz v5, :cond_4

    .line 79
    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 81
    goto :goto_2

    .line 83
    :cond_4
    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 84
    :goto_2
    add-int/2addr v1, v10

    .line 86
    goto :goto_5

    .line 87
    :cond_5
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 88
    if-eqz v6, :cond_6

    .line 90
    int-to-float v1, v1

    .line 92
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 93
    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 95
    add-int/2addr v6, v10

    .line 97
    int-to-float v6, v6

    .line 98
    invoke-static {v4, v6, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 99
    move-result v6

    .line 102
    add-float/2addr v6, v1

    .line 103
    float-to-int v1, v6

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    if-eqz v5, :cond_7

    .line 106
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 108
    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 110
    add-int/2addr v6, v10

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    move v6, v7

    .line 114
    :goto_3
    add-int/2addr v1, v6

    .line 115
    :goto_4
    move v6, v7

    .line 116
    :goto_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 117
    check-cast v10, Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v10

    .line 124
    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 125
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 127
    move-result v10

    .line 130
    add-int/2addr v1, v10

    .line 131
    add-int/lit8 v9, v9, 0x1

    .line 132
    add-int/lit8 v8, v8, 0x1

    .line 134
    goto :goto_1

    .line 136
    :cond_8
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 137
    if-eqz v0, :cond_9

    .line 139
    int-to-float v0, v1

    .line 141
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottomPadding:F

    .line 142
    invoke-static {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 144
    move-result p0

    .line 147
    add-float/2addr p0, v0

    .line 148
    float-to-int p0, p0

    .line 149
    goto :goto_7

    .line 150
    :cond_9
    if-nez v5, :cond_a

    .line 151
    int-to-float v0, v1

    .line 153
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottomPadding:F

    .line 154
    add-float/2addr v0, p0

    .line 156
    float-to-int p0, v0

    .line 157
    goto :goto_7

    .line 158
    :cond_a
    move p0, v1

    .line 159
    :goto_7
    return p0
    .line 160
.end method

.method public getLowPriorityViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMaxAllowedVisibleChildren()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result p0

    return p0
.end method

.method public getMaxAllowedVisibleChildren(Z)I
    .locals 2

    if-nez p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    sget p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->NUMBER_OF_CHILDREN_WHEN_CHILDREN_EXPANDED:I

    return p0

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    const/4 v0, 0x3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    nop

    :cond_3
    return v0
.end method

.method public getMaxContentHeight()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 9
    const/4 v2, 0x3

    .line 11
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IIZ)I

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 17
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 19
    add-int/2addr v0, v2

    .line 21
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 22
    add-int/2addr v0, v2

    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    move v4, v3

    .line 34
    :goto_0
    if-ge v3, v2, :cond_3

    .line 35
    sget v5, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->NUMBER_OF_CHILDREN_WHEN_CHILDREN_EXPANDED:I

    .line 37
    if-lt v4, v5, :cond_1

    .line 39
    goto :goto_2

    .line 41
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 42
    check-cast v5, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 49
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 50
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 52
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    .line 58
    move-result v5

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 63
    move-result-object v5

    .line 66
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    .line 67
    move-result v5

    .line 70
    :goto_1
    int-to-float v5, v5

    .line 71
    int-to-float v0, v0

    .line 72
    add-float/2addr v0, v5

    .line 73
    float-to-int v0, v0

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    :goto_2
    if-lez v4, :cond_4

    .line 80
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 82
    mul-int/2addr v4, p0

    .line 84
    add-int/2addr v0, v4

    .line 85
    :cond_4
    return v0
    .line 86
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

.method public getMinHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IIZ)I

    move-result p0

    return p0
.end method

.method public final getMinHeight(IIZ)I
    .locals 9

    const-string v0, "NotificationChildrenContainer"

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-nez p0, :cond_0

    .line 4
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "getMinHeight: low priority header is null"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result p0

    return p0

    .line 6
    :cond_1
    iget p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    add-int/2addr p3, p2

    .line 7
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    :goto_0
    if-ge v3, p2, :cond_5

    if-lt v4, p1, :cond_2

    goto :goto_3

    :cond_2
    if-nez v5, :cond_3

    .line 8
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    add-int/2addr p3, v6

    goto :goto_1

    :cond_3
    move v5, v1

    .line 9
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 10
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, p3

    move p3, v6

    goto :goto_2

    .line 12
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getMinHeight: child "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " single line view is null"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    int-to-float p1, p3

    .line 13
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottomPadding:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 14
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 15
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gt p2, v2, :cond_6

    .line 16
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int/2addr p1, p0

    :cond_6
    return p1
.end method

.method public getNotificationChildCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public getNotificationHeaderMargin()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f070d81    # @dimen/notification_children_container_margin_top '48.0dp'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public getNotificationHeaderWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public getNotificationTopPadding()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f070d83    # @dimen/notification_children_container_top_padding '8.0dp'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public getOverflowNumberMarginEnd()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    return-object p0
    .line 4
.end method

.method public bridge synthetic getTopCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
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

.method public getVisibleWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 8
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 11
    return-object p0
    .line 13
.end method

.method public final getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 6
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 9
    return-object p0
    .line 11
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final inflateDivider()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f0d0283    # @layout/notification_children_divider 'res/layout/notification_children_divider.xml'

    .line 8
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final initDimens()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070d85    # @dimen/notification_children_padding '8.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 9
    move-result v1

    .line 12
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getDividerHeight()I

    .line 15
    move-result v1

    .line 18
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 19
    const v1, 0x7f070d92    # @dimen/notification_divider_alpha '1.0'

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 24
    move-result v1

    .line 27
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerAlpha:F

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationHeaderMargin()I

    .line 30
    move-result v1

    .line 33
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationTopPadding()I

    .line 36
    move-result v1

    .line 39
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 40
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 42
    add-int/2addr v2, v1

    .line 44
    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderHeight:I

    .line 45
    const v1, 0x7f070d7f    # @dimen/notification_children_collapsed_bottom_padding '16.0dp'

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 50
    move-result v1

    .line 53
    int-to-float v1, v1

    .line 54
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottomPadding:F

    .line 55
    const v1, 0x7f05002d    # @bool/config_enableShadowOnChildNotifications 'false'

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 60
    move-result v1

    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    .line 64
    const v1, 0x7f050058    # @bool/config_showNotificationGroupCountInExpander 'false'

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 69
    move-result v1

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowGroupCountInExpander:Z

    .line 73
    const v1, 0x7f050051    # @bool/config_showDividersWhenGroupNotificationExpanded 'false'

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 78
    move-result v1

    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    .line 82
    const v1, 0x7f050033    # @bool/config_hideDividersDuringExpand 'true'

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 87
    move-result v1

    .line 90
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    .line 91
    const v1, 0x105020f    # @android:dimen/notification_header_padding_top

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 96
    move-result v0

    .line 99
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 100
    sub-int/2addr v0, v1

    .line 102
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationForHeader:I

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    move-result-object v0

    .line 112
    const v1, 0x7f0703b0    # @dimen/group_overflow_number_size '11.0sp'

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 116
    move-result v1

    .line 119
    int-to-float v1, v1

    .line 120
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberSize:F

    .line 121
    const v1, 0x7f0703af    # @dimen/group_overflow_number_padding '@android:dimen/notification_header_separating_margin'

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 126
    move-result v0

    .line 129
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberPadding:I

    .line 130
    return-void
    .line 132
.end method

.method public isUserLocked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 2
    return p0
    .line 4
.end method

.method public measureHeaderView(II)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 5
    return-void
    .line 8
.end method

.method public onExpansionChanged$1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 14
    :cond_1
    return-void
    .line 17
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 2
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result p1

    .line 9
    sget p2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->NUMBER_OF_CHILDREN_WHEN_CHILDREN_EXPANDED:I

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result p1

    .line 15
    const/4 p2, 0x0

    .line 16
    move p3, p2

    .line 17
    :goto_0
    if-ge p3, p1, :cond_0

    .line 18
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 20
    check-cast p4, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p4

    .line 27
    check-cast p4, Landroid/view/View;

    .line 28
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    move-result p5

    .line 33
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    move-result v0

    .line 37
    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 38
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 41
    check-cast p4, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object p4

    .line 48
    check-cast p4, Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 51
    move-result p5

    .line 54
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 55
    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 57
    add-int/lit8 p3, p3, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 63
    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 67
    move-result p1

    .line 70
    const/4 p3, 0x1

    .line 71
    if-ne p1, p3, :cond_1

    .line 72
    goto :goto_1

    .line 74
    :cond_1
    move p3, p2

    .line 75
    :goto_1
    if-eqz p3, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getOverflowNumberMarginEnd()I

    .line 78
    move-result p1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 83
    move-result p1

    .line 86
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 89
    move-result p3

    .line 92
    sub-int/2addr p1, p3

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getOverflowNumberMarginEnd()I

    .line 94
    move-result p3

    .line 97
    sub-int/2addr p1, p3

    .line 98
    :goto_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 101
    move-result p3

    .line 104
    add-int/2addr p3, p1

    .line 105
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 108
    move-result p5

    .line 111
    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 115
    if-eqz p1, :cond_4

    .line 117
    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    .line 119
    move-result p3

    .line 122
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 123
    invoke-virtual {p4}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    .line 125
    move-result p4

    .line 128
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 129
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 132
    if-eqz p1, :cond_5

    .line 134
    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    .line 136
    move-result p3

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 140
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    .line 142
    move-result p0

    .line 145
    invoke-virtual {p1, p2, p2, p3, p0}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 146
    :cond_5
    return-void
    .line 149
.end method

.method public onMeasure(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    const-string v2, "NotificationChildrenContainer#onMeasure"

    .line 6
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    move-result v2

    .line 14
    const/4 v4, 0x1

    .line 15
    const/high16 v5, 0x40000000    # 2.0f

    .line 16
    if-ne v2, v5, :cond_0

    .line 18
    move v6, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v6, 0x0

    .line 22
    :goto_0
    const/high16 v7, -0x80000000

    .line 23
    if-ne v2, v7, :cond_1

    .line 25
    move v8, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v8, 0x0

    .line 29
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 30
    move-result v9

    .line 33
    if-nez v6, :cond_3

    .line 34
    if-eqz v8, :cond_2

    .line 36
    goto :goto_2

    .line 38
    :cond_2
    move/from16 v6, p2

    .line 39
    goto :goto_3

    .line 41
    :cond_3
    :goto_2
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    move-result v6

    .line 45
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 46
    move-result v8

    .line 49
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 50
    if-eqz v10, :cond_4

    .line 52
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    move-result v7

    .line 57
    invoke-virtual {v10, v7, v6}, Landroid/widget/TextView;->measure(II)V

    .line 58
    :cond_4
    iget v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 61
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 63
    move-result v7

    .line 66
    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 67
    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 69
    add-int/2addr v10, v11

    .line 71
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 72
    check-cast v11, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v11

    .line 79
    sget v12, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->NUMBER_OF_CHILDREN_WHEN_CHILDREN_EXPANDED:I

    .line 80
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 82
    move-result v11

    .line 85
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 86
    move-result v12

    .line 89
    if-le v11, v12, :cond_5

    .line 90
    sub-int/2addr v12, v4

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    const/4 v12, -0x1

    .line 94
    :goto_4
    const/4 v13, 0x0

    .line 95
    :goto_5
    if-ge v13, v11, :cond_9

    .line 96
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 98
    check-cast v14, Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v14

    .line 105
    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 106
    if-ne v13, v12, :cond_6

    .line 108
    move v15, v4

    .line 110
    goto :goto_6

    .line 111
    :cond_6
    const/4 v15, 0x0

    .line 112
    :goto_6
    if-eqz v15, :cond_7

    .line 113
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 115
    if-eqz v15, :cond_7

    .line 117
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 119
    move-result v15

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getOverflowNumberMarginEnd()I

    .line 123
    move-result v16

    .line 126
    add-int v16, v16, v15

    .line 127
    move/from16 v15, v16

    .line 129
    goto :goto_7

    .line 131
    :cond_7
    const/4 v15, 0x0

    .line 132
    :goto_7
    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSingleLineWidthIndention(I)V

    .line 133
    invoke-virtual {v14, v1, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 136
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 139
    check-cast v15, Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v15

    .line 146
    check-cast v15, Landroid/view/View;

    .line 147
    invoke-virtual {v15, v1, v7}, Landroid/view/View;->measure(II)V

    .line 149
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 152
    move-result v15

    .line 155
    const/16 v3, 0x8

    .line 156
    if-eq v15, v3, :cond_8

    .line 158
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 160
    move-result v3

    .line 163
    iget v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 164
    add-int/2addr v3, v14

    .line 166
    add-int/2addr v3, v10

    .line 167
    move v10, v3

    .line 168
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 169
    goto :goto_5

    .line 171
    :cond_9
    iput v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRealHeight:I

    .line 172
    if-eqz v2, :cond_a

    .line 174
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 176
    move-result v10

    .line 179
    :cond_a
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderHeight:I

    .line 180
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 182
    move-result v2

    .line 185
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 186
    if-eqz v3, :cond_b

    .line 188
    invoke-virtual {v3, v1, v2}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 190
    :cond_b
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 193
    if-eqz v3, :cond_c

    .line 195
    invoke-virtual {v3, v1, v2}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 197
    :cond_c
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->measureHeaderView(II)I

    .line 200
    move-result v1

    .line 203
    add-int/2addr v10, v1

    .line 204
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRealHeight:I

    .line 205
    add-int/2addr v2, v1

    .line 207
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRealHeight:I

    .line 208
    invoke-virtual {v0, v8, v10}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 210
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 213
    return-void
    .line 216
.end method

.method public onNotificationUpdated()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowGroupCountInExpander:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationColor()I

    .line 9
    move-result v0

    .line 12
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 13
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 15
    const v3, 0x10302e3    # @android:style/Theme.DeviceDefault.DayNight

    .line 17
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 20
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    .line 23
    move-result-object v1

    .line 26
    const v2, 0x1010435    # @android:attr/colorAccent

    .line 27
    filled-new-array {v2}, [I

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 34
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    :try_start_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 39
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 48
    iput v0, v1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberColor:I

    .line 50
    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    :cond_1
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    if-eqz v1, :cond_2

    .line 59
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    goto :goto_0

    .line 64
    :catchall_1
    move-exception v0

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    :cond_2
    :goto_0
    throw p0
    .line 69
.end method

.method public final pointInView(FFF)Z
    .locals 2

    .line 1
    neg-float v0, p3

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    if-ltz v1, :cond_0

    .line 5
    cmpl-float v0, p2, v0

    .line 7
    if-ltz v0, :cond_0

    .line 9
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    .line 11
    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 13
    sub-int/2addr v0, v1

    .line 15
    int-to-float v0, v0

    .line 16
    add-float/2addr v0, p3

    .line 17
    cmpg-float p1, p1, v0

    .line 18
    if-gez p1, :cond_0

    .line 20
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRealHeight:I

    .line 22
    int-to-float p0, p0

    .line 24
    add-float/2addr p0, p3

    .line 25
    cmpg-float p0, p2, p0

    .line 26
    if-gez p0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
    .line 33
.end method

.method public reInflateViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 12
    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 19
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsConversation:Z

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateNotificationHeader(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;Z)V

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->initDimens()V

    .line 26
    const/4 p1, 0x0

    .line 29
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 30
    check-cast p2, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result p2

    .line 37
    if-ge p1, p2, :cond_2

    .line 38
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 40
    check-cast p2, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 47
    check-cast p2, Landroid/view/View;

    .line 48
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 50
    move-result v1

    .line 53
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    .line 57
    move-result-object p2

    .line 60
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 64
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 p1, p1, 0x1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 83
    return-void
    .line 86
.end method

.method public final recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    .line 10
    if-eqz v1, :cond_3

    .line 12
    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {p1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 24
    move-result-object p1

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    .line 29
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 33
    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 44
    check-cast p1, Landroid/view/NotificationHeaderView;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 47
    const v0, 0x10202c5    # @android:id/expanded_menu

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 67
    move-result-object p1

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 71
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 73
    invoke-static {p1, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 75
    move-result-object p1

    .line 78
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 83
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$$ExternalSyntheticLambda0;

    .line 85
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;I)V

    .line 87
    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mRoundnessChangedListener:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$RoundnessChangedListener;

    .line 90
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 92
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 97
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 101
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 112
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 119
    move-result v0

    .line 122
    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 125
    goto :goto_1

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 128
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 130
    goto :goto_2

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 142
    :goto_2
    return-void
.end method

.method public final recreateNotificationHeader(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;Z)V
    .locals 3

    .line 1
    const-string v0, "NotifChildCont#recreateHeader"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 7
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsConversation:Z

    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 13
    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 23
    move-result-object p1

    .line 26
    invoke-static {p2, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makeNotificationGroupHeader()Landroid/widget/RemoteViews;

    .line 31
    move-result-object p2

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 35
    const/4 v1, 0x0

    .line 37
    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {p2, v0, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    move-result-object p2

    .line 47
    check-cast p2, Landroid/view/NotificationHeaderView;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 50
    const v0, 0x10202c5    # @android:id/expanded_menu

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p2

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 69
    move-result-object p2

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 75
    invoke-static {p2, v0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 77
    move-result-object p2

    .line 80
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 81
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$$ExternalSyntheticLambda0;

    .line 85
    const/4 v2, 0x1

    .line 87
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;I)V

    .line 88
    iput-object v0, p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mRoundnessChangedListener:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$RoundnessChangedListener;

    .line 91
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 93
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 98
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 102
    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 106
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 108
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 113
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 115
    if-nez p2, :cond_1

    .line 117
    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setExpanded(Z)V

    .line 120
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 125
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenAppearance()V

    .line 136
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 139
    return-void
    .line 142
.end method

.method public final removeNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 20
    check-cast v1, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/View;

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 37
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$2;

    .line 40
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;Landroid/view/View;I)V

    .line 43
    const-wide/16 v3, 0xd2

    .line 46
    invoke-static {v0, v3, v4, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JLjava/lang/Runnable;)V

    .line 48
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 51
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNotificationFaded(Z)V

    .line 54
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 57
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    .line 60
    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupingUtil:Lcom/android/systemui/statusbar/NotificationGroupingUtil;

    .line 64
    move v1, v2

    .line 66
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result v4

    .line 72
    if-ge v1, v4, :cond_0

    .line 73
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 78
    check-cast v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    .line 79
    const/4 v4, 0x1

    .line 81
    invoke-virtual {v3, v4, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->apply(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 85
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLineViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 88
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->FROM_PARENT:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 91
    const/4 v1, 0x0

    .line 93
    invoke-interface {p1, v1, v1, v0, v2}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->applyRoundnessAndInvalidate()V

    .line 97
    return-void
    .line 100
.end method

.method public final resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    if-eq p1, p2, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 16
    const/4 v0, 0x4

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_1
    if-ne p1, p2, :cond_2

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 25
    move-result p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 31
    move-result-object p0

    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_2
    return-void
    .line 42
.end method

.method public setActualHeight(I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    .line 9
    move-result p1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 13
    move-result v0

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 17
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    .line 28
    move-result v1

    .line 31
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 32
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 34
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 36
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 39
    invoke-virtual {v3, v2}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 41
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 44
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 46
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->transformTo(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 48
    :cond_1
    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 52
    move-result v3

    .line 55
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 56
    check-cast v4, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 60
    move-result v4

    .line 63
    move v5, v2

    .line 64
    :goto_0
    if-ge v5, v4, :cond_5

    .line 65
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 67
    check-cast v6, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v6

    .line 74
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 75
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 79
    move-result-object v7

    .line 82
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    .line 83
    move-result v7

    .line 86
    :goto_1
    int-to-float v7, v7

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 89
    move-result v7

    .line 92
    if-eqz v7, :cond_3

    .line 93
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    .line 95
    move-result v7

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 100
    move-result-object v7

    .line 103
    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    .line 104
    move-result v7

    .line 107
    goto :goto_1

    .line 108
    :goto_2
    if-ge v5, v3, :cond_4

    .line 109
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 111
    move-result-object v8

    .line 114
    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    .line 115
    move-result v8

    .line 118
    int-to-float v8, v8

    .line 119
    invoke-static {v8, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 120
    move-result v7

    .line 123
    float-to-int v7, v7

    .line 124
    invoke-virtual {v6, v7, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setActualHeight(IZ)V

    .line 125
    goto :goto_3

    .line 128
    :cond_4
    float-to-int v7, v7

    .line 129
    invoke-virtual {v6, v7, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setActualHeight(IZ)V

    .line 130
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 133
    goto :goto_0

    .line 135
    :cond_5
    return-void
    .line 136
.end method

.method public setChildClipPath(Landroid/graphics/Path;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildClipPath:Landroid/graphics/Path;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setChildrenExpanded(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NotificationExpandButton;->setExpanded(Z)V

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    :goto_1
    if-ge v2, v0, :cond_2

    .line 29
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 31
    check-cast v3, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 39
    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_1

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 47
    if-eqz p1, :cond_5

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 51
    if-nez v0, :cond_3

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 55
    if-eqz p0, :cond_4

    .line 57
    :cond_3
    const/4 v1, 0x1

    .line 59
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/NotificationHeaderView;->setAcceptAllTouches(Z)V

    .line 60
    :cond_5
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 4
    return-void
    .line 7
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;

    .line 4
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupingUtil:Lcom/android/systemui/statusbar/NotificationGroupingUtil;

    .line 9
    return-void
    .line 11
.end method

.method public setContentAlpha(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 3
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getChildCount()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 23
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 30
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentAlpha(F)V

    .line 43
    goto :goto_1

    .line 46
    :cond_1
    return-void
    .line 47
.end method

.method public setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    sub-float/2addr v0, p1

    .line 6
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationForHeader:I

    .line 7
    int-to-float p1, p1

    .line 9
    mul-float/2addr v0, p1

    .line 10
    float-to-int p1, v0

    .line 11
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 12
    return-void
    .line 14
.end method

.method public setIsLowPriority(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    .line 9
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 16
    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 20
    :cond_1
    return-void
    .line 23
.end method

.method public setNotificationFaded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotificationIsFaded:Z

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNotificationFaded(Z)V

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    return-void
    .line 42
.end method

.method public setNotificationGroupWhen(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 2
    const v1, 0x1020551    # @android:id/to_org_header

    .line 4
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    instance-of v2, v0, Landroid/widget/DateTimeView;

    .line 18
    if-eqz v2, :cond_1

    .line 20
    check-cast v0, Landroid/widget/DateTimeView;

    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 24
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 27
    if-eqz p0, :cond_3

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 31
    if-nez p0, :cond_2

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p0

    .line 39
    instance-of v0, p0, Landroid/widget/DateTimeView;

    .line 40
    if-eqz v0, :cond_3

    .line 42
    check-cast p0, Landroid/widget/DateTimeView;

    .line 44
    invoke-virtual {p0, p1, p2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 46
    :cond_3
    :goto_1
    return-void
    .line 49
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public setUntruncatedChildCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 4
    return-void
    .line 7
.end method

.method public setUserLocked(Z)V
    .locals 6

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 17
    move v2, v0

    .line 18
    :goto_0
    const/4 v3, 0x1

    .line 19
    if-ge v2, v1, :cond_2

    .line 20
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 22
    check-cast v4, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 30
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 34
    move-result v5

    .line 37
    if-nez v5, :cond_1

    .line 38
    goto :goto_1

    .line 40
    :cond_1
    move v3, v0

    .line 41
    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 48
    if-eqz p1, :cond_5

    .line 50
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 52
    if-nez v1, :cond_3

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 56
    if-eqz p0, :cond_4

    .line 58
    :cond_3
    move v0, v3

    .line 60
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/NotificationHeaderView;->setAcceptAllTouches(Z)V

    .line 61
    :cond_5
    return-void
    .line 64
.end method

.method public final showingAsLowPriority()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 9
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
    .line 16
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 10
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    .line 15
    move-result v2

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 19
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    if-nez v3, :cond_1

    .line 25
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 27
    if-nez v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 31
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    :cond_0
    move v3, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v3, v5

    .line 41
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 42
    if-eqz v6, :cond_2

    .line 44
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    .line 46
    if-nez v6, :cond_3

    .line 48
    :cond_2
    if-eqz v3, :cond_4

    .line 50
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    .line 52
    if-nez v3, :cond_4

    .line 54
    :cond_3
    move v3, v4

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    move v3, v5

    .line 58
    :goto_1
    sub-int/2addr v0, v4

    .line 59
    :goto_2
    const/4 v6, 0x0

    .line 60
    if-ltz v0, :cond_7

    .line 61
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 63
    check-cast v7, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v7

    .line 70
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 71
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 73
    move-result-object v8

    .line 76
    invoke-virtual {v8, v7, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 77
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 80
    check-cast v9, Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v9

    .line 87
    check-cast v9, Landroid/view/View;

    .line 88
    const/4 v10, 0x4

    .line 90
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 94
    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 97
    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 99
    int-to-float v11, v11

    .line 101
    sub-float/2addr v10, v11

    .line 102
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 103
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 106
    if-eqz v10, :cond_5

    .line 108
    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 110
    cmpl-float v10, v10, v6

    .line 112
    if-eqz v10, :cond_5

    .line 114
    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerAlpha:F

    .line 116
    goto :goto_3

    .line 118
    :cond_5
    move v10, v6

    .line 119
    :goto_3
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 120
    if-eqz v11, :cond_6

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 124
    move-result v11

    .line 127
    if-nez v11, :cond_6

    .line 128
    iget v8, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 130
    cmpl-float v11, v8, v6

    .line 132
    if-eqz v11, :cond_6

    .line 134
    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerAlpha:F

    .line 136
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    .line 138
    move-result v8

    .line 141
    invoke-static {v6, v10, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 142
    move-result v10

    .line 145
    :cond_6
    xor-int/lit8 v8, v3, 0x1

    .line 146
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 148
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 150
    invoke-virtual {v1, v9, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 153
    invoke-virtual {v7, v6, v6, v5, v5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    .line 156
    add-int/lit8 v0, v0, -0x1

    .line 159
    goto :goto_2

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 162
    if-eqz v0, :cond_9

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 166
    if-eqz v0, :cond_8

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 170
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 172
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 179
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 186
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 189
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 195
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 198
    if-eqz p1, :cond_a

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 202
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 204
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 207
    return-void
    .line 210
.end method

.method public updateChildrenAppearance()V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupingUtil:Lcom/android/systemui/statusbar/NotificationGroupingUtil;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 9
    if-eqz v1, :cond_b

    .line 10
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto/16 :goto_9

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 18
    move v2, v0

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    if-ge v2, v4, :cond_3

    .line 27
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    .line 33
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mParentRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 35
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 37
    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    .line 41
    move-result-object v6

    .line 44
    if-nez v6, :cond_1

    .line 45
    move-object v6, v5

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget v7, v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mId:I

    .line 49
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v6

    .line 54
    :goto_1
    iput-object v6, v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mParentView:Landroid/view/View;

    .line 55
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mExtractor:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 57
    if-nez v6, :cond_2

    .line 59
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 62
    move-result-object v4

    .line 65
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 66
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 68
    move-result-object v5

    .line 71
    :goto_2
    iput-object v5, v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mParentData:Ljava/lang/Object;

    .line 72
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mComparator:Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;

    .line 74
    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mParentView:Landroid/view/View;

    .line 76
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;->isEmpty(Landroid/view/View;)Z

    .line 78
    move-result v4

    .line 81
    xor-int/lit8 v4, v4, 0x1

    .line 82
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mApply:Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    move v2, v0

    .line 89
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 90
    move-result v4

    .line 93
    if-ge v2, v4, :cond_9

    .line 94
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 99
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 100
    move v6, v0

    .line 102
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 103
    move-result v7

    .line 106
    if-ge v6, v7, :cond_8

    .line 107
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v7

    .line 112
    check-cast v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    .line 113
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mApply:Z

    .line 115
    if-nez v8, :cond_4

    .line 117
    goto :goto_6

    .line 119
    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 120
    move-result-object v8

    .line 123
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    .line 124
    move-result-object v8

    .line 127
    if-nez v8, :cond_5

    .line 128
    goto :goto_6

    .line 130
    :cond_5
    iget v9, v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mId:I

    .line 131
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object v8

    .line 136
    if-nez v8, :cond_6

    .line 137
    goto :goto_6

    .line 139
    :cond_6
    iget-object v9, v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mExtractor:Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    .line 140
    if-nez v9, :cond_7

    .line 142
    move-object v9, v5

    .line 144
    goto :goto_5

    .line 145
    :cond_7
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 146
    move-result-object v9

    .line 149
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 150
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 152
    move-result-object v9

    .line 155
    :goto_5
    iget-object v10, v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mParentView:Landroid/view/View;

    .line 156
    iget-object v11, v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mParentData:Ljava/lang/Object;

    .line 158
    iget-object v12, v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mComparator:Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;

    .line 160
    invoke-interface {v12, v10, v8, v11, v9}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;->compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    move-result v8

    .line 165
    iput-boolean v8, v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->mApply:Z

    .line 166
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 168
    goto :goto_4

    .line 170
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 171
    goto :goto_3

    .line 173
    :cond_9
    move v2, v0

    .line 174
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 175
    move-result v4

    .line 178
    if-ge v2, v4, :cond_b

    .line 179
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    move-result-object v4

    .line 184
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 185
    move v5, v0

    .line 187
    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 188
    move-result v6

    .line 191
    if-ge v5, v6, :cond_a

    .line 192
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    move-result-object v6

    .line 197
    check-cast v6, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    .line 198
    invoke-virtual {v6, v0, v4}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->apply(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 200
    add-int/lit8 v5, v5, 0x1

    .line 203
    goto :goto_8

    .line 205
    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLineViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 206
    add-int/lit8 v2, v2, 0x1

    .line 209
    goto :goto_7

    .line 211
    :cond_b
    :goto_9
    return-void
    .line 212
.end method

.method public final updateChildrenClipping()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 19
    move-result v1

    .line 22
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    .line 23
    sub-int/2addr v1, v2

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_0
    if-ge v3, v0, :cond_7

    .line 28
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 30
    check-cast v4, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 38
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 40
    move-result v5

    .line 43
    const/16 v6, 0x8

    .line 44
    if-ne v5, v6, :cond_1

    .line 46
    goto :goto_5

    .line 48
    :cond_1
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 49
    move-result v5

    .line 52
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 53
    move-result v6

    .line 56
    int-to-float v6, v6

    .line 57
    add-float/2addr v6, v5

    .line 58
    int-to-float v7, v1

    .line 59
    cmpl-float v5, v5, v7

    .line 60
    const/4 v8, 0x1

    .line 62
    if-lez v5, :cond_2

    .line 63
    move v5, v2

    .line 65
    move v6, v5

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    cmpl-float v5, v6, v7

    .line 68
    if-lez v5, :cond_3

    .line 70
    sub-float/2addr v6, v7

    .line 72
    float-to-int v5, v6

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v5, v2

    .line 75
    :goto_1
    move v6, v8

    .line 76
    :goto_2
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 77
    move-result v7

    .line 80
    if-nez v7, :cond_4

    .line 81
    goto :goto_3

    .line 83
    :cond_4
    move v8, v2

    .line 84
    :goto_3
    if-eq v6, v8, :cond_6

    .line 85
    if-eqz v6, :cond_5

    .line 87
    move v6, v2

    .line 89
    goto :goto_4

    .line 90
    :cond_5
    const/4 v6, 0x4

    .line 91
    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    :cond_6
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipBottomAmount(I)V

    .line 95
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 98
    goto :goto_0

    .line 100
    :cond_7
    return-void
    .line 101
.end method

.method public final updateExpansionStates()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 23
    check-cast v3, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 31
    if-nez v2, :cond_1

    .line 33
    const/4 v4, 0x1

    .line 35
    if-ne v0, v4, :cond_1

    .line 36
    goto :goto_1

    .line 38
    :cond_1
    move v4, v1

    .line 39
    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    :goto_2
    return-void
    .line 46
.end method

.method public final updateGroupOverflow()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowGroupCountInExpander:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 7
    if-nez v0, :cond_0

    .line 9
    move-object v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 13
    :goto_0
    instance-of v2, v0, Lcom/android/internal/widget/NotificationExpandButton;

    .line 15
    if-eqz v2, :cond_1

    .line 17
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setNumber(I)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 24
    if-nez v0, :cond_2

    .line 26
    goto :goto_1

    .line 28
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 29
    :goto_1
    instance-of v0, v1, Lcom/android/internal/widget/NotificationExpandButton;

    .line 31
    if-eqz v0, :cond_3

    .line 33
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    .line 35
    invoke-virtual {v1, p0}, Lcom/android/internal/widget/NotificationExpandButton;->setNumber(I)V

    .line 37
    :cond_3
    return-void

    .line 40
    :cond_4
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 42
    move-result v2

    .line 45
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    .line 46
    if-le v3, v2, :cond_7

    .line 48
    sub-int/2addr v3, v2

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 51
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 53
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    .line 55
    const/4 v5, 0x0

    .line 57
    if-nez v2, :cond_5

    .line 58
    const-class v2, Landroid/view/LayoutInflater;

    .line 60
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 65
    check-cast v2, Landroid/view/LayoutInflater;

    .line 66
    const v6, 0x7f0d00dd    # @layout/hybrid_overflow_number 'res/layout/hybrid_overflow_number.xml'

    .line 68
    invoke-virtual {v2, v6, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    move-result-object v2

    .line 74
    check-cast v2, Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    iget v6, v1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberColor:I

    .line 80
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    :cond_5
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v6

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v7

    .line 92
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 93
    move-result-object v7

    .line 96
    const v8, 0x7f13088d    # @string/notification_group_overflow_indicator '+ %s'

    .line 97
    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object v6

    .line 103
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 104
    move-result-object v7

    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v7

    .line 111
    if-nez v7, :cond_6

    .line 112
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_6
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object v4

    .line 120
    const v6, 0x7f13088c    # @string/notification_group_overflow_description '{count, plural, =1 {# more notification inside.} other {# more notifications inside.} }'

    .line 121
    invoke-static {v4, v6, v3}, Lcom/android/systemui/util/PluralMessageFormaterKt;->icuMessageFormat(Landroid/content/res/Resources;II)Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 127
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    iget v3, v1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberSize:F

    .line 131
    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingStart()I

    .line 136
    move-result v3

    .line 139
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    .line 140
    move-result v4

    .line 143
    iget v5, v1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberPadding:I

    .line 144
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 146
    move-result v6

    .line 149
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 150
    iget v1, v1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberColor:I

    .line 153
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 160
    if-nez v1, :cond_9

    .line 162
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 164
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 166
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 169
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 171
    goto :goto_2

    .line 173
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 174
    if-eqz v2, :cond_9

    .line 176
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    .line 181
    move-result v2

    .line 184
    if-eqz v2, :cond_8

    .line 185
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 187
    move-result v2

    .line 190
    if-eqz v2, :cond_8

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransientViewCount()I

    .line 195
    move-result v3

    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 199
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$2;

    .line 202
    invoke-direct {v3, p0, v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;Landroid/view/View;I)V

    .line 204
    const-wide/16 v4, 0xd2

    .line 207
    invoke-static {v2, v4, v5, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JLjava/lang/Runnable;)V

    .line 209
    :cond_8
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 212
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 214
    :cond_9
    :goto_2
    return-void
    .line 216
.end method

.method public final updateHeaderVisibility(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 13
    :goto_0
    if-ne v0, v1, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz p1, :cond_6

    .line 20
    if-eqz v1, :cond_5

    .line 22
    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 26
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 32
    move-result-object v4

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 36
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 40
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$$ExternalSyntheticLambda1;

    .line 43
    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;)V

    .line 45
    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 48
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 51
    if-ne v1, v4, :cond_2

    .line 53
    move v4, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v4, v3

    .line 57
    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 58
    if-eqz v4, :cond_3

    .line 60
    move v4, v5

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const/4 v4, 0x0

    .line 64
    :goto_2
    sub-float/2addr v5, v4

    .line 65
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 66
    check-cast v6, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v6

    .line 73
    move v7, v3

    .line 74
    :goto_3
    if-ge v7, v6, :cond_6

    .line 75
    const/4 v8, 0x3

    .line 77
    if-lt v7, v8, :cond_4

    .line 78
    goto :goto_4

    .line 80
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 81
    check-cast v8, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v8

    .line 88
    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 89
    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 91
    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 94
    invoke-direct {v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 96
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 99
    invoke-virtual {v9, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 102
    sget-object v10, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$1;

    .line 105
    mul-int/lit8 v11, v7, 0x32

    .line 107
    int-to-long v11, v11

    .line 109
    iput-wide v11, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 110
    invoke-virtual {v9, v8, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 112
    add-int/lit8 v7, v7, 0x1

    .line 115
    goto :goto_3

    .line 117
    :cond_5
    move p1, v3

    .line 118
    :cond_6
    :goto_4
    if-nez p1, :cond_9

    .line 119
    if-eqz v1, :cond_7

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 123
    move-result-object p1

    .line 126
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 127
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 130
    :cond_7
    if-eqz v0, :cond_9

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 135
    move-result-object p1

    .line 138
    if-eqz p1, :cond_8

    .line 139
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 141
    :cond_8
    const/4 p1, 0x4

    .line 144
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 145
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 148
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 150
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 153
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 155
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 158
    return-void
    .line 160
.end method

.method public updateState(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 6
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 13
    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 14
    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 16
    add-int/2addr v3, v4

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupHeaderHeight()I

    .line 19
    move-result v4

    .line 22
    add-int/2addr v4, v3

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    .line 24
    move-result v3

    .line 27
    const/4 v5, 0x1

    .line 28
    sub-int/2addr v3, v5

    .line 29
    add-int/lit8 v6, v3, 0x1

    .line 30
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 32
    const/4 v8, 0x0

    .line 34
    if-eqz v7, :cond_0

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 37
    move-result v7

    .line 40
    if-nez v7, :cond_0

    .line 41
    move v7, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v7, v8

    .line 45
    :goto_0
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 46
    const/4 v10, 0x0

    .line 48
    if-eqz v9, :cond_1

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    .line 51
    move-result v6

    .line 54
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 55
    move-result v9

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v9, v6

    .line 60
    move v6, v10

    .line 61
    :goto_1
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 62
    if-eqz v11, :cond_2

    .line 64
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 66
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    .line 68
    move-result v11

    .line 71
    if-nez v11, :cond_2

    .line 72
    move v11, v5

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move v11, v8

    .line 76
    :goto_2
    move v13, v5

    .line 77
    move v12, v8

    .line 78
    :goto_3
    if-ge v12, v2, :cond_e

    .line 79
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 81
    check-cast v14, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v14

    .line 88
    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 89
    if-nez v13, :cond_5

    .line 91
    if-eqz v7, :cond_3

    .line 93
    int-to-float v4, v4

    .line 95
    iget v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 96
    int-to-float v15, v15

    .line 98
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 99
    int-to-float v5, v5

    .line 101
    invoke-static {v15, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 102
    move-result v5

    .line 105
    add-float/2addr v5, v4

    .line 106
    float-to-int v4, v5

    .line 107
    goto :goto_7

    .line 108
    :cond_3
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 109
    if-eqz v5, :cond_4

    .line 111
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 113
    goto :goto_4

    .line 115
    :cond_4
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 116
    :goto_4
    add-int/2addr v4, v5

    .line 118
    goto :goto_7

    .line 119
    :cond_5
    if-eqz v7, :cond_6

    .line 120
    int-to-float v4, v4

    .line 122
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 123
    iget v13, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 125
    add-int/2addr v5, v13

    .line 127
    int-to-float v5, v5

    .line 128
    invoke-static {v10, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 129
    move-result v5

    .line 132
    add-float/2addr v5, v4

    .line 133
    float-to-int v4, v5

    .line 134
    goto :goto_6

    .line 135
    :cond_6
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 136
    if-eqz v5, :cond_7

    .line 138
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 140
    goto :goto_5

    .line 142
    :cond_7
    move v5, v8

    .line 143
    :goto_5
    add-int/2addr v4, v5

    .line 144
    :goto_6
    move v13, v8

    .line 145
    :goto_7
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 146
    move-result-object v5

    .line 149
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 150
    move-result v15

    .line 153
    iput v15, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 154
    add-int/lit8 v10, v4, 0x0

    .line 156
    int-to-float v10, v10

    .line 158
    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 159
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 162
    iget-boolean v10, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 164
    if-nez v10, :cond_a

    .line 166
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 168
    iget-boolean v10, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 170
    if-eqz v10, :cond_8

    .line 172
    goto :goto_8

    .line 174
    :cond_8
    if-eqz v11, :cond_9

    .line 175
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    .line 177
    if-eqz v10, :cond_9

    .line 179
    iget v10, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 181
    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 183
    goto :goto_9

    .line 186
    :cond_9
    const/4 v10, 0x0

    .line 187
    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 188
    goto :goto_9

    .line 191
    :cond_a
    :goto_8
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getTranslationZ()F

    .line 192
    move-result v10

    .line 195
    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 196
    :goto_9
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 199
    iput-boolean v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 201
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 203
    iput-boolean v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 205
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 207
    iput-boolean v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 209
    iput v8, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 211
    const/4 v10, 0x0

    .line 213
    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 214
    const/high16 v10, 0x3f800000    # 1.0f

    .line 217
    if-ge v12, v9, :cond_c

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 221
    move-result v16

    .line 224
    if-eqz v16, :cond_b

    .line 225
    move v10, v6

    .line 227
    :cond_b
    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 228
    goto :goto_a

    .line 231
    :cond_c
    cmpl-float v16, v6, v10

    .line 232
    if-nez v16, :cond_d

    .line 234
    if-gt v12, v3, :cond_d

    .line 236
    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 238
    int-to-float v8, v8

    .line 240
    iget v10, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 241
    sub-float/2addr v8, v10

    .line 243
    iget v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 244
    int-to-float v10, v10

    .line 246
    div-float/2addr v8, v10

    .line 247
    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 248
    iget v8, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 251
    const/high16 v10, 0x3f800000    # 1.0f

    .line 253
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    .line 255
    move-result v8

    .line 258
    const/4 v10, 0x0

    .line 259
    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    .line 260
    move-result v8

    .line 263
    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 264
    :cond_d
    :goto_a
    iget v8, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 267
    iput v8, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 269
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 271
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 273
    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getIncreasedYPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)I

    .line 275
    move-result v5

    .line 278
    add-int/2addr v4, v5

    .line 279
    add-int/lit8 v12, v12, 0x1

    .line 280
    const/4 v5, 0x1

    .line 282
    const/4 v8, 0x0

    .line 283
    const/4 v10, 0x0

    .line 284
    goto/16 :goto_3

    .line 285
    :cond_e
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 287
    if-eqz v3, :cond_12

    .line 289
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 291
    const/4 v4, 0x1

    .line 293
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 294
    move-result v5

    .line 297
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 298
    move-result v2

    .line 301
    sub-int/2addr v2, v4

    .line 302
    check-cast v3, Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 305
    move-result-object v2

    .line 308
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 309
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 311
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 313
    move-result-object v4

    .line 316
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 317
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 320
    if-nez v3, :cond_11

    .line 322
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 324
    move-result-object v3

    .line 327
    if-eqz v3, :cond_12

    .line 328
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    .line 330
    move-result-object v4

    .line 333
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 334
    move-result v5

    .line 337
    const/16 v6, 0x8

    .line 338
    if-ne v5, v6, :cond_f

    .line 340
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    .line 342
    move-result-object v4

    .line 345
    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 346
    move-result v5

    .line 349
    if-ne v5, v6, :cond_10

    .line 350
    goto :goto_b

    .line 352
    :cond_10
    move-object v3, v4

    .line 353
    :goto_b
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 354
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 356
    move-result v5

    .line 359
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 360
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 363
    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 365
    sget-object v5, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    .line 367
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 369
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    .line 372
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 374
    const/4 v3, 0x1

    .line 377
    aget v2, v2, v3

    .line 378
    aget v3, v5, v3

    .line 380
    sub-int/2addr v2, v3

    .line 382
    int-to-float v2, v2

    .line 383
    add-float/2addr v4, v2

    .line 384
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 385
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 387
    goto :goto_c

    .line 390
    :cond_11
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 391
    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 393
    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 395
    int-to-float v4, v4

    .line 397
    add-float/2addr v3, v4

    .line 398
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 399
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 402
    const/4 v3, 0x0

    .line 404
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 405
    :cond_12
    :goto_c
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 408
    if-eqz v2, :cond_16

    .line 410
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 412
    if-nez v2, :cond_13

    .line 414
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 416
    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 418
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 421
    :cond_13
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 423
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 425
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 427
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 430
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 432
    if-eqz v2, :cond_14

    .line 434
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 436
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 438
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getTranslationZ()F

    .line 440
    move-result v2

    .line 443
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 444
    goto :goto_d

    .line 447
    :cond_14
    if-eqz v11, :cond_15

    .line 448
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 450
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 452
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 454
    goto :goto_d

    .line 457
    :cond_15
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 458
    const/4 v2, 0x0

    .line 460
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 461
    :goto_d
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 464
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 466
    int-to-float v2, v2

    .line 468
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 469
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 472
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 474
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 476
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 479
    const/4 v1, 0x0

    .line 481
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 482
    :cond_16
    return-void
    .line 484
.end method
