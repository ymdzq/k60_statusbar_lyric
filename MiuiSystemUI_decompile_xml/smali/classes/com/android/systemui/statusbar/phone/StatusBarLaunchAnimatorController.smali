.class public final Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# instance fields
.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final isLaunchForActivity:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->isLaunchForActivity:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 6
    return-object p0
    .line 8
.end method

.method public final isBelowAnimatingWindow()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->isBelowAnimatingWindow()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isDialogLaunch()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->isDialogLaunch()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onIntentStarted(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onIntentStarted(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 13
    const/4 p1, 0x1

    .line 15
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setIsLaunchAnimationRunning(Z)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapsePanelOnMainThread()V

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public final onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled$default(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 9
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 11
    const/4 v1, 0x0

    .line 13
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setIsLaunchAnimationRunning(Z)V

    .line 16
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    .line 23
    move-result v0

    .line 26
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 31
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    .line 35
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->isLaunchForActivity:Z

    .line 41
    if-eqz p0, :cond_0

    .line 43
    check-cast v1, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 45
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->onClosingFinished()V

    .line 47
    goto :goto_0

    .line 50
    :cond_0
    check-cast v1, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 51
    const/4 p0, 0x1

    .line 53
    invoke-virtual {v1, p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShade(Z)V

    .line 54
    :goto_0
    return-void
    .line 57
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 11
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setIsLaunchAnimationRunning(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    .line 23
    move-result v0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 27
    if-nez v0, :cond_0

    .line 29
    move-object v0, p0

    .line 31
    check-cast v0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->onClosingFinished()V

    .line 34
    :cond_0
    if-eqz p1, :cond_3

    .line 37
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 39
    iget-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 41
    check-cast p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 43
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 45
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 48
    iget-object v2, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 52
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedFraction(F)V

    .line 56
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    .line 59
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 63
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 66
    if-eqz v0, :cond_2

    .line 68
    iput-boolean v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 72
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->runPostCollapseRunnables()V

    .line 78
    :cond_3
    return-void
    .line 81
.end method

.method public final onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 11
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 18
    sget-wide v2, Lcom/android/systemui/shade/NotificationPanelViewController;->ANIMATION_DELAY_ICON_FADE_IN:J

    .line 20
    const-wide/16 v4, 0x64

    .line 22
    sget-object p1, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    .line 24
    move v1, p3

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    .line 27
    move-result p1

    .line 30
    const/4 p2, 0x0

    .line 31
    cmpl-float p1, p1, p2

    .line 32
    if-nez p1, :cond_0

    .line 34
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    .line 39
    if-eq p1, p2, :cond_1

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    .line 43
    if-nez p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 47
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayId:I

    .line 49
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(I)V

    .line 51
    :cond_1
    return-void
    .line 54
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 11
    const/4 v1, 0x1

    .line 13
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setIsLaunchAnimationRunning(Z)V

    .line 16
    if-nez p1, :cond_0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 21
    sget-object p1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 23
    const-wide/16 v0, 0x1f4

    .line 25
    long-to-int p1, v0

    .line 27
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 28
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    .line 30
    const/4 p1, 0x0

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V

    .line 35
    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    .line 39
    :cond_0
    return-void
    .line 41
.end method

.method public final setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->setLaunchContainer(Landroid/view/ViewGroup;)V

    .line 4
    return-void
    .line 7
.end method
