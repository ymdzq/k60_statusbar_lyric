.class public final synthetic Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 6
    const-string v2, "Got an unexpected onTransactionReady. Expected "

    .line 8
    iget-object v3, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 10
    iget-object v3, v3, Lcom/android/wm/shell/common/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    .line 12
    monitor-enter v3

    .line 14
    :try_start_0
    iget v4, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    .line 15
    if-eq v4, v1, :cond_0

    .line 17
    const-string p0, "SyncTransactionQueue"

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget v0, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, " but got "

    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    monitor-exit v3

    .line 46
    goto/16 :goto_2

    .line 47
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 49
    const/4 v2, 0x0

    .line 51
    iput-object v2, v1, Lcom/android/wm/shell/common/SyncTransactionQueue;->mInFlight:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    .line 52
    iget-object v2, v1, Lcom/android/wm/shell/common/SyncTransactionQueue;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 54
    iget-object v1, v1, Lcom/android/wm/shell/common/SyncTransactionQueue;->mOnReplyTimeout:Lcom/android/wm/shell/common/SyncTransactionQueue$$ExternalSyntheticLambda0;

    .line 56
    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 58
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v1, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 63
    iget-object v1, v1, Lcom/android/wm/shell/common/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 70
    iget-object v1, v1, Lcom/android/wm/shell/common/SyncTransactionQueue;->mRunnables:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v2

    .line 77
    const/4 v4, 0x0

    .line 78
    move v5, v4

    .line 79
    :goto_0
    if-ge v5, v2, :cond_1

    .line 80
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v6

    .line 85
    check-cast v6, Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;

    .line 86
    invoke-interface {v6, p0}, Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;->runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 94
    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 98
    iget-object v1, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v1, :cond_2

    .line 103
    :try_start_1
    iget-object v1, v1, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mSyncCallback:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$SyncCallback;

    .line 105
    iget v2, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    .line 107
    invoke-virtual {v1, v2, p0}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$SyncCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    goto :goto_1

    .line 112
    :catch_0
    move-exception p0

    .line 113
    :try_start_2
    const-string v1, "SyncTransactionQueue"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v5, "Error sending callback to legacy transition: "

    .line 121
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v5, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    .line 126
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 134
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 139
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 142
    :goto_1
    iget-object p0, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 145
    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 149
    move-result p0

    .line 152
    if-nez p0, :cond_3

    .line 153
    iget-object p0, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 155
    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object p0

    .line 162
    check-cast p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    .line 163
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->send()V

    .line 165
    :cond_3
    monitor-exit v3

    .line 168
    :goto_2
    return-void

    .line 169
    :catchall_0
    move-exception p0

    .line 170
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    throw p0
    .line 172
.end method
