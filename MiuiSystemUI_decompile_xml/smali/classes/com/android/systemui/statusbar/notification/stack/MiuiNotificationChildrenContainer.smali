.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;
.super Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public animCanceled:Z

.field public isCollapseAnimating:Z

.field public isExpandAnimating:Z

.field public mAppIcon:Landroid/widget/ImageView;

.field public mAppIconViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field public mCollapsedButton:Landroid/widget/ImageView;

.field public mGroupHeader:Landroid/view/View;

.field public mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field public mGroupInfo:Landroid/widget/TextView;

.field public mMiuiAppIconMargin:I

.field public mMiuiAppIconSize:I

.field public mOverflowNumberMarginEnd:I

.field public previousAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->initResources()V

    .line 5
    return-void
    .line 8
.end method

.method private final getFirstChildBackground()Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 2
    const/4 v0, 0x0

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->getAnimatedBackground()Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method


# virtual methods
.method public final applyState()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->applyState()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIconViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->getAnimatedBackground()Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 31
    move-result-object v0

    .line 34
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 35
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 43
    move-result p0

    .line 46
    cmpg-float p0, p0, v2

    .line 47
    if-nez p0, :cond_2

    .line 49
    const/4 v3, 0x1

    .line 51
    :cond_2
    if-nez v3, :cond_3

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 54
    :cond_3
    return-void

    .line 57
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->getFirstChildBackground()Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 58
    move-result-object v1

    .line 61
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 62
    const/16 v5, 0x8

    .line 64
    if-eqz v4, :cond_5

    .line 66
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 74
    check-cast p0, Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 81
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 84
    move-result-object p0

    .line 87
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 88
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 90
    goto :goto_0

    .line 93
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 96
    move-result-object p0

    .line 99
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 103
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 111
    const/high16 p0, 0x3f800000    # 1.0f

    .line 114
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    .line 116
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :goto_0
    return-void
    .line 122
.end method

.method public final getAnimCanceled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->animCanceled:Z

    .line 2
    return p0
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

.method public getDividerHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getDividerHeight()I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p0

    .line 16
    const v0, 0x7f070d93    # @dimen/notification_divider_height '7.27dp'

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result p0

    .line 23
    return p0
.end method

.method public getGroupExpandFraction()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

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

.method public getGroupHeaderHeight()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupHeaderHeight()I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 15
    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    move-result v1

    .line 29
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 30
    add-int/2addr v1, p0

    .line 32
    add-int/2addr v0, v1

    .line 33
    :cond_1
    return v0
    .line 34
.end method

.method public final getIncreasedYPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return p2

    .line 8
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 9
    if-eqz p0, :cond_1

    .line 11
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    .line 14
    move-result p2

    .line 17
    :goto_0
    return p2
    .line 18
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    .line 2
    move-result v0

    .line 5
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 12
    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 16
    if-nez v1, :cond_0

    .line 18
    const/4 v1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->getGroupHeaderHeight()I

    .line 22
    move-result v1

    .line 25
    :goto_0
    add-int/2addr v0, v1

    .line 26
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 33
    check-cast v1, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v1

    .line 40
    const/4 v2, 0x1

    .line 41
    if-gt v1, v2, :cond_2

    .line 42
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 44
    if-nez v1, :cond_2

    .line 46
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 48
    add-int/2addr v0, p0

    .line 50
    :cond_2
    return v0
    .line 51
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

.method public getNotificationHeaderMargin()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationHeaderMargin()I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p0

    .line 16
    const v0, 0x7f070d82    # @dimen/notification_children_container_margin_top_miui '0.0dp'

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result p0

    .line 23
    return p0
.end method

.method public getNotificationTopPadding()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationTopPadding()I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p0

    .line 16
    const v0, 0x7f070d84    # @dimen/notification_children_container_top_padding_miui '8.0dp'

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result p0

    .line 23
    return p0
.end method

.method public getOverflowNumberMarginEnd()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mOverflowNumberMarginEnd:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPreviousAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->previousAnimator:Landroid/animation/ValueAnimator;

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

.method public final initResources()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070d6b    # @dimen/notification_app_icon_size '32.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v1

    .line 12
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconSize:I

    .line 13
    const v1, 0x7f070d6a    # @dimen/notification_app_icon_margin '12.0dp'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v1

    .line 21
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconMargin:I

    .line 22
    const v1, 0x7f07095b    # @dimen/miui_notification_content_margin_end '12.0dp'

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mOverflowNumberMarginEnd:I

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p0

    .line 40
    const v0, 0x7f070d99    # @dimen/notification_group_margin '@dimen/miui_notification_content_margin_end'

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    return-void
    .line 47
.end method

.method public final measureHeaderView(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
    .line 23
.end method

.method public final onExpansionChanged$1()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->onExpansionChanged$1()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 7
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, v2

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->updateBackgroundBg()V

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    .line 21
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 28
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 39
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 41
    if-eqz v1, :cond_3

    .line 43
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    move-object v0, v2

    .line 48
    :goto_2
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->updateBackgroundBg()V

    .line 51
    goto :goto_1

    .line 54
    :cond_4
    return-void
    .line 55
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 5
    const/4 p2, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 10
    move-result p1

    .line 13
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 14
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mCollapsedButton:Landroid/widget/ImageView;

    .line 19
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    .line 24
    move-result p4

    .line 27
    invoke-virtual {p3, p2, p2, p1, p4}, Landroid/view/View;->layout(IIII)V

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 31
    if-eqz p1, :cond_4

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 39
    move-result-object p1

    .line 42
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 43
    and-int/lit16 p1, p1, 0xc0

    .line 45
    const/16 p3, 0x80

    .line 47
    const/4 p4, 0x1

    .line 49
    if-ne p1, p3, :cond_1

    .line 50
    move p2, p4

    .line 52
    :cond_1
    if-eqz p2, :cond_2

    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 55
    move-result p1

    .line 58
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconMargin:I

    .line 59
    sub-int/2addr p1, p2

    .line 61
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconSize:I

    .line 62
    sub-int/2addr p1, p2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconMargin:I

    .line 66
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 68
    check-cast p2, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result p2

    .line 75
    if-gt p2, p4, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    .line 78
    move-result p2

    .line 81
    iget p3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconSize:I

    .line 82
    sub-int/2addr p2, p3

    .line 84
    div-int/lit8 p2, p2, 0x2

    .line 85
    goto :goto_1

    .line 87
    :cond_3
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconMargin:I

    .line 88
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 90
    if-eqz p3, :cond_4

    .line 92
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconSize:I

    .line 94
    add-int p4, p1, p0

    .line 96
    add-int/2addr p0, p2

    .line 98
    invoke-virtual {p3, p1, p2, p4, p0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 99
    :cond_4
    return-void
    .line 102
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconSize:I

    .line 12
    const/high16 v0, 0x40000000    # 2.0f

    .line 14
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    move-result p2

    .line 19
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mMiuiAppIconSize:I

    .line 20
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 22
    move-result p0

    .line 25
    invoke-virtual {p1, p2, p0}, Landroid/widget/ImageView;->measure(II)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public final onNotificationUpdated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationColor()I

    .line 8
    move-result v2

    .line 11
    iput v2, v0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberColor:I

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->updateMiuiHeader(Z)V

    .line 20
    return-void
    .line 23
.end method

.method public final reInflateViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->reInflateViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->initResources()V

    .line 5
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->updateMiuiHeader(Z)V

    .line 9
    return-void
    .line 12
.end method

.method public final setAnimCanceled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->animCanceled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setCollapseAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->isCollapseAnimating:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setExpandAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->isExpandAnimating:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setPreviousAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->previousAnimator:Landroid/animation/ValueAnimator;

    .line 2
    return-void
    .line 4
.end method

.method public final startAnimationToState(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    invoke-super/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->startAnimationToState(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 6
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1, v0, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 17
    :cond_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIconViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v1, v0, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 28
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    goto/16 :goto_1

    .line 37
    :cond_2
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->isExpandAnimating:Z

    .line 39
    if-eqz v0, :cond_3

    .line 41
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 43
    if-eqz v0, :cond_3

    .line 45
    goto/16 :goto_1

    .line 47
    :cond_3
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->isCollapseAnimating:Z

    .line 49
    if-eqz v0, :cond_4

    .line 51
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 53
    if-nez v0, :cond_4

    .line 55
    goto/16 :goto_1

    .line 57
    :cond_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 59
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    goto/16 :goto_1

    .line 67
    :cond_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 69
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    move-result v0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    goto/16 :goto_1

    .line 79
    :cond_6
    iget-wide v0, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 81
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->previousAnimator:Landroid/animation/ValueAnimator;

    .line 83
    const/high16 v3, 0x3f800000    # 1.0f

    .line 85
    if-eqz v2, :cond_7

    .line 87
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Float;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 95
    move-result v0

    .line 98
    sub-float v0, v3, v0

    .line 99
    iget-wide v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 101
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->previousAnimator:Landroid/animation/ValueAnimator;

    .line 103
    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 105
    move-result-wide v1

    .line 108
    move-wide v9, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_7
    const/4 v2, 0x0

    .line 111
    move-wide v9, v0

    .line 112
    move v0, v2

    .line 113
    :goto_0
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 114
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 116
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->getAnimatedBackground()Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 118
    move-result-object v4

    .line 121
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 122
    check-cast v1, Ljava/util/ArrayList;

    .line 124
    const/4 v2, 0x0

    .line 126
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 130
    move-object v5, v1

    .line 131
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 132
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 134
    move-result-object v1

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->getFirstChildBackground()Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 138
    move-result-object v6

    .line 141
    iget-boolean v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 142
    const/4 v12, 0x0

    .line 144
    const/4 v13, 0x2

    .line 145
    const/4 v14, 0x1

    .line 146
    if-eqz v11, :cond_9

    .line 147
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    .line 149
    move-result v11

    .line 152
    int-to-float v11, v11

    .line 153
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 154
    int-to-float v15, v1

    .line 156
    iput-boolean v14, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->isExpandAnimating:Z

    .line 157
    iput-boolean v2, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->animCanceled:Z

    .line 159
    new-array v1, v13, [F

    .line 161
    aput v0, v1, v2

    .line 163
    aput v3, v1, v14

    .line 165
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 167
    move-result-object v13

    .line 170
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;

    .line 171
    invoke-direct {v0, v4, v6, v7, v2}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;I)V

    .line 173
    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    new-instance v14, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;

    .line 179
    const/4 v6, 0x0

    .line 181
    move-object v0, v14

    .line 182
    move v1, v11

    .line 183
    move v2, v15

    .line 184
    move-object v3, v4

    .line 185
    move-object v4, v5

    .line 186
    move-object/from16 v5, p0

    .line 187
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;-><init>(FFLcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;I)V

    .line 189
    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 195
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 197
    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    invoke-virtual {v13, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 203
    invoke-virtual {v8, v12}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 206
    move-result-object v0

    .line 209
    if-eqz v0, :cond_8

    .line 210
    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    :cond_8
    invoke-static {v13, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 215
    iput-object v13, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->previousAnimator:Landroid/animation/ValueAnimator;

    .line 218
    goto :goto_1

    .line 220
    :cond_9
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    .line 221
    move-result v1

    .line 224
    int-to-float v1, v1

    .line 225
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 226
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 228
    move-result-object v11

    .line 231
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 232
    iget v11, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 235
    int-to-float v11, v11

    .line 237
    iput-boolean v14, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->isCollapseAnimating:Z

    .line 238
    iput-boolean v2, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->animCanceled:Z

    .line 240
    new-array v13, v13, [F

    .line 242
    aput v0, v13, v2

    .line 244
    aput v3, v13, v14

    .line 246
    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 248
    move-result-object v13

    .line 251
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;

    .line 252
    invoke-direct {v0, v4, v6, v7, v14}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;I)V

    .line 254
    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    new-instance v14, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;

    .line 260
    const/4 v6, 0x1

    .line 262
    move-object v0, v14

    .line 263
    move v2, v11

    .line 264
    move-object v3, v4

    .line 265
    move-object v4, v5

    .line 266
    move-object/from16 v5, p0

    .line 267
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;-><init>(FFLcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;I)V

    .line 269
    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 272
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 275
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 277
    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    invoke-virtual {v13, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    invoke-virtual {v8, v12}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 286
    move-result-object v0

    .line 289
    if-eqz v0, :cond_a

    .line 290
    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    :cond_a
    invoke-static {v13, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 295
    iput-object v13, v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->previousAnimator:Landroid/animation/ValueAnimator;

    .line 298
    :goto_1
    return-void
    .line 300
.end method

.method public final updateAppIcon(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 16
    :cond_0
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 19
    if-eqz v0, :cond_2

    .line 21
    if-eqz p1, :cond_4

    .line 23
    :cond_2
    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 30
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 36
    move-result-object p1

    .line 39
    const v0, 0x7f0d029a    # @layout/notification_template_part_app_icon 'res/layout/notification_template_part_app_icon.xml'

    .line 40
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/ImageView;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 59
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 61
    move-result-object v0

    .line 64
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 67
    const/4 v2, 0x1

    .line 69
    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyAppIconAllowCustom(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/widget/ImageView;Z)V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 75
    move-result-object p1

    .line 78
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getAppName()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    return-void
    .line 88
.end method

.method public final updateChildrenAppearance()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenAppearance()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->updateMiuiHeader(Z)V

    .line 12
    return-void
    .line 15
.end method

.method public final updateMiuiHeader(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showGoogleStyle()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->updateAppIcon(Z)V

    .line 18
    :cond_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    const/16 v2, 0x8

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 28
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->updateAppIcon(Z)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 34
    if-eqz v0, :cond_3

    .line 36
    if-eqz p1, :cond_5

    .line 38
    :cond_3
    if-eqz v0, :cond_4

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 45
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 47
    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 51
    move-result-object p1

    .line 54
    const v0, 0x7f0d0285    # @layout/notification_group_header 'res/layout/notification_group_header.xml'

    .line 55
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 63
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    const v0, 0x7f0a020a    # @id/collapse_button

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p1

    .line 74
    check-cast p1, Landroid/widget/ImageView;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mCollapsedButton:Landroid/widget/ImageView;

    .line 77
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    const v0, 0x7f0a03bc    # @id/group_info

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/TextView;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupInfo:Landroid/widget/TextView;

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 95
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 97
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mCollapsedButton:Landroid/widget/ImageView;

    .line 100
    if-eqz p1, :cond_6

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 109
    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 115
    move-result-object v0

    .line 118
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 119
    iget v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppUid:I

    .line 121
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 123
    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 127
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 129
    move-result-object v0

    .line 132
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->initAppInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;)V

    .line 133
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupInfo:Landroid/widget/TextView;

    .line 136
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 141
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 143
    move-result-object v0

    .line 146
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 147
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getAppName()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 153
    check-cast p0, Ljava/util/ArrayList;

    .line 155
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 157
    move-result p0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, "("

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string p0, ")"

    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 185
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
    .line 189
.end method

.method public final updateState(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateState(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    const/4 v1, 0x0

    .line 9
    const/high16 v2, -0x40800000    # -1.0f

    .line 10
    const/4 v3, 0x0

    .line 12
    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 15
    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 19
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 31
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 33
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 41
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 43
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 48
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 51
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 56
    if-eqz v4, :cond_1

    .line 58
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 60
    int-to-float v4, v4

    .line 62
    const/4 v5, 0x2

    .line 63
    int-to-float v5, v5

    .line 64
    mul-float/2addr v4, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 67
    int-to-float v4, v4

    .line 69
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeader:Landroid/view/View;

    .line 70
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 75
    move-result v5

    .line 78
    int-to-float v5, v5

    .line 79
    add-float/2addr v4, v5

    .line 80
    :goto_0
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mGroupHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 84
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 89
    if-eqz v4, :cond_2

    .line 91
    move v4, v0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v4, v1

    .line 95
    :goto_1
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 96
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 99
    if-eqz p1, :cond_c

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIconViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 103
    if-nez p1, :cond_4

    .line 105
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 107
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIconViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIconViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 114
    if-eqz p1, :cond_5

    .line 116
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIcon:Landroid/widget/ImageView;

    .line 118
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 120
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIconViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 123
    if-nez p1, :cond_6

    .line 125
    goto :goto_2

    .line 127
    :cond_6
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 128
    :goto_2
    if-nez p1, :cond_7

    .line 130
    goto :goto_3

    .line 132
    :cond_7
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 133
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIconViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 136
    if-nez p1, :cond_8

    .line 138
    goto :goto_5

    .line 140
    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 141
    if-eqz v2, :cond_9

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 145
    check-cast v2, Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v2

    .line 152
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 153
    if-eqz v2, :cond_9

    .line 155
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 157
    move-result-object v2

    .line 160
    if-eqz v2, :cond_9

    .line 161
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 163
    goto :goto_4

    .line 165
    :cond_9
    move v2, v1

    .line 166
    :goto_4
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 167
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->mAppIconViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 170
    if-nez p1, :cond_a

    .line 172
    goto :goto_6

    .line 174
    :cond_a
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 175
    if-eqz p0, :cond_b

    .line 177
    move v0, v1

    .line 179
    :cond_b
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 180
    :cond_c
    :goto_6
    return-void
    .line 183
.end method
