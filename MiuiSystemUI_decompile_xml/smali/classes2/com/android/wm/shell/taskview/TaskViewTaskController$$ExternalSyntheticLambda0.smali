.class public final synthetic Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_a

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    .line 13
    invoke-interface {p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onInitialized()V

    .line 15
    return-void

    .line 18
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 21
    if-nez v0, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 32
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setTaskViewVisible(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 39
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 41
    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 45
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 55
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->updateTaskVisibility()V

    .line 58
    :goto_0
    return-void

    .line 61
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 62
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 64
    if-nez v0, :cond_2

    .line 66
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    .line 69
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 75
    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setTaskViewVisible(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    .line 77
    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 81
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 85
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 89
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->updateTaskVisibility()V

    .line 92
    :goto_1
    return-void

    .line 95
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 96
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 98
    iget-object v3, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    .line 100
    monitor-enter v3

    .line 102
    :try_start_0
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    .line 103
    if-eqz v4, :cond_4

    .line 105
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 110
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 111
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 116
    const v6, -0x4fe30a59

    .line 117
    invoke-static {v5, v6, v1, v2, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    goto :goto_2

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto/16 :goto_9

    .line 125
    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 129
    move-result v2

    .line 132
    const/4 v4, -0x1

    .line 133
    if-ne v2, v4, :cond_5

    .line 134
    const-string v0, "ShellTaskOrganizer"

    .line 136
    const-string v1, "No registered listener found"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit v3

    .line 143
    goto :goto_8

    .line 144
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 145
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v5, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 150
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 152
    move-result v5

    .line 155
    add-int/2addr v5, v4

    .line 156
    :goto_3
    if-ltz v5, :cond_7

    .line 157
    iget-object v6, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 159
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 161
    move-result-object v6

    .line 164
    check-cast v6, Landroid/window/TaskAppearedInfo;

    .line 165
    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 167
    move-result-object v7

    .line 170
    invoke-virtual {v0, v7, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 171
    move-result-object v7

    .line 174
    if-eq v7, p0, :cond_6

    .line 175
    goto :goto_4

    .line 177
    :cond_6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_4
    add-int/lit8 v5, v5, -0x1

    .line 181
    goto :goto_3

    .line 183
    :cond_7
    iget-object v5, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    .line 184
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 186
    move-result v5

    .line 189
    add-int/2addr v5, v4

    .line 190
    :goto_5
    if-ltz v5, :cond_9

    .line 191
    iget-object v6, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    .line 193
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 195
    move-result-object v6

    .line 198
    if-ne v6, p0, :cond_8

    .line 199
    iget-object v6, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    .line 201
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 203
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 206
    goto :goto_5

    .line 208
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 209
    move-result v5

    .line 212
    add-int/2addr v5, v4

    .line 213
    :goto_6
    if-ltz v5, :cond_c

    .line 214
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v4

    .line 219
    check-cast v4, Landroid/window/TaskAppearedInfo;

    .line 220
    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 222
    move-result-object v6

    .line 225
    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 226
    move-result-object v7

    .line 229
    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 230
    move-result-object v4

    .line 233
    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 234
    move-result-object v4

    .line 237
    if-nez v4, :cond_a

    .line 238
    goto :goto_7

    .line 240
    :cond_a
    if-eqz v4, :cond_b

    .line 241
    invoke-interface {v4, v6, v7}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 243
    :cond_b
    :goto_7
    add-int/lit8 v5, v5, -0x1

    .line 246
    goto :goto_6

    .line 248
    :cond_c
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_8
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->resetTaskInfo()V

    .line 250
    return-void

    .line 253
    :goto_9
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    throw p0

    .line 255
    :goto_a
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 256
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    .line 258
    invoke-interface {p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onReleased()V

    .line 260
    return-void

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 264
.end method
