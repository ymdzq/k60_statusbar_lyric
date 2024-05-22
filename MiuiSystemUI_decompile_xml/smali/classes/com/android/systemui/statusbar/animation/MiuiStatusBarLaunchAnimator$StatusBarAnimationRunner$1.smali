.class public final Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

.field public final synthetic val$result:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;

.field public final synthetic val$startRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;Landroid/graphics/RectF;Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->val$startRectF:Landroid/graphics/RectF;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->val$result:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 2
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->mIsOpenAnimRunning:Z

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const-string p1, "StatusBarLaunchAnimator"

    .line 9
    const-string/jumbo v0, "springAnim onAnimationEnd"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 17
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->mIsOpenAnimRunning:Z

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->val$result:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->finishExistingAnimation(Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;)V

    .line 24
    new-instance p0, Lcom/android/systemui/statusbar/animation/TraceUtils$$ExternalSyntheticLambda1;

    .line 27
    invoke-direct {p0}, Lcom/android/systemui/statusbar/animation/TraceUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 29
    invoke-static {p0}, Lcom/android/systemui/statusbar/animation/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 32
    return-void
    .line 35
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/android/systemui/statusbar/animation/TraceUtils$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {p1}, Lcom/android/systemui/statusbar/animation/TraceUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/android/systemui/statusbar/animation/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 7
    const-string p1, "StatusBarLaunchAnimator"

    .line 10
    const-string/jumbo v0, "springAnim onAnimationStart"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 18
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->mIsOpenAnimRunning:Z

    .line 21
    iget-object p1, p1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 23
    const/4 v0, 0x0

    .line 25
    iput-object v0, p1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpenFloatingIconLayer:Lcom/android/systemui/statusbar/animation/FloatingIconLayer;

    .line 26
    iget-object p1, p1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 28
    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 39
    iget-object p1, p1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 41
    iget-object p1, p1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 43
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;

    .line 49
    if-eqz p1, :cond_1

    .line 51
    invoke-interface {p1}, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    .line 53
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-interface {p1}, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    .line 59
    move-result-object v0

    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 64
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mIsLowEndDevice:Z

    .line 67
    if-nez v0, :cond_2

    .line 69
    sget-object v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->val$startRectF:Landroid/graphics/RectF;

    .line 73
    new-instance v2, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1$$ExternalSyntheticLambda0;

    .line 75
    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)V

    .line 77
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/animation/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    :cond_2
    :goto_0
    return-void
    .line 83
.end method
