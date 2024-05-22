.class public abstract Lcom/android/wm/shell/pip/PipUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static aspectRatioChanged(FF)Z
    .locals 2

    .line 1
    sub-float/2addr p0, p1

    .line 2
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 3
    move-result p0

    .line 6
    float-to-double p0, p0

    .line 7
    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 8
    cmpl-double p0, p0, v0

    .line 13
    if-lez p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public static getTaskSnapshot(I)Landroid/window/TaskSnapshot;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v1, p0, v2, v2}, Landroid/app/IActivityTaskManager;->getTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;

    .line 11
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "Failed to get task snapshot, taskId="

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    const-string v2, "PipUtils"

    .line 31
    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    return-object v0
    .line 36
.end method

.method public static getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 3
    move-result-object p0

    .line 6
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 7
    move-result-object v1

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-interface {v1, v2, v0}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    iget-object v2, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    .line 18
    if-eqz v2, :cond_1

    .line 20
    array-length v2, v2

    .line 22
    if-lez v2, :cond_1

    .line 23
    iget-object v2, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    .line 25
    array-length v2, v2

    .line 27
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 28
    if-ltz v2, :cond_1

    .line 30
    iget-object v3, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    .line 32
    aget-object v3, v3, v2

    .line 34
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 36
    move-result-object v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 45
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v4

    .line 49
    if-nez v4, :cond_0

    .line 50
    new-instance p0, Landroid/util/Pair;

    .line 52
    iget-object v1, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    .line 54
    aget v1, v1, v2

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 61
    invoke-direct {p0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p0

    .line 65
    :catch_0
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 66
    if-eqz p0, :cond_1

    .line 68
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 70
    const-string v1, "PipUtils"

    .line 72
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    const v2, -0x3ceca60d

    .line 78
    const-string v3, "%s: Unable to get pinned stack."

    .line 81
    invoke-static {p0, v2, v0, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_1
    new-instance p0, Landroid/util/Pair;

    .line 86
    const/4 v1, 0x0

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v0

    .line 92
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    return-object p0
    .line 96
.end method

.method public static remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_3

    .line 7
    if-nez p1, :cond_1

    .line 9
    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/app/RemoteAction;->isEnabled()Z

    .line 12
    move-result v2

    .line 15
    invoke-virtual {p1}, Landroid/app/RemoteAction;->isEnabled()Z

    .line 16
    move-result v3

    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    invoke-virtual {p0}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    .line 22
    move-result v2

    .line 25
    invoke-virtual {p1}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    .line 26
    move-result v3

    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 36
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 46
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 50
    move-result-object v3

    .line 53
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 64
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 76
    :cond_3
    :goto_1
    return v1
    .line 77
.end method
