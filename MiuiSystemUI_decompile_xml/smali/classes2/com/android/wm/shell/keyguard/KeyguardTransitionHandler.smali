.class public final Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mExitTransition:Landroid/window/IRemoteTransition;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

.field public mOccludeTransition:Landroid/window/IRemoteTransition;

.field public final mStartedTransitions:Landroid/util/ArrayMap;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public mUnoccludeTransition:Landroid/window/IRemoteTransition;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mExitTransition:Landroid/window/IRemoteTransition;

    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mUnoccludeTransition:Landroid/window/IRemoteTransition;

    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 21
    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 23
    new-instance p2, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {p2, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V

    .line 27
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 30
    return-void
    .line 33
.end method

.method public static finishAnimationImmediately(Landroid/os/IBinder;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;)V
    .locals 6

    .line 1
    new-instance v1, Landroid/os/Binder;

    .line 2
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 4
    new-instance v2, Landroid/window/TransitionInfo;

    .line 7
    const/16 v0, 0xc

    .line 9
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v0, v3}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 12
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 15
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 17
    new-instance v5, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;

    .line 20
    invoke-direct {v5}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;-><init>()V

    .line 22
    :try_start_0
    iget-object v0, p1, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mPlayer:Landroid/window/IRemoteTransition;

    .line 25
    move-object v4, p0

    .line 27
    invoke-interface/range {v0 .. v5}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "KeyguardTransition"

    .line 33
    const-string v0, "RemoteException thrown from KeyguardService transition"

    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :goto_0
    return-void
    .line 40
.end method

.method public static handles(Landroid/window/TransitionInfo;)Z
    .locals 5

    .line 1
    const-class v0, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    .line 2
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    .line 13
    move-result v1

    .line 16
    and-int/lit16 v1, v1, 0x1000

    .line 17
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    .line 23
    move-result v1

    .line 26
    and-int/lit16 v1, v1, 0x2000

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    .line 31
    move-result v1

    .line 34
    and-int/lit16 v1, v1, 0x100

    .line 35
    if-nez v1, :cond_2

    .line 37
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    .line 39
    move-result v1

    .line 42
    const/4 v4, 0x7

    .line 43
    if-eq v1, v4, :cond_1

    .line 44
    const/16 v4, 0x8

    .line 46
    if-eq v1, v4, :cond_1

    .line 48
    const/16 v4, 0x9

    .line 50
    if-ne v1, v4, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    move v1, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    move v1, v2

    .line 57
    :goto_1
    if-nez v1, :cond_2

    .line 58
    move v1, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v1, v3

    .line 62
    :goto_2
    if-eqz v1, :cond_3

    .line 63
    return v3

    .line 65
    :cond_3
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {p0}, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;->isKeyguardEditorOpen(Landroid/window/TransitionInfo;)Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    return v2

    .line 81
    :cond_4
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    .line 82
    move-result p0

    .line 85
    and-int/lit16 p0, p0, 0x3900

    .line 86
    if-eqz p0, :cond_5

    .line 88
    goto :goto_3

    .line 90
    :cond_5
    move v2, v3

    .line 91
    :goto_3
    return v2
    .line 92
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;

    .line 8
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_1

    .line 11
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 21
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    const p2, 0x129fc3d9

    .line 27
    const-string/jumbo p3, "unknown keyguard transition %s"

    .line 30
    invoke-static {p1, p2, v0, p3, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 37
    move-result v1

    .line 40
    and-int/lit16 v1, v1, 0x800

    .line 41
    iget-object v2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 43
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 47
    move-result v1

    .line 50
    and-int/lit16 v1, v1, 0x100

    .line 51
    if-nez v1, :cond_3

    .line 53
    :cond_2
    const-class v1, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    .line 55
    invoke-static {v1}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-static {v2}, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;->isKeyguardEditorOpen(Landroid/window/TransitionInfo;)Z

    .line 66
    move-result v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    :cond_3
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 72
    if-eqz v1, :cond_4

    .line 74
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 79
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 80
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 85
    const v3, -0x357d111

    .line 86
    const-string v4, "canceling keyguard exit transition %s"

    .line 89
    invoke-static {v2, v3, v0, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 94
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mPlayer:Landroid/window/IRemoteTransition;

    .line 99
    new-instance v6, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;

    .line 101
    invoke-direct {v6}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;-><init>()V

    .line 103
    move-object v2, p1

    .line 106
    move-object v3, p2

    .line 107
    move-object v4, p3

    .line 108
    move-object v5, p4

    .line 109
    invoke-interface/range {v1 .. v6}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 113
    :catch_0
    move-exception p0

    .line 114
    const-string p1, "KeyguardTransition"

    .line 115
    const-string p2, "RemoteException thrown from KeyguardService transition"

    .line 117
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_0
    const/4 p0, 0x0

    .line 122
    invoke-interface {p5, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 123
    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 127
    move-result p1

    .line 130
    const/16 p3, 0xc

    .line 131
    if-ne p1, p3, :cond_6

    .line 133
    return-void

    .line 135
    :cond_6
    invoke-static {p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    .line 136
    move-result p1

    .line 139
    if-eqz p1, :cond_7

    .line 140
    invoke-static {p4, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->finishAnimationImmediately(Landroid/os/IBinder;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;)V

    .line 142
    :cond_7
    :goto_1
    return-void
    .line 145
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-static {p1, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->finishAnimationImmediately(Landroid/os/IBinder;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 10

    .line 1
    invoke-static {p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 3
    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mExitTransition:Landroid/window/IRemoteTransition;

    const-string v4, "going-away"

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 5
    invoke-static {p2, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_3

    .line 6
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 7
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 10
    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

    const-string v4, "occlude-by-dream"

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    const-string v2, "occlude"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    .line 12
    :cond_5
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    .line 13
    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mUnoccludeTransition:Landroid/window/IRemoteTransition;

    const-string/jumbo v4, "unocclude"

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    .line 14
    :cond_6
    const-class v0, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;->isKeyguardEditorOpen(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    const-string v4, "keyguard-editor-open"

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    .line 17
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Refused to play keyguard transition: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTransition"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 4

    .line 20
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x116df024    # 1.8770002E-28f

    const-string/jumbo v3, "start keyguard %s transition, info = %s"

    invoke-static {v2, v0, v1, v3, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 21
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;

    invoke-direct {v0, p4, p6, p1}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;-><init>(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)V

    invoke-virtual {p2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p2, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;

    invoke-direct {p2, p0, p6, p3, p7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-interface {p1, p3, p4, p5, p2}, Landroid/window/IRemoteTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-virtual {p5}, Landroid/view/SurfaceControl$Transaction;->clear()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardTransition"

    const-string p2, "RemoteException thrown from local IRemoteTransition"

    .line 24
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
