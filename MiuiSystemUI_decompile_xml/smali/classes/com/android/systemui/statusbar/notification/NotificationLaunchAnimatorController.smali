.class public final Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# instance fields
.field public final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public final jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final notificationKey:Ljava/lang/String;

.field public final notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final notificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

.field public final onFinishAnimationCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/jank/InteractionJankMonitor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->onFinishAnimationCallback:Ljava/lang/Runnable;

    .line 15
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 21
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 23
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationKey:Ljava/lang/String;

    .line 29
    return-void
    .line 31
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 6
    move-result v2

    .line 9
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    .line 10
    move-result v3

    .line 13
    sub-int/2addr v2, v3

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v2

    .line 19
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    .line 20
    move-result-object v4

    .line 23
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 24
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 26
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 28
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 30
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopClippingStartLocation()I

    .line 32
    move-result v5

    .line 35
    const/4 v6, 0x1

    .line 36
    aget v7, v4, v6

    .line 37
    sub-int v8, v5, v7

    .line 39
    if-gez v8, :cond_0

    .line 41
    move v8, v3

    .line 43
    :cond_0
    add-int v10, v7, v8

    .line 44
    const/4 v7, 0x0

    .line 46
    if-lez v8, :cond_1

    .line 47
    move v14, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getTopCornerRadius()F

    .line 51
    move-result v9

    .line 54
    move v14, v9

    .line 55
    :goto_0
    new-instance v15, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    .line 56
    aget v9, v4, v6

    .line 58
    add-int v11, v9, v2

    .line 60
    aget v12, v4, v3

    .line 62
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 64
    move-result v2

    .line 67
    add-int v13, v2, v12

    .line 68
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBottomCornerRadius()F

    .line 70
    move-result v2

    .line 73
    move-object v9, v15

    .line 74
    move-object v3, v15

    .line 75
    move v15, v2

    .line 76
    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;-><init>(IIIIFF)V

    .line 77
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    .line 80
    move-result v2

    .line 83
    iput v2, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startTranslationZ:F

    .line 84
    aget v2, v4, v6

    .line 86
    iput v2, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startNotificationTop:I

    .line 88
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 90
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    .line 97
    move-result-object v0

    .line 100
    aget v0, v0, v6

    .line 101
    iput v0, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->notificationParentTop:I

    .line 103
    iput v8, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startRoundedTopClipping:I

    .line 105
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 107
    move-result v0

    .line 110
    iput v0, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startClipTopAmount:I

    .line 111
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 113
    move-result v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 119
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    .line 123
    move-result-object v0

    .line 126
    aget v0, v0, v6

    .line 127
    sub-int/2addr v5, v0

    .line 129
    if-gez v5, :cond_2

    .line 130
    const/4 v5, 0x0

    .line 132
    :cond_2
    iput v5, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->parentStartRoundedTopClipping:I

    .line 133
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 135
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 139
    move-result v0

    .line 142
    iput v0, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->parentStartClipTopAmount:I

    .line 143
    if-eqz v0, :cond_3

    .line 145
    int-to-float v0, v0

    .line 147
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 148
    move-result v1

    .line 151
    sub-float/2addr v0, v1

    .line 152
    cmpl-float v1, v0, v7

    .line 153
    if-lez v1, :cond_3

    .line 155
    float-to-double v0, v0

    .line 157
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 158
    move-result-wide v0

    .line 161
    double-to-int v0, v0

    .line 162
    iput v0, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startClipTopAmount:I

    .line 163
    :cond_3
    return-object v3
    .line 165
.end method

.method public final getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/ViewGroup;

    .line 8
    return-object p0
    .line 10
.end method

.method public final onIntentStarted(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mExpandAnimationRunning:Z

    .line 9
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->removeHun(Z)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->onFinishAnimationCallback:Ljava/lang/Runnable;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 21
    :cond_0
    return-void
.end method

.method public final onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mExpandAnimationRunning:Z

    .line 10
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->removeHun(Z)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->onFinishAnimationCallback:Ljava/lang/Runnable;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 2
    const/16 v0, 0x10

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 20
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mExpandAnimationRunning:Z

    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 24
    move-object v2, v1

    .line 26
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 27
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 30
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V

    .line 33
    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 36
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->applyLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->removeHun(Z)V

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->onFinishAnimationCallback:Ljava/lang/Runnable;

    .line 44
    if-eqz p0, :cond_0

    .line 46
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 48
    :cond_0
    return-void
    .line 51
.end method

.method public final onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    .line 2
    iput p2, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->progress:F

    .line 4
    iput p3, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->linearProgress:F

    .line 6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->applyLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V

    .line 17
    return-void
    .line 20
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 15
    const/16 v0, 0x10

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 19
    return-void
    .line 22
.end method

.method public final removeHun(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationKey:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    .line 6
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    :goto_0
    const v3, 0x7f0a0452    # @id/is_clicked_heads_up_tag

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 22
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    const/4 p0, 0x1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 30
    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda2;

    .line 34
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 36
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 38
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 41
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 44
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda2;

    .line 47
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 49
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 53
    :goto_1
    return-void
    .line 56
.end method

.method public final setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
