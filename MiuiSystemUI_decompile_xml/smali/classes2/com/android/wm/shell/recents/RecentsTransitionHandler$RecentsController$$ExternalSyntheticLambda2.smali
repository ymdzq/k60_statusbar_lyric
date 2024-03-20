.class public final synthetic Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 4
    iput-boolean p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;->f$1:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_4

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 9
    iget-boolean p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;->f$1:Z

    .line 11
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 13
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_3

    .line 17
    if-nez p0, :cond_0

    .line 19
    goto :goto_1

    .line 21
    :cond_0
    iget-object p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 22
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 24
    move-result p0

    .line 27
    if-lez p0, :cond_1

    .line 28
    iget-object p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 30
    invoke-virtual {p0, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    .line 36
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p0, v3

    .line 41
    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 42
    if-eqz v1, :cond_2

    .line 44
    iget v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 46
    int-to-long v0, v0

    .line 48
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 49
    const-string v5, "[%d] RecentsController.setInputConsumerEnabled: set focus to recents"

    .line 51
    new-array v6, v2, [Ljava/lang/Object;

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object v0

    .line 58
    aput-object v0, v6, v3

    .line 59
    const v0, 0x33b07fef

    .line 61
    invoke-static {v4, v0, v2, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_2
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 67
    move-result-object v0

    .line 70
    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->focusTopTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_3

    .line 74
    :catch_0
    move-exception p0

    .line 75
    const-string v0, "RecentsTransitionHandler"

    .line 76
    const-string v1, "Failed to set focused task"

    .line 78
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    goto :goto_3

    .line 83
    :cond_3
    :goto_1
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 84
    if-eqz v4, :cond_5

    .line 86
    if-eqz v1, :cond_4

    .line 88
    goto :goto_2

    .line 90
    :cond_4
    move v2, v3

    .line 91
    :goto_2
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object v2

    .line 97
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    move-result-object v4

    .line 101
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 105
    const/16 v4, 0xf

    .line 106
    const-string v5, "RecentsController.setInputConsumerEnabled: skip, cb?=%b enabled?=%b"

    .line 108
    const v6, -0x3f1eeaa8

    .line 110
    invoke-static {v1, v6, v4, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_5
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 116
    if-eqz v1, :cond_6

    .line 118
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 120
    move-result v1

    .line 123
    if-lez v1, :cond_6

    .line 124
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 126
    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 128
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    .line 132
    move-result v3

    .line 135
    :cond_6
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 136
    move-result-object v0

    .line 139
    invoke-interface {v0, v3, p0}, Landroid/app/IActivityTaskManager;->setInputConsumerEnabled(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :goto_3
    return-void

    .line 143
    :catch_1
    move-exception p0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    .line 145
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 147
    throw v0

    .line 150
    :goto_4
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 151
    iget-boolean p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;->f$1:Z

    .line 153
    iput-boolean p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    .line 155
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 158
.end method
