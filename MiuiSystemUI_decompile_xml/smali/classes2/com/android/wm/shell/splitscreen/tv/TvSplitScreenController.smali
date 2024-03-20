.class public final Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;
.super Lcom/android/wm/shell/splitscreen/SplitScreenController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mRecentTasksOptional:Ljava/util/Optional;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/SystemWindows;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p16}, Lcom/android/wm/shell/splitscreen/SplitScreenController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 3
    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 7
    move-object v1, p6

    .line 9
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 10
    move-object v1, p1

    .line 12
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mContext:Landroid/content/Context;

    .line 13
    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 17
    move-object v1, p8

    .line 19
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 20
    move-object v1, p9

    .line 22
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 23
    move-object v1, p10

    .line 25
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 26
    move-object v1, p12

    .line 28
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 29
    move-object v1, p13

    .line 31
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 32
    move-object/from16 v1, p14

    .line 34
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 36
    move-object/from16 v1, p15

    .line 38
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 40
    move-object/from16 v1, p17

    .line 42
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mMainHandler:Landroid/os/Handler;

    .line 44
    move-object/from16 v1, p18

    .line 46
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 48
    return-void
    .line 50
.end method


# virtual methods
.method public final createStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .locals 15

    .line 1
    new-instance v14, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mContext:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 8
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 10
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 12
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 14
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 16
    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 18
    iget-object v9, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 20
    iget-object v10, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 22
    iget-object v11, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mMainHandler:Landroid/os/Handler;

    .line 24
    iget-object v12, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 26
    iget-object v13, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 28
    move-object v0, v14

    .line 30
    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Ljava/util/Optional;Lcom/android/wm/shell/common/SystemWindows;)V

    .line 31
    return-object v14
    .line 34
.end method
