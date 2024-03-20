.class public final Lcom/android/wm/shell/compatui/CompatUIController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;


# instance fields
.field public final mActiveCompatLayouts:Landroid/util/SparseArray;

.field public mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

.field public mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

.field public mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

.field public final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field public final mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

.field public final mCompatUIShellCommandHandler:Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayContextCache:Landroid/util/SparseArray;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mDisplaysWithIme:Ljava/util/Set;

.field public final mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

.field public final mImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public mKeyguardShowing:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mOnInsetsChangedListeners:Landroid/util/SparseArray;

.field public final mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

.field public final mTransitionsLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ldagger/Lazy;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    .line 21
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    .line 28
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    .line 35
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    .line 42
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 44
    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 51
    iput-object p4, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 53
    iput-object p5, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 55
    iput-object p6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 57
    iput-object p7, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 59
    iput-object p8, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 61
    iput-object p9, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTransitionsLazy:Ldagger/Lazy;

    .line 63
    new-instance p1, Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    .line 65
    invoke-direct {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    .line 70
    iput-object p10, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    .line 72
    iput-object p11, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 74
    iput-object p12, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIShellCommandHandler:Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    .line 76
    new-instance p1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda0;

    .line 78
    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;)V

    .line 80
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 83
    return-void
    .line 86
.end method


# virtual methods
.method public createCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/CompatUIWindowManager;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 2
    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 4
    iget-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 6
    iget v0, p2, Landroid/app/TaskInfo;->displayId:I

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 10
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 12
    move-result-object v6

    .line 15
    iget-object v7, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    .line 16
    new-instance v8, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;

    .line 18
    const/4 v0, 0x1

    .line 20
    invoke-direct {v8, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    .line 21
    move-object v0, v9

    .line 24
    move-object v1, p1

    .line 25
    move-object v2, p2

    .line 26
    move-object v5, p3

    .line 27
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;)V

    .line 28
    return-object v9
    .line 31
.end method

.method public createLetterboxEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;
    .locals 12

    .line 1
    new-instance v11, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 2
    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 4
    iget v0, p2, Landroid/app/TaskInfo;->displayId:I

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 10
    move-result-object v5

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTransitionsLazy:Ldagger/Lazy;

    .line 14
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    move-object v6, v0

    .line 20
    check-cast v6, Lcom/android/wm/shell/transition/Transitions;

    .line 21
    new-instance v7, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;

    .line 23
    const/4 v0, 0x0

    .line 25
    invoke-direct {v7, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    .line 26
    iget-object v9, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    .line 29
    iget-object v10, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 31
    new-instance v8, Lcom/android/wm/shell/compatui/DialogAnimationController;

    .line 33
    const-string p0, "LetterboxEduWindowManager"

    .line 35
    invoke-direct {v8, p1, p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    move-object v0, v11

    .line 40
    move-object v1, p1

    .line 41
    move-object v2, p2

    .line 42
    move-object v4, p3

    .line 43
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/DialogAnimationController;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    .line 44
    return-object v11
    .line 47
.end method

.method public final createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 13
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    .line 15
    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 21
    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    .line 23
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 25
    move-result v2

    .line 28
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    .line 29
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 35
    :cond_1
    return-void

    .line 37
    :cond_2
    :goto_0
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    return-void

    .line 46
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createReachabilityEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 47
    move-result-object p2

    .line 50
    iget p1, p1, Landroid/app/TaskInfo;->displayId:I

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 53
    move-result p1

    .line 56
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    .line 57
    move-result p1

    .line 60
    if-eqz p1, :cond_5

    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 63
    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    .line 67
    :cond_4
    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 70
    :cond_5
    return-void
    .line 72
.end method

.method public createReachabilityEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 2
    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 4
    iget v0, p2, Landroid/app/TaskInfo;->displayId:I

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 10
    move-result-object v5

    .line 13
    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 14
    iget-object v7, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 16
    move-object v0, v8

    .line 18
    move-object v1, p1

    .line 19
    move-object v2, p2

    .line 20
    move-object v4, p3

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 22
    return-object v8
    .line 25
.end method

.method public createRestartDialogWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/RestartDialogWindowManager;
    .locals 12

    .line 1
    new-instance v11, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 2
    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 4
    iget v0, p2, Landroid/app/TaskInfo;->displayId:I

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 10
    move-result-object v5

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTransitionsLazy:Ldagger/Lazy;

    .line 14
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    move-object v6, v0

    .line 20
    check-cast v6, Lcom/android/wm/shell/transition/Transitions;

    .line 21
    new-instance v7, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;

    .line 23
    const/4 v0, 0x2

    .line 25
    invoke-direct {v7, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    .line 26
    new-instance v8, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;

    .line 29
    const/4 v0, 0x3

    .line 31
    invoke-direct {v8, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    .line 32
    iget-object v10, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 35
    new-instance v9, Lcom/android/wm/shell/compatui/DialogAnimationController;

    .line 37
    const-string p0, "RestartDialogWindowManager"

    .line 39
    invoke-direct {v9, p1, p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    move-object v0, v11

    .line 44
    move-object v1, p1

    .line 45
    move-object v2, p2

    .line 46
    move-object v4, p3

    .line 47
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/DialogAnimationController;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    .line 48
    return-object v11
    .line 51
.end method

.method public final forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v3

    .line 9
    if-ge v1, v3, :cond_1

    .line 10
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 12
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 36
    if-eqz v1, :cond_2

    .line 38
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 46
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 48
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 53
    move-result v2

    .line 56
    if-ge v0, v2, :cond_4

    .line 57
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 59
    move-result v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 67
    if-eqz v1, :cond_3

    .line 69
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 71
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 77
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 83
    if-eqz v0, :cond_5

    .line 85
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 87
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 93
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 95
    :cond_5
    return-void
    .line 98
.end method

.method public final getOrCreateDisplayContext(I)Landroid/content/Context;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 13
    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Landroid/content/Context;

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-nez v1, :cond_3

    .line 25
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 33
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 35
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    goto :goto_1

    .line 53
    :cond_2
    const-string p0, "Cannot get context for display "

    .line 54
    const-string v0, "CompatUIController"

    .line 56
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    :cond_3
    :goto_1
    return-object v1
    .line 61
.end method

.method public final onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-boolean v1, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Ljava/util/HashSet;

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    iget-object v1, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 22
    if-eqz v1, :cond_10

    .line 24
    if-nez p2, :cond_1

    .line 26
    goto/16 :goto_6

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    .line 30
    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    .line 32
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 38
    if-eqz v2, :cond_3

    .line 40
    invoke-virtual {v2, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    .line 42
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    .line 48
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 50
    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    iget v3, v2, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    .line 57
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 59
    move-result v3

    .line 62
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    .line 63
    move-result v2

    .line 66
    if-nez v2, :cond_5

    .line 67
    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    .line 69
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 71
    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    iget v2, p1, Landroid/app/TaskInfo;->displayId:I

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    .line 77
    move-result-object v2

    .line 80
    if-nez v2, :cond_4

    .line 81
    goto :goto_1

    .line 83
    :cond_4
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 84
    move-result-object v2

    .line 87
    iget v3, p1, Landroid/app/TaskInfo;->displayId:I

    .line 88
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 90
    move-result v3

    .line 93
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    .line 94
    move-result v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    .line 100
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 105
    if-eqz v1, :cond_7

    .line 107
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    .line 109
    move-result v1

    .line 112
    const/4 v2, 0x0

    .line 113
    if-eqz v1, :cond_6

    .line 114
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 116
    invoke-virtual {v1}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    .line 118
    iput-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 121
    goto :goto_2

    .line 123
    :cond_6
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 124
    iget v3, v1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 128
    move-result v3

    .line 131
    invoke-virtual {v1, p1, p2, v3}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    .line 132
    move-result v1

    .line 135
    if-nez v1, :cond_a

    .line 136
    iput-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 138
    goto :goto_3

    .line 140
    :cond_7
    :goto_2
    iget v1, p1, Landroid/app/TaskInfo;->displayId:I

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    .line 143
    move-result-object v1

    .line 146
    if-nez v1, :cond_8

    .line 147
    goto :goto_3

    .line 149
    :cond_8
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createLetterboxEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 150
    move-result-object v1

    .line 153
    iget v2, p1, Landroid/app/TaskInfo;->displayId:I

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 156
    move-result v2

    .line 159
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    .line 160
    move-result v2

    .line 163
    if-eqz v2, :cond_a

    .line 164
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 166
    if-eqz v2, :cond_9

    .line 168
    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    .line 170
    :cond_9
    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 173
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    .line 175
    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    .line 177
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 179
    move-result-object v2

    .line 182
    check-cast v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 183
    if-eqz v2, :cond_c

    .line 185
    invoke-virtual {v2, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    .line 187
    move-result v3

    .line 190
    if-eqz v3, :cond_b

    .line 191
    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    .line 193
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 195
    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    .line 198
    goto :goto_4

    .line 201
    :cond_b
    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v3

    .line 207
    check-cast v0, Ljava/util/HashSet;

    .line 208
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 210
    move-result v0

    .line 213
    iput-boolean v0, v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mRequestRestartDialog:Z

    .line 214
    iget v0, v2, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 218
    move-result v0

    .line 221
    invoke-virtual {v2, p1, p2, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    .line 222
    move-result v0

    .line 225
    if-nez v0, :cond_e

    .line 226
    iget v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 228
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 230
    goto :goto_5

    .line 233
    :cond_c
    :goto_4
    iget v2, p1, Landroid/app/TaskInfo;->displayId:I

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    .line 236
    move-result-object v2

    .line 239
    if-nez v2, :cond_d

    .line 240
    goto :goto_5

    .line 242
    :cond_d
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createRestartDialogWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 243
    move-result-object v2

    .line 246
    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    move-result-object v3

    .line 252
    check-cast v0, Ljava/util/HashSet;

    .line 253
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 255
    move-result v0

    .line 258
    iput-boolean v0, v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mRequestRestartDialog:Z

    .line 259
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 261
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 263
    move-result v0

    .line 266
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    .line 267
    move-result v0

    .line 270
    if-eqz v0, :cond_e

    .line 271
    iget v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 273
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    :cond_e
    :goto_5
    iget v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 278
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 280
    iget-object v1, v1, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    .line 282
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 287
    const/4 v2, 0x0

    .line 288
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 289
    move-result v0

    .line 292
    if-eqz v0, :cond_f

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 295
    :cond_f
    return-void

    .line 298
    :cond_10
    :goto_6
    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->removeLayouts(I)V

    .line 301
    return-void
    .line 304
.end method

.method public final onDisplayAdded(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 7
    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;->mDisplayId:I

    .line 9
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    return-void
    .line 19
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 4
    move-result-object p2

    .line 7
    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda4;

    .line 8
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1, p2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 11
    new-instance p2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda5;

    .line 14
    invoke-direct {p2, p1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 19
    return-void
    .line 22
.end method

.method public final onDisplayRemoved(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;

    .line 13
    if-nez v1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, v1, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;->this$0:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 18
    iget-object v2, v2, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 20
    iget v3, v1, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;->mDisplayId:I

    .line 22
    invoke-virtual {v2, v3, v1}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 24
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 27
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda4;

    .line 35
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 38
    new-instance v2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda5;

    .line 41
    invoke-direct {v2, p1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 43
    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result p1

    .line 52
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 53
    if-ltz p1, :cond_1

    .line 55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v1

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->removeLayouts(I)V

    .line 67
    goto :goto_1

    .line 70
    :cond_1
    return-void
    .line 71
.end method

.method public final onImeVisibilityChanged(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 9
    check-cast v0, Landroid/util/ArraySet;

    .line 10
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p2

    .line 19
    check-cast v0, Landroid/util/ArraySet;

    .line 20
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 22
    :goto_0
    new-instance p2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda3;

    .line 25
    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    .line 27
    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda5;

    .line 30
    invoke-direct {v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 32
    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 35
    return-void
    .line 38
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mKeyguardShowing:Z

    .line 2
    new-instance p1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;

    .line 4
    const/4 p2, 0x4

    .line 6
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    .line 7
    new-instance p2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    .line 10
    invoke-direct {p2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>()V

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 15
    return-void
    .line 18
.end method

.method public final removeLayouts(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    .line 12
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 18
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    .line 23
    if-ne v2, p1, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    .line 27
    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    .line 38
    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    .line 42
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 53
    check-cast v0, Ljava/util/HashSet;

    .line 54
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    .line 63
    if-ne v2, p1, :cond_3

    .line 65
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    .line 67
    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 70
    :cond_3
    return-void
    .line 72
.end method

.method public final showOnDisplay(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mKeyguardShowing:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 11
    check-cast p0, Landroid/util/ArraySet;

    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method
