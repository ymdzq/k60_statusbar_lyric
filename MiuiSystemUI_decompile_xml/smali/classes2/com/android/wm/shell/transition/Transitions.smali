.class public final Lcom/android/wm/shell/transition/Transitions;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# static fields
.field public static final ENABLE_SHELL_TRANSITIONS:Z

.field public static final SHELL_TRANSITIONS_ROTATION:Z


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mHandlers:Ljava/util/ArrayList;

.field public final mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

.field public mIsRegistered:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mObservers:Ljava/util/ArrayList;

.field public final mOrganizer:Landroid/window/WindowOrganizer;

.field public final mPendingTransitions:Ljava/util/ArrayList;

.field public final mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

.field public final mReadyDuringSync:Ljava/util/ArrayList;

.field public final mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field public mRotationAnimation:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

.field public final mRotationAnimationListeners:Ljava/util/List;

.field public final mRunWhenIdleQueue:Ljava/util/ArrayList;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

.field public final mTracer:Lcom/android/wm/shell/transition/Tracer;

.field public final mTracks:Ljava/util/ArrayList;

.field public mTransitionAnimationScaleSetting:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "persist.wm.debug.shell_transit"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 9
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    const-string v0, "persist.wm.debug.shell_transit_rotate"

    .line 14
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    sput-boolean v1, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    .line 24
    return-void
    .line 26
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v10, p7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v1, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    .line 8
    invoke-direct {v1, p0}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    .line 10
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    .line 13
    new-instance v1, Lcom/android/wm/shell/transition/SleepHandler;

    .line 15
    invoke-direct {v1}, Lcom/android/wm/shell/transition/SleepHandler;-><init>()V

    .line 17
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

    .line 20
    new-instance v1, Lcom/android/wm/shell/transition/Tracer;

    .line 22
    invoke-direct {v1}, Lcom/android/wm/shell/transition/Tracer;-><init>()V

    .line 24
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 27
    const/4 v11, 0x0

    .line 29
    iput-boolean v11, v0, Lcom/android/wm/shell/transition/Transitions;->mIsRegistered:Z

    .line 30
    new-instance v12, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object v12, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    iput v1, v0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 76
    const/4 v13, 0x0

    .line 78
    iput-object v13, v0, Lcom/android/wm/shell/transition/Transitions;->mRotationAnimation:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mRotationAnimationListeners:Ljava/util/List;

    .line 86
    move-object/from16 v1, p4

    .line 88
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 90
    move-object/from16 v2, p1

    .line 92
    iput-object v2, v0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    .line 94
    iput-object v10, v0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 96
    move-object/from16 v8, p9

    .line 98
    iput-object v8, v0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 100
    move-object/from16 v4, p6

    .line 102
    iput-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 104
    new-instance v1, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    .line 106
    invoke-direct {v1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    .line 108
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    .line 111
    new-instance v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 113
    move-object v1, v14

    .line 115
    move-object/from16 v3, p2

    .line 116
    move-object/from16 v5, p5

    .line 118
    move-object/from16 v6, p7

    .line 120
    move-object/from16 v7, p8

    .line 122
    move-object/from16 v9, p11

    .line 124
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    .line 126
    new-instance v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 129
    invoke-direct {v1, v10}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 131
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 134
    move-object/from16 v2, p3

    .line 136
    iput-object v2, v0, Lcom/android/wm/shell/transition/Transitions;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 138
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 143
    if-eqz v2, :cond_0

    .line 145
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 147
    const v3, -0x55b81988

    .line 149
    const-string v4, "addHandler: Default"

    .line 152
    invoke-static {v2, v3, v11, v4, v13}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_0
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    move-object/from16 v1, p10

    .line 160
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 162
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 164
    if-eqz v1, :cond_1

    .line 166
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 168
    const v2, 0x7ceef6d1

    .line 170
    const-string v3, "addHandler: Remote"

    .line 173
    invoke-static {v1, v2, v11, v3, v13}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_1
    new-instance v1, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;

    .line 178
    invoke-direct {v1, v11, p0}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 180
    move-object/from16 v2, p2

    .line 183
    invoke-virtual {v2, p0, v1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 185
    return-void
    .line 188
.end method

.method public static setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 5
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14
    goto :goto_0

    .line 17
    :catch_1
    const-string p0, "ShellTransitions"

    .line 18
    const-string v0, "Unable to boost animation process. This should only happen during unit tests"

    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_0
    return-void
    .line 25
.end method


# virtual methods
.method public final addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 13
    invoke-interface {p1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->setAnimScaleSetting(F)V

    .line 15
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 30
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    const v0, -0x6cd9ff37

    .line 36
    const/4 v1, 0x0

    .line 39
    const-string v2, "addHandler: %s"

    .line 40
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 46
    const-string p1, "Unexpected handler added prior to initialization, please use ShellInit callbacks to ensure proper ordering"

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
    .line 53
.end method

.method public final checkRotationAnimation(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/TransitionInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mRotationAnimation:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 6
    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p2

    .line 13
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 24
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 26
    move-result v1

    .line 29
    and-int/lit8 v1, v1, 0x20

    .line 30
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 34
    move-result v1

    .line 37
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 38
    move-result v0

    .line 41
    if-eq v1, v0, :cond_0

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mRotationAnimation:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRotationAnimationListeners:Ljava/util/List;

    .line 46
    check-cast p0, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 53
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/wm/shell/transition/Transitions$IRotationAnimationListener;

    .line 64
    invoke-interface {p1}, Lcom/android/wm/shell/transition/Transitions$IRotationAnimationListener;->onRotationAnimationStart()V

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    return-void
    .line 70
.end method

.method public final dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 6
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    .line 8
    move-result v3

    .line 11
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 12
    const/16 v5, 0xc

    .line 14
    const/4 v6, 0x1

    .line 16
    const/4 v7, 0x0

    .line 17
    if-eq v3, v5, :cond_1

    .line 18
    iget-object v3, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 20
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    .line 22
    move-result v3

    .line 25
    const/high16 v5, 0x200000

    .line 26
    and-int/2addr v3, v5

    .line 28
    if-eqz v3, :cond_0

    .line 29
    move v3, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v7

    .line 33
    :goto_0
    if-eqz v3, :cond_7

    .line 34
    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v3, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    move v5, v7

    .line 41
    move v8, v5

    .line 42
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v9

    .line 46
    if-ge v5, v9, :cond_5

    .line 47
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v9

    .line 52
    check-cast v9, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 53
    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 55
    if-nez v10, :cond_2

    .line 57
    iget-object v9, v9, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    move-result v9

    .line 64
    if-eqz v9, :cond_2

    .line 65
    move v9, v6

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move v9, v7

    .line 69
    :goto_2
    if-eqz v9, :cond_3

    .line 70
    goto :goto_3

    .line 72
    :cond_3
    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 73
    if-eqz v8, :cond_4

    .line 75
    int-to-long v8, v5

    .line 77
    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 78
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    move-result-object v8

    .line 83
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 84
    move-result-object v8

    .line 87
    const v9, -0x39190853

    .line 88
    const-string v11, "Start finish-for-sync track %d"

    .line 91
    invoke-static {v10, v9, v6, v11, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_4
    const/4 v8, 0x0

    .line 96
    invoke-virtual {v0, v1, v5, v8}, Lcom/android/wm/shell/transition/Transitions;->finishForSync(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 97
    move v8, v6

    .line 100
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 101
    goto :goto_1

    .line 103
    :cond_5
    if-eqz v8, :cond_6

    .line 104
    return v7

    .line 106
    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_7
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getTrack()I

    .line 110
    move-result v3

    .line 113
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 114
    move-result v5

    .line 117
    if-lt v3, v5, :cond_8

    .line 118
    new-instance v5, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 120
    invoke-direct {v5}, Lcom/android/wm/shell/transition/Transitions$Track;-><init>()V

    .line 122
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_4

    .line 128
    :cond_8
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v3

    .line 132
    check-cast v3, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 133
    iget-object v4, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    move v4, v7

    .line 140
    :goto_5
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 143
    move-result v8

    .line 146
    if-ge v4, v8, :cond_9

    .line 147
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v5

    .line 152
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    .line 153
    iget-object v8, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 155
    iget-object v9, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 157
    iget-object v10, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 159
    invoke-interface {v5, v8, v2, v9, v10}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 164
    goto :goto_5

    .line 166
    :cond_9
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 167
    move-result v4

    .line 170
    if-nez v4, :cond_b

    .line 171
    invoke-static {v2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    .line 173
    move-result v4

    .line 176
    if-nez v4, :cond_b

    .line 177
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 179
    if-eqz v2, :cond_a

    .line 181
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 186
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 187
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 189
    move-result-object v2

    .line 192
    const v4, 0x1a8355e8

    .line 193
    const-string v5, "No transition roots in %s so abort"

    .line 196
    invoke-static {v3, v4, v7, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 201
    return v6

    .line 204
    :cond_b
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 205
    move-result-object v4

    .line 208
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 209
    move-result v4

    .line 212
    if-lez v4, :cond_c

    .line 213
    move v5, v6

    .line 215
    goto :goto_6

    .line 216
    :cond_c
    move v5, v7

    .line 217
    :goto_6
    add-int/lit8 v8, v4, -0x1

    .line 218
    move v9, v7

    .line 220
    move v10, v9

    .line 221
    :goto_7
    const/16 v11, 0x8

    .line 222
    if-ltz v8, :cond_f

    .line 224
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 226
    move-result-object v12

    .line 229
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    move-result-object v12

    .line 233
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 234
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 236
    move-result-object v13

    .line 239
    if-eqz v13, :cond_d

    .line 240
    move v13, v6

    .line 242
    goto :goto_8

    .line 243
    :cond_d
    move v13, v7

    .line 244
    :goto_8
    or-int/2addr v9, v13

    .line 245
    invoke-virtual {v12, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 246
    move-result v11

    .line 249
    or-int/2addr v10, v11

    .line 250
    const v11, 0x8000

    .line 251
    invoke-virtual {v12, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 254
    move-result v11

    .line 257
    if-nez v11, :cond_e

    .line 258
    move v5, v7

    .line 260
    :cond_e
    add-int/lit8 v8, v8, -0x1

    .line 261
    goto :goto_7

    .line 263
    :cond_f
    const/4 v8, 0x2

    .line 264
    if-nez v9, :cond_10

    .line 265
    if-eqz v10, :cond_10

    .line 267
    if-eq v4, v8, :cond_12

    .line 269
    :cond_10
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    .line 271
    move-result v4

    .line 274
    const/4 v11, 0x4

    .line 275
    const/4 v12, 0x3

    .line 276
    if-eq v4, v11, :cond_11

    .line 277
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    .line 279
    move-result v2

    .line 282
    if-ne v2, v12, :cond_15

    .line 283
    :cond_11
    if-eqz v5, :cond_15

    .line 285
    :cond_12
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 287
    if-eqz v2, :cond_13

    .line 289
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    move-result-object v2

    .line 294
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 295
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 297
    move-result-object v2

    .line 300
    const v4, 0x32b8229

    .line 301
    const-string v5, "Non-visible anim so abort: %s"

    .line 304
    invoke-static {v3, v4, v7, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_13
    if-nez v9, :cond_14

    .line 309
    if-eqz v10, :cond_14

    .line 311
    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 313
    if-eqz v2, :cond_14

    .line 315
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 317
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 320
    return v6

    .line 323
    :cond_15
    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 324
    iget-object v4, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 326
    iget-object v5, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 328
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    .line 330
    move-result v7

    .line 333
    invoke-static {v7}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 334
    move-result v7

    .line 337
    invoke-static {v2, v6}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 338
    move-result v9

    .line 341
    :goto_9
    if-ltz v9, :cond_28

    .line 342
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 344
    move-result-object v10

    .line 347
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    move-result-object v10

    .line 351
    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 352
    const v11, 0x10102

    .line 354
    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 357
    move-result v11

    .line 360
    if-eqz v11, :cond_16

    .line 361
    goto/16 :goto_e

    .line 363
    :cond_16
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 365
    move-result-object v11

    .line 368
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 369
    move-result-object v13

    .line 372
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    move-result-object v13

    .line 376
    check-cast v13, Landroid/window/TransitionInfo$Change;

    .line 377
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 379
    move-result v13

    .line 382
    if-ne v13, v12, :cond_18

    .line 383
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 385
    move-result-object v14

    .line 388
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 389
    move-result v14

    .line 392
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 393
    move-result-object v15

    .line 396
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 397
    move-result v15

    .line 400
    if-ne v14, v15, :cond_17

    .line 401
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 403
    move-result-object v14

    .line 406
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 407
    move-result v14

    .line 410
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 411
    move-result-object v15

    .line 414
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 415
    move-result v15

    .line 418
    if-eq v14, v15, :cond_18

    .line 419
    :cond_17
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 421
    move-result-object v14

    .line 424
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 425
    move-result v14

    .line 428
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 429
    move-result-object v15

    .line 432
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 433
    move-result v15

    .line 436
    invoke-virtual {v4, v11, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 437
    :cond_18
    invoke-static {v10, v2}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 440
    move-result v14

    .line 443
    const/4 v15, 0x6

    .line 444
    if-nez v14, :cond_20

    .line 445
    if-eq v13, v6, :cond_19

    .line 447
    if-eq v13, v12, :cond_19

    .line 449
    if-ne v13, v15, :cond_27

    .line 451
    :cond_19
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 453
    move-result-object v13

    .line 456
    if-eqz v13, :cond_1a

    .line 457
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 459
    move-result-object v13

    .line 462
    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 463
    invoke-static {v13}, Lmiui/app/MiuiFreeFormManager;->isHideStackFromFullScreen(I)Z

    .line 465
    move-result v13

    .line 468
    if-eqz v13, :cond_1a

    .line 469
    invoke-virtual {v4, v11}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 471
    goto :goto_a

    .line 474
    :cond_1a
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 475
    move-result-object v13

    .line 478
    if-eqz v13, :cond_1b

    .line 479
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 481
    move-result-object v13

    .line 484
    iget-object v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 485
    if-eqz v13, :cond_1b

    .line 487
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 489
    move-result-object v13

    .line 492
    iget-object v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 493
    iget-boolean v13, v13, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isForegroundPin:Z

    .line 495
    if-nez v13, :cond_1c

    .line 497
    :cond_1b
    invoke-virtual {v4, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 499
    :cond_1c
    :goto_a
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 502
    move-result-object v13

    .line 505
    if-eqz v13, :cond_1d

    .line 506
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 508
    move-result-object v13

    .line 511
    iget-object v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 512
    if-eqz v13, :cond_1d

    .line 514
    const/4 v13, 0x0

    .line 516
    goto :goto_b

    .line 517
    :cond_1d
    move v13, v6

    .line 518
    :goto_b
    sget-object v14, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;->sInstance:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;

    .line 519
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMiuiChange()Landroid/window/TransitionInfoStub$MiuiChange;

    .line 521
    move-result-object v15

    .line 524
    invoke-virtual {v14, v4, v11, v15}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;->processTransitionStartState(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/TransitionInfoStub$MiuiChange;)Z

    .line 525
    move-result v14

    .line 528
    if-eqz v14, :cond_1e

    .line 529
    const/4 v13, 0x0

    .line 531
    :cond_1e
    if-eqz v13, :cond_1f

    .line 532
    const/high16 v15, 0x3f800000    # 1.0f

    .line 534
    const/16 v16, 0x0

    .line 536
    const/16 v17, 0x0

    .line 538
    const/high16 v18, 0x3f800000    # 1.0f

    .line 540
    move-object v13, v4

    .line 542
    move-object v14, v11

    .line 543
    invoke-virtual/range {v13 .. v18}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 544
    :cond_1f
    const/high16 v13, 0x3f800000    # 1.0f

    .line 547
    invoke-virtual {v4, v11, v13}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 549
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 552
    move-result-object v13

    .line 555
    iget v13, v13, Landroid/graphics/Point;->x:I

    .line 556
    int-to-float v13, v13

    .line 558
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 559
    move-result-object v10

    .line 562
    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 563
    int-to-float v10, v10

    .line 565
    invoke-virtual {v4, v11, v13, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 566
    goto :goto_e

    .line 569
    :cond_20
    if-eq v13, v6, :cond_24

    .line 570
    if-ne v13, v12, :cond_21

    .line 572
    goto :goto_d

    .line 574
    :cond_21
    const/4 v10, 0x4

    .line 575
    if-eq v13, v8, :cond_23

    .line 576
    if-ne v13, v10, :cond_22

    .line 578
    goto :goto_c

    .line 580
    :cond_22
    if-eqz v7, :cond_27

    .line 581
    if-ne v13, v15, :cond_27

    .line 583
    invoke-virtual {v4, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 585
    goto :goto_e

    .line 588
    :cond_23
    :goto_c
    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 589
    goto :goto_e

    .line 592
    :cond_24
    :goto_d
    invoke-virtual {v4, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 593
    sget-object v13, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;->sInstance:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;

    .line 596
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMiuiChange()Landroid/window/TransitionInfoStub$MiuiChange;

    .line 598
    move-result-object v14

    .line 601
    invoke-virtual {v13, v4, v11, v14}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;->processTransitionStartState(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/TransitionInfoStub$MiuiChange;)Z

    .line 602
    move-result v13

    .line 605
    xor-int/2addr v13, v6

    .line 606
    if-eqz v13, :cond_25

    .line 607
    const/high16 v15, 0x3f800000    # 1.0f

    .line 609
    const/16 v16, 0x0

    .line 611
    const/16 v17, 0x0

    .line 613
    const/high16 v18, 0x3f800000    # 1.0f

    .line 615
    move-object v13, v4

    .line 617
    move-object v14, v11

    .line 618
    invoke-virtual/range {v13 .. v18}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 619
    :cond_25
    if-eqz v7, :cond_26

    .line 622
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 624
    move-result v10

    .line 627
    and-int/lit8 v10, v10, 0x8

    .line 628
    if-nez v10, :cond_26

    .line 630
    const/4 v10, 0x0

    .line 632
    invoke-virtual {v4, v11, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 633
    :cond_26
    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 636
    :cond_27
    :goto_e
    add-int/lit8 v9, v9, -0x1

    .line 639
    goto/16 :goto_9

    .line 641
    :cond_28
    iget-object v2, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 643
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 645
    move-result v2

    .line 648
    if-le v2, v6, :cond_29

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    .line 651
    const-string/jumbo v2, "track.mReadyTransitions.size() > 1, return, active = "

    .line 653
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    move-result-object v0

    .line 665
    const-string v1, "ShellTransitions"

    .line 666
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v6

    .line 671
    :cond_29
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 672
    return v6
    .line 675
.end method

.method public final dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    if-ltz v0, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    if-ne v1, p3, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 23
    invoke-interface {v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    .line 25
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    new-instance p1, Landroid/util/Pair;

    .line 31
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 37
    invoke-direct {p1, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    return-object p1

    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    return-object p0
    .line 44
.end method

.method public final dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v2

    .line 8
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 9
    if-ltz v2, :cond_4

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 16
    move-object/from16 v4, p6

    .line 17
    if-ne v3, v4, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 22
    const/4 v5, 0x0

    .line 24
    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 34
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 35
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 40
    const v7, -0x4dfde11f

    .line 41
    const-string v8, " try handler %s"

    .line 44
    invoke-static {v6, v7, v5, v8, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 52
    move-object v6, v3

    .line 53
    check-cast v6, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 54
    move-object v7, p1

    .line 56
    move-object v8, p2

    .line 57
    move-object v9, p3

    .line 58
    move-object/from16 v10, p4

    .line 59
    move-object/from16 v11, p5

    .line 61
    invoke-interface/range {v6 .. v11}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 63
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 69
    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 76
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 80
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 81
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 83
    move-result-object v3

    .line 86
    const v6, -0x4d529b50

    .line 87
    const-string v7, " animated by %s"

    .line 90
    invoke-static {v4, v6, v5, v7, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_3
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 95
    move-result v3

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v4

    .line 102
    check-cast v4, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 103
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 105
    invoke-virtual {v0, v3, v4}, Lcom/android/wm/shell/transition/Tracer;->logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 107
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 114
    return-object v0

    .line 116
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 117
    const-string v1, "This shouldn\'t happen, maybe the default handler is broken."

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    throw v0
    .line 124
.end method

.method public final finishForSync(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    iget-object v4, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 10
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/transition/Transitions;->isTransitionKnown(Landroid/os/IBinder;)Z

    .line 12
    move-result v4

    .line 15
    const-string v5, "ShellTransitions"

    .line 16
    if-nez v4, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "finishForSleep: already played sync transition "

    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 37
    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v6

    .line 43
    check-cast v6, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 44
    const/4 v7, 0x1

    .line 46
    if-eqz v3, :cond_3

    .line 47
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 49
    move-result v8

    .line 52
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 56
    check-cast v4, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 57
    if-eq v4, v6, :cond_1

    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    .line 61
    const-string v9, "finishForSleep: mismatched Tracks between forceFinish and logic "

    .line 63
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 68
    move-result v9

    .line 71
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v9, " vs "

    .line 75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v8

    .line 86
    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    iget-object v4, v4, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 90
    if-ne v4, v3, :cond_3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    const-string v8, "Forcing transition to finish due to sync timeout: "

    .line 96
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 107
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-boolean v7, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 111
    iget-object v4, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 113
    const/4 v8, 0x0

    .line 115
    if-eqz v4, :cond_2

    .line 116
    iget-object v9, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 118
    invoke-interface {v4, v9, v7, v8}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 120
    :cond_2
    invoke-virtual {v0, v3, v8, v8}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 123
    :cond_3
    iget-object v3, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 126
    const/4 v4, 0x0

    .line 128
    if-nez v3, :cond_4

    .line 129
    iget-object v3, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 133
    move-result v3

    .line 136
    if-eqz v3, :cond_4

    .line 137
    move v3, v7

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    move v3, v4

    .line 141
    :goto_0
    if-nez v3, :cond_c

    .line 142
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    move-result v8

    .line 149
    if-eqz v8, :cond_5

    .line 150
    goto/16 :goto_5

    .line 152
    :cond_5
    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    .line 154
    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 156
    new-instance v15, Landroid/window/TransitionInfo;

    .line 159
    const/16 v9, 0xc

    .line 161
    invoke-direct {v15, v9, v4}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 163
    :goto_1
    iget-object v9, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 166
    if-eqz v9, :cond_c

    .line 168
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 170
    move-result v9

    .line 173
    if-nez v9, :cond_c

    .line 174
    iget-object v14, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 176
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    move-result-object v9

    .line 181
    check-cast v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 182
    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 184
    invoke-virtual {v10}, Landroid/window/TransitionInfo;->getFlags()I

    .line 186
    move-result v10

    .line 189
    const/high16 v11, 0x200000

    .line 190
    and-int/2addr v10, v11

    .line 192
    if-eqz v10, :cond_6

    .line 193
    move v10, v7

    .line 195
    goto :goto_2

    .line 196
    :cond_6
    move v10, v4

    .line 197
    :goto_2
    if-nez v10, :cond_7

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    .line 200
    const-string v11, "Somehow blocked on a non-sync transition? "

    .line 202
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v10

    .line 213
    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_7
    sget-boolean v10, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 217
    if-eqz v10, :cond_8

    .line 219
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    move-result-object v10

    .line 224
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    move-result-object v11

    .line 228
    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 229
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 231
    move-result-object v10

    .line 234
    const v11, 0x24a9b32f

    .line 235
    const-string v13, " Attempt to merge sync %s into %s via a SLEEP proxy"

    .line 238
    invoke-static {v12, v11, v4, v13, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :cond_8
    iget-object v10, v14, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 243
    iget-object v11, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 245
    iget-object v13, v14, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 247
    new-instance v16, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda1;

    .line 249
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda1;-><init>()V

    .line 251
    move-object v9, v10

    .line 254
    move-object v10, v11

    .line 255
    move-object v11, v15

    .line 256
    move-object v12, v8

    .line 257
    move-object v4, v14

    .line 258
    move-object/from16 v14, v16

    .line 259
    invoke-interface/range {v9 .. v14}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 261
    iget-object v9, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 264
    if-ne v9, v4, :cond_b

    .line 266
    const-class v3, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    .line 268
    invoke-static {v3}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 270
    move-result-object v3

    .line 273
    check-cast v3, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    .line 274
    iget-object v5, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 276
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    invoke-static {v5}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    .line 281
    move-result v3

    .line 284
    if-eqz v3, :cond_9

    .line 285
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getFlags()I

    .line 287
    move-result v3

    .line 290
    const/high16 v5, 0x2000000

    .line 291
    and-int/2addr v3, v5

    .line 293
    if-nez v3, :cond_9

    .line 294
    goto :goto_3

    .line 296
    :cond_9
    const/4 v7, 0x0

    .line 297
    :goto_3
    if-eqz v7, :cond_a

    .line 298
    const/16 v3, 0x7d0

    .line 300
    goto :goto_4

    .line 302
    :cond_a
    const/16 v3, 0x78

    .line 303
    :goto_4
    new-instance v5, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;

    .line 305
    invoke-direct {v5, v0, v1, v2, v4}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 307
    int-to-long v1, v3

    .line 310
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 311
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 313
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 315
    goto :goto_5

    .line 318
    :cond_b
    const/4 v4, 0x0

    .line 319
    goto/16 :goto_1

    .line 320
    :cond_c
    :goto_5
    return-void
    .line 322
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isIdle()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_4

    .line 18
    move v0, v1

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v4

    .line 26
    if-ge v0, v4, :cond_2

    .line 27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 33
    iget-object v4, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 35
    if-nez v4, :cond_0

    .line 37
    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    move v3, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move v3, v1

    .line 49
    :goto_1
    if-nez v3, :cond_1

    .line 50
    move p0, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    move p0, v2

    .line 57
    :goto_2
    if-nez p0, :cond_3

    .line 58
    goto :goto_3

    .line 60
    :cond_3
    move p0, v1

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    :goto_3
    move p0, v2

    .line 63
    :goto_4
    if-nez p0, :cond_5

    .line 64
    move v1, v2

    .line 66
    :cond_5
    return v1
    .line 67
.end method

.method public final isTransitionKnown(Landroid/os/IBinder;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v3

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 17
    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 19
    if-ne v2, p1, :cond_0

    .line 21
    return v4

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    move v1, v0

    .line 27
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v3

    .line 33
    if-ge v1, v3, :cond_3

    .line 34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 40
    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 42
    if-ne v2, p1, :cond_2

    .line 44
    return v4

    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_3
    move v1, v0

    .line 50
    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v3

    .line 56
    if-ge v1, v3, :cond_b

    .line 57
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 63
    move v3, v0

    .line 65
    :goto_3
    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v5

    .line 71
    if-ge v3, v5, :cond_5

    .line 72
    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 79
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 80
    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 82
    if-ne v5, p1, :cond_4

    .line 84
    return v4

    .line 86
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_3

    .line 89
    :cond_5
    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 90
    if-nez v2, :cond_6

    .line 92
    goto :goto_5

    .line 94
    :cond_6
    iget-object v3, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 95
    if-ne v3, p1, :cond_7

    .line 97
    return v4

    .line 99
    :cond_7
    iget-object v3, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 100
    if-nez v3, :cond_8

    .line 102
    goto :goto_5

    .line 104
    :cond_8
    move v3, v0

    .line 105
    :goto_4
    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 108
    move-result v5

    .line 111
    if-ge v3, v5, :cond_a

    .line 112
    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v5

    .line 119
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 120
    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 122
    if-ne v5, p1, :cond_9

    .line 124
    return v4

    .line 126
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 127
    goto :goto_4

    .line 129
    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 130
    goto :goto_2

    .line 132
    :cond_b
    return v0
    .line 133
.end method

.method public final onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 12
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 15
    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 17
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 19
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v4, Lcom/android/wm/shell/nano/Transition;

    .line 28
    invoke-direct {v4}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    .line 30
    iput v2, v4, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 35
    move-result-wide v5

    .line 38
    iput-wide v5, v4, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    .line 39
    iget-object v2, v3, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 41
    invoke-virtual {v2, v4}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 43
    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 46
    if-eqz v2, :cond_0

    .line 48
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 50
    const/4 v4, 0x0

    .line 52
    invoke-interface {v2, v3, v1, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 53
    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 56
    if-nez p1, :cond_1

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 61
    :goto_0
    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result p1

    .line 69
    if-le p1, v1, :cond_2

    .line 70
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 73
    return-void
    .line 76
.end method

.method public final onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 12
    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 14
    const-string v2, "ShellTransitions"

    .line 16
    if-eq v1, p1, :cond_0

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    const-string p2, "Trying to finish a non-running transition. Either remote crashed or  a handler didn\'t properly deal with a merge. "

    .line 22
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    new-instance p1, Ljava/lang/RuntimeException;

    .line 34
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    return-void

    .line 42
    :cond_0
    const-wide/16 v3, 0x20

    .line 43
    const-string v1, "Transitions#onFinish"

    .line 45
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 47
    const/4 v1, 0x0

    .line 50
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 51
    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mRotationAnimation:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 53
    if-ne p1, v5, :cond_1

    .line 55
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mRotationAnimation:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 57
    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mRotationAnimationListeners:Ljava/util/List;

    .line 59
    check-cast v5, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v5

    .line 66
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v6

    .line 70
    if-eqz v6, :cond_1

    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 76
    check-cast v6, Lcom/android/wm/shell/transition/Transitions$IRotationAnimationListener;

    .line 77
    invoke-interface {v6}, Lcom/android/wm/shell/transition/Transitions$IRotationAnimationListener;->onRotationAnimationEnd()V

    .line 79
    goto :goto_0

    .line 82
    :cond_1
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 83
    instance-of v6, v5, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 85
    if-eqz v6, :cond_2

    .line 87
    check-cast v5, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 89
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 91
    move-result-object v6

    .line 94
    iget-object v5, v5, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 95
    iget-object v7, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 97
    invoke-virtual {v6, v5, v7}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->stopAnimationDimmer(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    .line 99
    :cond_2
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 102
    instance-of v5, v5, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 104
    if-eqz v5, :cond_3

    .line 106
    invoke-static {}, Lmiui/smartpower/SmartPowerManagerStub;->getInstance()Lmiui/smartpower/SmartPowerManagerStub;

    .line 108
    move-result-object v5

    .line 111
    const/16 v6, 0x66

    .line 112
    invoke-interface {v5, v6}, Lmiui/smartpower/SmartPowerManagerStub;->onTransitionAnimateEnd(I)V

    .line 114
    :cond_3
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 117
    move-result-object v5

    .line 120
    iget-object v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 121
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->onScaleAnimationFinish(Landroid/view/SurfaceControl$Transaction;)V

    .line 123
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 126
    move-result-object v5

    .line 129
    iget-object v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 130
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->onSwapAnimationFinish(Landroid/view/SurfaceControl$Transaction;)V

    .line 132
    const/4 v5, 0x0

    .line 135
    move v6, v5

    .line 136
    :goto_1
    iget-object v7, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 139
    move-result v7

    .line 142
    if-ge v6, v7, :cond_4

    .line 143
    iget-object v7, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v7

    .line 150
    check-cast v7, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    .line 151
    iget-object v8, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 153
    iget-boolean v9, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 155
    iget-object v10, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 157
    invoke-interface {v7, v8, v9, v10}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionFinished(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 159
    add-int/lit8 v6, v6, 0x1

    .line 162
    goto :goto_1

    .line 164
    :cond_4
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 165
    move-result-object v6

    .line 168
    iget-object v7, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 169
    iget-object v8, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 171
    invoke-virtual {v6, v7, v8}, Lcom/android/wm/shell/sosc/SoScUtils;->monitorTransitionFinished(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V

    .line 173
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 176
    if-eqz v6, :cond_5

    .line 178
    iget-boolean v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 180
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    move-result-object v7

    .line 185
    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 186
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 188
    move-result-object v6

    .line 191
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    .line 192
    move-result-object v6

    .line 195
    const/4 v7, 0x3

    .line 196
    const-string v9, "Transition animation finished (aborted=%b), notifying core %s"

    .line 197
    const v10, 0x31198153

    .line 199
    invoke-static {v8, v10, v7, v9, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_5
    iget-object v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 205
    if-eqz v6, :cond_6

    .line 207
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->clear()V

    .line 209
    :cond_6
    iget-object v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 212
    iget-object v7, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 214
    if-eqz v7, :cond_e

    .line 216
    move v7, v5

    .line 218
    :goto_2
    iget-object v8, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 221
    move-result v8

    .line 224
    if-ge v7, v8, :cond_e

    .line 225
    iget-object v8, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object v8

    .line 232
    check-cast v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 233
    iget-object v9, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 235
    if-eqz v9, :cond_8

    .line 237
    if-nez v6, :cond_7

    .line 239
    move-object v6, v9

    .line 241
    goto :goto_3

    .line 242
    :cond_7
    invoke-virtual {v6, v9}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 243
    :cond_8
    :goto_3
    iget-object v9, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 246
    if-eqz v9, :cond_a

    .line 248
    if-nez v6, :cond_9

    .line 250
    move-object v6, v9

    .line 252
    goto :goto_4

    .line 253
    :cond_9
    invoke-virtual {v6, v9}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 254
    :cond_a
    :goto_4
    iget-object v9, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 257
    instance-of v10, v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 259
    if-eqz v10, :cond_d

    .line 261
    check-cast v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 263
    iget-object v8, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 265
    iget-object v10, v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mToken:Landroid/os/IBinder;

    .line 267
    if-ne v8, v10, :cond_b

    .line 269
    iget-object v8, v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAddToFinishSCT:Landroid/view/SurfaceControl$Transaction;

    .line 271
    iput-object v1, v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mToken:Landroid/os/IBinder;

    .line 273
    iput-object v1, v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAddToFinishSCT:Landroid/view/SurfaceControl$Transaction;

    .line 275
    goto :goto_5

    .line 277
    :cond_b
    move-object v8, v1

    .line 278
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 279
    const-string v10, "onFinish, is RecentsTransitionHandler, sct = "

    .line 281
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v9

    .line 292
    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v8, :cond_d

    .line 296
    if-nez v6, :cond_c

    .line 298
    move-object v6, v8

    .line 300
    goto :goto_6

    .line 301
    :cond_c
    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 302
    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 305
    goto :goto_2

    .line 307
    :cond_e
    if-eqz v6, :cond_f

    .line 308
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 310
    :cond_f
    iget-object v6, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 313
    iget-object v7, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 315
    invoke-virtual {v7}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 317
    move-result v7

    .line 320
    iget-boolean v8, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 321
    invoke-virtual {v6, v7, v8}, Landroid/window/WindowOrganizer;->notifyTransitionAbort(IZ)V

    .line 323
    iget-object v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 326
    if-nez v6, :cond_10

    .line 328
    goto :goto_7

    .line 330
    :cond_10
    invoke-virtual {v6}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 331
    :goto_7
    instance-of v6, p3, Lcom/android/wm/shell/transition/MIUIRemoteTransitionFinishedCallback$1;

    .line 334
    if-eqz v6, :cond_11

    .line 336
    move-object v6, p3

    .line 338
    move-object p3, v1

    .line 339
    goto :goto_8

    .line 340
    :cond_11
    move-object v6, v1

    .line 341
    :goto_8
    iget-object v7, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 342
    iget-object v8, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 344
    invoke-virtual {v7, v8, p2, p3}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    .line 346
    iget-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 349
    if-eqz p2, :cond_14

    .line 351
    :goto_9
    iget-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 355
    move-result p2

    .line 358
    if-ge v5, p2, :cond_13

    .line 359
    iget-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 361
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    move-result-object p2

    .line 366
    check-cast p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 367
    iget-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 369
    iget-object v7, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 371
    invoke-virtual {p3, v7, v1, v1}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    .line 373
    iget-object p2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 376
    if-nez p2, :cond_12

    .line 378
    goto :goto_a

    .line 380
    :cond_12
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 381
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 384
    goto :goto_9

    .line 386
    :cond_13
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 387
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 389
    :cond_14
    if-eqz v6, :cond_15

    .line 392
    const/4 p1, -0x1

    .line 394
    :try_start_0
    invoke-virtual {v6, p1, v1}, Landroid/window/WindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_b

    .line 398
    :catch_0
    move-exception p1

    .line 399
    const-string p2, "onFinish callback fail"

    .line 400
    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    :cond_15
    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 405
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 408
    return-void
    .line 411
.end method

.method public final onMerged(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 6
    move-result v1

    .line 9
    if-ne v0, v1, :cond_7

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 14
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 22
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 24
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 36
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 37
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 42
    const v3, -0x148840c6

    .line 43
    const-string v5, "Transition was merged: %s into %s"

    .line 46
    invoke-static {v4, v3, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    move-result v1

    .line 56
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 57
    if-nez v1, :cond_2

    .line 59
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 64
    if-eq v1, p2, :cond_1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    move v1, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    const-string v4, "Merged transition out-of-order? "

    .line 72
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 83
    const-string v4, "ShellTransitions"

    .line 84
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 89
    move-result v1

    .line 92
    if-gez v1, :cond_3

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    const-string p1, "Merged a transition that is no-longer queued? "

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 112
    :cond_3
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 116
    if-nez v1, :cond_4

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    .line 120
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iput-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 125
    :cond_4
    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 132
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/transition/Transitions;->checkRotationAnimation(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/TransitionInfo;)V

    .line 134
    iget-object v1, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 137
    if-eqz v1, :cond_5

    .line 139
    iget-boolean v3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 141
    if-nez v3, :cond_5

    .line 143
    iget-object v3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 145
    iget-object v4, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 147
    invoke-interface {v1, v3, v2, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 149
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 154
    move-result v3

    .line 157
    if-ge v2, v3, :cond_6

    .line 158
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    move-result-object v1

    .line 163
    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    .line 164
    iget-object v3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 166
    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 168
    invoke-interface {v1, v3, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    .line 173
    goto :goto_2

    .line 175
    :cond_6
    iget-object p2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 176
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 178
    move-result p2

    .line 181
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 182
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 184
    move-result p1

    .line 187
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    new-instance v2, Lcom/android/wm/shell/nano/Transition;

    .line 193
    invoke-direct {v2}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    .line 195
    iput p2, v2, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 200
    move-result-wide v3

    .line 203
    iput-wide v3, v2, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    .line 204
    iput p1, v2, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    .line 206
    iget-object p1, v1, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 208
    invoke-virtual {p1, v2}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 213
    return-void

    .line 216
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    const-string v1, "Can\'t merge across tracks: "

    .line 221
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    const-string p2, " into "

    .line 229
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 240
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 241
    throw p0
    .line 244
.end method

.method public final onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    const-string/jumbo v2, "tracing"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "Invalid command: "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    aget-object p1, p1, v0

    .line 24
    invoke-static {v1, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 26
    const-string p1, ""

    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/transition/Transitions;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 31
    return v0

    .line 34
    :cond_0
    array-length v0, p1

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 40
    check-cast p1, [Ljava/lang/String;

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Tracer;->onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 45
    return v1
    .line 48
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    const-string v2, "Transitions#onTransitionReady"

    .line 4
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    const-string v2, "Transitions.onTransitionReady"

    .line 9
    invoke-virtual {p2, v2}, Landroid/window/TransitionInfo;->setUnreleasedWarningCallSiteForAllSurfaces(Ljava/lang/String;)V

    .line 11
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 14
    if-eqz v2, :cond_0

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 25
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 26
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    const v3, 0x3fcb06b3

    .line 32
    const/4 v5, 0x0

    .line 35
    const-string v6, "onTransitionReady %s: %s"

    .line 36
    invoke-static {v4, v3, v5, v6, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v3

    .line 46
    const/4 v4, -0x1

    .line 47
    add-int/2addr v3, v4

    .line 48
    :goto_0
    if-ltz v3, :cond_2

    .line 49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 54
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 55
    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 57
    if-ne v5, p1, :cond_1

    .line 59
    move v4, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    if-gez v4, :cond_3

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    const-string p3, "Error, RequestStartTransition failed or has other exceptions, onTransitionReady will not continue. mPendingTransitions = "

    .line 70
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string p3, "  transitionToken = "

    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 89
    const-string p3, "WindowManagerShell"

    .line 90
    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 95
    invoke-virtual {p0, p1}, Landroid/window/WindowOrganizer;->transitionReadyFailed(Landroid/os/IBinder;)V

    .line 97
    return-void

    .line 100
    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 104
    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 105
    iput-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 107
    iput-object p3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 109
    iput-object p4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 111
    if-lez v4, :cond_4

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    const-string p3, "Transition might be ready out-of-order "

    .line 117
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string p3, " for "

    .line 125
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    const-string p3, ". This is ok if it\'s on a different track."

    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p2

    .line 141
    const-string p3, "ShellTransitions"

    .line 142
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 149
    move-result p3

    .line 152
    if-nez p3, :cond_5

    .line 153
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_2

    .line 158
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z

    .line 159
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 162
    return-void
    .line 165
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "tracing"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    const-string v0, "  "

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Tracer;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 20
    return-void
    .line 23
.end method

.method public final processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    iget-object v0, v8, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v1, :cond_9

    .line 15
    iget-object v0, v8, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 17
    if-nez v0, :cond_8

    .line 19
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 21
    iget-object v1, v7, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 27
    move-result v0

    .line 30
    int-to-long v5, v0

    .line 31
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object v5

    .line 37
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 41
    const v6, 0x15718457

    .line 42
    const-string v8, "Track %d became idle"

    .line 45
    invoke-static {v0, v6, v3, v8, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    move v0, v4

    .line 50
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v5

    .line 54
    if-ge v0, v5, :cond_3

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 60
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 61
    iget-object v6, v5, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 63
    if-nez v6, :cond_1

    .line 65
    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 69
    move-result v5

    .line 72
    if-eqz v5, :cond_1

    .line 73
    move v5, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v5, v4

    .line 77
    :goto_1
    if-nez v5, :cond_2

    .line 78
    move v3, v4

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_3
    :goto_2
    if-eqz v3, :cond_8

    .line 85
    iget-object v0, v7, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    move-result v1

    .line 92
    if-nez v1, :cond_5

    .line 93
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    move-result v1

    .line 98
    if-nez v1, :cond_8

    .line 99
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 104
    check-cast v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 105
    invoke-virtual {v7, v1}, Lcom/android/wm/shell/transition/Transitions;->dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z

    .line 107
    move-result v1

    .line 110
    if-nez v1, :cond_4

    .line 111
    goto :goto_4

    .line 113
    :cond_5
    iget-object v0, v7, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    move-result v0

    .line 119
    if-eqz v0, :cond_8

    .line 120
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 122
    if-eqz v0, :cond_6

    .line 124
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 126
    const v1, 0x1d40c597

    .line 128
    const-string v3, "All active transition animations finished"

    .line 131
    invoke-static {v0, v1, v4, v3, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_6
    :goto_3
    iget-object v0, v7, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 138
    move-result v1

    .line 141
    if-ge v4, v1, :cond_7

    .line 142
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 147
    check-cast v0, Ljava/lang/Runnable;

    .line 148
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 153
    goto :goto_3

    .line 155
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    :cond_8
    :goto_4
    return-void

    .line 159
    :cond_9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    move-result-object v1

    .line 163
    move-object v9, v1

    .line 164
    check-cast v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 165
    iget-object v1, v8, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 167
    iget-object v5, v7, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 169
    if-nez v1, :cond_21

    .line 171
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    iput-object v9, v8, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 176
    iget-object v0, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 178
    invoke-virtual {v7, v9, v0}, Lcom/android/wm/shell/transition/Transitions;->checkRotationAnimation(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/TransitionInfo;)V

    .line 180
    iget-boolean v0, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 183
    if-eqz v0, :cond_b

    .line 185
    iget-object v0, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 187
    if-eqz v0, :cond_a

    .line 189
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 191
    :cond_a
    invoke-virtual {v7, v9, v2, v2}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 194
    return-void

    .line 197
    :cond_b
    const-string v0, "Transitions#playTransition"

    .line 198
    const-wide/16 v10, 0x20

    .line 200
    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 202
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 205
    if-eqz v0, :cond_c

    .line 207
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 212
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 213
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 215
    move-result-object v0

    .line 218
    const v6, 0x23c14573

    .line 219
    const-string v12, "Playing animation for %s"

    .line 222
    invoke-static {v1, v6, v4, v12, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_c
    move v0, v4

    .line 227
    :goto_5
    iget-object v1, v7, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 230
    move-result v6

    .line 233
    if-ge v0, v6, :cond_d

    .line 234
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    move-result-object v1

    .line 239
    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    .line 240
    iget-object v6, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 242
    invoke-interface {v1, v6}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionStarting(Landroid/os/IBinder;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 247
    goto :goto_5

    .line 249
    :cond_d
    iget-object v0, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 250
    iget-object v1, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 252
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getType()I

    .line 254
    move-result v6

    .line 257
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 258
    move-result v12

    .line 261
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 262
    move-result v6

    .line 265
    move v13, v4

    .line 266
    :goto_6
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 267
    move-result v14

    .line 270
    if-ge v13, v14, :cond_e

    .line 271
    invoke-virtual {v0, v13}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 273
    move-result-object v14

    .line 276
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 277
    move-result-object v14

    .line 280
    invoke-virtual {v1, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 281
    add-int/lit8 v13, v13, 0x1

    .line 284
    goto :goto_6

    .line 286
    :cond_e
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getType()I

    .line 287
    move-result v13

    .line 290
    const v14, 0x7ffffff1

    .line 291
    if-eq v13, v14, :cond_1d

    .line 294
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getType()I

    .line 296
    move-result v13

    .line 299
    const v14, 0x7ffffff4

    .line 300
    if-eq v13, v14, :cond_1d

    .line 303
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getType()I

    .line 305
    move-result v13

    .line 308
    const v14, 0x7ffffff2

    .line 309
    if-ne v13, v14, :cond_f

    .line 312
    goto/16 :goto_12

    .line 314
    :cond_f
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 316
    move-result-object v13

    .line 319
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 320
    move-result v13

    .line 323
    add-int/lit8 v14, v13, 0x1

    .line 324
    add-int/lit8 v15, v13, -0x1

    .line 326
    :goto_7
    if-ltz v15, :cond_1d

    .line 328
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 330
    move-result-object v10

    .line 333
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 334
    move-result-object v10

    .line 337
    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 338
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 340
    move-result-object v11

    .line 343
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 344
    move-result v2

    .line 347
    invoke-static {v10, v0}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 348
    move-result v16

    .line 351
    if-nez v16, :cond_10

    .line 352
    goto/16 :goto_11

    .line 354
    :cond_10
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 356
    move-result-object v16

    .line 359
    if-eqz v16, :cond_11

    .line 360
    move/from16 v16, v3

    .line 362
    goto :goto_8

    .line 364
    :cond_11
    move/from16 v16, v4

    .line 365
    :goto_8
    invoke-static {v0, v10}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 367
    move-result v4

    .line 370
    if-nez v16, :cond_13

    .line 371
    invoke-virtual {v0, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 373
    move-result-object v16

    .line 376
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 377
    move-result-object v3

    .line 380
    invoke-virtual {v1, v11, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 381
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->isInMiuiSizeCompatMode()Z

    .line 384
    move-result v3

    .line 387
    if-eqz v3, :cond_12

    .line 388
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getAbsoluteBounds()Landroid/graphics/Rect;

    .line 390
    move-result-object v3

    .line 393
    goto :goto_9

    .line 394
    :cond_12
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 395
    move-result-object v3

    .line 398
    :goto_9
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 399
    invoke-virtual {v0, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 401
    move-result-object v16

    .line 404
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 405
    move-result-object v8

    .line 408
    iget v8, v8, Landroid/graphics/Point;->x:I

    .line 409
    sub-int/2addr v3, v8

    .line 411
    int-to-float v3, v3

    .line 412
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 413
    move-result-object v8

    .line 416
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 417
    invoke-virtual {v0, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 419
    move-result-object v4

    .line 422
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 423
    move-result-object v4

    .line 426
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 427
    sub-int/2addr v8, v4

    .line 429
    int-to-float v4, v8

    .line 430
    invoke-virtual {v1, v11, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 431
    :cond_13
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 434
    move-result v3

    .line 437
    const/4 v4, 0x2

    .line 438
    and-int/2addr v3, v4

    .line 439
    const/4 v8, 0x3

    .line 440
    if-eqz v3, :cond_16

    .line 441
    const/4 v3, 0x1

    .line 443
    if-eq v2, v3, :cond_15

    .line 444
    if-ne v2, v8, :cond_14

    .line 446
    goto :goto_a

    .line 448
    :cond_14
    neg-int v2, v14

    .line 449
    goto :goto_f

    .line 450
    :cond_15
    :goto_a
    neg-int v2, v14

    .line 451
    add-int/2addr v2, v13

    .line 452
    goto :goto_f

    .line 453
    :cond_16
    const/4 v3, 0x1

    .line 454
    if-eq v2, v3, :cond_1a

    .line 455
    if-ne v2, v8, :cond_17

    .line 457
    goto :goto_c

    .line 459
    :cond_17
    if-eq v2, v4, :cond_19

    .line 460
    const/4 v3, 0x4

    .line 462
    if-ne v2, v3, :cond_18

    .line 463
    goto :goto_b

    .line 465
    :cond_18
    if-nez v6, :cond_1b

    .line 466
    invoke-static {v10}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    .line 468
    move-result v2

    .line 471
    if-eqz v2, :cond_1c

    .line 472
    goto :goto_d

    .line 474
    :cond_19
    :goto_b
    if-eqz v12, :cond_1c

    .line 475
    goto :goto_d

    .line 477
    :cond_1a
    :goto_c
    if-nez v12, :cond_1c

    .line 478
    const/high16 v2, 0x100000

    .line 480
    invoke-virtual {v10, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 482
    move-result v2

    .line 485
    if-eqz v2, :cond_1b

    .line 486
    goto :goto_e

    .line 488
    :cond_1b
    :goto_d
    sub-int v2, v14, v15

    .line 489
    goto :goto_10

    .line 491
    :cond_1c
    :goto_e
    add-int v2, v14, v13

    .line 492
    :goto_f
    sub-int/2addr v2, v15

    .line 494
    :goto_10
    invoke-virtual {v1, v11, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 495
    :goto_11
    add-int/lit8 v15, v15, -0x1

    .line 498
    move-object/from16 v8, p1

    .line 500
    const/4 v2, 0x0

    .line 502
    const/4 v3, 0x1

    .line 503
    const/4 v4, 0x0

    .line 504
    const-wide/16 v10, 0x20

    .line 505
    goto/16 :goto_7

    .line 507
    :cond_1d
    :goto_12
    iget-object v0, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 509
    if-eqz v0, :cond_20

    .line 511
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 513
    if-eqz v1, :cond_1e

    .line 515
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 517
    move-result-object v0

    .line 520
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 521
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 523
    move-result-object v0

    .line 526
    const v2, 0x83ef4b7

    .line 527
    const-string v3, " try firstHandler %s"

    .line 530
    const/4 v4, 0x0

    .line 532
    invoke-static {v1, v2, v4, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 533
    goto :goto_13

    .line 536
    :cond_1e
    const/4 v4, 0x0

    .line 537
    :goto_13
    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 538
    iget-object v11, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 540
    iget-object v12, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 542
    iget-object v13, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 544
    iget-object v14, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 546
    new-instance v15, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;

    .line 548
    invoke-direct {v15, v7, v9, v4}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;I)V

    .line 550
    invoke-interface/range {v10 .. v15}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 553
    move-result v0

    .line 556
    if-eqz v0, :cond_20

    .line 557
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 559
    if-eqz v0, :cond_1f

    .line 561
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 563
    const-string v1, " animated by firstHandler"

    .line 565
    const v2, 0x2a269024

    .line 567
    const/4 v3, 0x0

    .line 570
    const/4 v4, 0x0

    .line 571
    invoke-static {v0, v2, v4, v1, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :cond_1f
    iget-object v0, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 575
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 577
    move-result v0

    .line 580
    iget-object v1, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 581
    invoke-virtual {v5, v0, v1}, Lcom/android/wm/shell/transition/Tracer;->logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 583
    const-wide/16 v0, 0x20

    .line 586
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 588
    goto :goto_14

    .line 591
    :cond_20
    iget-object v1, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 592
    iget-object v2, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 594
    iget-object v3, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 596
    iget-object v4, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 598
    new-instance v5, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;

    .line 600
    const/4 v0, 0x1

    .line 602
    invoke-direct {v5, v7, v9, v0}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;I)V

    .line 603
    iget-object v6, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 606
    move-object/from16 v0, p0

    .line 608
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 610
    move-result-object v0

    .line 613
    iput-object v0, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 614
    const-wide/16 v0, 0x20

    .line 616
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 618
    :goto_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 621
    return-void

    .line 624
    :cond_21
    iget-boolean v0, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 625
    if-eqz v0, :cond_22

    .line 627
    invoke-virtual {v7, v1, v9}, Lcom/android/wm/shell/transition/Transitions;->onMerged(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 629
    return-void

    .line 632
    :cond_22
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 633
    if-eqz v0, :cond_23

    .line 635
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 637
    move-result-object v0

    .line 640
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 641
    move-result-object v2

    .line 644
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 645
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 647
    move-result-object v0

    .line 650
    const v2, 0x44482b10

    .line 651
    const-string v4, "Transition %s ready while %s is still animating. Notify the animating transition in case they can be merged"

    .line 654
    const/4 v6, 0x0

    .line 656
    invoke-static {v3, v2, v6, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 657
    :cond_23
    iget-object v0, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 660
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 662
    move-result v0

    .line 665
    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 666
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 668
    move-result v2

    .line 671
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    new-instance v3, Lcom/android/wm/shell/nano/Transition;

    .line 675
    invoke-direct {v3}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    .line 677
    iput v0, v3, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 682
    move-result-wide v10

    .line 685
    iput-wide v10, v3, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    .line 686
    iput v2, v3, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    .line 688
    iget-object v0, v5, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 690
    invoke-virtual {v0, v3}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 692
    iget-object v10, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 695
    iget-object v11, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 697
    iget-object v12, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 699
    iget-object v13, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 701
    iget-object v14, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 703
    new-instance v15, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda0;

    .line 705
    invoke-direct {v15, v7, v1, v9}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 707
    invoke-interface/range {v10 .. v15}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 710
    return-void
    .line 713
.end method

.method public replaceDefaultHandlerForTest(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    return-void
    .line 8
.end method

.method public final startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;
    .locals 8

    .line 1
    if-nez p3, :cond_0

    .line 2
    const-string v0, ""

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    :goto_0
    const-string v1, "Transitions#startTransition#"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-wide/16 v1, 0x20

    .line 21
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 23
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 26
    const/4 v3, 0x1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    int-to-long v4, p1

    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 39
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v4

    .line 45
    filled-new-array {v4, v0, v6}, [Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    const v4, 0x232ce09c

    .line 50
    const-string v5, "Directly starting a new transition type=%d wct=%s handler=%s"

    .line 53
    invoke-static {v7, v4, v3, v5, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_1
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 58
    invoke-direct {v0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>()V

    .line 60
    iput-object p3, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 63
    if-eqz p3, :cond_2

    .line 65
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object p3

    .line 70
    const-string v4, "com.android.wm.shell.recents.RecentsTransitionHandler"

    .line 71
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    move-result p3

    .line 76
    if-eqz p3, :cond_2

    .line 77
    goto :goto_1

    .line 79
    :cond_2
    const/4 v3, 0x0

    .line 80
    :goto_1
    iget-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 81
    invoke-virtual {p3, p1, p2, v3}, Landroid/window/WindowOrganizer;->startMiuiNewTransition(ILandroid/window/WindowContainerTransaction;Z)Landroid/os/IBinder;

    .line 83
    move-result-object p1

    .line 86
    iput-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 94
    iget-object p0, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 97
    return-object p0
    .line 99
.end method
