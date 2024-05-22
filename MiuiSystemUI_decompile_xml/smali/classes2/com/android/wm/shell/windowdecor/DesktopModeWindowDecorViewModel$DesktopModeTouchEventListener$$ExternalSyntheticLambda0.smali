.class public final synthetic Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_2

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;

    .line 12
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 14
    iget p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 16
    iget-object v0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 26
    iget v5, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v5

    .line 33
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 37
    invoke-static {v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 38
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 44
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 50
    array-length v4, v3

    .line 51
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 55
    const-string v4, "DesktopTasksController: moveToFullscreen taskId=%d"

    .line 56
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    :cond_0
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 61
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 63
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 66
    invoke-virtual {p1, v3, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    .line 68
    sget-boolean p0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 71
    if-eqz p0, :cond_1

    .line 73
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    .line 75
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 81
    :cond_2
    :goto_0
    return-void

    .line 84
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;

    .line 85
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 87
    iget p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 89
    iget-object v0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 91
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 93
    move-result-object p0

    .line 96
    if-eqz p0, :cond_5

    .line 97
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 99
    iget v5, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v5

    .line 106
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 107
    move-result-object v5

    .line 110
    invoke-static {v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 111
    move-result v6

    .line 114
    if-eqz v6, :cond_3

    .line 115
    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 117
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 120
    move-result-object v3

    .line 123
    array-length v4, v3

    .line 124
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 128
    const-string v4, "DesktopTasksController: moveToDesktop taskId=%d"

    .line 129
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    :cond_3
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 134
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 136
    iget v4, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 139
    invoke-virtual {p1, v4, v3}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V

    .line 141
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 144
    invoke-static {v3, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    .line 146
    sget-boolean p0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 149
    if-eqz p0, :cond_4

    .line 151
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    .line 153
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 155
    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {v0, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 159
    :cond_5
    :goto_1
    return-void

    .line 162
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;

    .line 163
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 165
    iget p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    .line 167
    iget-object v0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 169
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 171
    move-result-object v4

    .line 174
    if-nez v4, :cond_6

    .line 175
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object p0

    .line 182
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 183
    move-result-object p0

    .line 186
    invoke-static {p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 187
    move-result v0

    .line 190
    if-eqz v0, :cond_17

    .line 191
    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 196
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 197
    move-result-object p0

    .line 200
    array-length v0, p0

    .line 201
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 202
    move-result-object p0

    .line 205
    const-string v0, "moveToNextDisplay: taskId=%d not found"

    .line 206
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 211
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    goto/16 :goto_9

    .line 215
    :cond_6
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 217
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    move-result-object p0

    .line 222
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 223
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    move-result-object v6

    .line 228
    filled-new-array {p0, v6}, [Ljava/lang/Object;

    .line 229
    move-result-object p0

    .line 232
    invoke-static {v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 233
    move-result v6

    .line 236
    const/4 v7, 0x2

    .line 237
    if-eqz v6, :cond_7

    .line 238
    invoke-interface {v5}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 240
    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 243
    move-result-object p0

    .line 246
    array-length v5, p0

    .line 247
    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 248
    move-result-object p0

    .line 251
    const-string v5, "moveToNextDisplay: taskId=%d taskDisplayId=%d"

    .line 252
    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    :cond_7
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 257
    iget-object v5, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 259
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 261
    move-result v5

    .line 264
    new-array v6, v5, [I

    .line 265
    const/4 v8, 0x0

    .line 267
    move v9, v8

    .line 268
    :goto_3
    iget-object v10, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 269
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 271
    move-result v10

    .line 274
    if-ge v9, v10, :cond_8

    .line 275
    iget-object v10, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 277
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    .line 279
    move-result v10

    .line 282
    aput v10, v6, v9

    .line 283
    add-int/lit8 v9, v9, 0x1

    .line 285
    goto :goto_3

    .line 287
    :cond_8
    new-array v9, v5, [Ljava/lang/Integer;

    .line 288
    move v10, v8

    .line 290
    :goto_4
    if-ge v10, v5, :cond_9

    .line 291
    aget v11, v6, v10

    .line 293
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    move-result-object v11

    .line 298
    aput-object v11, v9, v10

    .line 299
    add-int/lit8 v10, v10, 0x1

    .line 301
    goto :goto_4

    .line 303
    :cond_9
    move-object v5, v9

    .line 304
    check-cast v5, [Ljava/lang/Comparable;

    .line 305
    array-length v6, v5

    .line 307
    if-le v6, v3, :cond_a

    .line 308
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 310
    :cond_a
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 313
    move-result-object v5

    .line 316
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 317
    move-result-object v6

    .line 320
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    move-result v9

    .line 324
    if-eqz v9, :cond_d

    .line 325
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    move-result-object v9

    .line 330
    move-object v10, v9

    .line 331
    check-cast v10, Ljava/lang/Number;

    .line 332
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 334
    move-result v10

    .line 337
    iget v11, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 338
    if-le v10, v11, :cond_c

    .line 340
    move v10, v3

    .line 342
    goto :goto_5

    .line 343
    :cond_c
    move v10, v8

    .line 344
    :goto_5
    if-eqz v10, :cond_b

    .line 345
    goto :goto_6

    .line 347
    :cond_d
    move-object v9, v2

    .line 348
    :goto_6
    check-cast v9, Ljava/lang/Integer;

    .line 349
    if-nez v9, :cond_11

    .line 351
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 353
    move-result-object v5

    .line 356
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    move-result v6

    .line 360
    if-eqz v6, :cond_10

    .line 361
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 363
    move-result-object v6

    .line 366
    move-object v9, v6

    .line 367
    check-cast v9, Ljava/lang/Number;

    .line 368
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 370
    move-result v9

    .line 373
    iget v10, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 374
    if-ge v9, v10, :cond_f

    .line 376
    move v9, v3

    .line 378
    goto :goto_7

    .line 379
    :cond_f
    move v9, v8

    .line 380
    :goto_7
    if-eqz v9, :cond_e

    .line 381
    goto :goto_8

    .line 383
    :cond_10
    move-object v6, v2

    .line 384
    :goto_8
    move-object v9, v6

    .line 385
    check-cast v9, Ljava/lang/Integer;

    .line 386
    :cond_11
    if-nez v9, :cond_12

    .line 388
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 390
    new-array p1, v8, [Ljava/lang/Object;

    .line 392
    invoke-static {p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 394
    move-result v0

    .line 397
    if-eqz v0, :cond_17

    .line 398
    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 400
    move-result-object p0

    .line 403
    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 404
    move-result-object p1

    .line 407
    array-length v0, p1

    .line 408
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 409
    move-result-object p1

    .line 412
    const-string v0, "moveToNextDisplay: next display not found"

    .line 413
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 415
    move-result-object p1

    .line 418
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    goto/16 :goto_9

    .line 422
    :cond_12
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 424
    move-result v5

    .line 427
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 428
    iget v9, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 430
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    move-result-object v9

    .line 435
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    move-result-object v10

    .line 439
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 440
    move-result-object v9

    .line 443
    invoke-static {v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 444
    move-result v10

    .line 447
    if-eqz v10, :cond_13

    .line 448
    invoke-interface {v6}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 450
    invoke-static {v9, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 453
    move-result-object v7

    .line 456
    array-length v9, v7

    .line 457
    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 458
    move-result-object v7

    .line 461
    const-string v9, "moveToDisplay: taskId=%d displayId=%d"

    .line 462
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 464
    :cond_13
    iget v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 467
    if-ne v7, v5, :cond_14

    .line 469
    new-array p0, v8, [Ljava/lang/Object;

    .line 471
    invoke-static {v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 473
    move-result p1

    .line 476
    if-eqz p1, :cond_17

    .line 477
    invoke-interface {v6}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 479
    move-result-object p1

    .line 482
    invoke-static {p0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 483
    move-result-object p0

    .line 486
    array-length v0, p0

    .line 487
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 488
    move-result-object p0

    .line 491
    const-string v0, "moveToDisplay: task already on display"

    .line 492
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 494
    move-result-object p0

    .line 497
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    goto :goto_9

    .line 501
    :cond_14
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 502
    invoke-virtual {p0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 504
    move-result-object p0

    .line 507
    check-cast p0, Landroid/window/DisplayAreaInfo;

    .line 508
    if-nez p0, :cond_15

    .line 510
    new-array p0, v8, [Ljava/lang/Object;

    .line 512
    invoke-static {v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 514
    move-result p1

    .line 517
    if-eqz p1, :cond_17

    .line 518
    invoke-interface {v6}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 520
    move-result-object p1

    .line 523
    invoke-static {p0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 524
    move-result-object p0

    .line 527
    array-length v0, p0

    .line 528
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 529
    move-result-object p0

    .line 532
    const-string v0, "moveToDisplay: display not found"

    .line 533
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 535
    move-result-object p0

    .line 538
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    goto :goto_9

    .line 542
    :cond_15
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 543
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 545
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 548
    iget-object p0, p0, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    .line 550
    invoke-virtual {v5, v4, p0, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 552
    sget-boolean p0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 555
    if-eqz p0, :cond_16

    .line 557
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    .line 559
    invoke-virtual {p0, v1, v5, v2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 561
    goto :goto_9

    .line 564
    :cond_16
    invoke-virtual {v0, v5}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 565
    :cond_17
    :goto_9
    return-void

    .line 568
    nop

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 570
.end method
