.class public final Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/QuickSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/QuickSettingsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final setTransitionToFullShadeAmount(FZJ)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 5
    if-eqz p2, :cond_1

    .line 7
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 9
    if-eqz p2, :cond_1

    .line 11
    iput-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 13
    const-wide/16 v3, 0x1c0

    .line 15
    iput-wide v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDuration:J

    .line 17
    iput-wide p3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 19
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTranslationForFullShadeTransition:F

    .line 21
    cmpl-float p2, p2, v2

    .line 23
    if-lez p2, :cond_0

    .line 25
    move p2, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p2, v0

    .line 29
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsTranslationResettingAnimator:Z

    .line 30
    :cond_1
    cmpl-float p2, p1, v2

    .line 32
    if-lez p2, :cond_6

    .line 34
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 36
    if-eqz p2, :cond_2

    .line 38
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 40
    iget p3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 42
    iget-object p4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 44
    iget-object p4, p4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    .line 46
    iget p4, p4, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    .line 48
    invoke-static {p2, p3, p4}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 50
    move-result p2

    .line 53
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 54
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 57
    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStats:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    .line 59
    iget p3, p3, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->numActiveNotifs:I

    .line 61
    if-nez p3, :cond_3

    .line 63
    iget-object p3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 65
    invoke-virtual {p3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 67
    move-result p3

    .line 70
    if-nez p3, :cond_3

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 73
    move-result p3

    .line 76
    if-eqz p3, :cond_6

    .line 77
    invoke-static {p0}, Lcom/android/systemui/shade/QuickSettingsController;->-$$Nest$mgetEdgePosition(Lcom/android/systemui/shade/QuickSettingsController;)F

    .line 79
    move-result p3

    .line 82
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 83
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPadding()I

    .line 85
    move-result p2

    .line 88
    int-to-float p2, p2

    .line 89
    sub-float/2addr p3, p2

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 91
    move-result p2

    .line 94
    int-to-float p2, p2

    .line 95
    add-float/2addr p3, p2

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-static {p0}, Lcom/android/systemui/shade/QuickSettingsController;->-$$Nest$mgetEdgePosition(Lcom/android/systemui/shade/QuickSettingsController;)F

    .line 98
    move-result p3

    .line 101
    iget-object p4, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardMediaController:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

    .line 102
    iget-object p4, p4, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 104
    if-eqz p4, :cond_5

    .line 106
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    .line 108
    move-result v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 114
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 116
    iget v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 118
    if-eq v3, v1, :cond_4

    .line 120
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    .line 123
    move-result p4

    .line 126
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 127
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPaddingAfterMedia()I

    .line 129
    move-result p2

    .line 132
    add-int v0, p2, p4

    .line 133
    :cond_5
    :goto_1
    int-to-float p2, v0

    .line 135
    add-float/2addr p3, p2

    .line 136
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 137
    if-ne p2, v1, :cond_7

    .line 139
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenNotificationPadding:I

    .line 141
    int-to-float p2, p2

    .line 143
    sub-float/2addr p3, p2

    .line 144
    goto :goto_2

    .line 145
    :cond_6
    move p3, v2

    .line 146
    :cond_7
    :goto_2
    sget-object p2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 147
    iget p4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDistanceForFullShadeTransition:I

    .line 149
    int-to-float p4, p4

    .line 151
    div-float/2addr p1, p4

    .line 152
    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    .line 153
    move-result p1

    .line 156
    check-cast p2, Landroid/view/animation/PathInterpolator;

    .line 157
    invoke-virtual {p2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 159
    move-result p1

    .line 162
    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitioningToFullShadeProgress:F

    .line 163
    invoke-static {v2, p3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 165
    move-result p1

    .line 168
    float-to-int p1, p1

    .line 169
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitioningToFullShadeProgress:F

    .line 170
    cmpl-float p2, p2, v2

    .line 172
    if-lez p2, :cond_8

    .line 174
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 176
    move-result p1

    .line 179
    :cond_8
    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitionToFullShadePosition:I

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 182
    return-void
    .line 185
.end method
