.class public interface abstract Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    const-string p1, "This task listener doesn\'t support child surface attachment."

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
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

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    const-string p1, "This task listener doesn\'t support child surface reparent."

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public supportCompatUI()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
