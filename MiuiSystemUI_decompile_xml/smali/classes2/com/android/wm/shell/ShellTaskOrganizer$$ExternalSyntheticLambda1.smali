.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;->f$0:Landroid/os/Parcelable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const-string v1, "RecentTasksController"

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 10
    sget p0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 14
    return-void

    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;->f$0:Landroid/os/Parcelable;

    .line 18
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 22
    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 31
    invoke-virtual {p1}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 34
    iget-object v0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 37
    if-eqz v0, :cond_1

    .line 39
    iget-boolean p1, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mIsDesktopMode:Z

    .line 41
    if-eqz p1, :cond_1

    .line 43
    iget-object p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 45
    if-nez p1, :cond_0

    .line 47
    goto :goto_0

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string p1, "Failed call onRunningTaskVanished"

    .line 55
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 60
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;->f$0:Landroid/os/Parcelable;

    .line 61
    check-cast p0, Landroid/window/TaskAppearedInfo;

    .line 63
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 65
    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    .line 67
    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    move-result-object p0

    .line 72
    iget-object v0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 73
    if-eqz v0, :cond_3

    .line 75
    iget-boolean p1, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mIsDesktopMode:Z

    .line 77
    if-eqz p1, :cond_3

    .line 79
    iget-object p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 81
    if-nez p1, :cond_2

    .line 83
    goto :goto_2

    .line 85
    :cond_2
    :try_start_1
    invoke-interface {v0, p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    goto :goto_2

    .line 89
    :catch_1
    move-exception p0

    .line 90
    const-string p1, "Failed call onRunningTaskAppeared"

    .line 91
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_3
    :goto_2
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 98
.end method
