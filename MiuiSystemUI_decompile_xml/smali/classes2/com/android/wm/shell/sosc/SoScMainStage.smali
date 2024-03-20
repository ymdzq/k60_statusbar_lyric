.class Lcom/android/wm/shell/sosc/SoScMainStage;
.super Lcom/android/wm/shell/sosc/SoScStageTaskListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/sosc/SoScStageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public activate()V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    return-void
.end method

.method public activate(Landroid/window/WindowContainerTransaction;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->reparentTopTask(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    return-void
.end method

.method public deactivate(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/sosc/SoScMainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public deactivate(Landroid/window/WindowContainerTransaction;Z)V
    .locals 6

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v5, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public isActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScMainStage;->mIsActive:Z

    .line 2
    return p0
    .line 4
.end method

.method public bridge synthetic onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 14
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v0, p1

    .line 19
    move v5, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    .line 21
    const/4 p0, 0x1

    .line 24
    return p0
    .line 25
.end method

.method public removeTask(ILandroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    return p1

    .line 13
    :cond_0
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 14
    invoke-virtual {p3, p0, p2, p1}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 16
    const/4 p0, 0x1

    .line 19
    return p0
    .line 20
.end method

.method public bridge synthetic supportCompatUI()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
