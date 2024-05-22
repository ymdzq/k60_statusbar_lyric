.class Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;


# instance fields
.field finishAnimationType:Ljava/lang/String;

.field hasPendingAnimationOp:Z

.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method private notifyTaskOperatorChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmInfinityModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 12
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 18
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmInfinityModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationFreeformMode()I

    .line 24
    move-result p1

    .line 27
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->onNotifyTaskOperatorChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IZ)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method private triggerByFullscreen()Z
    .locals 2

    .line 1
    const-string v0, "animator_fullscreen_to_freeform_left"

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    const-string v0, "animator_fullscreen_to_freeform_right"

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    const-string v0, "animator_fullscreen_to_mini_left"

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    const-string v0, "animator_fullscreen_to_mini_right"

    .line 32
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    const-string v0, "animator_back_to_fullscreen"

    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 55
    :goto_1
    return p0
    .line 56
.end method


# virtual methods
.method public onAnimatorFinishEnd(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "onAnimatorFinishEnd :"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ",animType:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "animator_resizing"

    .line 33
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v1, :cond_c

    .line 40
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 42
    const-string v3, "animator_fullscreen_to_mini_left"

    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 49
    const-string v4, "animator_freeform_to_mini_right"

    .line 50
    const-string v5, "animator_fullscreen_to_freeform_right"

    .line 52
    const-string v6, "animator_freeform_to_mini_left"

    .line 54
    const-string v7, "animator_fullscreen_to_freeform_left"

    .line 56
    const-string v8, "animator_fullscreen_to_mini_right"

    .line 58
    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 62
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 67
    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 70
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 75
    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 83
    if-nez v1, :cond_0

    .line 84
    const-string v1, "animator_back_to_mini"

    .line 86
    iget-object v9, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 93
    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 96
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 101
    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 104
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->notifyTaskOperatorChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Z)V

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 115
    iget-object v9, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 117
    invoke-virtual {v1, p1, v9}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->updateFreeFormTrackDate(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 122
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v1

    .line 127
    const/4 v7, 0x1

    .line 128
    if-nez v1, :cond_a

    .line 129
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 131
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    goto/16 :goto_3

    .line 139
    :cond_2
    const-string v1, "animator_back_to_fullscreen"

    .line 141
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v1

    .line 148
    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 151
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 153
    move-result-object v1

    .line 156
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->hideOtherFreeform(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 157
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 160
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 162
    move-result-object v1

    .line 165
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 166
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 168
    invoke-virtual {v1, p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->maximizeTask(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 171
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 174
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 176
    move-result-object v1

    .line 179
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 180
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 182
    invoke-virtual {v1, v7, p2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->finishHomeTransition(ZLandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 185
    goto/16 :goto_4

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 190
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v1

    .line 195
    if-nez v1, :cond_9

    .line 196
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 198
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v1

    .line 203
    if-eqz v1, :cond_4

    .line 204
    goto :goto_2

    .line 206
    :cond_4
    const-string v1, "animator_mini_to_freeform_left"

    .line 207
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v1

    .line 214
    if-nez v1, :cond_8

    .line 215
    const-string v1, "animator_mini_to_freeform_right"

    .line 217
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v1

    .line 224
    if-eqz v1, :cond_5

    .line 225
    goto :goto_1

    .line 227
    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 228
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result v1

    .line 233
    if-nez v1, :cond_7

    .line 234
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 236
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    move-result v1

    .line 241
    if-eqz v1, :cond_6

    .line 242
    goto :goto_0

    .line 244
    :cond_6
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 245
    goto/16 :goto_4

    .line 248
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 250
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 252
    move-result-object v1

    .line 255
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->doAutoMinimizeLayout(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 256
    goto/16 :goto_4

    .line 259
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 261
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 263
    move-result-object v1

    .line 266
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->doAutoFreeformLayout(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 267
    goto/16 :goto_4

    .line 270
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 272
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 274
    move-result-object v1

    .line 277
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->showOtherFreeform(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 278
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 281
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 283
    move-result-object v1

    .line 286
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 287
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 289
    invoke-virtual {v1, v2, p2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->finishHomeTransition(ZLandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 292
    goto/16 :goto_4

    .line 295
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 297
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 299
    move-result-object v1

    .line 302
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 303
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 305
    invoke-virtual {v1, v2, p2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->finishHomeTransition(ZLandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 308
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 311
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 313
    move-result-object v1

    .line 316
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->showOtherFreeform(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 317
    new-instance v1, Landroid/graphics/Rect;

    .line 320
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 322
    move-result-object v3

    .line 325
    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 326
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationNormalScale()F

    .line 329
    move-result v3

    .line 332
    invoke-static {v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 333
    const/16 v3, 0xa

    .line 336
    invoke-static {v3}, Lmiui/app/MiuiFreeFormManager;->showFreeFormGuideDialog(I)V

    .line 338
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 341
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmWindowDecorViewModel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 343
    move-result-object v4

    .line 346
    invoke-interface {v4, v7}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getCaptionHeight(Z)I

    .line 347
    move-result v4

    .line 350
    int-to-float v4, v4

    .line 351
    const/high16 v5, 0x40000000    # 2.0f

    .line 352
    div-float/2addr v4, v5

    .line 354
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationNormalScale()F

    .line 355
    move-result v5

    .line 358
    mul-float/2addr v5, v4

    .line 359
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 360
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Landroid/content/Context;

    .line 362
    move-result-object v4

    .line 365
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 366
    move-result-object v4

    .line 369
    const v6, 0x7f0702db    # @dimen/dotRadius '2.0dp'

    .line 370
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 373
    move-result v4

    .line 376
    int-to-float v4, v4

    .line 377
    add-float/2addr v5, v4

    .line 378
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 379
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Landroid/content/Context;

    .line 381
    move-result-object v4

    .line 384
    const/high16 v6, 0x40800000    # 4.0f

    .line 385
    invoke-static {v4, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 387
    move-result v4

    .line 390
    add-float/2addr v4, v5

    .line 391
    float-to-int v4, v4

    .line 392
    invoke-static {v3}, Lmiui/app/MiuiFreeFormManager;->hasTipViewType(I)Z

    .line 393
    move-result v3

    .line 396
    if-nez v3, :cond_b

    .line 397
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 399
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 401
    add-int/2addr v3, v5

    .line 403
    div-int/lit8 v3, v3, 0x2

    .line 404
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 406
    add-int/2addr v1, v4

    .line 408
    invoke-static {v2, v3, v1, v2}, Lmiui/app/MiuiFreeFormManager;->showFreeFormTipView(IIII)V

    .line 409
    :cond_b
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 412
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 414
    move-result-object v1

    .line 417
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->doAutoFreeformLayout(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 418
    :goto_4
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 421
    invoke-static {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeController(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 423
    move-result-object p2

    .line 426
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 427
    move-result-object p2

    .line 430
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeGestureHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 431
    move-result-object p2

    .line 434
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreeformCursorHandler()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

    .line 435
    move-result-object v1

    .line 438
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->getmLastPositionX()I

    .line 439
    move-result v1

    .line 442
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreeformCursorHandler()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

    .line 443
    move-result-object v3

    .line 446
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->getmLastPositionY()I

    .line 447
    move-result v3

    .line 450
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 451
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeController(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 453
    move-result-object v4

    .line 456
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 457
    move-result-object v4

    .line 460
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeGestureHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 461
    move-result-object v4

    .line 464
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreeformCursorHandler()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

    .line 465
    move-result-object v4

    .line 468
    int-to-float v5, v1

    .line 469
    int-to-float v6, v3

    .line 470
    invoke-virtual {p2, v5, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->findControlCursorActiveMiuiFreeformTask(FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 471
    move-result-object p2

    .line 474
    invoke-virtual {v4, p2, v1, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->updateCursorType(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 475
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 478
    invoke-static {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fputmAnimatingTaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)V

    .line 480
    :cond_c
    if-eqz p1, :cond_e

    .line 483
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskDragResizing(Z)V

    .line 485
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    move-result p2

    .line 491
    if-eqz p2, :cond_d

    .line 492
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 494
    move-result-object p2

    .line 497
    new-instance p3, Ljava/lang/StringBuilder;

    .line 498
    const-string v0, "onAnimatorFinishEnd taskId"

    .line 500
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 505
    move-result v0

    .line 508
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const-string v0, " destinationFreeformMode= "

    .line 512
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationFreeformMode()I

    .line 517
    move-result v0

    .line 520
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    const-string v0, " scale= "

    .line 524
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationNormalScale()F

    .line 529
    move-result v0

    .line 532
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    move-result-object p3

    .line 539
    invoke-static {p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationFreeformMode()I

    .line 543
    move-result p2

    .line 546
    if-nez p2, :cond_d

    .line 547
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 549
    invoke-static {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeController(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 551
    move-result-object p2

    .line 554
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 555
    move-result-object p2

    .line 558
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 559
    move-result p3

    .line 562
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->onInfiniteModeResizingFinished(I)V

    .line 563
    :cond_d
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 566
    move-result-object p1

    .line 569
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 570
    invoke-static {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 572
    move-result-object p2

    .line 575
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 576
    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->finishResized(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeStateCallback;)V

    .line 578
    :cond_e
    return-void
    .line 581
.end method

.method public onAnimatorStateChange(IILjava/lang/String;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 4
    invoke-static {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmInfinityModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 6
    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->findTaskWrapperInfoByTaskId(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 10
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    const/4 p2, 0x1

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->notifyTaskOperatorChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Z)V

    .line 17
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskDragResizing(Z)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public onAnimatorStopping(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "animator_resizing"

    .line 2
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p3

    .line 7
    if-eqz p3, :cond_c

    .line 8
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->freeformTaskInfoValid(I)Z

    .line 16
    move-result p3

    .line 19
    const-string v0, "animator_fullscreen_to_freeform_left"

    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_b

    .line 28
    const-string v0, "animator_fullscreen_to_freeform_right"

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    goto/16 :goto_4

    .line 40
    :cond_0
    const-string v0, "animator_resize_left"

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 49
    if-nez v0, :cond_a

    .line 50
    const-string v0, "animator_resize_right"

    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    goto/16 :goto_3

    .line 62
    :cond_1
    const-string v0, "animator_freeform_to_mini_left"

    .line 64
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 71
    if-nez v0, :cond_9

    .line 72
    const-string v0, "animator_freeform_to_mini_right"

    .line 74
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    goto/16 :goto_2

    .line 84
    :cond_2
    const-string v0, "animator_back_to_mini"

    .line 86
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 96
    move-result-object p3

    .line 99
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 100
    move-result-object v0

    .line 103
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 104
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 106
    move-result-object v1

    .line 109
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 110
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 112
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 115
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 118
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 120
    move-result-object p3

    .line 123
    invoke-virtual {p3, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->minimizeTaskByMini(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 124
    goto/16 :goto_5

    .line 127
    :cond_3
    const-string v0, "animator_fullscreen_to_mini_left"

    .line 129
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 136
    if-nez v0, :cond_8

    .line 137
    const-string v0, "animator_fullscreen_to_mini_right"

    .line 139
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    goto :goto_1

    .line 149
    :cond_4
    const-string p3, "animator_mini_to_freeform_left"

    .line 150
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 152
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result p3

    .line 157
    if-nez p3, :cond_7

    .line 158
    const-string p3, "animator_mini_to_freeform_right"

    .line 160
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 162
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result p3

    .line 167
    if-eqz p3, :cond_5

    .line 168
    goto :goto_0

    .line 170
    :cond_5
    const-string p3, "animator_freeform_to_fullscreen"

    .line 171
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 173
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result p3

    .line 178
    if-nez p3, :cond_6

    .line 179
    const-string p3, "animator_mini_to_fullscreen"

    .line 181
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 183
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result p3

    .line 188
    if-eqz p3, :cond_c

    .line 189
    :cond_6
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 191
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 193
    move-result-object p3

    .line 196
    invoke-virtual {p3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->hideOtherFreeform(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 197
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 200
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 202
    move-result-object p3

    .line 205
    invoke-virtual {p3, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->maximizeTask(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 206
    goto/16 :goto_5

    .line 209
    :cond_7
    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 211
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeController(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 213
    move-result-object p3

    .line 216
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 217
    move-result-object p3

    .line 220
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->switchFullscreenToFreeform()V

    .line 221
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 224
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 226
    move-result-object p3

    .line 229
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 230
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 232
    move-result-object v0

    .line 235
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->normalmizeTask(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V

    .line 236
    goto :goto_5

    .line 239
    :cond_8
    :goto_1
    xor-int/lit8 v0, p3, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->hasPendingAnimationOp:Z

    .line 242
    if-eqz p3, :cond_c

    .line 244
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 246
    move-result-object p3

    .line 249
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 250
    move-result-object v0

    .line 253
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 254
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 256
    move-result-object v1

    .line 259
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 260
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 262
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 265
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 268
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 270
    move-result-object p3

    .line 273
    invoke-virtual {p3, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->minimizeTaskByFullscreen(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 274
    goto :goto_5

    .line 277
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 278
    move-result-object p3

    .line 281
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 282
    move-result-object v0

    .line 285
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 286
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 288
    move-result-object v1

    .line 291
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 292
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 294
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 297
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 300
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 302
    move-result-object p3

    .line 305
    invoke-virtual {p3, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->minimizeTask(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 306
    goto :goto_5

    .line 309
    :cond_a
    :goto_3
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 310
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 312
    move-result-object p3

    .line 315
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 316
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 318
    move-result-object v0

    .line 321
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->resizedTask(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V

    .line 322
    goto :goto_5

    .line 325
    :cond_b
    :goto_4
    xor-int/lit8 v0, p3, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->hasPendingAnimationOp:Z

    .line 328
    if-eqz p3, :cond_c

    .line 330
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 332
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 334
    move-result-object p3

    .line 337
    invoke-virtual {p3, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->normalmizeTaskByFullscreen(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 338
    :cond_c
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 341
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmWindowDecorViewModel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 343
    move-result-object p0

    .line 346
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 347
    move-result p2

    .line 350
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationNormalScale()F

    .line 351
    move-result p1

    .line 354
    invoke-interface {p0, p2, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onInfiniteModeResizingFinished(IF)V

    .line 355
    return-void
    .line 358
.end method

.method public onFreeformTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->hasPendingAnimationOp:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    const-string v0, "animator_fullscreen_to_freeform_left"

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    const-string v0, "animator_fullscreen_to_freeform_right"

    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "animator_fullscreen_to_mini_left"

    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    const-string v0, "animator_fullscreen_to_mini_right"

    .line 38
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 48
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 52
    move-result-object v2

    .line 55
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 56
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 58
    move-result-object v3

    .line 61
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 67
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 70
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 72
    move-result-object v0

    .line 75
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 76
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 78
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->minimizeTaskByFullscreen(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 81
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 85
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 87
    move-result-object v0

    .line 90
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 91
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 93
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->normalmizeTaskByFullscreen(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 96
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->hasPendingAnimationOp:Z

    .line 99
    const/4 p0, 0x1

    .line 101
    return p0

    .line 102
    :cond_4
    return v1
    .line 103
.end method

.method public setFinishAnimationType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->finishAnimationType:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method
