.class public final Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;
.super Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final iconLoc:Landroid/graphics/Rect;

.field public mIsOpenAnimRunning:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;Landroid/os/Handler;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;-><init>(Landroid/os/Handler;)V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->mIsOpenAnimRunning:Z

    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->iconLoc:Landroid/graphics/Rect;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final finishExistingAnimation(Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpenFloatingIconLayer:Lcom/android/systemui/statusbar/animation/FloatingIconLayer;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mIsReleaseOpenFloatingIconLayer:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer$$ExternalSyntheticLambda1;

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/animation/FloatingIconLayer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/FloatingIconLayer;)V

    .line 14
    sget-object v1, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 17
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/animation/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mCamouflageImageWindow:Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->hideView()V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 33
    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 50
    const/4 v2, 0x0

    .line 52
    iput-object v2, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 53
    sget-object v1, Lcom/android/systemui/statusbar/animation/AnimationUtilities;->MAIN_THREAD_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 55
    new-instance v2, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$$ExternalSyntheticLambda1;

    .line 57
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;)V

    .line 59
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/animation/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;->finish()V

    .line 67
    :cond_3
    :goto_0
    return-void
    .line 70
.end method
