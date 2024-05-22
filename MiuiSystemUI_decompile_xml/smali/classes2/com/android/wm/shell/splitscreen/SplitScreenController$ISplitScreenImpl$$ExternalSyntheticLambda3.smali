.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_5

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 11
    check-cast v0, [[Landroid/view/RemoteAnimationTarget;

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 15
    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    .line 17
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 24
    if-eqz v3, :cond_0

    .line 26
    goto :goto_2

    .line 28
    :cond_0
    move v3, v1

    .line 29
    move v4, v3

    .line 30
    :goto_0
    array-length v5, p0

    .line 31
    if-ge v3, v5, :cond_2

    .line 32
    aget-object v5, p0, v3

    .line 34
    iget v5, v5, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 36
    if-nez v5, :cond_1

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 40
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    const/4 v3, 0x2

    .line 45
    if-ge v4, v3, :cond_3

    .line 46
    goto :goto_2

    .line 48
    :cond_3
    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 49
    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 51
    move-result-object v3

    .line 54
    iget-object v4, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

    .line 55
    if-eqz v4, :cond_4

    .line 57
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 59
    :cond_4
    const-string v4, "SplitScreenController#onStartingSplitLegacy"

    .line 62
    invoke-virtual {p1, p0, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;

    .line 64
    move-result-object v4

    .line 67
    iput-object v4, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

    .line 68
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 70
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 73
    const/4 v2, 0x1

    .line 76
    :try_start_0
    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    .line 77
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 79
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    .line 81
    move-result-object p1

    .line 84
    aput-object p1, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    array-length p1, p0

    .line 87
    move v3, v1

    .line 88
    :goto_1
    if-ge v3, p1, :cond_6

    .line 89
    aget-object v4, p0, v3

    .line 91
    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 93
    if-eqz v4, :cond_5

    .line 95
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 97
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 100
    goto :goto_1

    .line 102
    :cond_6
    :goto_2
    aput-object v2, v0, v1

    .line 103
    return-void

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    array-length v0, p0

    .line 107
    :goto_3
    if-ge v1, v0, :cond_8

    .line 108
    aget-object v2, p0, v1

    .line 110
    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 112
    if-eqz v2, :cond_7

    .line 114
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 116
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 119
    goto :goto_3

    .line 121
    :cond_8
    throw p1

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 123
    check-cast v0, [[Landroid/view/RemoteAnimationTarget;

    .line 125
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 127
    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    .line 129
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 136
    if-eqz v3, :cond_9

    .line 138
    goto :goto_4

    .line 140
    :cond_9
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 141
    move-result v3

    .line 144
    if-eqz v3, :cond_b

    .line 145
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 147
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 149
    iget-object v3, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 152
    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 154
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    .line 156
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 159
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    .line 161
    iget-object v3, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 164
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 166
    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 169
    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 171
    move-result-object v3

    .line 174
    iget-object v4, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

    .line 175
    if-eqz v4, :cond_a

    .line 177
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 179
    :cond_a
    const-string v4, "SplitScreenController#onGoingToRecentsLegacy"

    .line 182
    invoke-virtual {p1, p0, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;

    .line 184
    move-result-object p0

    .line 187
    iput-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

    .line 188
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 190
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 193
    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 196
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    .line 198
    move-result-object p0

    .line 201
    filled-new-array {p0}, [Landroid/view/RemoteAnimationTarget;

    .line 202
    move-result-object v2

    .line 205
    :cond_b
    :goto_4
    aput-object v2, v0, v1

    .line 206
    return-void

    .line 208
    :goto_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 209
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 211
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 213
    check-cast p0, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 215
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 217
    iget-object p1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 219
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    .line 221
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 226
.end method
