.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;
.super Lcom/android/systemui/animation/DelegateLaunchAnimatorController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/animation/DelegateLaunchAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onIntentStarted(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onIntentStarted(Z)V

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 11
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->access$getCentralSurfaces(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 13
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 19
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsLaunchingActivityOverLockscreen:Z

    .line 22
    :cond_1
    return-void
.end method

.method public final onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    .line 7
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result v3

    .line 18
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 19
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->access$getCentralSurfaces(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 22
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 28
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsLaunchingActivityOverLockscreen:Z

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 32
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    .line 34
    return-void
    .line 37
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->access$getCentralSurfaces(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 10
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsLaunchingActivityOverLockscreen:Z

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/DelegateLaunchAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivity$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 9
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 11
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 17
    if-nez p1, :cond_0

    .line 19
    const-string p1, "ActivityStarterImpl"

    .line 21
    const-string v0, "Setting occluded = true in #startActivity."

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    .line 28
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 34
    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 37
    :cond_0
    return-void
    .line 40
.end method
