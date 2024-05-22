.class public interface abstract Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCompat$LocalAnimationListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract onAnimationCanceled()V
.end method

.method public abstract onAnimationFinished()V
.end method

.method public abstract onAnimationStart([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    const/4 p0, 0x0

    .line 5
    return p0
    .line 6
.end method

.method public abstract onTasksAppeared([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;)V
.end method
