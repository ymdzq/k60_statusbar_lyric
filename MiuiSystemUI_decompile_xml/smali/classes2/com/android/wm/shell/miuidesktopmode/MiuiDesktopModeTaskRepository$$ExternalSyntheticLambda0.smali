.class public final synthetic Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const-string v1, "MiuiDesktopTasksController"

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;->f$0:I

    .line 10
    check-cast p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "onTaskVanished taskId: "

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 34
    :goto_0
    iget p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;->f$0:I

    .line 35
    check-cast p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string v2, "onTaskAppeared taskId: "

    .line 44
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mFullScreenTasksBehindHome:Landroid/util/ArraySet;

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 65
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->removeFullScreenTasksBehindHome(I)V

    .line 68
    iget-object p1, p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 71
    iget-object v0, p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 75
    move-result-object p0

    .line 78
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 79
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 85
    move-result p0

    .line 88
    const/4 v0, 0x5

    .line 89
    if-eq p0, v0, :cond_0

    .line 90
    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->exitTemporaryFullscreen()V

    .line 93
    :cond_1
    :goto_1
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 98
.end method
