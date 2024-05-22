.class public final Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDynamicGroupRoutes:Ljava/util/List;

.field public final mTempCallbackRecords:Ljava/util/ArrayList;

.field public final synthetic this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    .line 19
    return-void
    .line 21
.end method

.method public static invokeCallback(Landroidx/mediarouter/media/MediaRouter$CallbackRecord;ILjava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 2
    const v0, 0xff00

    .line 4
    and-int/2addr v0, p1

    .line 7
    const/16 v1, 0x100

    .line 8
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 10
    if-eq v0, v1, :cond_3

    .line 12
    const/16 p0, 0x200

    .line 14
    if-eq v0, p0, :cond_2

    .line 16
    const/16 p0, 0x300

    .line 18
    if-eq v0, p0, :cond_0

    .line 20
    goto/16 :goto_4

    .line 22
    :cond_0
    const/16 p0, 0x301

    .line 24
    if-eq p1, p0, :cond_1

    .line 26
    goto/16 :goto_4

    .line 28
    :cond_1
    invoke-static {p2}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouterParamsChanged()V

    .line 33
    goto/16 :goto_4

    .line 36
    :cond_2
    check-cast p2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 38
    packed-switch p1, :pswitch_data_0

    .line 40
    goto/16 :goto_4

    .line 43
    :pswitch_0
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onProviderChanged()V

    .line 45
    goto/16 :goto_4

    .line 48
    :pswitch_1
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onProviderRemoved()V

    .line 50
    goto/16 :goto_4

    .line 53
    :pswitch_2
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onProviderAdded()V

    .line 55
    goto/16 :goto_4

    .line 58
    :cond_3
    const/16 v0, 0x106

    .line 60
    const/16 v1, 0x108

    .line 62
    if-eq p1, v1, :cond_5

    .line 64
    if-ne p1, v0, :cond_4

    .line 66
    goto :goto_0

    .line 68
    :cond_4
    move-object v3, p2

    .line 69
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 70
    goto :goto_1

    .line 72
    :cond_5
    :goto_0
    move-object v3, p2

    .line 73
    check-cast v3, Landroidx/core/util/Pair;

    .line 74
    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 76
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 78
    :goto_1
    if-eq p1, v1, :cond_6

    .line 80
    if-ne p1, v0, :cond_7

    .line 82
    :cond_6
    check-cast p2, Landroidx/core/util/Pair;

    .line 84
    iget-object p2, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 86
    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 88
    :cond_7
    if-eqz v3, :cond_b

    .line 90
    iget p2, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    .line 92
    and-int/lit8 p2, p2, 0x2

    .line 94
    if-nez p2, :cond_9

    .line 96
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 98
    invoke-virtual {v3, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    .line 100
    move-result p0

    .line 103
    if-eqz p0, :cond_8

    .line 104
    goto :goto_2

    .line 106
    :cond_8
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 107
    const/4 p0, 0x0

    .line 110
    goto :goto_3

    .line 111
    :cond_9
    :goto_2
    const/4 p0, 0x1

    .line 112
    :goto_3
    if-nez p0, :cond_a

    .line 113
    goto :goto_4

    .line 115
    :cond_a
    packed-switch p1, :pswitch_data_1

    .line 116
    goto :goto_4

    .line 119
    :pswitch_3
    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 120
    goto :goto_4

    .line 123
    :pswitch_4
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteUnselected()V

    .line 124
    goto :goto_4

    .line 127
    :pswitch_5
    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 128
    goto :goto_4

    .line 131
    :pswitch_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    goto :goto_4

    .line 135
    :pswitch_7
    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 136
    goto :goto_4

    .line 139
    :pswitch_8
    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 140
    goto :goto_4

    .line 143
    :pswitch_9
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteRemoved()V

    .line 144
    goto :goto_4

    .line 147
    :pswitch_a
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteAdded()V

    .line 148
    :cond_b
    :goto_4
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
    .line 162
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    const/16 v1, 0x103

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 10
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 12
    move-result-object v1

    .line 15
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 16
    move-object v2, p1

    .line 18
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 19
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 29
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 32
    :cond_0
    const/16 v1, 0x106

    .line 35
    if-eq v0, v1, :cond_2

    .line 37
    const/16 v1, 0x108

    .line 39
    if-eq v0, v1, :cond_1

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 43
    goto/16 :goto_1

    .line 46
    :pswitch_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 48
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 50
    move-object v2, p1

    .line 52
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 58
    move-result-object v3

    .line 61
    if-eq v3, v1, :cond_4

    .line 62
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->findUserRouteRecord(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    .line 64
    move-result v2

    .line 67
    if-ltz v2, :cond_4

    .line 68
    iget-object v3, v1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 75
    check-cast v2, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .line 76
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->updateUserRouteProperties(Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;)V

    .line 78
    goto :goto_1

    .line 81
    :pswitch_1
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 82
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 84
    move-object v2, p1

    .line 86
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 87
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 89
    goto :goto_1

    .line 92
    :pswitch_2
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 93
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 95
    move-object v2, p1

    .line 97
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 98
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 100
    goto :goto_1

    .line 103
    :cond_1
    move-object v1, p1

    .line 104
    check-cast v1, Landroidx/core/util/Pair;

    .line 105
    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 107
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 109
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    .line 111
    check-cast v2, Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 118
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 120
    invoke-virtual {v2, v1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 122
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 125
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 127
    invoke-virtual {v2, v1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 129
    goto :goto_1

    .line 132
    :cond_2
    move-object v1, p1

    .line 133
    check-cast v1, Landroidx/core/util/Pair;

    .line 134
    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 136
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 138
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 140
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 142
    invoke-virtual {v2, v1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 144
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 147
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 149
    if-eqz v2, :cond_4

    .line 151
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    .line 153
    move-result v1

    .line 156
    if-eqz v1, :cond_4

    .line 157
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    .line 159
    check-cast v1, Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 163
    move-result-object v1

    .line 166
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    move-result v2

    .line 170
    if-eqz v2, :cond_3

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    move-result-object v2

    .line 176
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 177
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 179
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 181
    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 183
    goto :goto_0

    .line 186
    :cond_3
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    .line 187
    check-cast v1, Ljava/util/ArrayList;

    .line 189
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 191
    :cond_4
    :goto_1
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 194
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 198
    move-result v1

    .line 201
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 202
    if-ltz v1, :cond_6

    .line 204
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 206
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v2

    .line 213
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 214
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 216
    move-result-object v2

    .line 219
    check-cast v2, Landroidx/mediarouter/media/MediaRouter;

    .line 220
    if-nez v2, :cond_5

    .line 222
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 224
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    goto :goto_2

    .line 231
    :cond_5
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    .line 232
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 236
    goto :goto_2

    .line 239
    :cond_6
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 242
    move-result v1

    .line 245
    const/4 v2, 0x0

    .line 246
    :goto_3
    if-ge v2, v1, :cond_7

    .line 247
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    move-result-object v3

    .line 254
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 255
    invoke-static {v3, v0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->invokeCallback(Landroidx/mediarouter/media/MediaRouter$CallbackRecord;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    add-int/lit8 v2, v2, 0x1

    .line 260
    goto :goto_3

    .line 262
    :cond_7
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    .line 263
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 265
    return-void

    .line 268
    :catchall_0
    move-exception p1

    .line 269
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 272
    throw p1

    .line 275
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 276
.end method

.method public final post(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 6
    return-void
    .line 9
.end method
