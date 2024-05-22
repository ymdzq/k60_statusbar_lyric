.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiFullScreenTaskRepository"


# instance fields
.field private mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mTasks:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public addOrUpdateFullScreenTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->setFocusedTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 9
    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 13
    if-eqz v0, :cond_2

    .line 15
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 17
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    if-ne v1, v0, :cond_2

    .line 21
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->setFocusedTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 24
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 27
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 29
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "addOrUpdateFullScreenTaskInfo taskId="

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", topActivity="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
    .line 65
.end method

.method public getTopVisibleTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    const-string v1, ", topActivity="

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->TAG:Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    const-string v3, "getTopVisibleTaskInfo return focused task: taskId="

    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 45
    return-object p0

    .line 47
    :cond_0
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->TAG:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "mFocusedTask is not visible! taskId="

    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 67
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 82
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 84
    move-result v0

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 88
    :goto_0
    if-ltz v0, :cond_3

    .line 90
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 97
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 98
    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 100
    if-eqz v3, :cond_2

    .line 102
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->TAG:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "getTopVisibleTaskInfo find visible task: taskId="

    .line 108
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 129
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v2

    .line 133
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 134
    goto :goto_0

    .line 136
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 137
    return-object p0
    .line 138
.end method

.method public removeFullScreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 11
    if-ne v1, v0, :cond_1

    .line 13
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->setFocusedTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mTasks:Landroid/util/SparseArray;

    .line 19
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 21
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 23
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "removeFullScreenTask taskId="

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", topActivity="

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
    .line 57
.end method

.method public setFocusedTask(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->mFocusedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    if-nez p1, :cond_0

    .line 4
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->TAG:Ljava/lang/String;

    .line 6
    const-string/jumbo p1, "setFocusedTask null"

    .line 8
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v1, "setFocusedTask taskId="

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", topActivity="

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void
    .line 47
.end method
