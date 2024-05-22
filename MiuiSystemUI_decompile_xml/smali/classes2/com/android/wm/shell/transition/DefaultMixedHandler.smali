.class public final Lcom/android/wm/shell/transition/DefaultMixedHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;


# instance fields
.field public final mActiveTransitions:Ljava/util/ArrayList;

.field public final mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

.field public final mMiuiFreeformModeController:Ljava/util/Optional;

.field public mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final mPlayer:Lcom/android/wm/shell/transition/Transitions;

.field public mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

.field public mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 10
    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mMiuiFreeformModeController:Ljava/util/Optional;

    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 16
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p5}, Ljava/util/Optional;->isPresent()Z

    .line 22
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p4}, Ljava/util/Optional;->isPresent()Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    new-instance p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;

    .line 34
    move-object v0, p1

    .line 36
    move-object v1, p0

    .line 37
    move-object v2, p5

    .line 38
    move-object v3, p4

    .line 39
    move-object v4, p6

    .line 40
    move-object v5, p7

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    .line 42
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 45
    :cond_0
    return-void
    .line 48
.end method


# virtual methods
.method public final animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 10
    const/4 v1, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 16
    const v5, 0x7ea2ca34

    .line 18
    const-string v8, " Animating a mixed transition for entering PIP while Split-Screen is foreground."

    .line 21
    invoke-static {v0, v5, v4, v8, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_0
    const/4 v0, 0x4

    .line 26
    const/4 v8, 0x1

    .line 27
    invoke-virtual {v6, v2, v0, v8}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 28
    move-result-object v5

    .line 31
    invoke-static {v2, v8}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 32
    move-result v0

    .line 35
    move-object v10, v1

    .line 36
    move-object v15, v10

    .line 37
    move v9, v4

    .line 38
    :goto_0
    const/4 v11, 0x2

    .line 39
    if-ltz v0, :cond_7

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 42
    move-result-object v12

    .line 45
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v12

    .line 49
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 50
    iget-object v13, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 54
    move-result v14

    .line 57
    invoke-virtual {v13, v12, v14}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    .line 58
    move-result v13

    .line 61
    if-eqz v13, :cond_2

    .line 62
    if-nez v15, :cond_1

    .line 64
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 66
    move-result-object v11

    .line 69
    invoke-interface {v11, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    move-object v15, v12

    .line 73
    goto :goto_3

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    const-string v3, "More than 1 pip-entering changes in one transition? "

    .line 79
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0

    .line 94
    :cond_2
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 95
    move-result-object v13

    .line 98
    if-eqz v13, :cond_3

    .line 99
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 101
    move-result-object v13

    .line 104
    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 105
    move-result v13

    .line 108
    if-ne v13, v11, :cond_3

    .line 109
    move v13, v8

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    move v13, v4

    .line 113
    :goto_1
    if-eqz v13, :cond_4

    .line 114
    move v9, v8

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 118
    move-result v13

    .line 121
    and-int/2addr v11, v13

    .line 122
    if-eqz v11, :cond_5

    .line 123
    move v11, v8

    .line 125
    goto :goto_2

    .line 126
    :cond_5
    move v11, v4

    .line 127
    :goto_2
    if-eqz v11, :cond_6

    .line 128
    move-object v10, v12

    .line 130
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 131
    goto :goto_0

    .line 133
    :cond_7
    if-nez v15, :cond_8

    .line 134
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    return v4

    .line 141
    :cond_8
    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    .line 142
    move-object/from16 v12, p5

    .line 144
    invoke-direct {v0, v6, v7, v9, v12}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 146
    if-eqz v9, :cond_d

    .line 149
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 151
    if-eqz v2, :cond_9

    .line 153
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 155
    const v9, 0x1fed3c4f

    .line 157
    const-string v12, " Animation is actually mixed since entering-PiP caused us to leave split and return home."

    .line 160
    invoke-static {v2, v9, v4, v12, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_9
    iput v11, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 165
    if-eqz v10, :cond_a

    .line 167
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 169
    move-result-object v1

    .line 172
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 173
    move-result-object v1

    .line 176
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 177
    move-result-object v2

    .line 180
    const/high16 v4, 0x3f800000    # 1.0f

    .line 181
    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 183
    :cond_a
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    .line 186
    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 188
    iget-object v9, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 191
    const/4 v10, -0x1

    .line 193
    const/16 v11, 0x9

    .line 194
    move-object v12, v5

    .line 196
    move-object v13, v4

    .line 197
    move-object/from16 v14, p4

    .line 198
    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 200
    invoke-static {v5, v8}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 203
    move-result v1

    .line 206
    :goto_4
    if-ltz v1, :cond_c

    .line 207
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 209
    move-result-object v2

    .line 212
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    move-result-object v2

    .line 216
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 217
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 219
    move-result v2

    .line 222
    const/high16 v9, 0x400000

    .line 223
    and-int/2addr v2, v9

    .line 225
    if-eqz v2, :cond_b

    .line 226
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 228
    move-result-object v2

    .line 231
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 232
    goto :goto_5

    .line 235
    :cond_b
    add-int/lit8 v1, v1, -0x1

    .line 236
    goto :goto_4

    .line 238
    :cond_c
    :goto_5
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 239
    move-object v2, v1

    .line 241
    check-cast v2, Lcom/android/wm/shell/pip/PipTransition;

    .line 242
    iput v8, v2, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    .line 244
    move-object/from16 v9, p4

    .line 246
    invoke-virtual {v1, v15, v3, v9, v0}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 248
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 251
    iget-object v2, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 253
    move-object v10, v0

    .line 255
    move-object v0, v1

    .line 256
    move-object v1, v2

    .line 257
    move-object v2, v5

    .line 258
    move-object v3, v4

    .line 259
    move-object/from16 v4, p4

    .line 260
    move-object v5, v10

    .line 262
    move-object/from16 v6, p0

    .line 263
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 265
    move-result-object v0

    .line 268
    iput-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 269
    goto :goto_6

    .line 271
    :cond_d
    move-object/from16 v9, p4

    .line 272
    move-object v10, v0

    .line 274
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 275
    if-eqz v0, :cond_e

    .line 277
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 279
    const v5, 0x2793455

    .line 281
    const-string v11, "  Not leaving split, so just forward animation to Pip-Handler."

    .line 284
    invoke-static {v0, v5, v4, v11, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_e
    iput v8, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 289
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 291
    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 293
    check-cast v0, Lcom/android/wm/shell/pip/PipTransition;

    .line 295
    move-object/from16 v2, p2

    .line 297
    move-object/from16 v3, p3

    .line 299
    move-object/from16 v4, p4

    .line 301
    move-object v5, v10

    .line 303
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 304
    :goto_6
    return v8
    .line 307
.end method

.method public final handleRecentsRequest()Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 6
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
    .line 16
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_6

    .line 11
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 13
    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 20
    move-result v1

    .line 23
    const/16 v5, 0xa

    .line 24
    if-ne v1, v5, :cond_0

    .line 26
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v4

    .line 30
    :goto_0
    if-nez v1, :cond_1

    .line 31
    goto :goto_3

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    move-result-object v1

    .line 37
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 38
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 40
    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    move-result-object v1

    .line 47
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 48
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 50
    move-result v7

    .line 53
    if-ne v7, v1, :cond_2

    .line 54
    iget v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 56
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 59
    move-result v7

    .line 62
    if-ne v7, v1, :cond_3

    .line 63
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 65
    move-result v0

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v0, v2

    .line 70
    :goto_1
    if-eq v0, v2, :cond_4

    .line 71
    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 80
    move-result v0

    .line 83
    if-nez v0, :cond_6

    .line 84
    :cond_5
    :goto_2
    move v0, v3

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    :goto_3
    move v0, v4

    .line 88
    :goto_4
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 89
    const/4 v5, 0x0

    .line 91
    if-eqz v0, :cond_e

    .line 92
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 94
    if-eqz v0, :cond_7

    .line 96
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 98
    const v6, -0x86b03de

    .line 100
    const-string v7, " Got a PiP-enter request while Split-Screen is active, so treat it as Mixed."

    .line 103
    invoke-static {v0, v6, v4, v7, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_7
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 108
    move-result-object v0

    .line 111
    if-nez v0, :cond_d

    .line 112
    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 114
    invoke-direct {v0, p1, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(Landroid/os/IBinder;I)V

    .line 116
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 122
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 127
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/wm/shell/pip/PipTransitionController;->augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V

    .line 129
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 137
    move-result-object p1

    .line 140
    if-eqz p1, :cond_8

    .line 141
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 143
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 145
    if-eq v1, v3, :cond_8

    .line 147
    goto :goto_5

    .line 149
    :cond_8
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 150
    move-result p2

    .line 153
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    .line 154
    move-result v1

    .line 157
    if-eqz v1, :cond_c

    .line 158
    invoke-static {p2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 160
    move-result p2

    .line 163
    if-nez p2, :cond_c

    .line 164
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 166
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 168
    move-result v1

    .line 171
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 172
    if-eqz v1, :cond_9

    .line 174
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 176
    move-result v1

    .line 179
    if-nez v1, :cond_c

    .line 180
    :cond_9
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 182
    if-eqz v1, :cond_a

    .line 184
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 186
    move-result p2

    .line 189
    int-to-long v5, p2

    .line 190
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 191
    move-result p2

    .line 194
    int-to-long v7, p2

    .line 195
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 196
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    move-result-object v1

    .line 201
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    move-result-object v3

    .line 205
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 206
    move-result-object v1

    .line 209
    const-string v3, "  One of the splits became empty during a mixed transition (one not handled by split), so make sure split-screen state is cleaned-up. mainStageCount=%d sideStageCount=%d"

    .line 210
    const v5, -0x1ff98950

    .line 212
    const/4 v6, 0x5

    .line 215
    invoke-static {p2, v5, v6, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_a
    if-eqz p1, :cond_b

    .line 219
    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;

    .line 221
    invoke-direct {p2, p1, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 223
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 226
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 228
    :cond_b
    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 231
    :cond_c
    :goto_5
    return-object v0

    .line 234
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 235
    const-string p1, "Unexpected remote transition inpip-enter-from-split request"

    .line 237
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 239
    throw p0

    .line 242
    :cond_e
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 243
    move-result-object v0

    .line 246
    const/4 v2, 0x2

    .line 247
    iget-object v6, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 248
    if-eqz v0, :cond_11

    .line 250
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 252
    move-result v0

    .line 255
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 256
    move-result v0

    .line 259
    if-eqz v0, :cond_11

    .line 260
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 262
    move-result-object v0

    .line 265
    const/4 v7, 0x3

    .line 266
    if-eqz v0, :cond_f

    .line 267
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 269
    move-result-object v0

    .line 272
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 273
    if-eq v0, v2, :cond_11

    .line 275
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 277
    move-result-object v0

    .line 280
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 281
    if-eq v0, v7, :cond_11

    .line 283
    :cond_f
    invoke-virtual {v6, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;

    .line 285
    move-result-object p0

    .line 288
    if-nez p0, :cond_10

    .line 289
    return-object v5

    .line 291
    :cond_10
    new-instance p2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 292
    invoke-direct {p2, p1, v7}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(Landroid/os/IBinder;I)V

    .line 294
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 297
    check-cast p1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 299
    iput-object p1, p2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 301
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 306
    check-cast p0, Landroid/window/WindowContainerTransaction;

    .line 308
    return-object p0

    .line 310
    :cond_11
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 311
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 313
    move-result v0

    .line 316
    if-eqz v0, :cond_15

    .line 317
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 319
    move-result v0

    .line 322
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 323
    move-result v0

    .line 326
    if-eqz v0, :cond_15

    .line 327
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 329
    move-result-object v0

    .line 332
    if-eqz v0, :cond_15

    .line 333
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 335
    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 339
    move-result v0

    .line 342
    if-ne v0, v3, :cond_15

    .line 343
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 345
    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 349
    move-result v0

    .line 352
    if-ne v0, v2, :cond_15

    .line 353
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 355
    if-eqz v0, :cond_12

    .line 357
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 359
    const v2, -0x7f55aa37

    .line 361
    const-string v3, " Got a going-home request while Split-Screen is foreground, so treat it as Mixed."

    .line 364
    invoke-static {v0, v2, v4, v3, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :cond_12
    invoke-virtual {v6, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;

    .line 369
    move-result-object p0

    .line 372
    if-nez p0, :cond_14

    .line 373
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 375
    if-eqz p0, :cond_13

    .line 377
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 379
    const p2, -0x48aead5e

    .line 381
    const-string v0, " Lean on the remote transition handler to fetch a proper remote via TransitionFilter"

    .line 384
    invoke-static {p0, p2, v4, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :cond_13
    new-instance p0, Landroid/util/Pair;

    .line 389
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 391
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 393
    iget-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 396
    invoke-direct {p0, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    :cond_14
    new-instance p2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 401
    const/4 v0, 0x4

    .line 403
    invoke-direct {p2, p1, v0}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(Landroid/os/IBinder;I)V

    .line 404
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 407
    check-cast p1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 409
    iput-object p1, p2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 411
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 416
    check-cast p0, Landroid/window/WindowContainerTransaction;

    .line 418
    return-object p0

    .line 420
    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 421
    if-eqz v0, :cond_17

    .line 423
    invoke-static {p2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->hasUnfold(Landroid/window/TransitionRequestInfo;)Z

    .line 425
    move-result v0

    .line 428
    if-eqz v0, :cond_17

    .line 429
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 431
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    .line 433
    move-result-object p2

    .line 436
    if-eqz p2, :cond_16

    .line 437
    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 439
    const/4 v2, 0x6

    .line 441
    invoke-direct {v0, p1, v2}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(Landroid/os/IBinder;I)V

    .line 442
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 445
    iput-object p0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 447
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_16
    return-object p2

    .line 452
    :cond_17
    return-object v5
    .line 453
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v4

    .line 10
    if-ge v2, v4, :cond_e

    .line 11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v4

    .line 16
    check-cast v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 17
    iget-object v4, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 19
    move-object/from16 v11, p4

    .line 21
    if-eq v4, v11, :cond_1

    .line 23
    :cond_0
    :goto_1
    move-object v12, p1

    .line 25
    goto/16 :goto_4

    .line 26
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 32
    iget v4, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 34
    if-gtz v4, :cond_2

    .line 36
    return-void

    .line 38
    :cond_2
    const/4 v4, 0x2

    .line 39
    iget v5, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    .line 40
    if-ne v5, v4, :cond_3

    .line 42
    goto :goto_1

    .line 44
    :cond_3
    const/4 v4, 0x1

    .line 45
    if-ne v5, v4, :cond_8

    .line 46
    iget v5, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    .line 48
    if-ne v5, v4, :cond_7

    .line 50
    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 52
    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 54
    iget-object v6, v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 56
    if-eqz v6, :cond_4

    .line 58
    move v4, v1

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    iget-object v6, v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v7

    .line 67
    sub-int/2addr v7, v4

    .line 68
    :goto_2
    if-ltz v7, :cond_5

    .line 69
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v8

    .line 74
    check-cast v8, Landroid/animation/Animator;

    .line 75
    iget-object v9, v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 77
    iget-object v9, v9, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 79
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v10, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda3;

    .line 84
    invoke-direct {v10, v8, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda3;-><init>(Landroid/animation/Animator;I)V

    .line 86
    check-cast v9, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 89
    invoke-virtual {v9, v10}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    add-int/lit8 v7, v7, -0x1

    .line 94
    goto :goto_2

    .line 96
    :cond_5
    :goto_3
    if-nez v4, :cond_6

    .line 97
    return-void

    .line 99
    :cond_6
    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 100
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    .line 102
    iget-object v5, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 105
    if-eqz v5, :cond_0

    .line 107
    move-object v6, p1

    .line 109
    move-object v7, p2

    .line 110
    move-object/from16 v8, p3

    .line 111
    move-object/from16 v9, p4

    .line 113
    move-object/from16 v10, p5

    .line 115
    invoke-interface/range {v5 .. v10}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 117
    goto :goto_1

    .line 120
    :cond_7
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 121
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    .line 123
    goto :goto_1

    .line 126
    :cond_8
    const/4 v6, 0x3

    .line 127
    if-ne v5, v6, :cond_9

    .line 128
    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 130
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    .line 132
    iget-object v5, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 135
    if-eqz v5, :cond_0

    .line 137
    move-object v6, p1

    .line 139
    move-object v7, p2

    .line 140
    move-object/from16 v8, p3

    .line 141
    move-object/from16 v9, p4

    .line 143
    move-object/from16 v10, p5

    .line 145
    invoke-interface/range {v5 .. v10}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 147
    goto :goto_1

    .line 150
    :cond_9
    const/4 v6, 0x4

    .line 151
    if-ne v5, v6, :cond_b

    .line 152
    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 154
    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 156
    move-object v12, p1

    .line 158
    invoke-virtual {v5, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 159
    move-result v5

    .line 162
    if-eqz v5, :cond_a

    .line 163
    iput v4, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    .line 165
    :cond_a
    iget-object v5, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 167
    move-object v6, p1

    .line 169
    move-object v7, p2

    .line 170
    move-object/from16 v8, p3

    .line 171
    move-object/from16 v9, p4

    .line 173
    move-object/from16 v10, p5

    .line 175
    invoke-interface/range {v5 .. v10}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 177
    goto :goto_4

    .line 180
    :cond_b
    move-object v12, p1

    .line 181
    const/4 v3, 0x5

    .line 182
    if-ne v5, v3, :cond_c

    .line 183
    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 185
    move-object v6, p1

    .line 187
    move-object v7, p2

    .line 188
    move-object/from16 v8, p3

    .line 189
    move-object/from16 v9, p4

    .line 191
    move-object/from16 v10, p5

    .line 193
    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 195
    goto :goto_4

    .line 198
    :cond_c
    const/4 v3, 0x6

    .line 199
    if-ne v5, v3, :cond_d

    .line 200
    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 202
    move-object v6, p1

    .line 204
    move-object v7, p2

    .line 205
    move-object/from16 v8, p3

    .line 206
    move-object/from16 v9, p4

    .line 208
    move-object/from16 v10, p5

    .line 210
    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 212
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 215
    goto/16 :goto_0

    .line 217
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    const-string v2, "Playing a mixed transition with unknown type? "

    .line 223
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v1

    .line 234
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 235
    throw v0

    .line 238
    :cond_e
    return-void
    .line 239
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 16
    iget-object v3, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 18
    if-eq v3, p1, :cond_0

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_1
    if-nez v0, :cond_2

    .line 33
    return-void

    .line 35
    :cond_2
    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    .line 36
    if-ne v1, v2, :cond_3

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 40
    check-cast p0, Lcom/android/wm/shell/pip/PipTransition;

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTransition;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 44
    goto :goto_2

    .line 47
    :cond_3
    const/4 v2, 0x4

    .line 48
    if-ne v1, v2, :cond_4

    .line 49
    iget-object p0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 51
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 53
    goto :goto_2

    .line 56
    :cond_4
    const/4 v2, 0x3

    .line 57
    if-ne v1, v2, :cond_5

    .line 58
    iget-object p0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 60
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 62
    goto :goto_2

    .line 65
    :cond_5
    const/4 v0, 0x5

    .line 66
    if-ne v1, v0, :cond_6

    .line 67
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 71
    goto :goto_2

    .line 74
    :cond_6
    const/4 p1, 0x6

    .line 75
    if-ne v1, p1, :cond_7

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    :cond_7
    :goto_2
    return-void
    .line 83
.end method

.method public final setRecentsTransition(Landroid/os/IBinder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    const v1, -0x1acebd77

    .line 16
    const/4 v2, 0x0

    .line 19
    const-string v3, " Got a recents request while Split-Screen is foreground, so treat it as Mixed."

    .line 20
    const/4 v4, 0x0

    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_0
    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 26
    const/4 v1, 0x4

    .line 28
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(Landroid/os/IBinder;I)V

    .line 29
    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 32
    iput-object p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    const-string p1, "Accepted a recents transition but don\'t know how to handle it"

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
    .line 49
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move-object/from16 v7, p2

    .line 6
    move-object/from16 v8, p3

    .line 8
    move-object/from16 v9, p4

    .line 10
    move-object/from16 v5, p5

    .line 12
    iget-object v10, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 19
    const/4 v11, 0x1

    .line 20
    sub-int/2addr v1, v11

    .line 21
    :goto_0
    const/4 v2, 0x0

    .line 22
    if-ltz v1, :cond_1

    .line 23
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 29
    iget-object v3, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 31
    if-eq v3, v0, :cond_0

    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    move-object v1, v2

    .line 45
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    .line 46
    move-result v3

    .line 49
    const/4 v4, 0x5

    .line 50
    const/4 v12, 0x0

    .line 51
    if-eqz v3, :cond_4

    .line 52
    if-eqz v1, :cond_3

    .line 54
    iget v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    .line 56
    if-eq v1, v4, :cond_3

    .line 58
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 60
    if-eqz v1, :cond_2

    .line 62
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 64
    const v3, 0x6b154bc1

    .line 66
    const-string v13, "Converting mixed transition into a keyguard transition"

    .line 69
    invoke-static {v1, v3, v12, v13, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_2
    invoke-virtual {v6, v0, v12, v2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 74
    :cond_3
    new-instance v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 77
    invoke-direct {v1, v0, v4}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(Landroid/os/IBinder;I)V

    .line 79
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_4
    move-object v13, v1

    .line 85
    if-nez v13, :cond_5

    .line 86
    return v12

    .line 88
    :cond_5
    iget v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    .line 89
    if-ne v0, v11, :cond_6

    .line 91
    move-object/from16 v0, p0

    .line 93
    move-object v1, v13

    .line 95
    move-object/from16 v2, p2

    .line 96
    move-object/from16 v3, p3

    .line 98
    move-object/from16 v4, p4

    .line 100
    move-object/from16 v5, p5

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 104
    move-result v0

    .line 107
    return v0

    .line 108
    :cond_6
    const/4 v1, 0x2

    .line 109
    if-ne v0, v1, :cond_7

    .line 110
    return v12

    .line 112
    :cond_7
    const/4 v1, 0x3

    .line 113
    if-ne v0, v1, :cond_f

    .line 114
    invoke-static {v7, v11}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 116
    move-result v0

    .line 119
    move-object v3, v2

    .line 120
    :goto_2
    if-ltz v0, :cond_a

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 123
    move-result-object v4

    .line 126
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v4

    .line 130
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 131
    iget-object v14, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 135
    move-result v15

    .line 138
    invoke-virtual {v14, v4, v15}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    .line 139
    move-result v14

    .line 142
    if-eqz v14, :cond_9

    .line 143
    if-nez v3, :cond_8

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 147
    move-result-object v3

    .line 150
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    move-object v3, v4

    .line 154
    goto :goto_3

    .line 155
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "More than 1 pip-entering changes in one transition? "

    .line 160
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 171
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    throw v0

    .line 175
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 176
    goto :goto_2

    .line 178
    :cond_a
    new-instance v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;

    .line 179
    invoke-direct {v14, v6, v13, v5, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 181
    if-nez v3, :cond_c

    .line 184
    iget-object v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 186
    if-eqz v0, :cond_b

    .line 188
    iput v11, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 190
    iget-object v1, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 192
    move-object/from16 v2, p2

    .line 194
    move-object/from16 v3, p3

    .line 196
    move-object/from16 v4, p4

    .line 198
    move-object v5, v14

    .line 200
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 201
    move-result v0

    .line 204
    if-eqz v0, :cond_b

    .line 205
    goto :goto_4

    .line 207
    :cond_b
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    move v11, v12

    .line 211
    goto :goto_4

    .line 212
    :cond_c
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 213
    if-eqz v0, :cond_d

    .line 215
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 217
    const v1, -0x4e1b3190

    .line 219
    const-string v4, " Splitting PIP into a separate animation because remote-animation likely doesn\'t support it"

    .line 222
    invoke-static {v0, v1, v12, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_d
    const/4 v0, 0x2

    .line 227
    iput v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 228
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 230
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 232
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 235
    invoke-virtual {v1, v3, v0, v9, v14}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 237
    iget-object v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 240
    if-eqz v0, :cond_e

    .line 242
    iget-object v1, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 244
    move-object/from16 v2, p2

    .line 246
    move-object/from16 v3, p3

    .line 248
    move-object/from16 v4, p4

    .line 250
    move-object v5, v14

    .line 252
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 253
    move-result v0

    .line 256
    if-eqz v0, :cond_e

    .line 257
    goto :goto_4

    .line 259
    :cond_e
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 260
    iget-object v1, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 262
    move-object/from16 v2, p2

    .line 264
    move-object/from16 v3, p3

    .line 266
    move-object/from16 v4, p4

    .line 268
    move-object v5, v14

    .line 270
    move-object/from16 v6, p0

    .line 271
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 273
    move-result-object v0

    .line 276
    iput-object v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 277
    :goto_4
    return v11

    .line 279
    :cond_f
    const/4 v1, 0x4

    .line 280
    if-ne v0, v1, :cond_16

    .line 281
    invoke-static {v7, v11}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 283
    move-result v0

    .line 286
    :goto_5
    if-ltz v0, :cond_11

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 289
    move-result-object v1

    .line 292
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 293
    move-result-object v1

    .line 296
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 297
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 301
    move-result v3

    .line 304
    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    .line 305
    move-result v2

    .line 308
    if-eqz v2, :cond_10

    .line 309
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 311
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    .line 313
    move-result-object v1

    .line 316
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    .line 317
    move-result v1

    .line 320
    const/4 v2, -0x1

    .line 321
    if-eq v1, v2, :cond_10

    .line 322
    move-object/from16 v0, p0

    .line 324
    move-object v1, v13

    .line 326
    move-object/from16 v2, p2

    .line 327
    move-object/from16 v3, p3

    .line 329
    move-object/from16 v4, p4

    .line 331
    move-object/from16 v5, p5

    .line 333
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 335
    move-result v0

    .line 338
    return v0

    .line 339
    :cond_10
    add-int/lit8 v0, v0, -0x1

    .line 340
    goto :goto_5

    .line 342
    :cond_11
    new-instance v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;

    .line 343
    invoke-direct {v14, v6, v13, v9, v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 345
    iput v11, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 348
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 350
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 352
    move-result v1

    .line 355
    if-eqz v1, :cond_14

    .line 356
    move v1, v12

    .line 358
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 359
    move-result-object v2

    .line 362
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 363
    move-result v2

    .line 366
    if-ge v1, v2, :cond_14

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 369
    move-result-object v2

    .line 372
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    move-result-object v2

    .line 376
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 377
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 379
    move-result v3

    .line 382
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 383
    move-result v3

    .line 386
    if-eqz v3, :cond_13

    .line 387
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 389
    move-result-object v3

    .line 392
    if-eqz v3, :cond_13

    .line 393
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 395
    move-result-object v2

    .line 398
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 399
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 401
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 403
    move-result v3

    .line 406
    if-eq v3, v2, :cond_12

    .line 407
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 409
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 411
    move-result v3

    .line 414
    if-ne v3, v2, :cond_13

    .line 415
    :cond_12
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 417
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    move-result-object v2

    .line 422
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 426
    goto :goto_6

    .line 428
    :cond_14
    invoke-virtual {v0, v7, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    .line 429
    iget-object v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 432
    iget-object v1, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 434
    move-object/from16 v2, p2

    .line 436
    move-object/from16 v3, p3

    .line 438
    move-object/from16 v4, p4

    .line 440
    move-object v5, v14

    .line 442
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 443
    move-result v0

    .line 446
    if-nez v0, :cond_15

    .line 447
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 449
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRecentsInSplitAnimationCanceled()V

    .line 451
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 454
    :cond_15
    return v0

    .line 457
    :cond_16
    if-ne v0, v4, :cond_19

    .line 458
    new-instance v10, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;

    .line 460
    const/4 v0, 0x2

    .line 462
    invoke-direct {v10, v6, v13, v5, v0}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 463
    iget v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 466
    add-int/2addr v0, v11

    .line 468
    iput v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 469
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 471
    if-eqz v0, :cond_17

    .line 473
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    .line 475
    :cond_17
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 478
    iget-object v1, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 480
    move-object/from16 v2, p2

    .line 482
    move-object/from16 v3, p3

    .line 484
    move-object/from16 v4, p4

    .line 486
    move-object v5, v10

    .line 488
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 489
    move-result v0

    .line 492
    if-nez v0, :cond_18

    .line 493
    iget v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 495
    sub-int/2addr v0, v11

    .line 497
    iput v0, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 498
    move v11, v12

    .line 500
    goto :goto_7

    .line 501
    :cond_18
    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    .line 502
    invoke-direct {v0, v7, v9}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 504
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mMiuiFreeformModeController:Ljava/util/Optional;

    .line 507
    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 509
    :goto_7
    return v11

    .line 512
    :cond_19
    const/4 v1, 0x6

    .line 513
    if-ne v0, v1, :cond_1b

    .line 514
    new-instance v10, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;

    .line 516
    invoke-direct {v10, v6, v13, v5, v11}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 518
    iput v11, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 521
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 523
    if-eqz v0, :cond_1a

    .line 525
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    .line 527
    :cond_1a
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 530
    iget-object v1, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 532
    move-object/from16 v2, p2

    .line 534
    move-object/from16 v3, p3

    .line 536
    move-object/from16 v4, p4

    .line 538
    move-object v5, v10

    .line 540
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 541
    move-result v0

    .line 544
    return v0

    .line 545
    :cond_1b
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 546
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 549
    const-string v2, "Starting mixed animation without a known mixed type? "

    .line 551
    invoke-static {v2, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 553
    move-result-object v0

    .line 556
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 557
    throw v1
    .line 560
.end method

.method public final subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;
    .locals 2

    .line 1
    new-instance p0, Landroid/window/TransitionInfo;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    .line 7
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    invoke-direct {p0, p2, v1}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 13
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getTrack()I

    .line 16
    move-result p2

    .line 19
    invoke-virtual {p0, p2}, Landroid/window/TransitionInfo;->setTrack(I)V

    .line 20
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 23
    move-result p2

    .line 26
    invoke-virtual {p0, p2}, Landroid/window/TransitionInfo;->setDebugId(I)V

    .line 27
    if-eqz p3, :cond_1

    .line 30
    move p2, v0

    .line 32
    :goto_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 33
    move-result-object p3

    .line 36
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 37
    move-result p3

    .line 40
    if-ge p2, p3, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 43
    move-result-object p3

    .line 46
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 47
    move-result-object v1

    .line 50
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 54
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 55
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 p2, p2, 0x1

    .line 60
    goto :goto_1

    .line 62
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 63
    move-result p2

    .line 66
    if-ge v0, p2, :cond_2

    .line 67
    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 69
    move-result-object p2

    .line 72
    invoke-virtual {p0, p2}, Landroid/window/TransitionInfo;->addRoot(Landroid/window/TransitionInfo$Root;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 79
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 83
    return-object p0
    .line 86
.end method
