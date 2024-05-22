.class public final Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;
.implements Landroid/os/IInterface;


# instance fields
.field public mController:Lcom/android/wm/shell/recents/RecentTasksController;

.field public final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final mRecentTasksListener:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.recents.IRecentTasks"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;)V

    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mRecentTasksListener:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 17
    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 19
    new-instance v1, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda3;

    .line 21
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 24
    new-instance v2, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v2}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 29
    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 32
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 35
    return-void
    .line 37
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    .line 7
    return-void
    .line 10
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->onTransact$com$android$wm$shell$recents$IRecentTasks$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$wm$shell$recents$IRecentTasks$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    const-string v4, "com.android.wm.shell.recents.IRecentTasks"

    .line 10
    const/4 v5, 0x1

    .line 12
    if-lt v1, v5, :cond_0

    .line 13
    const v6, 0xffffff

    .line 15
    if-gt v1, v6, :cond_0

    .line 18
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    :cond_0
    const v6, 0x5f4e5446

    .line 23
    if-eq v1, v6, :cond_c

    .line 26
    const-string v4, "com.android.wm.shell.recents.IRecentTasksListener"

    .line 28
    const/4 v6, 0x0

    .line 30
    const-string v7, "RecentsTransitionHandler"

    .line 31
    const-string v8, "RecentTasksController"

    .line 33
    const/4 v9, 0x0

    .line 35
    packed-switch v1, :pswitch_data_0

    .line 36
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    move-result v0

    .line 42
    return v0

    .line 43
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 44
    move-result-object v1

    .line 47
    sget-object v4, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 53
    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 56
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 59
    if-nez v0, :cond_1

    .line 61
    const-string v0, "addToFinishTransaction fail, mController is null"

    .line 63
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 69
    if-nez v0, :cond_2

    .line 71
    const-string v0, "addToFinishTransaction fail, mTransitionHandler is null"

    .line 73
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    const-string v6, "RecentsTransitionHandler::addToFinishTransaction, token = "

    .line 81
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v6, ", addFinishSCT = "

    .line 89
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 100
    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mToken:Landroid/os/IBinder;

    .line 104
    iput-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAddToFinishSCT:Landroid/view/SurfaceControl$Transaction;

    .line 106
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto/16 :goto_5

    .line 111
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 113
    move-result-object v1

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 120
    if-nez v0, :cond_3

    .line 122
    const-string v0, "getRecentsAnimationController fail, mController is null"

    .line 124
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto :goto_1

    .line 129
    :cond_3
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 130
    if-nez v0, :cond_4

    .line 132
    const-string v0, "getRecentsAnimationController fail, mTransitionHandler is null"

    .line 134
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto :goto_1

    .line 139
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    .line 140
    move-result v1

    .line 143
    if-gez v1, :cond_5

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    const-string v2, "getRecentsAnimationController fail, controllerIdx = "

    .line 148
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 159
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    goto :goto_1

    .line 163
    :cond_5
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    move-result-object v0

    .line 169
    move-object v6, v0

    .line 170
    check-cast v6, Landroid/view/IRecentsAnimationController;

    .line 171
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 176
    goto/16 :goto_5

    .line 179
    :pswitch_2
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 181
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 183
    move-result-object v1

    .line 186
    move-object v11, v1

    .line 187
    check-cast v11, Landroid/app/PendingIntent;

    .line 188
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 190
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 192
    move-result-object v1

    .line 195
    move-object v12, v1

    .line 196
    check-cast v12, Landroid/content/Intent;

    .line 197
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 199
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 201
    move-result-object v1

    .line 204
    move-object v13, v1

    .line 205
    check-cast v13, Landroid/os/Bundle;

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 208
    move-result-object v1

    .line 211
    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    .line 212
    move-result-object v14

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 216
    move-result-object v1

    .line 219
    invoke-static {v1}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    .line 220
    move-result-object v15

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 227
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 229
    if-nez v1, :cond_6

    .line 231
    const-string v0, "Used shell-transitions startRecentsTransition without shell-transitions"

    .line 233
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    goto/16 :goto_5

    .line 238
    :cond_6
    new-instance v1, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda4;

    .line 240
    move-object v10, v1

    .line 242
    invoke-direct/range {v10 .. v15}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda4;-><init>(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V

    .line 243
    const-string/jumbo v2, "startRecentsTransition"

    .line 246
    invoke-static {v0, v2, v1, v9}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 249
    goto/16 :goto_5

    .line 252
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 254
    move-result v1

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    filled-new-array {v6}, [[Landroid/app/ActivityManager$RunningTaskInfo;

    .line 261
    move-result-object v2

    .line 264
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 265
    new-instance v4, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda3;

    .line 267
    invoke-direct {v4, v2, v1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda3;-><init>([[Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 269
    const-string v1, "getRunningTasks"

    .line 272
    invoke-static {v0, v1, v4, v5}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 274
    aget-object v0, v2, v9

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v3, v0, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 282
    goto/16 :goto_5

    .line 285
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 287
    move-result v1

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 291
    move-result v4

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 295
    move-result v7

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 302
    if-nez v0, :cond_7

    .line 304
    new-array v0, v9, [Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 306
    goto :goto_2

    .line 308
    :cond_7
    filled-new-array {v6}, [[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 309
    move-result-object v2

    .line 312
    new-instance v6, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;

    .line 313
    invoke-direct {v6, v2, v1, v4, v7}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;-><init>([[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;III)V

    .line 315
    const-string v1, "getRecentTasks"

    .line 318
    invoke-static {v0, v1, v6, v5}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 320
    aget-object v0, v2, v9

    .line 323
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {v3, v0, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 328
    goto :goto_5

    .line 331
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 332
    move-result-object v1

    .line 335
    if-nez v1, :cond_8

    .line 336
    goto :goto_3

    .line 338
    :cond_8
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 339
    move-result-object v1

    .line 342
    if-eqz v1, :cond_9

    .line 343
    instance-of v3, v1, Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 345
    if-eqz v3, :cond_9

    .line 347
    check-cast v1, Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 349
    :cond_9
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 354
    new-instance v2, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda3;

    .line 356
    const/4 v3, 0x2

    .line 358
    invoke-direct {v2, v3, v0}, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 359
    const-string/jumbo v0, "unregisterRecentTasksListener"

    .line 362
    invoke-static {v1, v0, v2, v9}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 365
    goto :goto_5

    .line 368
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 369
    move-result-object v1

    .line 372
    if-nez v1, :cond_a

    .line 373
    goto :goto_4

    .line 375
    :cond_a
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 376
    move-result-object v3

    .line 379
    if-eqz v3, :cond_b

    .line 380
    instance-of v4, v3, Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 382
    if-eqz v4, :cond_b

    .line 384
    move-object v6, v3

    .line 386
    check-cast v6, Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 387
    goto :goto_4

    .line 389
    :cond_b
    new-instance v6, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub$Proxy;

    .line 390
    invoke-direct {v6, v1}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 392
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 398
    new-instance v2, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda2;

    .line 400
    invoke-direct {v2, v0, v6}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    .line 402
    const-string v0, "registerRecentTasksListener"

    .line 405
    invoke-static {v1, v0, v2, v9}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 407
    :goto_5
    return v5

    .line 410
    :cond_c
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    return v5

    .line 414
    nop

    .line 415
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
    .line 416
.end method
