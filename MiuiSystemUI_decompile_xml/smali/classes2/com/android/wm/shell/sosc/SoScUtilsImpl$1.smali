.class Lcom/android/wm/shell/sosc/SoScUtilsImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$1;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$1;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetmStageCoordinator(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScVisible()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 21
    const v1, 0x7f1303a2    # @string/dock_non_resizeble_failed_to_dock_text 'App does not support split screen'

    .line 22
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$1;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 33
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetmReady(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$1;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 41
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetmStageCoordinator(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 43
    move-result-object p0

    .line 46
    const/4 v0, -0x1

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->exitSplitScreen(II)V

    .line 49
    :cond_1
    return-void
    .line 52
.end method

.method public bridge synthetic onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onActivityLaunchOnSecondaryDisplayFailed()V
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

.method public bridge synthetic onActivityLaunchOnSecondaryDisplayRerouted()V
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

.method public bridge synthetic onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onActivityRequestedOrientationChanged(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onActivityRotation(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onActivityUnpinned()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onLockTaskModeChanged(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onRecentTaskListFrozenChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onRecentTaskListUpdated()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onTaskDisplayChanged(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onTaskMovedToBack(I)V
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

.method public bridge synthetic onTaskMovedToFront(I)V
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

.method public bridge synthetic onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onTaskRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public bridge synthetic onTaskStackChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onTaskStackChangedBackground()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
