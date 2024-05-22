.class public interface abstract Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract applyAnimationProgress(Landroid/view/SurfaceControl$Transaction;F)V
.end method

.method public abstract clearTasks()V
.end method

.method public abstract hasActiveTasks()Z
.end method

.method public abstract init()V
.end method

.method public abstract isApplicableTask(Landroid/app/TaskInfo;)Z
.end method

.method public abstract onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V
.end method

.method public onTaskChanged(Landroid/app/TaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onTaskVanished(Landroid/app/TaskInfo;)V
.end method

.method public abstract prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract prepareStartTransaction(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract resetAllSurfaces(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract resetSurface(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public start()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public stop()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
