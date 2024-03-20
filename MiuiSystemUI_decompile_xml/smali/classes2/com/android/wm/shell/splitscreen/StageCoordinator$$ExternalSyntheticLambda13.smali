.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic f$1:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;->f$1:Landroid/view/RemoteAnimationAdapter;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p2

    .line 3
    move-object/from16 v1, p6

    .line 4
    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 6
    const/4 v4, 0x0

    .line 8
    const-string v6, "StageCoordinator"

    .line 9
    const-string v7, "Error starting remote animation"

    .line 11
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;->f$1:Landroid/view/RemoteAnimationAdapter;

    .line 13
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 15
    packed-switch v3, :pswitch_data_0

    .line 17
    move-object v9, p4

    .line 20
    move-object/from16 v10, p5

    .line 21
    goto/16 :goto_3

    .line 23
    :pswitch_0
    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    array-length v3, v2

    .line 30
    if-nez v3, :cond_0

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    const-class v3, Landroid/view/RemoteAnimationTarget;

    .line 34
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    .line 36
    move-result-object v8

    .line 39
    move-object v9, p4

    .line 40
    invoke-static {v3, p4, v8}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 44
    move-object v8, v3

    .line 45
    check-cast v8, [Landroid/view/RemoteAnimationTarget;

    .line 46
    :goto_0
    array-length v3, v2

    .line 48
    if-ge v4, v3, :cond_2

    .line 49
    aget-object v3, v2, v4

    .line 51
    iget v9, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 53
    if-nez v9, :cond_1

    .line 55
    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 57
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 59
    aget-object v3, v2, v4

    .line 62
    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 64
    const/4 v9, 0x0

    .line 66
    invoke-virtual {v1, v3, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 67
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    const/4 v3, 0x1

    .line 73
    invoke-virtual {v0, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 74
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 77
    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;

    .line 80
    move-object/from16 v10, p5

    .line 82
    invoke-direct {v9, v0, p2, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 84
    invoke-virtual {v5}, Landroid/view/RemoteAnimationAdapter;->getCallingApplication()Landroid/app/IApplicationThread;

    .line 87
    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    .line 91
    :try_start_0
    invoke-virtual {v5}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 94
    move-result-object v0

    .line 97
    move v1, p1

    .line 98
    move-object v2, p2

    .line 99
    move-object v3, p3

    .line 100
    move-object v4, v8

    .line 101
    move-object v5, v9

    .line 102
    invoke-interface/range {v0 .. v5}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    goto :goto_2

    .line 111
    :cond_3
    :goto_1
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V

    .line 112
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 115
    :try_start_1
    invoke-virtual {v5}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 118
    move-result-object v0

    .line 121
    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    goto :goto_2

    .line 125
    :catch_1
    move-exception v0

    .line 126
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :goto_2
    return-void

    .line 130
    :goto_3
    if-eqz v2, :cond_7

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    array-length v3, v2

    .line 136
    if-nez v3, :cond_4

    .line 137
    goto :goto_5

    .line 139
    :cond_4
    :goto_4
    array-length v0, v2

    .line 140
    if-ge v4, v0, :cond_6

    .line 141
    aget-object v0, v2, v4

    .line 143
    iget v3, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 145
    if-nez v3, :cond_5

    .line 147
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 149
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 151
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 154
    goto :goto_4

    .line 156
    :cond_6
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 157
    :try_start_2
    invoke-virtual {v5}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 160
    move-result-object v0

    .line 163
    move v1, p1

    .line 164
    move-object v2, p2

    .line 165
    move-object v3, p3

    .line 166
    move-object v4, p4

    .line 167
    move-object/from16 v5, p5

    .line 168
    invoke-interface/range {v0 .. v5}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 170
    goto :goto_6

    .line 173
    :catch_2
    move-exception v0

    .line 174
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    goto :goto_6

    .line 178
    :cond_7
    :goto_5
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V

    .line 179
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 182
    :try_start_3
    invoke-virtual {v5}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 185
    move-result-object v0

    .line 188
    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 189
    goto :goto_6

    .line 192
    :catch_3
    move-exception v0

    .line 193
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :goto_6
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 198
.end method
