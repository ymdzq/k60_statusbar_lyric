.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiTaskOperations"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mContext:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public closeTaskFromFullSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    const/4 v1, 0x3

    .line 11
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareRemoveTaskFromSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 12
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 15
    if-eqz p1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 19
    invoke-interface {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startCloseTaskFromFullSplitTransition(Landroid/window/WindowContainerTransaction;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 31
    const-string p1, "closeTaskFromFullSplit taskInfo is null"

    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-void
    .line 38
.end method

.method public closeTaskFromSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 12
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 18
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 23
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 26
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    invoke-virtual {p1, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 33
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 36
    invoke-virtual {v0, v2, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 38
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 41
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 44
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 47
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 49
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 52
    if-eqz p1, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 56
    invoke-interface {p0, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startCloseTaskFromSplitTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 68
    const-string p1, "closeTaskFromSplit taskInfo is null"

    .line 70
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void
    .line 75
.end method

.method public minimizeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    .line 1
    const-string v0, "MiuiTaskOperations"

    .line 2
    if-eqz p1, :cond_4

    .line 4
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 6
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 8
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 11
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 14
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 19
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 22
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v1, v2, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 25
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 28
    move-result v2

    .line 31
    const/4 v4, 0x5

    .line 32
    if-ne v2, v4, :cond_1

    .line 33
    new-instance v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 35
    invoke-direct {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 37
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {v4}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 42
    move-result v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    const/high16 v4, 0x3f800000    # 1.0f

    .line 48
    invoke-virtual {v2, v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 50
    :cond_0
    invoke-virtual {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformToFullscreenByBottomCaption()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 53
    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 56
    invoke-virtual {v1, v4, v2}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 58
    :cond_1
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 61
    invoke-static {v2}, Lmiui/app/MiuiFreeFormManager;->isFullScreenStrategyNeededInDesktopMode(I)Z

    .line 63
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 69
    move-result v2

    .line 72
    const/4 v4, 0x1

    .line 73
    if-ne v2, v4, :cond_2

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    const-string v3, "minimizeTask "

    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, "  WindowingMode="

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 93
    move-result v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v3, " and it is FullScreenStrategyNeededInDesktopMode!"

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 108
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 112
    invoke-virtual {v1, v0, v4}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 114
    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 118
    invoke-virtual {v1, v0, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 120
    :goto_0
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 123
    if-eqz v0, :cond_3

    .line 125
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 127
    invoke-interface {p0, p1, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startMinimizedModeTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 129
    goto :goto_1

    .line 132
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 135
    goto :goto_1

    .line 138
    :cond_4
    const-string p0, "minimizeTask taskInfo is null"

    .line 139
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_1
    return-void
    .line 144
.end method

.method public openWindowFromFullscreen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;ILandroid/app/PendingIntent;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq p2, v1, :cond_0

    .line 10
    invoke-virtual {p1, v0, p2, v3, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1, v0, p3, v3, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropIntentToSoSc(Landroid/window/WindowContainerTransaction;Landroid/app/PendingIntent;II)V

    .line 16
    :goto_0
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 19
    if-eqz p1, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 23
    invoke-interface {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startOpenWindowFromFullscreenTransition(Landroid/window/WindowContainerTransaction;)V

    .line 25
    goto :goto_1

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 31
    :goto_1
    return-void
    .line 34
.end method

.method public openWindowFromSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;ILandroid/app/PendingIntent;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq p2, v1, :cond_0

    .line 9
    invoke-virtual {p1, v0, p2, p4, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, v0, p3, p4, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropIntentToSoSc(Landroid/window/WindowContainerTransaction;Landroid/app/PendingIntent;II)V

    .line 15
    :goto_0
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 18
    if-eqz p1, :cond_1

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 22
    invoke-interface {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startOpenWindowFromSingleOpenTransition(Landroid/window/WindowContainerTransaction;)V

    .line 24
    goto :goto_1

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 30
    :goto_1
    return-void
    .line 33
.end method

.method public requestFocus(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 9
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 11
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 14
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method

.method public requestSplitFocus(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->stageInfo(I)Ljava/util/List;

    .line 11
    move-result-object p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    const-string p0, "MiuiTaskOperations"

    .line 17
    const-string/jumbo p1, "stageInfo is null when request split focus!"

    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 25
    :cond_1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 26
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 28
    const/4 v1, 0x0

    .line 31
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 35
    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 38
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, p2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 41
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 44
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction;->requestTaskFocus(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 51
    :cond_2
    :goto_0
    return-void
    .line 54
.end method

.method public startFreeformFillSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 12
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    const/16 v2, 0xa

    .line 17
    invoke-virtual {p1, v0, v1, p3, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 19
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 22
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {p1, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 29
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 34
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 37
    if-eqz p1, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 41
    invoke-interface {p0, p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startFreeformFillSplit(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/WindowContainerTransaction;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 53
    const-string/jumbo p1, "startFreeformFillSplit taskInfo is null"

    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-void
    .line 61
.end method

.method public startFreeformReplaceSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    if-eqz p3, :cond_1

    .line 4
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 6
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 8
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 14
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 17
    const/16 v2, 0xa

    .line 19
    invoke-virtual {p1, v0, v1, p4, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 21
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 24
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    invoke-virtual {p1, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 31
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 36
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 39
    if-eqz p1, :cond_0

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 43
    invoke-interface {p0, p2, p3, p4, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startFreeformReplaceSplit(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/WindowContainerTransaction;)V

    .line 45
    goto :goto_1

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 51
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo p1, "startFreeformReplaceSplit"

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    const-string p1, ""

    .line 63
    if-nez p2, :cond_2

    .line 65
    const-string p2, " taskInfo is null"

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    move-object p2, p1

    .line 70
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    if-nez p3, :cond_3

    .line 74
    const-string p1, " goingReplacedTaskInfo is null"

    .line 76
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    const-string p1, "MiuiTaskOperations"

    .line 85
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_1
    return-void
    .line 90
.end method

.method public startFreeformSqueeSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    if-eqz p3, :cond_1

    .line 4
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 6
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 8
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 14
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 17
    const/16 v2, 0xa

    .line 19
    invoke-virtual {p1, v0, v1, p4, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 21
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 24
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 26
    const/high16 p4, 0x3f800000    # 1.0f

    .line 29
    invoke-virtual {p1, p4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 31
    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 34
    invoke-virtual {v0, p4, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 36
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 39
    if-eqz p1, :cond_0

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 43
    invoke-interface {p0, p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startFreeformSqueeSplit(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 45
    goto :goto_1

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 51
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo p1, "startFreeformSqueeSplit"

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    const-string p1, ""

    .line 63
    if-nez p2, :cond_2

    .line 65
    const-string p2, " taskInfo is null"

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    move-object p2, p1

    .line 70
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    if-nez p3, :cond_3

    .line 74
    const-string p1, " singleOpenTaskInfo is null"

    .line 76
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    const-string p1, "MiuiTaskOperations"

    .line 85
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_1
    return-void
    .line 90
.end method

.method public swapSingle(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->swapSplitTasks(Landroid/window/WindowContainerTransaction;Z)V

    .line 10
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 17
    invoke-interface {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->swapSingle(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 29
    const-string/jumbo p1, "swapSingle operateStageInfo is null"

    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void
    .line 37
.end method

.method public swapSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    if-eqz p3, :cond_1

    .line 4
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 6
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 8
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->swapSplitTasks(Landroid/window/WindowContainerTransaction;Z)V

    .line 12
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 15
    if-eqz p1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 19
    invoke-interface {p0, v0, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->swapSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 21
    goto :goto_1

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 27
    goto :goto_1

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    const-string/jumbo p1, "swapSplit"

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    const-string p1, ""

    .line 39
    if-nez p2, :cond_2

    .line 41
    const-string p2, " operateStageInfo is null"

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    move-object p2, p1

    .line 46
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    if-nez p3, :cond_3

    .line 50
    const-string p1, " otherStageInfo is null"

    .line 52
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    const-string p1, "MiuiTaskOperations"

    .line 61
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_1
    return-void
    .line 66
.end method

.method public switchFreeformToFullscreen(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 12
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 15
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 18
    new-instance v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 21
    invoke-direct {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 23
    const/high16 v4, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {v1, v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 28
    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 31
    invoke-virtual {v0, v4, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 33
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 36
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v0, v1, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 39
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 42
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 54
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 56
    :goto_0
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 59
    if-eqz v1, :cond_1

    .line 61
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 63
    invoke-interface {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startFreeformToFullTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 65
    goto :goto_1

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 71
    goto :goto_1

    .line 74
    :cond_2
    const-string p0, "MiuiTaskOperations"

    .line 75
    const-string/jumbo p1, "switchFreeformToFullscreen taskInfo is null"

    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_1
    return-void
    .line 83
.end method

.method public switchFreeformToSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 12
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    const/16 v2, 0xa

    .line 17
    invoke-virtual {p1, v0, v1, p3, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 19
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 22
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 24
    const/high16 p3, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {p1, p3}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 29
    iget-object p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 32
    invoke-virtual {v0, p3, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 34
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 37
    if-eqz p1, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 41
    invoke-interface {p0, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startFreeformToSingleOpenTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 53
    const-string/jumbo p1, "switchFreeformToSingleOpen taskInfo is null"

    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-void
    .line 61
.end method

.method public switchFreeformToSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 12
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    const/16 v2, 0xa

    .line 17
    invoke-virtual {p1, v0, v1, p4, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 19
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 22
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 24
    const/high16 p4, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {p1, p4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 29
    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 32
    invoke-virtual {v0, p4, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 34
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 37
    if-eqz p1, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 41
    invoke-interface {p0, p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startFreeformToSplitTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 53
    const-string/jumbo p1, "switchFreeformToSplit taskInfo is null"

    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-void
    .line 61
.end method

.method public switchFreeformToSplitUnsupported(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 12
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    invoke-virtual {p1, v0, v1, p4, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 17
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 20
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 22
    const/high16 p4, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {p1, p4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 27
    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 30
    invoke-virtual {v0, p4, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 32
    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 35
    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 37
    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 40
    const/4 p4, 0x0

    .line 42
    invoke-virtual {v0, p1, p4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 43
    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 46
    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 48
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 51
    if-eqz p1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 55
    invoke-interface {p0, p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->switchFreeformToSplitUnsupportedTrans(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 67
    const-string/jumbo p1, "switchFreeformToSplitUnsupported taskInfo is null"

    .line 69
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void
    .line 75
.end method

.method public switchFullToSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    const/16 v2, 0xa

    .line 11
    invoke-virtual {p1, v0, v1, p3, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 13
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 20
    invoke-interface {p0, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startFullToSplitTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 32
    const-string/jumbo p1, "switchFullToSingleOpen taskInfo is null"

    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void
    .line 40
.end method

.method public switchFullscreenToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-eqz p2, :cond_1

    .line 4
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 6
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 8
    invoke-static {v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->buildHomeToFrontWCT(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    .line 11
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 14
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p2, v1}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 17
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 20
    invoke-virtual {v0, p2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 22
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    const/4 v1, 0x5

    .line 27
    invoke-virtual {v0, p2, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 28
    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 31
    if-eqz p2, :cond_0

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 35
    invoke-interface {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startFullToFreeformTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 47
    const-string/jumbo p1, "switchFullscreenToFreeform taskInfo is null"

    .line 49
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void
    .line 55
.end method

.method public switchSingleOpenToDesktop(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/List;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    const/4 v1, -0x1

    .line 7
    if-eqz p5, :cond_0

    .line 8
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->exitSoSc(I)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget p5, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 14
    invoke-virtual {p1, v0, p5, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 16
    :goto_0
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 19
    const/4 p5, 0x1

    .line 21
    invoke-virtual {v0, p1, p5}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 22
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    invoke-virtual {v0, p1, p5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 27
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 30
    const/4 v1, 0x5

    .line 32
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 33
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 36
    move-result p1

    .line 39
    if-lez p1, :cond_1

    .line 40
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p1

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result p4

    .line 49
    if-eqz p4, :cond_1

    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object p4

    .line 55
    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 56
    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 58
    invoke-virtual {v0, p4, p5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 60
    goto :goto_1

    .line 63
    :cond_1
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 64
    if-eqz p1, :cond_2

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 68
    invoke-interface {p0, p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startSingleOpenToDesktopTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;)V

    .line 70
    goto :goto_2

    .line 73
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 76
    :goto_2
    return-void
    .line 79
.end method

.method public switchSingleOpenToFreeform(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 12
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 18
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 23
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 26
    const/4 v1, 0x5

    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 29
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 32
    if-eqz p1, :cond_0

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 36
    invoke-interface {p0, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startSingleOpenToFreeformTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 48
    const-string/jumbo p1, "switchSplitToFullscreen taskInfo is null"

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void
    .line 56
.end method

.method public switchSingleOpenToFullscreen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 12
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 18
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 21
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 23
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {p1, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 28
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 33
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 36
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 39
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 42
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 45
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 48
    if-eqz p1, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 52
    invoke-interface {p0, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startSingleOpenToFullTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 54
    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 64
    const-string/jumbo p1, "switchSingleOpenToFullscreen taskInfo is null"

    .line 66
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void
    .line 72
.end method

.method public switchSplitToDesktop(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/List;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    const/4 v1, -0x1

    .line 7
    if-eqz p6, :cond_0

    .line 8
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->exitSoSc(I)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget p6, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 14
    invoke-virtual {p1, v0, p6, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 16
    :goto_0
    iget-object p1, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 19
    const/4 p6, 0x1

    .line 21
    invoke-virtual {v0, p1, p6}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 22
    iget-object p1, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    invoke-virtual {v0, p1, p6}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 27
    iget-object p1, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 30
    const/4 v1, 0x5

    .line 32
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 33
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 36
    invoke-virtual {v0, p1, p6}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 38
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 41
    invoke-virtual {v0, p1, p6}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 43
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 46
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 48
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 51
    move-result p1

    .line 54
    if-lez p1, :cond_1

    .line 55
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p1

    .line 60
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result p5

    .line 64
    if-eqz p5, :cond_1

    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object p5

    .line 70
    check-cast p5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    iget-object p5, p5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 73
    invoke-virtual {v0, p5, p6}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 75
    goto :goto_1

    .line 78
    :cond_1
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 79
    if-eqz p1, :cond_2

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 83
    invoke-interface {p0, p2, p3, p4, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startSplitToDesktopTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 85
    goto :goto_2

    .line 88
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 91
    :goto_2
    return-void
    .line 94
.end method

.method public switchSplitToFreeform(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    .line 1
    const-string v0, "MiuiTaskOperations"

    .line 2
    if-eqz p2, :cond_6

    .line 4
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 20
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-nez v1, :cond_2

    .line 35
    const-string/jumbo p0, "switchSplitToFreeform otherSideTaskInfo is null"

    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 43
    :cond_2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 44
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 46
    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 49
    invoke-virtual {v0, v3, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 51
    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 54
    invoke-virtual {v0, v3, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 56
    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 59
    const/4 v8, 0x5

    .line 61
    invoke-virtual {v0, v3, v8}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 62
    iget v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 65
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getStageOfTask(I)I

    .line 67
    move-result v3

    .line 70
    if-nez v3, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getMainStageRoot()Landroid/window/WindowContainerToken;

    .line 73
    move-result-object v3

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x1

    .line 80
    move-object v2, v0

    .line 81
    invoke-virtual/range {v2 .. v7}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    .line 82
    goto :goto_1

    .line 85
    :cond_3
    iget v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 86
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getStageOfTask(I)I

    .line 88
    move-result v3

    .line 91
    if-ne v3, v2, :cond_4

    .line 92
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSideStageRoot()Landroid/window/WindowContainerToken;

    .line 94
    move-result-object v3

    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v7, 0x1

    .line 101
    move-object v2, v0

    .line 102
    invoke-virtual/range {v2 .. v7}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    .line 103
    :cond_4
    :goto_1
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 106
    invoke-virtual {p1, v0, v2, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 108
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 111
    if-eqz p1, :cond_5

    .line 113
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 115
    invoke-interface {p0, p2, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startSplitToFreeformTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 117
    goto :goto_2

    .line 120
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 123
    goto :goto_2

    .line 126
    :cond_6
    const-string/jumbo p0, "switchSplitToFreeform taskInfo is null"

    .line 127
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_2
    return-void
    .line 133
.end method

.method public switchSplitToFullscreen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 6
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    const/4 v2, 0x4

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 12
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 15
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    invoke-virtual {p1, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 22
    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 27
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 30
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 33
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 36
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 39
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 42
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 45
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 48
    if-eqz p1, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mTransitionStarter:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;

    .line 52
    invoke-interface {p0, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;->startSplitToFullTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 54
    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    const-string p0, "MiuiTaskOperations"

    .line 64
    const-string/jumbo p1, "switchSplitToFullscreen taskInfo is null"

    .line 66
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void
    .line 72
.end method
