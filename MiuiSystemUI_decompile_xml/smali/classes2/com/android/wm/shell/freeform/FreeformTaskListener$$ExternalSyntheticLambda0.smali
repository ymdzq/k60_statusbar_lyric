.class public final synthetic Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const v1, -0x5ffcda50

    .line 4
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    goto/16 :goto_2

    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    check-cast p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 17
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 23
    iget-object v0, p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->activeTasks:Landroid/util/ArraySet;

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    iget-object p1, p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {v0, p0, v4}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;-><init>(II)V

    .line 41
    check-cast p1, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    :cond_0
    return-void

    .line 49
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 52
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 54
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addOrMoveFreeformTaskToTop(I)V

    .line 56
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 59
    if-eqz v0, :cond_2

    .line 61
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 63
    iget v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 65
    invoke-virtual {p1, v0, v2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addActiveTask(II)Z

    .line 67
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 73
    if-eqz v0, :cond_1

    .line 75
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 77
    int-to-long v5, v0

    .line 79
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 80
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object v2

    .line 85
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 89
    invoke-static {v0, v1, v4, v3, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_1
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 93
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 95
    invoke-virtual {p1, v0, p0, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V

    .line 97
    :cond_2
    return-void

    .line 100
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 101
    check-cast p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 103
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 105
    if-eqz v0, :cond_3

    .line 107
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 109
    iget-object v0, p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->activeTasks:Landroid/util/ArraySet;

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 117
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    iget-object p1, p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 123
    new-instance v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;

    .line 125
    invoke-direct {v0, p0, v4}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;-><init>(II)V

    .line 127
    check-cast p1, Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 132
    :cond_3
    return-void

    .line 135
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 136
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 138
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 140
    if-eqz v0, :cond_4

    .line 142
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 144
    iget v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 146
    invoke-virtual {p1, v0, v2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addActiveTask(II)Z

    .line 148
    move-result v0

    .line 151
    if-eqz v0, :cond_4

    .line 152
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 154
    if-eqz v0, :cond_4

    .line 156
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 158
    int-to-long v5, v0

    .line 160
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 161
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    move-result-object v2

    .line 166
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 167
    move-result-object v2

    .line 170
    invoke-static {v0, v1, v4, v3, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_4
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 174
    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 176
    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 178
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V

    .line 180
    return-void

    .line 183
    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 184
    check-cast p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 186
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 188
    iget-object v0, p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->activeTasks:Landroid/util/ArraySet;

    .line 190
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 196
    move-result v0

    .line 199
    if-eqz v0, :cond_5

    .line 200
    iget-object p1, p1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->mActiveListener:Ljava/util/List;

    .line 202
    new-instance v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;

    .line 204
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository$$ExternalSyntheticLambda0;-><init>(II)V

    .line 206
    check-cast p1, Ljava/util/ArrayList;

    .line 209
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 211
    :cond_5
    return-void

    .line 214
    :pswitch_5
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 215
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 217
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 219
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->removeFreeformTask(I)Z

    .line 221
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 224
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->removeMiuiFreeformTaskInfo(I)V

    .line 226
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 229
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->removeFreeformParamsForAutoLayout(I)V

    .line 231
    return-void

    .line 234
    :pswitch_6
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 235
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 237
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    move-result-object v5

    .line 249
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 250
    move-result-object v5

    .line 253
    invoke-static {v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 254
    move-result v6

    .line 257
    if-eqz v6, :cond_6

    .line 258
    invoke-interface {v1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 260
    move-result-object v1

    .line 263
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 264
    move-result-object v5

    .line 267
    array-length v6, v5

    .line 268
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 269
    move-result-object v5

    .line 272
    const-string v6, "DesktopTaskRepo: remove freeform task from ordered list taskId=%d"

    .line 273
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    move-result-object v5

    .line 278
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_6
    iget-object v1, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    move-result-object v0

    .line 287
    check-cast v1, Ljava/util/ArrayList;

    .line 288
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 290
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 293
    iget-object v1, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 295
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 297
    move-result v5

    .line 300
    move v6, v2

    .line 301
    move v7, v6

    .line 302
    :goto_0
    if-ge v6, v5, :cond_9

    .line 303
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 305
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 308
    move-result-object v8

    .line 311
    check-cast v8, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 312
    iget-object v8, v8, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->activeTasks:Landroid/util/ArraySet;

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    move-result-object v9

    .line 319
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 320
    move-result v8

    .line 323
    if-eqz v8, :cond_8

    .line 324
    iget-object v7, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    .line 326
    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 328
    move-result-object v7

    .line 331
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    move-result v8

    .line 335
    if-eqz v8, :cond_7

    .line 336
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    move-result-object v8

    .line 341
    check-cast v8, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;

    .line 342
    check-cast v8, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 344
    invoke-virtual {v8}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 346
    goto :goto_1

    .line 349
    :cond_7
    move v7, v4

    .line 350
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 351
    goto :goto_0

    .line 353
    :cond_9
    if-eqz v7, :cond_a

    .line 354
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    move-result-object v0

    .line 361
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 362
    move-result-object v0

    .line 365
    invoke-static {v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 366
    move-result v5

    .line 369
    if-eqz v5, :cond_a

    .line 370
    invoke-interface {v1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 372
    move-result-object v1

    .line 375
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 376
    move-result-object v0

    .line 379
    array-length v5, v0

    .line 380
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 381
    move-result-object v0

    .line 384
    const-string v5, "DesktopTaskRepo: remove active task=%d"

    .line 385
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 387
    move-result-object v0

    .line 390
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_a
    if-eqz v7, :cond_b

    .line 394
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 396
    if-eqz v0, :cond_b

    .line 398
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 400
    int-to-long v0, v0

    .line 402
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 403
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 405
    move-result-object v0

    .line 408
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 409
    move-result-object v0

    .line 412
    const v1, 0x78d115d0

    .line 413
    invoke-static {v5, v1, v4, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 416
    :cond_b
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 419
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 421
    invoke-virtual {p1, v0, p0, v2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V

    .line 423
    return-void

    .line 426
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 427
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 429
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 431
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addOrMoveFreeformTaskToTop(I)V

    .line 433
    return-void

    .line 436
    nop

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 438
.end method
