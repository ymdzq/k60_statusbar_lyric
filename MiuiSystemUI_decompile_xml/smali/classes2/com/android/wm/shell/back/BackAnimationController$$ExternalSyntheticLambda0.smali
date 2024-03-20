.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Float;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 13
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/back/TouchTracker;->getProgress(F)F

    .line 19
    move-result v4

    .line 22
    new-instance p1, Landroid/window/BackMotionEvent;

    .line 23
    iget v2, v0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchX:F

    .line 25
    iget v3, v0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchY:F

    .line 27
    iget v5, v0, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityX:F

    .line 29
    iget v6, v0, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityY:F

    .line 31
    iget v7, v0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    .line 33
    const/4 v8, 0x0

    .line 35
    move-object v1, p1

    .line 36
    invoke-direct/range {v1 .. v8}, Landroid/window/BackMotionEvent;-><init>(FFFFFILandroid/view/RemoteAnimationTarget;)V

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    .line 40
    if-nez p0, :cond_0

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    const-string p1, "ShellBackPreview"

    .line 50
    const-string v0, "dispatchOnBackProgressed error: "

    .line 52
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :goto_0
    return-void
    .line 57
.end method
