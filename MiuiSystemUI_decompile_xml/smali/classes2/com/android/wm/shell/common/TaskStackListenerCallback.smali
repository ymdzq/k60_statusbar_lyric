.class public interface abstract Lcom/android/wm/shell/common/TaskStackListenerCallback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 2
    invoke-interface {p0}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityLaunchOnSecondaryDisplayFailed()V

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted()V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 2
    invoke-interface {p0}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityLaunchOnSecondaryDisplayRerouted()V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onActivityRotation(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onActivityUnpinned()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onLockTaskModeChanged(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onRecentTaskListUpdated()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskDisplayChanged(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskMovedToBack(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 2
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskMovedToBack(I)V

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 2
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskMovedToFront(I)V

    return-void
.end method

.method public onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onTaskStackChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskStackChangedBackground()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
