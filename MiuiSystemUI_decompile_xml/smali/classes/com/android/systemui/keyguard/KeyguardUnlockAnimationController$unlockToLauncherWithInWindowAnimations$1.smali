.class public final Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 4
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 12
    move-result v0

    .line 15
    const-string v1, "KeyguardUnlock"

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 26
    if-nez v0, :cond_0

    .line 28
    const-string p0, "Finish keyguard exit animation delayed Runnable ran, but we are showing and not going away."

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 36
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperTargets:[Landroid/view/RemoteAnimationTarget;

    .line 38
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_2

    .line 41
    array-length v2, v2

    .line 43
    const/4 v4, 0x1

    .line 44
    if-nez v2, :cond_1

    .line 45
    move v2, v4

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v2, v3

    .line 49
    :goto_0
    xor-int/2addr v2, v4

    .line 50
    if-ne v2, v4, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    move v4, v3

    .line 54
    :goto_1
    if-eqz v4, :cond_4

    .line 55
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 57
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    .line 59
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    const-string v2, "fadeInWallpaper"

    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperCannedUnlockAnimator:Landroid/animation/ValueAnimator;

    .line 75
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 77
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperCannedUnlockAnimator:Landroid/animation/ValueAnimator;

    .line 80
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 87
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 89
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 91
    if-eqz v0, :cond_3

    .line 93
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 95
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 97
    const-wide/16 v0, 0x0

    .line 99
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 101
    goto :goto_2

    .line 104
    :cond_3
    const-string p0, "#hideKeyguardViewAfterRemoteAnimation called when keyguard view is not showing. Ignoring..."

    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    goto :goto_2

    .line 110
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 113
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 115
    move-result-object p0

    .line 118
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 119
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation(Z)V

    .line 121
    :goto_2
    return-void
    .line 124
.end method
