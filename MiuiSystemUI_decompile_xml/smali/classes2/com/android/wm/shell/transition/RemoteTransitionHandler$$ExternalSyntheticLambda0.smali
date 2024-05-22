.class public final synthetic Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 11
    invoke-interface {p0, v1, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 13
    return-void

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 17
    check-cast p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 21
    iget-object v0, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v0

    .line 28
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 29
    if-ltz v0, :cond_1

    .line 31
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mRemote:Landroid/os/IBinder;

    .line 33
    iget-object v3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 35
    iget-object v3, v3, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    check-cast v3, Landroid/util/Pair;

    .line 43
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 45
    check-cast v3, Landroid/window/RemoteTransition;

    .line 47
    invoke-virtual {v3}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 49
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 59
    iget-object v2, v2, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 67
    iget-object v0, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    .line 69
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 71
    move-result v0

    .line 74
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 75
    if-ltz v0, :cond_3

    .line 77
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mRemote:Landroid/os/IBinder;

    .line 79
    iget-object v3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 81
    iget-object v3, v3, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    .line 83
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 88
    check-cast v3, Landroid/window/RemoteTransition;

    .line 89
    invoke-virtual {v3}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    .line 91
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 101
    iget-object v2, v2, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    .line 103
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 105
    goto :goto_2

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mPendingFinishCallbacks:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result v0

    .line 114
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 115
    if-ltz v0, :cond_4

    .line 117
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mPendingFinishCallbacks:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 124
    check-cast v2, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 125
    invoke-interface {v2, v1, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 127
    goto :goto_3

    .line 130
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mPendingFinishCallbacks:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 133
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 138
.end method
