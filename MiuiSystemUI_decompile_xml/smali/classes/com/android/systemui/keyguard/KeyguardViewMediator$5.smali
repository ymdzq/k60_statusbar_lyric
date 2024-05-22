.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 6
    move-result v5

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 14
    move-result v0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 20
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 22
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    if-eqz v1, :cond_0

    .line 26
    int-to-float v0, v0

    .line 28
    const/high16 v1, 0x40400000    # 3.0f

    .line 29
    div-float/2addr v0, v1

    .line 31
    int-to-float v3, v5

    .line 32
    div-float v1, v3, v1

    .line 33
    new-instance v8, Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 35
    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerButtonY:F

    .line 37
    div-float/2addr v0, v2

    .line 39
    sub-float v2, v4, v0

    .line 40
    float-to-int v2, v2

    .line 42
    add-float/2addr v4, v0

    .line 43
    float-to-int v0, v4

    .line 44
    sub-float/2addr v3, v1

    .line 45
    float-to-int v4, v3

    .line 46
    iget v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWindowCornerRadius:F

    .line 47
    move-object v1, v8

    .line 49
    move v3, v0

    .line 50
    move v6, v7

    .line 51
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFF)V

    .line 52
    return-object v8

    .line 55
    :cond_0
    int-to-float v0, v0

    .line 56
    div-float v1, v0, v2

    .line 57
    int-to-float v3, v5

    .line 59
    div-float v4, v3, v2

    .line 60
    new-instance v12, Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 62
    sub-float/2addr v0, v1

    .line 64
    float-to-int v5, v0

    .line 65
    div-int/lit8 v6, v5, 0x2

    .line 66
    div-float/2addr v0, v2

    .line 68
    add-float/2addr v0, v1

    .line 69
    float-to-int v7, v0

    .line 70
    sub-float/2addr v3, v4

    .line 71
    float-to-int v0, v3

    .line 72
    div-int/lit8 v8, v0, 0x2

    .line 73
    div-float/2addr v3, v2

    .line 75
    add-float/2addr v3, v4

    .line 76
    float-to-int v9, v3

    .line 77
    iget v11, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWindowCornerRadius:F

    .line 78
    move-object v5, v12

    .line 80
    move v10, v11

    .line 81
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFF)V

    .line 82
    return-object v12
    .line 85
.end method

.method public final getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 4
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 10
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Landroid/view/ViewGroup;

    .line 22
    return-object p0
.end method

.method public final onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "Occlude launch animation cancelled. Occluded state is now: "

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 11
    const-string v1, "KeyguardViewMediator"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 15
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationPlaying:Z

    .line 19
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard()Z

    .line 25
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    .line 28
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOccludeAnimationPlaying(Z)V

    .line 36
    return-void
    .line 39
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 3
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShadeController:Ldagger/Lazy;

    .line 7
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/systemui/shade/ShadeController;

    .line 13
    check-cast p1, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 15
    iget-object v1, p1, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 17
    check-cast v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 21
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 24
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 28
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedFraction(F)V

    .line 32
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    .line 35
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 39
    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 42
    if-eqz v2, :cond_1

    .line 44
    iput-boolean v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 46
    invoke-virtual {v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 48
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/shade/ShadeControllerImpl;->runPostCollapseRunnables()V

    .line 54
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationPlaying:Z

    .line 57
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 59
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 61
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard()Z

    .line 63
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    .line 66
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 71
    check-cast p1, Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOccludeAnimationPlaying(Z)V

    .line 74
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 77
    const/16 p1, 0x40

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 81
    return-void
    .line 84
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationPlaying:Z

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    .line 7
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOccludeAnimationPlaying(Z)V

    .line 15
    return-void
    .line 18
.end method

.method public final setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    const-string p0, "KeyguardViewMediator"

    .line 2
    const-string p1, "Someone tried to change the launch container for the ActivityLaunchAnimator, which should never happen."

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    return-void
    .line 9
.end method
