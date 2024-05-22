.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mConnectionRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 12
    if-eqz v0, :cond_15

    .line 14
    iget v2, v1, Landroid/os/Message;->what:I

    .line 16
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 18
    iget v4, v1, Landroid/os/Message;->arg2:I

    .line 20
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 24
    move-result-object v1

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    if-eqz v2, :cond_13

    .line 30
    const/4 v8, 0x1

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    goto/16 :goto_6

    .line 36
    :pswitch_0
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 38
    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 40
    if-ne v2, v0, :cond_15

    .line 42
    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v0

    .line 49
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 59
    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 60
    invoke-interface {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->getControllerId()I

    .line 62
    move-result v3

    .line 65
    if-ne v3, v4, :cond_0

    .line 66
    move-object v6, v2

    .line 68
    :cond_1
    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;

    .line 69
    if-eqz v0, :cond_2

    .line 71
    instance-of v2, v6, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 73
    if-eqz v2, :cond_2

    .line 75
    move-object v2, v6

    .line 77
    check-cast v2, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 78
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 80
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 82
    iget-object v3, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 84
    if-ne v3, v2, :cond_2

    .line 86
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 88
    move-result-object v2

    .line 91
    const/4 v3, 0x2

    .line 92
    invoke-virtual {v0, v2, v3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 93
    :cond_2
    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->detachConnection()V

    .line 101
    invoke-virtual {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 104
    goto/16 :goto_6

    .line 107
    :pswitch_1
    if-eqz v5, :cond_3

    .line 109
    instance-of v1, v5, Landroid/os/Bundle;

    .line 111
    if-eqz v1, :cond_15

    .line 113
    :cond_3
    check-cast v5, Landroid/os/Bundle;

    .line 115
    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    .line 117
    if-eqz v1, :cond_15

    .line 119
    const-string v1, "groupRoute"

    .line 121
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 123
    move-result-object v1

    .line 126
    check-cast v1, Landroid/os/Bundle;

    .line 127
    if-eqz v1, :cond_4

    .line 129
    new-instance v2, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 131
    invoke-direct {v2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    .line 133
    goto :goto_0

    .line 136
    :cond_4
    move-object v2, v6

    .line 137
    :goto_0
    const-string v1, "dynamicRoutes"

    .line 138
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 140
    move-result-object v1

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    .line 144
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v1

    .line 152
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v5

    .line 156
    if-eqz v5, :cond_7

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v5

    .line 162
    check-cast v5, Landroid/os/Bundle;

    .line 163
    if-nez v5, :cond_5

    .line 165
    move-object v5, v6

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    const-string v9, "mrDescriptor"

    .line 169
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 171
    move-result-object v9

    .line 174
    if-eqz v9, :cond_6

    .line 175
    new-instance v10, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 177
    invoke-direct {v10, v9}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    .line 179
    move-object v12, v10

    .line 182
    goto :goto_2

    .line 183
    :cond_6
    move-object v12, v6

    .line 184
    :goto_2
    const-string/jumbo v9, "selectionState"

    .line 185
    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 188
    move-result v13

    .line 191
    const-string v9, "isUnselectable"

    .line 192
    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 194
    move-result v14

    .line 197
    const-string v9, "isGroupable"

    .line 198
    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 200
    move-result v15

    .line 203
    const-string v9, "isTransferable"

    .line 204
    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 206
    move-result v16

    .line 209
    new-instance v5, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 210
    move-object v11, v5

    .line 212
    invoke-direct/range {v11 .. v16}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V

    .line 213
    :goto_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    goto :goto_1

    .line 219
    :cond_7
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 220
    iget-object v5, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 222
    if-ne v5, v0, :cond_15

    .line 224
    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 228
    move-result-object v0

    .line 231
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    move-result v1

    .line 235
    if-eqz v1, :cond_9

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    move-result-object v1

    .line 241
    check-cast v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 242
    invoke-interface {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->getControllerId()I

    .line 244
    move-result v5

    .line 247
    if-ne v5, v4, :cond_8

    .line 248
    move-object v6, v1

    .line 250
    :cond_9
    instance-of v0, v6, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    .line 251
    if-eqz v0, :cond_15

    .line 253
    check-cast v6, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    .line 255
    invoke-virtual {v6, v2, v3}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->notifyDynamicRoutesChanged(Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V

    .line 257
    goto/16 :goto_6

    .line 260
    :pswitch_2
    instance-of v1, v5, Landroid/os/Bundle;

    .line 262
    if-eqz v1, :cond_b

    .line 264
    check-cast v5, Landroid/os/Bundle;

    .line 266
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 268
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 270
    move-result-object v1

    .line 273
    check-cast v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    .line 274
    if-eqz v5, :cond_a

    .line 276
    const-string/jumbo v2, "routeId"

    .line 278
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 281
    move-result v2

    .line 284
    if-eqz v2, :cond_a

    .line 285
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 287
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 289
    invoke-virtual {v1, v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onResult(Landroid/os/Bundle;)V

    .line 292
    goto/16 :goto_6

    .line 295
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    const-string v0, "DynamicGroupRouteController is created without valid route id."

    .line 300
    invoke-static {v0, v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 302
    goto/16 :goto_6

    .line 305
    :cond_b
    const-string v0, "MediaRouteProviderProxy"

    .line 307
    const-string v1, "No further information on the dynamic group controller"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    goto/16 :goto_6

    .line 314
    :pswitch_3
    if-eqz v5, :cond_c

    .line 316
    instance-of v1, v5, Landroid/os/Bundle;

    .line 318
    if-eqz v1, :cond_15

    .line 320
    :cond_c
    check-cast v5, Landroid/os/Bundle;

    .line 322
    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    .line 324
    if-eqz v1, :cond_15

    .line 326
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 328
    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 330
    move-result-object v2

    .line 333
    iget-object v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 334
    if-ne v3, v0, :cond_15

    .line 336
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 338
    goto/16 :goto_6

    .line 341
    :pswitch_4
    if-eqz v5, :cond_d

    .line 343
    instance-of v2, v5, Landroid/os/Bundle;

    .line 345
    if-eqz v2, :cond_15

    .line 347
    :cond_d
    if-nez v1, :cond_e

    .line 349
    goto :goto_4

    .line 351
    :cond_e
    const-string v2, "error"

    .line 352
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    move-result-object v6

    .line 357
    :goto_4
    check-cast v5, Landroid/os/Bundle;

    .line 358
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 360
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 362
    move-result-object v1

    .line 365
    check-cast v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    .line 366
    if-eqz v1, :cond_15

    .line 368
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 370
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 372
    invoke-static {v6, v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 375
    goto/16 :goto_6

    .line 378
    :pswitch_5
    if-eqz v5, :cond_f

    .line 380
    instance-of v1, v5, Landroid/os/Bundle;

    .line 382
    if-eqz v1, :cond_15

    .line 384
    :cond_f
    check-cast v5, Landroid/os/Bundle;

    .line 386
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 388
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 390
    move-result-object v1

    .line 393
    check-cast v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    .line 394
    if-eqz v1, :cond_15

    .line 396
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 398
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 400
    invoke-virtual {v1, v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onResult(Landroid/os/Bundle;)V

    .line 403
    goto/16 :goto_6

    .line 406
    :pswitch_6
    if-eqz v5, :cond_10

    .line 408
    instance-of v1, v5, Landroid/os/Bundle;

    .line 410
    if-eqz v1, :cond_15

    .line 412
    :cond_10
    check-cast v5, Landroid/os/Bundle;

    .line 414
    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    .line 416
    if-nez v1, :cond_15

    .line 418
    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 420
    if-ne v3, v1, :cond_15

    .line 422
    if-lt v4, v8, :cond_15

    .line 424
    iput v7, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 426
    iput v4, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    .line 428
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 430
    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 432
    move-result-object v2

    .line 435
    iget-object v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 436
    if-ne v3, v0, :cond_11

    .line 438
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 440
    :cond_11
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 443
    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 445
    if-ne v2, v0, :cond_15

    .line 447
    iput-boolean v8, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 449
    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 451
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 453
    move-result v0

    .line 456
    :goto_5
    if-ge v7, v0, :cond_12

    .line 457
    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 459
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 461
    move-result-object v2

    .line 464
    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 465
    iget-object v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 467
    invoke-interface {v2, v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    .line 469
    add-int/lit8 v7, v7, 0x1

    .line 472
    goto :goto_5

    .line 474
    :cond_12
    iget-object v0, v1, Landroidx/mediarouter/media/MediaRouteProvider;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 475
    if-eqz v0, :cond_15

    .line 477
    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 479
    const/16 v3, 0xa

    .line 481
    iget v4, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 483
    add-int/lit8 v1, v4, 0x1

    .line 485
    iput v1, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 487
    const/4 v5, 0x0

    .line 489
    iget-object v6, v0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    .line 490
    const/4 v7, 0x0

    .line 492
    invoke-virtual/range {v2 .. v7}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 493
    goto :goto_6

    .line 496
    :cond_13
    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 497
    if-ne v3, v1, :cond_14

    .line 499
    iput v7, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 501
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 503
    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 505
    if-ne v2, v0, :cond_14

    .line 507
    invoke-virtual {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    .line 509
    :cond_14
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 512
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 514
    move-result-object v1

    .line 517
    check-cast v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    .line 518
    if-eqz v1, :cond_15

    .line 520
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 522
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 524
    invoke-static {v6, v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 527
    :cond_15
    :goto_6
    return-void

    .line 530
    nop

    .line 531
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 532
.end method
