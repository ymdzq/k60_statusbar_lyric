.class public interface abstract Lcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract onChildTaskAppeared(I)V
.end method

.method public abstract onChildTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
.end method

.method public abstract onChildTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onChildTaskStatusChanged(IZZ)V
.end method

.method public abstract onChildTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onNoLongerSupportMultiWindow()V
.end method

.method public abstract onRootTaskAppeared()V
.end method

.method public abstract onRootTaskVanished()V
.end method

.method public abstract onSoScStatusChanged(ZZZ)V
.end method

.method public abstract onStatusChanged(ZZ)V
.end method
