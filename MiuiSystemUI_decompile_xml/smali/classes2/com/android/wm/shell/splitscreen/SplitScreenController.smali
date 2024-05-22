.class public Lcom/android/wm/shell/splitscreen/SplitScreenController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$SplitScreenListener;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;


# instance fields
.field public final mAppsSupportMultiInstances:[Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mDragAndDropController:Ljava/util/Optional;

.field public mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

.field public final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field public final mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mRecentTasksOptional:Ljava/util/Optional;

.field public final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

.field mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .locals 5

    move-object v0, p0

    move-object v1, p5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    move-object v2, p3

    .line 27
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v2, p4

    .line 28
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 29
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v2, p6

    .line 30
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v2, p1

    .line 31
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    move-object v3, p7

    .line 32
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object/from16 v3, p16

    .line 33
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v3, p8

    .line 34
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v3, p9

    .line 35
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v3, p10

    .line 36
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 37
    invoke-static/range {p11 .. p11}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDragAndDropController:Ljava/util/Optional;

    move-object/from16 v3, p12

    .line 38
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v3, p13

    .line 39
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v3, p14

    .line 40
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 41
    invoke-static/range {p15 .. p15}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    move-object/from16 v3, p17

    .line 42
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 43
    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    .line 44
    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;-><init>(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    move-object v4, p2

    invoke-virtual {p2, p0, v3}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030040    # @array/config_appsSupportMultiInstancesSplit

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mAppsSupportMultiInstances:[Ljava/lang/String;

    .line 47
    iget-object v1, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mSplitScreenListener:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 5

    move-object v0, p0

    move-object v1, p5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    move-object v2, p3

    .line 3
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v2, p4

    .line 4
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 5
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v2, p6

    .line 6
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v2, p1

    .line 7
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    move-object v3, p7

    .line 8
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object/from16 v3, p16

    .line 9
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v3, p8

    .line 10
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v3, p9

    .line 11
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v3, p10

    .line 12
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object/from16 v3, p11

    .line 13
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDragAndDropController:Ljava/util/Optional;

    move-object/from16 v3, p12

    .line 14
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v3, p13

    .line 15
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v3, p14

    .line 16
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    move-object/from16 v3, p15

    .line 17
    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 18
    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    .line 19
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;-><init>(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    move-object v4, p2

    invoke-virtual {p2, p0, v3}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030040    # @array/config_appsSupportMultiInstancesSplit

    .line 22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mAppsSupportMultiInstances:[Ljava/lang/String;

    .line 23
    iget-object v1, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mSplitScreenListener:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static exitReasonToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    const-string/jumbo v0, "unknown reason, reason int = "

    .line 5
    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :pswitch_0
    const-string p0, "RECREATE_SPLIT"

    .line 13
    return-object p0

    .line 15
    :pswitch_1
    const-string p0, "CHILD_TASK_ENTER_PIP"

    .line 16
    return-object p0

    .line 18
    :pswitch_2
    const-string p0, "SCREEN_LOCKED_SHOW_ON_TOP"

    .line 19
    return-object p0

    .line 21
    :pswitch_3
    const-string p0, "SCREEN_LOCKED"

    .line 22
    return-object p0

    .line 24
    :pswitch_4
    const-string p0, "ROOT_TASK_VANISHED"

    .line 25
    return-object p0

    .line 27
    :pswitch_5
    const-string p0, "RETURN_HOME"

    .line 28
    return-object p0

    .line 30
    :pswitch_6
    const-string p0, "DRAG_DIVIDER"

    .line 31
    return-object p0

    .line 33
    :pswitch_7
    const-string p0, "DEVICE_FOLDED"

    .line 34
    return-object p0

    .line 36
    :pswitch_8
    const-string p0, "APP_FINISHED"

    .line 37
    return-object p0

    .line 39
    :pswitch_9
    const-string p0, "APP_DOES_NOT_SUPPORT_MULTIWINDOW"

    .line 40
    return-object p0

    .line 42
    :pswitch_a
    const-string p0, "UNKNOWN_EXIT"

    .line 43
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 46
.end method


# virtual methods
.method public createStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .locals 13

    .line 1
    new-instance v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 8
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 10
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 12
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 14
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 16
    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 18
    iget-object v9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 20
    iget-object v10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 22
    iget-object v11, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 24
    move-object v0, v12

    .line 26
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V

    .line 27
    return-object v12
    .line 30
.end method

.method public final enterSplitScreenForMiui(IZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 19
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 21
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    if-eqz p2, :cond_1

    .line 27
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 29
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 31
    move-result p2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 36
    iget p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    if-eqz p2, :cond_3

    .line 41
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 43
    iget p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 45
    goto :goto_0

    .line 47
    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 48
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 50
    move-result p2

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    move-result-wide v1

    .line 59
    iput-wide v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPairTime:J

    .line 60
    new-instance v0, Landroid/os/Bundle;

    .line 62
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    .line 67
    goto :goto_1

    .line 70
    :cond_4
    xor-int/lit8 p2, p2, 0x1

    .line 71
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 73
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 75
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveToStage(IILandroid/window/WindowContainerTransaction;)V

    .line 78
    :goto_1
    return-void
    .line 81
.end method

.method public final exitSplitScreen(I)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen(II)V

    return-void
.end method

.method public final exitSplitScreen(II)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    :goto_2
    return-void
.end method

.method public final finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 4
    return-void
    .line 7
.end method

.method public final flingDividerToDismiss(ZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final getActivateSplitPosition(Landroid/app/TaskInfo;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPackageName(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isValidToSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 32
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    return-object v1

    .line 38
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 39
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 41
    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    :cond_2
    return-object v1
    .line 47
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    return-object p0
    .line 6
.end method

.method public final getSplitPosition(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 6
    move-result v0

    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 15
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 17
    move-result v0

    .line 20
    if-ne v0, p1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 23
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, -0x1

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public final getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    return-void
    .line 22
.end method

.method public final getStageOfTask(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, -0x1

    .line 24
    :goto_0
    return p0
    .line 25
.end method

.method public final getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    const/4 v0, -0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    goto :goto_2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 12
    if-ne p1, v0, :cond_1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    goto :goto_1

    .line 19
    :cond_1
    iget v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 20
    if-ne v0, p1, :cond_2

    .line 22
    iget-object p1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 24
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 26
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object p1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 31
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 33
    move-result p1

    .line 36
    :goto_0
    move v0, p1

    .line 37
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 45
    return-object p0
    .line 46
.end method

.method public final getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getUserId(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;

    .line 14
    const/4 v0, 0x1

    .line 16
    invoke-direct {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 22
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isValidToSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 33
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    return v1

    .line 39
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 40
    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 42
    :cond_2
    return v1
    .line 44
.end method

.method public final isLaunchToSplit(Landroid/app/TaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    .line 4
    move-result p0

    .line 7
    const/4 p1, -0x1

    .line 8
    if-eq p0, p1, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public final isMiuiSplitActive()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 4
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final isSplitScreenVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isTaskInSplitScreen(I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    move p0, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 19
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    move p0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move p0, v2

    .line 27
    :goto_0
    if-eq p0, v2, :cond_2

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    move v1, v3

    .line 31
    :goto_1
    return v1
.end method

.method public final isTaskRootOrStageRoot(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isRootOrStageRoot(I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final moveTaskToFullscreen(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 13
    if-nez p1, :cond_1

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 26
    if-ne p1, v1, :cond_1

    .line 28
    :goto_0
    move p1, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 33
    xor-int/2addr p1, v1

    .line 35
    const/16 v0, 0xb

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    .line 38
    :cond_2
    return-void
    .line 41
.end method

.method public final moveToStage(IILandroid/window/WindowContainerTransaction;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen(I)Z

    .line 10
    move-result v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 16
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 18
    const/4 v1, 0x1

    .line 20
    xor-int/2addr p1, v1

    .line 21
    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 22
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 25
    if-eqz p1, :cond_1

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 29
    const/4 v3, 0x3

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 33
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    const/16 p1, 0x3ed

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    const/16 p1, 0x3ec

    .line 42
    :goto_0
    move v7, p1

    .line 44
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 45
    xor-int/lit8 v8, p1, 0x1

    .line 47
    move-object v4, p3

    .line 49
    move-object v6, p0

    .line 50
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 51
    goto :goto_1

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 55
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 57
    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    .line 60
    invoke-direct {p2, v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 62
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 65
    :goto_1
    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 69
    return-void

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    const-string/jumbo p2, "taskId is in split"

    .line 74
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p0

    .line 84
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 85
    const-string p2, "Unknown taskId"

    .line 87
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0
    .line 96
.end method

.method public final onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 19
    if-nez v0, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 23
    const/16 v1, 0xa

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 29
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mDragEnterPosition:I

    .line 31
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 33
    const/4 p1, 0x2

    .line 35
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 36
    return-void
    .line 38
.end method

.method public onInit()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 7
    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 9
    const-string/jumbo v0, "splitscreen"

    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    .line 15
    invoke-virtual {v1, v0, v2, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    .line 22
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda1;

    .line 25
    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    .line 27
    const-string v2, "extra_shell_split_screen"

    .line 30
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 35
    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 39
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 43
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 45
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->initAndInjectDependencies(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->createStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 54
    :cond_0
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;

    .line 56
    const/4 v1, 0x0

    .line 58
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDragAndDropController:Ljava/util/Optional;

    .line 62
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 64
    return-void
    .line 67
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    .line 4
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    iget-boolean p2, p2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 8
    if-nez p2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 13
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method public final prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 5
    return-void
    .line 8
.end method

.method public final prepareExitSplitScreen(Landroid/window/WindowContainerTransaction;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 4
    return-void
    .line 7
.end method

.method public final removeFromSideStage(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 7
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 12
    iget-boolean v2, v1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 14
    if-eqz v2, :cond_0

    .line 16
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 24
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 31
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    const/4 v2, 0x0

    .line 34
    if-nez p1, :cond_1

    .line 35
    goto :goto_1

    .line 37
    :cond_1
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 38
    invoke-virtual {v0, p1, v1, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 40
    const/4 v2, 0x1

    .line 43
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 44
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 46
    return v2
    .line 49
.end method

.method public final reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 2
    new-instance v1, Landroid/view/SurfaceSession;

    .line 4
    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    .line 6
    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 9
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "RecentsAnimationSplitTasks"

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 18
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 27
    move-result-object p3

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 31
    invoke-virtual {p0, v1, p3}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    .line 33
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 36
    move-result-object p0

    .line 39
    :goto_0
    array-length p3, p1

    .line 40
    if-ge v1, p3, :cond_0

    .line 41
    aget-object p3, p1, v1

    .line 43
    iget-object v0, p3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 45
    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 47
    iget-object v0, p3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 50
    iget-object p3, p3, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 52
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 54
    int-to-float v2, v2

    .line 56
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 57
    int-to-float p3, p3

    .line 59
    invoke-virtual {p2, v0, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_0

    .line 65
    :cond_0
    return-object p0
    .line 66
.end method

.method public final startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 7

    .line 1
    if-nez p3, :cond_0

    .line 2
    new-instance p3, Landroid/content/Intent;

    .line 4
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 6
    :cond_0
    const/high16 v0, 0x40000

    .line 9
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 18
    move-result v1

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getPackageName(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 26
    move-result v2

    .line 29
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getUserId(I)I

    .line 30
    move-result v2

    .line 33
    invoke-static {v0, p2, v2, v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 34
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v1, :cond_6

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;

    .line 48
    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;-><init>(Landroid/app/PendingIntent;I)V

    .line 50
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 53
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 55
    move-result-object p2

    .line 58
    invoke-virtual {p2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 62
    check-cast p2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 63
    if-eqz p2, :cond_2

    .line 65
    iget p1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 67
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    .line 69
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 72
    if-eqz p0, :cond_1

    .line 74
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 76
    const p1, -0x16a2b80c

    .line 78
    const-string p2, "Start task in background"

    .line 81
    invoke-static {p0, p1, v2, p2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_1
    return-void

    .line 86
    :cond_2
    const/high16 p2, 0x8000000

    .line 87
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 92
    if-eqz p2, :cond_6

    .line 94
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 96
    const v0, 0x5e7bb0dd

    .line 98
    const-string v1, "Adding MULTIPLE_TASK"

    .line 101
    invoke-static {p2, v0, v2, v1, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 107
    move-result p1

    .line 110
    if-eqz p1, :cond_4

    .line 111
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 113
    const-string/jumbo p1, "startIntent"

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->switchSplitPosition(Ljava/lang/String;)V

    .line 118
    return-void

    .line 121
    :cond_4
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 122
    if-eqz p1, :cond_5

    .line 124
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 126
    const p2, 0x2f294008

    .line 128
    const-string p3, "Cancel entering split as not supporting multi-instances"

    .line 131
    invoke-static {p1, p2, v2, p3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 136
    const p1, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 138
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 141
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 145
    return-void

    .line 148
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 149
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    new-instance p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 154
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 156
    move-result-object p2

    .line 159
    invoke-direct {p0, p2, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Landroid/content/Intent;I)V

    .line 160
    iput-object p0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 163
    sget-boolean p0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 165
    const/4 p2, 0x1

    .line 167
    const/4 v0, -0x1

    .line 168
    if-nez p0, :cond_9

    .line 169
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    .line 171
    move-result p0

    .line 174
    xor-int/2addr p0, p2

    .line 175
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;

    .line 176
    invoke-direct {v1, v4, p0, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V

    .line 178
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 181
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 183
    invoke-virtual {v4, v0, p4, p5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 186
    move-result-object p4

    .line 189
    if-eqz p0, :cond_8

    .line 190
    iget-object p0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 192
    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 194
    const/4 p5, 0x2

    .line 196
    if-ne p0, p5, :cond_7

    .line 197
    move v2, p2

    .line 199
    :cond_7
    if-eqz v2, :cond_8

    .line 200
    iget-object p0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 202
    invoke-virtual {v4, p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    .line 204
    :cond_8
    invoke-virtual {v3, p1, p3, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 207
    iget-object p0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 210
    invoke-virtual {p0, v1, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/WindowContainerTransaction;)V

    .line 212
    goto :goto_2

    .line 215
    :cond_9
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 216
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 218
    invoke-virtual {v4, v0, p4, p5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 221
    move-result-object p5

    .line 224
    invoke-virtual {p0, p1, p3, p5}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 225
    iget-object p3, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 228
    if-eqz p3, :cond_b

    .line 230
    iget-object p3, p3, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 232
    if-eqz p3, :cond_a

    .line 234
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 236
    move-result-object p1

    .line 239
    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 243
    iget-object p3, p3, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 244
    iget-object p3, p3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 246
    if-eqz p1, :cond_a

    .line 248
    if-eqz p3, :cond_a

    .line 250
    iget-object p3, p3, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 252
    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 254
    move-result-object p3

    .line 257
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result p1

    .line 261
    if-eqz p1, :cond_a

    .line 262
    move v2, p2

    .line 264
    :cond_a
    if-eqz v2, :cond_b

    .line 265
    iget-object p1, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 267
    invoke-virtual {p1, p0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 269
    goto :goto_2

    .line 272
    :cond_b
    iget-object p1, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 273
    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 275
    if-eqz p1, :cond_c

    .line 277
    const/16 p1, 0x3ed

    .line 279
    goto :goto_1

    .line 281
    :cond_c
    const/16 p1, 0x3ec

    .line 282
    :goto_1
    move v5, p1

    .line 284
    iget-boolean p1, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 285
    xor-int/2addr p1, p2

    .line 287
    invoke-virtual {v4, p0, v3, p4, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 288
    iget-object v0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 291
    const/4 v1, 0x3

    .line 293
    const/4 v3, 0x0

    .line 294
    iget-boolean p1, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 295
    xor-int/lit8 v6, p1, 0x1

    .line 297
    move-object v2, p0

    .line 299
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 300
    :goto_2
    return-void
    .line 303
.end method

.method public final startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 9

    .line 1
    if-nez p4, :cond_0

    .line 2
    new-instance p4, Landroid/os/Bundle;

    .line 4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 6
    :cond_0
    invoke-static {p4}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 9
    move-result-object p4

    .line 12
    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getPackageName(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 21
    move-result v1

    .line 24
    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 25
    move-result v2

    .line 28
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getUserId(I)I

    .line 29
    move-result v2

    .line 32
    invoke-static {p1, v1, v2, v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 33
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 41
    move-result v0

    .line 44
    const/4 v3, 0x0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p4, v1}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    .line 48
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 51
    if-eqz v0, :cond_4

    .line 53
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 55
    const v4, 0x5e7bb0dd

    .line 57
    const-string v5, "Adding MULTIPLE_TASK"

    .line 60
    invoke-static {v0, v4, v3, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 66
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 72
    const-string/jumbo p1, "startShortcut"

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->switchSplitPosition(Ljava/lang/String;)V

    .line 77
    return-void

    .line 80
    :cond_2
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 81
    if-eqz p1, :cond_3

    .line 83
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 85
    const p2, 0x2f294008

    .line 87
    const-string p3, "Cancel entering split as not supporting multi-instances"

    .line 90
    invoke-static {p1, p2, v3, p3, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 95
    const p1, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 97
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 100
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 104
    return-void

    .line 107
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 108
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 110
    move-result-object p4

    .line 113
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    .line 114
    move-result v0

    .line 117
    xor-int/2addr v0, v1

    .line 118
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;

    .line 119
    invoke-direct {v4, p0, v0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V

    .line 121
    const/4 v0, -0x1

    .line 124
    invoke-virtual {p0, v0, p3, p4, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 125
    move-result-object p3

    .line 128
    new-instance p4, Landroid/view/RemoteAnimationAdapter;

    .line 129
    const-wide/16 v5, 0x0

    .line 131
    const-wide/16 v7, 0x0

    .line 133
    move-object v3, p4

    .line 135
    invoke-direct/range {v3 .. v8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 136
    invoke-static {p3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 139
    move-result-object p3

    .line 142
    invoke-virtual {p3, v1}, Landroid/app/ActivityOptions;->setApplyNoUserActionFlagForShortcut(Z)V

    .line 143
    invoke-static {p4}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    .line 146
    move-result-object p4

    .line 149
    invoke-virtual {p3, p4}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 150
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 153
    const-class p4, Landroid/content/pm/LauncherApps;

    .line 155
    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    move-result-object p0

    .line 160
    move-object v0, p0

    .line 161
    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 162
    const/4 v3, 0x0

    .line 164
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 165
    move-result-object v4

    .line 168
    move-object v1, p1

    .line 169
    move-object v2, p2

    .line 170
    move-object v5, p5

    .line 171
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_1

    .line 175
    :catch_0
    move-exception p0

    .line 176
    const-string p1, "StageCoordinator"

    .line 177
    const-string p2, "Failed to launch shortcut"

    .line 179
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :goto_1
    return-void
    .line 184
.end method

.method public final startTask(IILandroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;

    .line 5
    invoke-direct {v2, p0, v0, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;[II)V

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 10
    const/4 v1, -0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v1, p2, p3, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 14
    move-result-object p0

    .line 17
    new-instance p2, Landroid/view/RemoteAnimationAdapter;

    .line 18
    const-wide/16 v3, 0x0

    .line 20
    const-wide/16 v5, 0x0

    .line 22
    move-object v1, p2

    .line 24
    invoke-direct/range {v1 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 25
    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {p2}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    .line 32
    move-result-object p2

    .line 35
    invoke-virtual {p0, p2}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 36
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 39
    move-result-object p2

    .line 42
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 43
    move-result-object p0

    .line 46
    invoke-interface {p2, p1, p0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 47
    move-result p0

    .line 50
    const/4 p1, 0x0

    .line 51
    aput p0, v0, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string p1, "SplitScreenController"

    .line 56
    const-string p2, "Failed to launch task"

    .line 58
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_0
    return-void
    .line 63
.end method

.method public final startTasksForSystem(II)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 13
    if-eqz v0, :cond_f

    .line 15
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 17
    move-result-object v0

    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 38
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 48
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 49
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 51
    move-result v3

    .line 54
    if-eq v3, v1, :cond_2

    .line 55
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 57
    move-result v3

    .line 60
    const/4 v4, 0x2

    .line 61
    if-eq v3, v4, :cond_2

    .line 62
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 64
    move-result v3

    .line 67
    const/4 v4, 0x6

    .line 68
    if-eq v3, v4, :cond_2

    .line 69
    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 71
    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 75
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 77
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isRootOrStageRoot(I)Z

    .line 79
    move-result v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 86
    :cond_4
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x1

    .line 88
    if-eqz v2, :cond_9

    .line 89
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 91
    if-ne v2, p1, :cond_5

    .line 93
    move v3, v1

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    move v3, v0

    .line 97
    :goto_2
    if-ne v2, p2, :cond_6

    .line 98
    move v2, v1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move v2, v0

    .line 102
    :goto_3
    if-nez v3, :cond_7

    .line 103
    if-eqz v2, :cond_9

    .line 105
    :cond_7
    if-eqz v3, :cond_8

    .line 107
    move p1, p2

    .line 109
    :cond_8
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 110
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 112
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveToStage(IILandroid/window/WindowContainerTransaction;)V

    .line 115
    return-void

    .line 118
    :cond_9
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 119
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    const/4 p0, -0x1

    .line 124
    if-eq p1, p0, :cond_f

    .line 125
    if-ne p2, p0, :cond_a

    .line 127
    goto :goto_6

    .line 129
    :cond_a
    new-instance v4, Landroid/window/WindowContainerTransaction;

    .line 130
    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 132
    invoke-virtual {v6, v1, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 135
    iget-object p0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 138
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 140
    move-result-object v2

    .line 143
    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 144
    if-nez v2, :cond_b

    .line 146
    new-instance v2, Landroid/os/Bundle;

    .line 148
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 150
    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 153
    invoke-virtual {v4, p2, v2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 156
    goto :goto_4

    .line 159
    :cond_b
    invoke-virtual {v3, v2, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 160
    :goto_4
    iget-object p2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 163
    iget-boolean v2, p2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 165
    if-nez v2, :cond_c

    .line 167
    invoke-virtual {p2, v4, v0}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 169
    :cond_c
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 172
    const/high16 v3, 0x3f000000    # 0.5f

    .line 174
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    .line 176
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 179
    invoke-virtual {v6, v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    .line 181
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 184
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 186
    invoke-virtual {v4, v2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 188
    invoke-virtual {v6, v4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 194
    move-result-object p0

    .line 197
    if-nez p0, :cond_d

    .line 198
    new-instance p0, Landroid/os/Bundle;

    .line 200
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 202
    invoke-static {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 205
    invoke-virtual {v4, p1, p0}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 208
    goto :goto_5

    .line 211
    :cond_d
    invoke-virtual {p2, p0, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 212
    :goto_5
    iget-object p0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 221
    move-result p1

    .line 224
    if-eqz p1, :cond_e

    .line 225
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 227
    :cond_e
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 230
    const/4 v3, 0x3

    .line 232
    const/4 v5, 0x0

    .line 233
    const/16 v7, 0x3ed

    .line 234
    const/4 v8, 0x0

    .line 236
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 237
    :cond_f
    :goto_6
    return-void
    .line 240
.end method

.method public supportMultiInstancesSplit(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mAppsSupportMultiInstances:[Ljava/lang/String;

    .line 6
    array-length v3, v2

    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    aget-object v2, v2, v1

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    return v0
    .line 24
.end method

.method public final swapSplitTasks()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->setSplitSwapingState()V

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 20
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 22
    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 24
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 29
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->clearSplitSwapingState()V

    .line 36
    return-void
    .line 39
.end method

.method public final updateSplitScreenSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 12
    return-void
    .line 15
.end method

.method public final updateTaskAdjacent(Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateTaskAdjacent(Landroid/window/WindowContainerTransaction;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
