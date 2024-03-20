.class public final Lcom/android/systemui/shade/NotificationsQSContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSContainerController;


# instance fields
.field public bottomCutoutInsets:I

.field public bottomStableInsets:I

.field public final delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final delayedInsetSetter:Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;

.field public footerActionsOffset:I

.field public final fragmentService:Lcom/android/systemui/fragments/FragmentService;

.field public isGestureNavigation:Z

.field public isQSCustomizerAnimating:Z

.field public isQSCustomizing:Z

.field public isQSDetailShowing:Z

.field public largeScreenShadeHeaderActive:Z

.field public largeScreenShadeHeaderHeight:I

.field public final navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public notificationsBottomMargin:I

.field public final overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public panelMarginHorizontal:I

.field public qsExpanded:Z

.field public scrimShadeBottomMargin:I

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public shadeHeaderHeight:I

.field public final shadeQsExpansionListener:Lcom/android/systemui/shade/NotificationsQSContainerController$shadeQsExpansionListener$1;

.field public splitShadeEnabled:Z

.field public final taskbarVisibilityListener:Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;

.field public taskbarVisible:Z

.field public topMargin:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->fragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 13
    iput-object p7, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 15
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isGestureNavigation:Z

    .line 18
    new-instance p1, Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;

    .line 25
    new-instance p1, Lcom/android/systemui/shade/NotificationsQSContainerController$shadeQsExpansionListener$1;

    .line 27
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$shadeQsExpansionListener$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeQsExpansionListener:Lcom/android/systemui/shade/NotificationsQSContainerController$shadeQsExpansionListener$1;

    .line 32
    new-instance p1, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;

    .line 34
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->delayedInsetSetter:Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;

    .line 39
    return-void
    .line 41
.end method


# virtual methods
.method public final onInit()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 9
    move-result v0

    .line 12
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 13
    move-result v0

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isGestureNavigation:Z

    .line 17
    return-void
    .line 19
.end method

.method public final onViewAttached()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateResources()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeQsExpansionListener:Lcom/android/systemui/shade/NotificationsQSContainerController$shadeQsExpansionListener$1;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 14
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addQsExpansionListener(Lcom/android/systemui/shade/ShadeQsExpansionListener;)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 19
    move-object v1, v0

    .line 21
    check-cast v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 22
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->delayedInsetSetter:Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;

    .line 24
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->setInsetsChangedListener(Ljava/util/function/Consumer;)V

    .line 26
    new-instance v2, Lcom/android/systemui/shade/NotificationsQSContainerController$onViewAttached$1;

    .line 29
    const/4 v3, 0x0

    .line 31
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/shade/NotificationsQSContainerController$onViewAttached$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;I)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->setQSFragmentAttachedListener(Ljava/util/function/Consumer;)V

    .line 35
    new-instance v2, Lcom/android/systemui/shade/NotificationsQSContainerController$onViewAttached$1;

    .line 38
    const/4 v3, 0x1

    .line 40
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/shade/NotificationsQSContainerController$onViewAttached$1;-><init>(Lcom/android/systemui/shade/NotificationsQSContainerController;I)V

    .line 41
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->setConfigurationChangedListener(Ljava/util/function/Consumer;)V

    .line 44
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->fragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 49
    move-result-object p0

    .line 52
    const-string v1, "QS"

    .line 53
    check-cast v0, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 55
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 57
    return-void
    .line 60
.end method

.method public final onViewDetached()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->qsExpansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeQsExpansionListener:Lcom/android/systemui/shade/NotificationsQSContainerController$shadeQsExpansionListener$1;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 22
    move-object v1, v0

    .line 24
    check-cast v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v2, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;

    .line 30
    const/4 v3, 0x2

    .line 32
    invoke-direct {v2, v3}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;-><init>(I)V

    .line 33
    iput-object v2, v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mInsetsChangedListener:Ljava/util/function/Consumer;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v2, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;

    .line 41
    const/4 v3, 0x3

    .line 43
    invoke-direct {v2, v3}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;-><init>(I)V

    .line 44
    iput-object v2, v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSFragmentAttachedListener:Ljava/util/function/Consumer;

    .line 47
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->setConfigurationChangedListener(Ljava/util/function/Consumer;)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->fragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 55
    move-result-object p0

    .line 58
    check-cast v0, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 59
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    .line 61
    const-string v1, "QS"

    .line 63
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 68
    check-cast v2, Ljava/util/ArrayList;

    .line 69
    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    return-void
    .line 88
.end method

.method public final setCustomizerAnimating(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSCustomizerAnimating:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSCustomizerAnimating:Z

    .line 6
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    check-cast p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final setCustomizerShowing(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/plugins/qs/QSContainerController$DefaultImpls;->setCustomizerShowing(Lcom/android/systemui/plugins/qs/QSContainerController;Z)V

    return-void
.end method

.method public final setCustomizerShowing(ZJ)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSCustomizing:Z

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSCustomizing:Z

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 7
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 8
    sget-object p3, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 9
    new-instance p3, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;

    invoke-direct {p3, v0, p1}, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;Z)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateBottomSpacing()V

    :cond_2
    return-void
.end method

.method public final setDetailShowing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSDetailShowing:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateBottomSpacing()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateBottomSpacing()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSCustomizing:Z

    .line 7
    if-nez v2, :cond_0

    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSDetailShowing:Z

    .line 11
    if-eqz v2, :cond_1

    .line 13
    :cond_0
    move v2, v1

    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isGestureNavigation:Z

    .line 18
    if-eqz v2, :cond_2

    .line 20
    iget v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->bottomCutoutInsets:I

    .line 22
    iget v3, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->notificationsBottomMargin:I

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->taskbarVisible:Z

    .line 27
    if-eqz v2, :cond_3

    .line 29
    iget v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->bottomStableInsets:I

    .line 31
    iget v3, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->notificationsBottomMargin:I

    .line 33
    goto :goto_0

    .line 35
    :cond_3
    iget v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->bottomStableInsets:I

    .line 36
    iget v3, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->notificationsBottomMargin:I

    .line 38
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isQSDetailShowing:Z

    .line 40
    if-nez v4, :cond_5

    .line 42
    if-eqz v0, :cond_4

    .line 44
    iget v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->scrimShadeBottomMargin:I

    .line 46
    sub-int v0, v3, v0

    .line 48
    iget v4, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->footerActionsOffset:I

    .line 50
    sub-int/2addr v0, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    iget v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->bottomStableInsets:I

    .line 54
    goto :goto_1

    .line 56
    :cond_5
    move v0, v1

    .line 57
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 58
    move-object v4, p0

    .line 60
    check-cast v4, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 61
    invoke-virtual {v4, v1, v1, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 63
    move-object v1, p0

    .line 66
    check-cast v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 67
    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->setNotificationsMarginBottom(I)V

    .line 69
    check-cast p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->setQSContainerPaddingBottom(I)V

    .line 74
    return-void
    .line 77
.end method

.method public final updateResources()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 6
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeEnabled:Z

    .line 10
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v3

    .line 18
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeEnabled:Z

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    .line 25
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderActive:Z

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v0

    .line 34
    const v4, 0x7f070dd7    # @dimen/notification_panel_margin_bottom '0.0dp'

    .line 35
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v0

    .line 41
    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->notificationsBottomMargin:I

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v0

    .line 47
    const v4, 0x7f0704c6    # @dimen/large_screen_shade_header_height '48.0dp'

    .line 48
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result v0

    .line 54
    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderHeight:I

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v0

    .line 60
    const v4, 0x7f070fa4    # @dimen/qs_header_height '120.0dp'

    .line 61
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result v0

    .line 67
    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderHeight:I

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v0

    .line 73
    const v4, 0x7f070dd8    # @dimen/notification_panel_margin_horizontal '0.0dp'

    .line 74
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    move-result v0

    .line 80
    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderActive:Z

    .line 83
    if-eqz v0, :cond_1

    .line 85
    iget v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderHeight:I

    .line 87
    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object v0

    .line 93
    const v4, 0x7f070dd9    # @dimen/notification_panel_margin_top '0.0dp'

    .line 94
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    move-result v0

    .line 100
    :goto_1
    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->topMargin:I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 103
    move-object v4, v0

    .line 105
    check-cast v4, Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 108
    move-result v5

    .line 111
    move v6, v3

    .line 112
    :goto_2
    if-ge v6, v5, :cond_3

    .line 113
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    move-result-object v7

    .line 118
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 119
    move-result v8

    .line 122
    const/4 v9, -0x1

    .line 123
    if-ne v8, v9, :cond_2

    .line 124
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 126
    move-result v8

    .line 129
    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 130
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 133
    goto :goto_2

    .line 135
    :cond_3
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 136
    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 138
    move-object v5, v0

    .line 141
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 142
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 147
    move-result-object v5

    .line 150
    const v6, 0x7f071102    # @dimen/status_view_margin_horizontal '0.0dp'

    .line 151
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 154
    move-result v5

    .line 157
    const v6, 0x7f0a04a3    # @id/keyguard_status_view

    .line 158
    const/4 v7, 0x6

    .line 161
    invoke-virtual {v4, v6, v7, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 162
    const/4 v8, 0x7

    .line 165
    invoke-virtual {v4, v6, v8, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 166
    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeEnabled:Z

    .line 169
    const v6, 0x7f0a075b    # @id/qs_edge_guideline

    .line 171
    if-eqz v5, :cond_4

    .line 174
    move v5, v6

    .line 176
    goto :goto_3

    .line 177
    :cond_4
    move v5, v3

    .line 178
    :goto_3
    const v9, 0x7f0a0761    # @id/qs_frame

    .line 179
    invoke-virtual {v4, v9, v8, v5, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 182
    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeEnabled:Z

    .line 185
    if-eqz v5, :cond_5

    .line 187
    move v5, v3

    .line 189
    goto :goto_4

    .line 190
    :cond_5
    iget v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    .line 191
    :goto_4
    invoke-virtual {v4, v9, v7, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 193
    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeEnabled:Z

    .line 196
    if-eqz v5, :cond_6

    .line 198
    move v5, v3

    .line 200
    goto :goto_5

    .line 201
    :cond_6
    iget v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    .line 202
    :goto_5
    invoke-virtual {v4, v9, v8, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 204
    iget v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->topMargin:I

    .line 207
    const/4 v10, 0x3

    .line 209
    invoke-virtual {v4, v9, v10, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 210
    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeEnabled:Z

    .line 213
    if-eqz v5, :cond_7

    .line 215
    goto :goto_6

    .line 217
    :cond_7
    move v6, v3

    .line 218
    :goto_6
    const v5, 0x7f0a06b6    # @id/notification_stack_scroller

    .line 219
    invoke-virtual {v4, v5, v7, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 222
    iget-boolean v6, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->splitShadeEnabled:Z

    .line 225
    if-eqz v6, :cond_8

    .line 227
    move v6, v3

    .line 229
    goto :goto_7

    .line 230
    :cond_8
    iget v6, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    .line 231
    :goto_7
    invoke-virtual {v4, v5, v7, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 233
    iget v6, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->panelMarginHorizontal:I

    .line 236
    invoke-virtual {v4, v5, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 238
    iget v6, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->topMargin:I

    .line 241
    invoke-virtual {v4, v5, v10, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 243
    const/4 v6, 0x4

    .line 246
    iget v7, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->notificationsBottomMargin:I

    .line 247
    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 249
    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderActive:Z

    .line 252
    const v6, 0x7f0a08ba    # @id/split_shade_status_bar

    .line 254
    if-eqz v5, :cond_9

    .line 257
    iget v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->largeScreenShadeHeaderHeight:I

    .line 259
    invoke-virtual {v4, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 261
    goto :goto_8

    .line 264
    :cond_9
    iget v5, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->shadeHeaderHeight:I

    .line 265
    invoke-virtual {v4, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 267
    :goto_8
    check-cast v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 270
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 275
    new-instance v0, Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$scrimMarginChanged$1;

    .line 278
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$scrimMarginChanged$1;-><init>(Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 283
    move-result-object v4

    .line 286
    const v5, 0x7f0710c4    # @dimen/split_shade_notifications_scrim_margin_bottom '0.0dp'

    .line 287
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 290
    move-result v4

    .line 293
    invoke-interface {v0}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    .line 294
    move-result-object v5

    .line 297
    check-cast v5, Ljava/lang/Number;

    .line 298
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 300
    move-result v5

    .line 303
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    move-result-object v6

    .line 307
    invoke-interface {v0, v6}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 308
    if-eq v5, v4, :cond_a

    .line 311
    move v0, v2

    .line 313
    goto :goto_9

    .line 314
    :cond_a
    move v0, v3

    .line 315
    :goto_9
    new-instance v4, Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$footerOffsetChanged$1;

    .line 316
    invoke-direct {v4, p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$footerOffsetChanged$1;-><init>(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 321
    move-result-object v5

    .line 324
    const v6, 0x7f070f93    # @dimen/qs_footer_action_inset '4.0dp'

    .line 325
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 328
    move-result v5

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 332
    move-result-object v6

    .line 335
    const v7, 0x7f070f95    # @dimen/qs_footer_actions_bottom_padding '4.0dp'

    .line 336
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 339
    move-result v6

    .line 342
    add-int/2addr v6, v5

    .line 343
    invoke-interface {v4}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    .line 344
    move-result-object v5

    .line 347
    check-cast v5, Ljava/lang/Number;

    .line 348
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 350
    move-result v5

    .line 353
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    move-result-object v7

    .line 357
    invoke-interface {v4, v7}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 358
    if-eq v5, v6, :cond_b

    .line 361
    move v4, v2

    .line 363
    goto :goto_a

    .line 364
    :cond_b
    move v4, v3

    .line 365
    :goto_a
    if-nez v0, :cond_d

    .line 366
    if-eqz v4, :cond_c

    .line 368
    goto :goto_b

    .line 370
    :cond_c
    move v2, v3

    .line 371
    :cond_d
    :goto_b
    if-nez v1, :cond_e

    .line 372
    if-eqz v2, :cond_f

    .line 374
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateBottomSpacing()V

    .line 376
    :cond_f
    return-void
    .line 379
.end method
