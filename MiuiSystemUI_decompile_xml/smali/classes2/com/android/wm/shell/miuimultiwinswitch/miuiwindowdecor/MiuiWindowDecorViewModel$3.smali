.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

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

.method public onLockTaskModeChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "MiuiWindowDecorViewModel"

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 7
    const/4 p1, 0x1

    .line 9
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fputmIsInLockTaskMode(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Z)V

    .line 10
    const-string p0, "in locktask mode"

    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 19
    const/4 p1, 0x0

    .line 21
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fputmIsInLockTaskMode(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Z)V

    .line 22
    const-string p0, "exit locktask mode"

    .line 25
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    return-void
    .line 30
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
