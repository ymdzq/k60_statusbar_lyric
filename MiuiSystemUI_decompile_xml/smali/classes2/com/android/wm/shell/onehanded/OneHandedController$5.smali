.class Lcom/android/wm/shell/onehanded/OneHandedController$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$5;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public bridge synthetic onActivityDismissingDockedStack()V
    .locals 0

    .line 1
    return-void
    .line 2
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

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$5;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    const/4 p1, 0x5

    .line 4
    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$mstopOneHanded(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    .line 5
    return-void
    .line 8
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

.method public onTaskMovedToBack(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    if-nez p1, :cond_1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$5;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$mstopOneHanded(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    :cond_1
    return-void
.end method

.method public onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskMovedToBack(I)V

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    if-nez p1, :cond_1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$5;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$mstopOneHanded(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    :cond_1
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
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
