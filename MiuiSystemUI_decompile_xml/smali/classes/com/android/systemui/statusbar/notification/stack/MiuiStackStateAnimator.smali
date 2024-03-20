.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

.field public final mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field public final mAnimationListenerPool:Ljava/util/Stack;

.field public final mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;

.field public final mAnimatorSet:Ljava/util/HashSet;

.field public mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field public final mChangePositionViews:Ljava/util/ArrayList;

.field public mCurrentAdditionalDelay:J

.field public mCurrentLength:J

.field public final mGoToFullShadeAppearingTranslation:I

.field public mHasPanelAppearDisappearEvent:Z

.field public mHasSpringAnimationEvent:Z

.field public final mHeadsUpAppearChildren:Ljava/util/HashSet;

.field public mHeadsUpAppearHeightBottom:I

.field public mHeadsUpAppearHeightBottom$com$android$systemui$statusbar$notification$stack$StackStateAnimator:I

.field public final mHeadsUpAppearView:Ljava/util/ArrayList;

.field public final mHeadsUpDisappearChildren:Ljava/util/HashSet;

.field public final mHeadsUpDisappearView:Ljava/util/ArrayList;

.field public final mHeadsUpPositionView:Ljava/util/ArrayList;

.field public final mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

.field public final mNewAddChildren:Ljava/util/ArrayList;

.field public final mNewEvents:Ljava/util/ArrayList;

.field public final mNewRemoveChildren:Ljava/util/ArrayList;

.field public mShadeExpanded:Z

.field public mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field public final mTmpLocation:[I

.field public final mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

.field public mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

.field public final mTransientViewsToRemove:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 5
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    .line 26
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    .line 33
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    .line 40
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/Stack;

    .line 47
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 54
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x2

    .line 68
    new-array v0, v0, [I

    .line 69
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mTmpLocation:[I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mNewRemoveChildren:Ljava/util/ArrayList;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object v0

    .line 89
    const v1, 0x7f0703ad    # @dimen/go_to_full_shade_appearing_translation '200.0dp'

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    move-result v0

    .line 96
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object v0

    .line 106
    const v1, 0x7f070ec6    # @dimen/pulsing_notification_appear_translation '10.0dp'

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;

    .line 113
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;)V

    .line 115
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    .line 120
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mChangePositionViews:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    .line 127
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpAppearView:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    .line 134
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpDisappearView:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    .line 141
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpPositionView:Ljava/util/ArrayList;

    .line 146
    const-class v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 148
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 153
    check-cast v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 154
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 156
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 158
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    move-result-object p0

    .line 165
    const p1, 0x7f070dec    # @dimen/notification_section_divider_height '4.5dp'

    .line 166
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 169
    return-void
    .line 172
.end method


# virtual methods
.method public final applyWithoutAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mShadeExpanded:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_3

    .line 11
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    goto :goto_3

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_8

    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    goto :goto_3

    .line 43
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    goto :goto_3

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpAppearView:Ljava/util/ArrayList;

    .line 51
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 56
    if-nez v0, :cond_6

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpDisappearView:Ljava/util/ArrayList;

    .line 59
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_6

    .line 65
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 67
    if-nez v0, :cond_5

    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHasPanelAppearDisappearEvent:Z

    .line 71
    if-nez v0, :cond_6

    .line 73
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHasSpringAnimationEvent:Z

    .line 75
    if-eqz p0, :cond_5

    .line 77
    goto :goto_1

    .line 79
    :cond_5
    move p0, v1

    .line 80
    goto :goto_2

    .line 81
    :cond_6
    :goto_1
    move p0, v2

    .line 82
    :goto_2
    if-eqz p0, :cond_7

    .line 83
    goto :goto_3

    .line 85
    :cond_7
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 86
    move v1, v2

    .line 89
    :cond_8
    :goto_3
    return v1
    .line 90
.end method

.method public final calculateChildAnimationDelay(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 2
    iget-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->customDelay:J

    .line 4
    const-wide/16 v3, -0x1

    .line 6
    cmp-long v3, v1, v3

    .line 8
    const-wide/16 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 12
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 14
    if-eqz v6, :cond_c

    .line 16
    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 18
    if-eqz v0, :cond_2

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotGoneIndex()I

    .line 24
    move-result p0

    .line 27
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 28
    int-to-float p1, p1

    .line 30
    int-to-float p0, p0

    .line 31
    cmpl-float v0, p1, p0

    .line 32
    const/high16 v1, 0x42400000    # 48.0f

    .line 34
    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    .line 36
    if-lez v0, :cond_1

    .line 41
    int-to-double p1, p2

    .line 43
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 44
    move-result-wide p1

    .line 47
    double-to-float p1, p1

    .line 48
    mul-float/2addr p1, v1

    .line 49
    float-to-double p1, p1

    .line 50
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 51
    mul-double/2addr p1, v6

    .line 53
    double-to-long p1, p1

    .line 54
    add-long/2addr v4, p1

    .line 55
    move p1, p0

    .line 56
    :cond_1
    float-to-double p0, p1

    .line 57
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 58
    move-result-wide p0

    .line 61
    double-to-float p0, p0

    .line 62
    mul-float/2addr p0, v1

    .line 63
    float-to-long p0, p0

    .line 64
    add-long v1, v4, p0

    .line 65
    goto/16 :goto_4

    .line 67
    :cond_2
    if-eqz v3, :cond_3

    .line 69
    goto/16 :goto_4

    .line 71
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p2

    .line 78
    move-wide v1, v4

    .line 79
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v0

    .line 83
    if-eqz v0, :cond_b

    .line 84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 90
    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 92
    const/4 v4, 0x1

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x2

    .line 96
    const-wide/16 v7, 0x50

    .line 97
    if-eqz v3, :cond_a

    .line 99
    if-eq v3, v4, :cond_5

    .line 101
    if-eq v3, v6, :cond_4

    .line 103
    goto :goto_0

    .line 105
    :cond_4
    const-wide/16 v7, 0x20

    .line 106
    :cond_5
    iget v3, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 108
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 110
    if-nez v0, :cond_6

    .line 112
    move v9, v4

    .line 114
    goto :goto_1

    .line 115
    :cond_6
    move v9, v5

    .line 116
    :goto_1
    if-eqz v9, :cond_7

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 119
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 121
    move-result-object v0

    .line 124
    goto :goto_2

    .line 125
    :cond_7
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 126
    :goto_2
    if-nez v0, :cond_8

    .line 128
    goto :goto_0

    .line 130
    :cond_8
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 131
    move-result-object v0

    .line 134
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 135
    if-lt v3, v0, :cond_9

    .line 137
    add-int/lit8 v3, v3, 0x1

    .line 139
    :cond_9
    sub-int/2addr v3, v0

    .line 141
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 142
    move-result v0

    .line 145
    sub-int/2addr v0, v4

    .line 146
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    .line 147
    move-result v0

    .line 150
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 151
    move-result v0

    .line 154
    int-to-long v3, v0

    .line 155
    mul-long/2addr v3, v7

    .line 156
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 157
    move-result-wide v0

    .line 160
    goto :goto_3

    .line 161
    :cond_a
    iget v3, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 162
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 164
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 166
    move-result-object v0

    .line 169
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 170
    sub-int/2addr v3, v0

    .line 172
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 173
    move-result v0

    .line 176
    sub-int/2addr v0, v4

    .line 177
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    .line 178
    move-result v0

    .line 181
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 182
    move-result v0

    .line 185
    sub-int/2addr v6, v0

    .line 186
    int-to-long v3, v6

    .line 187
    mul-long/2addr v3, v7

    .line 188
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 189
    move-result-wide v0

    .line 192
    :goto_3
    move-wide v1, v0

    .line 193
    goto :goto_0

    .line 194
    :cond_b
    :goto_4
    move-wide v4, v1

    .line 195
    :cond_c
    return-wide v4
    .line 196
.end method

.method public final initAnimationProperties(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->wasAdded(Landroid/view/View;)Z

    .line 4
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 8
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mNewRemoveChildren:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 15
    iget-wide v3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mCurrentLength:J

    .line 16
    iput-wide v3, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 18
    instance-of v3, p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    .line 20
    const/4 v4, 0x0

    .line 22
    if-nez v1, :cond_1

    .line 23
    if-eqz v3, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    move v5, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 30
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 31
    if-eqz v5, :cond_3

    .line 33
    iget-boolean v5, v6, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 35
    if-eqz v5, :cond_3

    .line 37
    if-nez v3, :cond_2

    .line 39
    int-to-double v3, p3

    .line 41
    const-wide v7, 0x3fe6666660000000L    # 0.699999988079071

    .line 42
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 47
    move-result-wide v3

    .line 50
    double-to-float v3, v3

    .line 51
    const/high16 v4, 0x42c80000    # 100.0f

    .line 52
    mul-float/2addr v3, v4

    .line 54
    float-to-long v3, v3

    .line 55
    const-wide/16 v7, 0x202

    .line 56
    add-long/2addr v3, v7

    .line 58
    iput-wide v3, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 59
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 61
    :cond_2
    iget v3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 63
    int-to-float v4, v4

    .line 65
    add-float/2addr v3, v4

    .line 66
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 67
    :cond_3
    const-wide/16 v3, 0x0

    .line 70
    iput-wide v3, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 72
    if-nez v1, :cond_4

    .line 74
    iget-boolean v1, v6, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    .line 76
    if-nez v1, :cond_4

    .line 78
    if-eqz v2, :cond_6

    .line 80
    iget v1, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 82
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 84
    move-result v3

    .line 87
    cmpl-float v1, v1, v3

    .line 88
    if-nez v1, :cond_4

    .line 90
    iget v1, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 92
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    .line 94
    move-result v3

    .line 97
    cmpl-float v1, v1, v3

    .line 98
    if-nez v1, :cond_4

    .line 100
    iget v1, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 102
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 104
    move-result v3

    .line 107
    cmpl-float v1, v1, v3

    .line 108
    if-nez v1, :cond_4

    .line 110
    iget v1, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 112
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 114
    move-result v3

    .line 117
    if-ne v1, v3, :cond_4

    .line 118
    iget v1, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 120
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 122
    move-result p1

    .line 125
    if-eq v1, p1, :cond_6

    .line 126
    :cond_4
    if-eqz v2, :cond_5

    .line 128
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J

    .line 130
    goto :goto_2

    .line 133
    :cond_5
    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mCurrentAdditionalDelay:J

    .line 134
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J

    .line 136
    move-result-wide p0

    .line 139
    add-long/2addr p0, v1

    .line 140
    iput-wide p0, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 141
    :cond_6
    :goto_2
    return-void
    .line 143
.end method

.method public final onAnimationFinished()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 8
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 11
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v2

    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Runnable;

    .line 27
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 33
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 35
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    .line 38
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v2

    .line 43
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 54
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    .line 56
    goto :goto_1

    .line 59
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    .line 60
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 62
    move v2, v1

    .line 65
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    move-result v3

    .line 69
    if-ge v2, v3, :cond_3

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    move-result-object v3

    .line 75
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 76
    if-eqz v4, :cond_2

    .line 78
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 80
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 82
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 85
    if-eqz v4, :cond_2

    .line 87
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 89
    move-result-object v3

    .line 92
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v3

    .line 96
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v4

    .line 100
    if-eqz v4, :cond_2

    .line 101
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v4

    .line 106
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 107
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 109
    goto :goto_3

    .line 112
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 113
    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->finalizeClearAllAnimation()V

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v0

    .line 124
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 134
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 135
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    .line 137
    goto :goto_4

    .line 140
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 141
    return-void
    .line 144
.end method
