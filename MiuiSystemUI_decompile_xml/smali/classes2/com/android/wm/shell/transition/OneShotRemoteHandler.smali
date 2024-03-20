.class public final Lcom/android/wm/shell/transition/OneShotRemoteHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mRemote:Landroid/window/RemoteTransition;

.field public mTransition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 8
    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 2
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    .line 9
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    .line 15
    invoke-virtual {v2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    .line 17
    move-result-object v2

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    return-object v0

    .line 23
    :cond_1
    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    .line 24
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 26
    if-eqz p0, :cond_2

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 38
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 43
    const p1, 0x39a8fbbc

    .line 44
    const/4 v0, 0x0

    .line 47
    const-string v1, "RemoteTransition directly requested for %s: %s"

    .line 48
    invoke-static {p2, p1, v0, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_2
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 53
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 55
    return-object p0
    .line 58
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    .line 2
    new-instance v6, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;

    .line 4
    invoke-direct {v6, p0, p3, p5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    .line 9
    move-result-object p0

    .line 12
    invoke-static {p3, p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    .line 13
    move-result-object v4

    .line 16
    if-ne v4, p3, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    .line 20
    move-result-object p2

    .line 23
    :goto_0
    move-object v3, p2

    .line 24
    invoke-virtual {v0}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    .line 25
    move-result-object v1

    .line 28
    move-object v2, p1

    .line 29
    move-object v5, p4

    .line 30
    invoke-interface/range {v1 .. v6}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string p1, "ShellTransitions"

    .line 36
    const-string p2, "Error merging remote transition."

    .line 38
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_1
    return-void
    .line 43
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 8
    iget-object v2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 18
    move-result v3

    .line 21
    int-to-long v3, v3

    .line 22
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    move-result-object v3

    .line 28
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 32
    const/4 v3, 0x4

    .line 33
    const-string v4, "Using registered One-shot remote transition %s for #%d."

    .line 34
    const v6, 0x3f9699d

    .line 36
    invoke-static {v5, v6, v3, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_1
    new-instance v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;

    .line 42
    invoke-direct {v0, p0, p5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 44
    new-instance v3, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;

    .line 47
    invoke-direct {v3, p0, v0, p4, p5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 49
    invoke-virtual {v2}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    .line 52
    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    .line 56
    :try_start_0
    invoke-virtual {v2}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 59
    move-result-object p0

    .line 62
    if-eqz p0, :cond_2

    .line 63
    invoke-virtual {v2}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 65
    move-result-object p0

    .line 68
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 69
    :cond_2
    invoke-virtual {v2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    .line 72
    move-result-object p0

    .line 75
    invoke-static {p3, p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    .line 76
    move-result-object p0

    .line 79
    if-ne p0, p3, :cond_3

    .line 80
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    .line 83
    move-result-object p2

    .line 86
    :goto_0
    invoke-virtual {v2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    .line 87
    move-result-object p4

    .line 90
    invoke-interface {p4, p1, p2, p0, v3}, Landroid/window/IRemoteTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 91
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 97
    :catch_0
    move-exception p0

    .line 98
    const-string p1, "ShellTransitions"

    .line 99
    const-string p2, "Error running remote transition."

    .line 101
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    invoke-virtual {v2}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 106
    move-result-object p0

    .line 109
    if-eqz p0, :cond_4

    .line 110
    invoke-virtual {v2}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 112
    move-result-object p0

    .line 115
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 116
    :cond_4
    const/4 p0, 0x0

    .line 119
    invoke-interface {p5, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 120
    :goto_1
    const/4 p0, 0x1

    .line 123
    return p0
    .line 124
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "OneShotRemoteHandler:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    .line 9
    invoke-virtual {p0}, Landroid/window/RemoteTransition;->getDebugName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ":"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    return-object p0
    .line 34
.end method
