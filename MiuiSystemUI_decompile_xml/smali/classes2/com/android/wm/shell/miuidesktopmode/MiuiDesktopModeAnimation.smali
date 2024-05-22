.class public final Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mFreeformStartScale:Landroid/util/SparseArray;

.field public final mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

.field public final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field public final mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

.field public final mPendingMiuiFreeformEnteringDkt:Landroid/util/SparseArray;

.field public final mPendingTaskInfo:Landroid/util/SparseArray;

.field public final mPendingTransitionTokens:Ljava/util/List;

.field public final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingTransitionTokens:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingMiuiFreeformEnteringDkt:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 38
    iput-object p2, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 40
    iput-object p3, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 42
    iput-object p4, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 44
    iput-object p5, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 46
    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 48
    if-eqz p2, :cond_0

    .line 50
    new-instance p2, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation$$ExternalSyntheticLambda0;

    .line 52
    invoke-direct {p2, p0}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;)V

    .line 54
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    return-void
    .line 60
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

.method public final setupFreeformAnimOrder(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v3

    .line 13
    add-int/lit8 v3, v3, -0x1

    .line 14
    const v4, 0x7fffffff

    .line 16
    if-gt v1, v3, :cond_1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v3

    .line 30
    if-ne v3, p1, :cond_0

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Integer;

    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v3

    .line 43
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 44
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 48
    move-result-object v3

    .line 51
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 52
    sub-int/2addr v4, v2

    .line 54
    invoke-virtual {p3, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 58
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    sub-int/2addr v4, v2

    .line 63
    invoke-virtual {p3, p2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 64
    return-void
    .line 67
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v9, p3

    .line 6
    iget-object v10, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingTransitionTokens:Ljava/util/List;

    .line 8
    move-object v2, v10

    .line 10
    check-cast v2, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    return v3

    .line 20
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 21
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v11

    .line 28
    move v12, v3

    .line 29
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_9

    .line 34
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    move-object v13, v2

    .line 40
    check-cast v13, Landroid/window/TransitionInfo$Change;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v3, "startAnimation change: "

    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v3, " info.getType(): "

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 59
    move-result v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 69
    const-string v3, "MiuiDesktopModeAnimation"

    .line 70
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 75
    move-result v2

    .line 78
    and-int/lit8 v2, v2, 0x2

    .line 79
    if-eqz v2, :cond_1

    .line 81
    goto/16 :goto_3

    .line 83
    :cond_1
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 85
    move-result-object v2

    .line 88
    if-eqz v2, :cond_8

    .line 89
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 91
    const/4 v4, -0x1

    .line 93
    if-ne v2, v4, :cond_2

    .line 94
    goto/16 :goto_3

    .line 96
    :cond_2
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 98
    move-result v2

    .line 101
    const/4 v4, 0x6

    .line 102
    if-eq v2, v4, :cond_3

    .line 103
    goto/16 :goto_3

    .line 105
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 107
    move-result v14

    .line 110
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 111
    move-result-object v15

    .line 114
    const-string/jumbo v2, "startChangeTransition type: "

    .line 115
    const-string v4, " taskId: "

    .line 118
    invoke-static {v2, v14, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    move-result-object v2

    .line 123
    iget v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 124
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v4, " mode: "

    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v15}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 134
    move-result v4

    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 144
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v2, 0x5

    .line 148
    const/16 v3, 0x5208

    .line 149
    if-ne v14, v3, :cond_5

    .line 151
    invoke-virtual {v15}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 153
    move-result v3

    .line 156
    if-ne v3, v2, :cond_5

    .line 157
    iget-object v8, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 159
    iget v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 161
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 163
    move-result-object v2

    .line 166
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 167
    if-eqz v2, :cond_5

    .line 169
    iget-object v3, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 171
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 173
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 175
    move-result-object v3

    .line 178
    if-eqz v3, :cond_4

    .line 179
    iget v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 181
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 183
    move-result-object v4

    .line 186
    invoke-virtual {v0, v2, v4, v9}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->setupFreeformAnimOrder(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 187
    iget-object v2, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 190
    move-object v4, v13

    .line 192
    move-object/from16 v5, p3

    .line 193
    move-object/from16 v6, p4

    .line 195
    move-object/from16 v7, p5

    .line 197
    move-object/from16 v16, v11

    .line 199
    move-object v11, v8

    .line 201
    move-object/from16 v8, p2

    .line 202
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->startMiuiDesktopFullScreenToFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V

    .line 204
    const/4 v2, 0x1

    .line 207
    goto :goto_1

    .line 208
    :cond_4
    move-object/from16 v16, v11

    .line 209
    move-object v11, v8

    .line 211
    const/4 v2, 0x0

    .line 212
    :goto_1
    iget v3, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 213
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 215
    goto :goto_2

    .line 218
    :cond_5
    move-object/from16 v16, v11

    .line 219
    const/4 v2, 0x0

    .line 221
    :goto_2
    const/16 v3, 0x5208

    .line 222
    if-ne v14, v3, :cond_6

    .line 224
    invoke-virtual {v15}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 226
    move-result v3

    .line 229
    const/4 v4, 0x1

    .line 230
    if-ne v3, v4, :cond_6

    .line 231
    iget-object v11, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

    .line 233
    iget v3, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 235
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v3

    .line 240
    check-cast v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 241
    if-eqz v3, :cond_6

    .line 243
    iget v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 245
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 247
    move-result-object v4

    .line 250
    invoke-virtual {v0, v2, v4, v9}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->setupFreeformAnimOrder(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 251
    iget-object v2, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 254
    move-object v4, v13

    .line 256
    move-object/from16 v5, p3

    .line 257
    move-object/from16 v6, p4

    .line 259
    move-object/from16 v7, p5

    .line 261
    move-object/from16 v8, p2

    .line 263
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->startMiuiDesktopMaximizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V

    .line 265
    iget v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 268
    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 270
    const/4 v2, 0x1

    .line 273
    :cond_6
    const/16 v3, 0x5209

    .line 274
    if-ne v14, v3, :cond_7

    .line 276
    invoke-virtual {v15}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 278
    move-result v3

    .line 281
    const/4 v4, 0x5

    .line 282
    if-ne v3, v4, :cond_7

    .line 283
    iget-object v11, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingMiuiFreeformEnteringDkt:Landroid/util/SparseArray;

    .line 285
    iget v3, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 287
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 289
    move-result-object v3

    .line 292
    check-cast v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 293
    if-eqz v3, :cond_7

    .line 295
    iget-object v2, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 297
    iget-object v14, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 299
    iget v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 301
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 303
    move-result-object v4

    .line 306
    move-object v8, v4

    .line 307
    check-cast v8, Ljava/lang/Float;

    .line 308
    move-object v4, v13

    .line 310
    move-object/from16 v5, p3

    .line 311
    move-object/from16 v6, p4

    .line 313
    move-object/from16 v7, p5

    .line 315
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->startMiuiFreeformEnteringDktAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Ljava/lang/Float;)V

    .line 317
    iget v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 320
    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 322
    iget v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 325
    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 327
    const/4 v2, 0x1

    .line 330
    :cond_7
    or-int/2addr v2, v12

    .line 331
    move v12, v2

    .line 332
    goto :goto_4

    .line 333
    :cond_8
    :goto_3
    move-object/from16 v16, v11

    .line 334
    :goto_4
    move-object/from16 v11, v16

    .line 336
    goto/16 :goto_0

    .line 338
    :cond_9
    check-cast v10, Ljava/util/ArrayList;

    .line 340
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    if-nez v12, :cond_a

    .line 345
    const/4 v0, 0x0

    .line 347
    return v0

    .line 348
    :cond_a
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 349
    const/4 v0, 0x1

    .line 352
    return v0
    .line 353
.end method
