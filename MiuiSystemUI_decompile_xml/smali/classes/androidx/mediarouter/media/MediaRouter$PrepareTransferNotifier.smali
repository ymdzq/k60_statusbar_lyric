.class public final Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCanceled:Z

.field public mFinished:Z

.field public final mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final mMemberRoutes:Ljava/util/List;

.field public final mReason:I

.field public final mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final mRouter:Ljava/lang/ref/WeakReference;

.field public final mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    .line 9
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 11
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 20
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 22
    iput p4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    .line 24
    iget-object p2, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 26
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 28
    iput-object p5, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 30
    if-nez p6, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    :goto_0
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mMemberRoutes:Ljava/util/List;

    .line 40
    new-instance p2, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;

    .line 42
    const/4 p3, 0x1

    .line 44
    invoke-direct {p2, p0, p3}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;-><init>(Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;I)V

    .line 45
    const-wide/16 p3, 0x3a98

    .line 48
    iget-object p0, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 50
    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
    .line 55
.end method


# virtual methods
.method public final finishTransfer()V
    .locals 9

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    .line 5
    if-nez v0, :cond_c

    .line 7
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    goto/16 :goto_5

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 21
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 23
    const/4 v3, 0x1

    .line 25
    if-eqz v1, :cond_a

    .line 26
    iget-object v4, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 28
    if-ne v4, p0, :cond_a

    .line 30
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 32
    if-eqz v4, :cond_1

    .line 34
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 36
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    goto/16 :goto_4

    .line 42
    :cond_1
    iput-boolean v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    .line 44
    const/4 v3, 0x0

    .line 46
    iput-object v3, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 47
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 53
    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    .line 55
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 57
    if-eqz v1, :cond_6

    .line 59
    iget-object v6, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 61
    if-eq v6, v5, :cond_2

    .line 63
    goto :goto_1

    .line 65
    :cond_2
    iget-object v6, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 66
    const/16 v7, 0x107

    .line 68
    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 70
    move-result-object v6

    .line 73
    iput v4, v6, Landroid/os/Message;->arg1:I

    .line 74
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 76
    iget-object v6, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 79
    if-eqz v6, :cond_3

    .line 81
    invoke-virtual {v6, v4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 83
    iget-object v6, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 86
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 88
    :cond_3
    iget-object v6, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 91
    check-cast v6, Ljava/util/HashMap;

    .line 93
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 95
    move-result v7

    .line 98
    if-nez v7, :cond_5

    .line 99
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 101
    move-result-object v7

    .line 104
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object v7

    .line 108
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v8

    .line 112
    if-eqz v8, :cond_4

    .line 113
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v8

    .line 118
    check-cast v8, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 119
    invoke-virtual {v8, v4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 121
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 124
    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 128
    :cond_5
    iput-object v3, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 131
    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 136
    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 137
    if-nez v0, :cond_7

    .line 139
    goto :goto_3

    .line 141
    :cond_7
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 142
    iput-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 144
    iput-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 146
    iget-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 148
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 150
    if-nez v3, :cond_8

    .line 152
    new-instance v3, Landroidx/core/util/Pair;

    .line 154
    invoke-direct {v3, v5, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    const/16 v1, 0x106

    .line 159
    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 161
    move-result-object v1

    .line 164
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 165
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 167
    goto :goto_2

    .line 170
    :cond_8
    new-instance v5, Landroidx/core/util/Pair;

    .line 171
    invoke-direct {v5, v3, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    const/16 v1, 0x108

    .line 176
    invoke-virtual {v2, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 178
    move-result-object v1

    .line 181
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 182
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 184
    :goto_2
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 187
    check-cast v1, Ljava/util/HashMap;

    .line 189
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 191
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->maybeUpdateMemberRouteControllers()V

    .line 194
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 197
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mMemberRoutes:Ljava/util/List;

    .line 200
    if-eqz p0, :cond_9

    .line 202
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 204
    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->updateDynamicDescriptors(Ljava/util/Collection;)V

    .line 206
    :cond_9
    :goto_3
    return-void

    .line 209
    :cond_a
    :goto_4
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    .line 210
    if-nez v0, :cond_c

    .line 212
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 214
    if-eqz v0, :cond_b

    .line 216
    goto :goto_5

    .line 218
    :cond_b
    iput-boolean v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 219
    if-eqz v2, :cond_c

    .line 221
    const/4 p0, 0x0

    .line 223
    invoke-virtual {v2, p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 224
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 227
    :cond_c
    :goto_5
    return-void
    .line 230
.end method
