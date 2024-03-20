.class public final Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/QuickSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/QuickSettingsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFragmentViewCreated(Landroid/app/Fragment;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 4
    iput-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 6
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsHeightListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    .line 8
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V

    .line 10
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 13
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsCollapseExpandAction:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;

    .line 15
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setCollapseExpandAction(Ljava/lang/Runnable;)V

    .line 17
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 22
    move-result v1

    .line 25
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 26
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 29
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 31
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 33
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 36
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 38
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setInSplitShade(Z)V

    .line 40
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 43
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 45
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setIsNotificationPanelFullWidth(Z)V

    .line 47
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 50
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 55
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 56
    check-cast p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 58
    iget-object v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 60
    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 62
    instance-of v2, v1, Lcom/android/systemui/qs/MiuiQS;

    .line 64
    if-eqz v2, :cond_0

    .line 66
    check-cast v1, Lcom/android/systemui/qs/MiuiQS;

    .line 68
    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 71
    :goto_0
    if-nez v1, :cond_1

    .line 72
    goto :goto_1

    .line 74
    :cond_1
    iget-object v2, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 75
    filled-new-array {v2}, [Landroid/view/View;

    .line 77
    move-result-object v2

    .line 80
    check-cast v1, Lcom/android/systemui/qs/MiuiQSFragment;

    .line 81
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 83
    move-result-object v3

    .line 86
    const/4 v4, 0x1

    .line 87
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 91
    check-cast v2, [Landroid/view/View;

    .line 92
    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/MiuiQSContainer;->setDetailAnimatedViews([Landroid/view/View;)V

    .line 94
    new-instance v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setQSDetailAnimatedViews$1;

    .line 97
    invoke-direct {v2, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setQSDetailAnimatedViews$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 99
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/MiuiQSFragment;->addQSDetailCallback(Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setQSDetailAnimatedViews$1;)V

    .line 102
    :goto_1
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 105
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 107
    move-result-object p1

    .line 110
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener$$ExternalSyntheticLambda0;

    .line 111
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;)V

    .line 113
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 116
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 119
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    .line 121
    const/4 v2, 0x2

    .line 123
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 124
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setCollapsedMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 127
    iget-object p0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 130
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 132
    iput-object p0, p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qS:Lcom/android/systemui/plugins/qs/QS;

    .line 134
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeTransitionController:Lcom/android/systemui/shade/transition/ShadeTransitionController;

    .line 136
    iput-object p0, p1, Lcom/android/systemui/shade/transition/ShadeTransitionController;->qs:Lcom/android/systemui/plugins/qs/QS;

    .line 138
    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 140
    move-result-object p0

    .line 143
    check-cast p0, Landroid/view/ViewGroup;

    .line 144
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 146
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 148
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsHeader(Landroid/view/ViewGroup;)V

    .line 150
    iget-object p0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 153
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsScrollListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    .line 155
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setScrollListener(Lcom/android/systemui/plugins/qs/QS$ScrollListener;)V

    .line 157
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 160
    return-void
    .line 163
.end method

.method public final onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 9
    :cond_0
    return-void
    .line 11
.end method
