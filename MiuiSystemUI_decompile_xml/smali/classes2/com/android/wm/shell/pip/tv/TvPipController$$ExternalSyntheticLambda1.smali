.class public final synthetic Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 10
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->reloadResources()V

    .line 19
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipController$2;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipController$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 27
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->addListener(Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;)V

    .line 29
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipController$1;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipController$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 37
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mWmShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 42
    :try_start_0
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipController$3;

    .line 44
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipController$3;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/WindowManagerShellWrapper;->addPinnedStackListener(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 54
    if-eqz v1, :cond_0

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 62
    const-string v2, "TvPipController"

    .line 64
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 69
    const/4 v2, 0x0

    .line 70
    const-string v3, "%s: Failed to register pinned stack listener, %s"

    .line 71
    const v4, 0x5e3c5f2e

    .line 73
    invoke-static {v1, v4, v2, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 79
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 81
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipMediaController;->mSessionsChangedListener:Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

    .line 83
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 85
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 88
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 90
    const/4 v4, 0x0

    .line 92
    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 96
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 101
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    .line 103
    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    return-void

    .line 114
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 115
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->closeCurrentPiP(I)V

    .line 119
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 124
.end method
