.class public final Lcom/android/wm/shell/splitscreen/MainStage;
.super Lcom/android/wm/shell/splitscreen/StageTaskListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final activate(Landroid/window/WindowContainerTransaction;Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    const/4 v2, 0x0

    .line 9
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 12
    sget-object v4, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES:[I

    .line 14
    sget-object v5, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 16
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x1

    .line 19
    move-object v1, p1

    .line 20
    invoke-virtual/range {v1 .. v7}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    .line 21
    :cond_1
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 25
    return-void
    .line 27
.end method

.method public final deactivate(Landroid/window/WindowContainerTransaction;Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    if-nez p0, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 15
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v0, p1

    .line 20
    move v5, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    .line 22
    return-void
    .line 25
.end method
