.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;
.implements Landroid/os/IInterface;


# instance fields
.field public mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final mSplitScreenListener:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)V

    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 17
    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 19
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;

    .line 21
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 24
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;

    .line 27
    const/4 v3, 0x2

    .line 29
    invoke-direct {v2, v3, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 30
    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 36
    return-void
    .line 38
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
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    .line 7
    return-void
    .line 10
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->onTransact$com$android$wm$shell$splitscreen$ISplitScreen$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$wm$shell$splitscreen$ISplitScreen$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    const-string v4, "com.android.wm.shell.splitscreen.ISplitScreen"

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
    if-eq v1, v6, :cond_8

    .line 26
    const/4 v4, 0x0

    .line 28
    const-string v6, "com.android.wm.shell.splitscreen.ISplitScreenListener"

    .line 29
    const/4 v7, 0x2

    .line 31
    const/4 v8, 0x0

    .line 32
    if-eq v1, v7, :cond_5

    .line 33
    const/4 v7, 0x3

    .line 35
    if-eq v1, v7, :cond_2

    .line 36
    const/16 v6, 0x29

    .line 38
    if-eq v1, v6, :cond_1

    .line 40
    const-string/jumbo v6, "startTasks"

    .line 42
    packed-switch v1, :pswitch_data_0

    .line 45
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 48
    move-result v0

    .line 51
    return v0

    .line 52
    :pswitch_0
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 58
    move-object v10, v1

    .line 59
    check-cast v10, Landroid/app/PendingIntent;

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 62
    move-result v11

    .line 65
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 71
    move-object v12, v1

    .line 72
    check-cast v12, Landroid/content/pm/ShortcutInfo;

    .line 73
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 75
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 80
    move-object v13, v3

    .line 81
    check-cast v13, Landroid/os/Bundle;

    .line 82
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 89
    move-object v14, v3

    .line 90
    check-cast v14, Landroid/app/PendingIntent;

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 93
    move-result v15

    .line 96
    sget-object v3, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 97
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 99
    move-result-object v3

    .line 102
    move-object/from16 v16, v3

    .line 103
    check-cast v16, Landroid/content/pm/ShortcutInfo;

    .line 105
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 110
    move-object/from16 v17, v1

    .line 111
    check-cast v17, Landroid/os/Bundle;

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 115
    move-result v18

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 119
    move-result v19

    .line 122
    sget-object v1, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 123
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 128
    move-object/from16 v20, v1

    .line 129
    check-cast v20, Landroid/window/RemoteTransition;

    .line 131
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 133
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 135
    move-result-object v1

    .line 138
    move-object/from16 v21, v1

    .line 139
    check-cast v21, Lcom/android/internal/logging/InstanceId;

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 146
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;

    .line 148
    const/16 v22, 0x1

    .line 150
    move-object v9, v1

    .line 152
    invoke-direct/range {v9 .. v22}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 153
    const-string/jumbo v2, "startIntents"

    .line 156
    invoke-static {v0, v2, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 159
    goto/16 :goto_2

    .line 162
    :pswitch_1
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 166
    move-result-object v1

    .line 169
    move-object v10, v1

    .line 170
    check-cast v10, Landroid/app/PendingIntent;

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 173
    move-result v11

    .line 176
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 179
    move-result-object v1

    .line 182
    move-object v12, v1

    .line 183
    check-cast v12, Landroid/content/pm/ShortcutInfo;

    .line 184
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 186
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 188
    move-result-object v3

    .line 191
    move-object v13, v3

    .line 192
    check-cast v13, Landroid/os/Bundle;

    .line 193
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 195
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 197
    move-result-object v3

    .line 200
    move-object v14, v3

    .line 201
    check-cast v14, Landroid/app/PendingIntent;

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 204
    move-result v15

    .line 207
    sget-object v3, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 208
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 210
    move-result-object v3

    .line 213
    move-object/from16 v16, v3

    .line 214
    check-cast v16, Landroid/content/pm/ShortcutInfo;

    .line 216
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 218
    move-result-object v1

    .line 221
    move-object/from16 v17, v1

    .line 222
    check-cast v17, Landroid/os/Bundle;

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 226
    move-result v18

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 230
    move-result v19

    .line 233
    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 236
    move-result-object v1

    .line 239
    move-object/from16 v20, v1

    .line 240
    check-cast v20, Landroid/view/RemoteAnimationAdapter;

    .line 242
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 244
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 246
    move-result-object v1

    .line 249
    move-object/from16 v21, v1

    .line 250
    check-cast v21, Lcom/android/internal/logging/InstanceId;

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 257
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;

    .line 259
    const/16 v22, 0x0

    .line 261
    move-object v9, v1

    .line 263
    invoke-direct/range {v9 .. v22}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 264
    const-string/jumbo v2, "startIntentsWithLegacyTransition"

    .line 267
    invoke-static {v0, v2, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 270
    goto/16 :goto_2

    .line 273
    :pswitch_2
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 275
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 277
    move-result-object v1

    .line 280
    move-object v10, v1

    .line 281
    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 282
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 284
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 286
    move-result-object v3

    .line 289
    move-object v11, v3

    .line 290
    check-cast v11, Landroid/os/Bundle;

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 293
    move-result v12

    .line 296
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 297
    move-result-object v1

    .line 300
    move-object v13, v1

    .line 301
    check-cast v13, Landroid/os/Bundle;

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 304
    move-result v14

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 308
    move-result v15

    .line 311
    sget-object v1, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 312
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 314
    move-result-object v1

    .line 317
    move-object/from16 v16, v1

    .line 318
    check-cast v16, Landroid/window/RemoteTransition;

    .line 320
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 322
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 324
    move-result-object v1

    .line 327
    move-object/from16 v17, v1

    .line 328
    check-cast v17, Lcom/android/internal/logging/InstanceId;

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 335
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;

    .line 337
    const/16 v18, 0x0

    .line 339
    move-object v9, v1

    .line 341
    invoke-direct/range {v9 .. v18}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 342
    const-string/jumbo v2, "startShortcutAndTask"

    .line 345
    invoke-static {v0, v2, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 348
    goto/16 :goto_2

    .line 351
    :pswitch_3
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 353
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 355
    move-result-object v1

    .line 358
    move-object v10, v1

    .line 359
    check-cast v10, Landroid/app/PendingIntent;

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 362
    move-result v11

    .line 365
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 366
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 368
    move-result-object v3

    .line 371
    move-object v12, v3

    .line 372
    check-cast v12, Landroid/os/Bundle;

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 375
    move-result v13

    .line 378
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 379
    move-result-object v1

    .line 382
    move-object v14, v1

    .line 383
    check-cast v14, Landroid/os/Bundle;

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 386
    move-result v15

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 390
    move-result v16

    .line 393
    sget-object v1, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 394
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 396
    move-result-object v1

    .line 399
    move-object/from16 v17, v1

    .line 400
    check-cast v17, Landroid/window/RemoteTransition;

    .line 402
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 404
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 406
    move-result-object v1

    .line 409
    move-object/from16 v18, v1

    .line 410
    check-cast v18, Lcom/android/internal/logging/InstanceId;

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 417
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;

    .line 419
    const/16 v19, 0x1

    .line 421
    move-object v9, v1

    .line 423
    invoke-direct/range {v9 .. v19}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 424
    const-string/jumbo v2, "startIntentAndTask"

    .line 427
    invoke-static {v0, v2, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 430
    goto/16 :goto_2

    .line 433
    :pswitch_4
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 435
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 437
    move-result-object v1

    .line 440
    move-object v10, v1

    .line 441
    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 442
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 444
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 446
    move-result-object v3

    .line 449
    move-object v11, v3

    .line 450
    check-cast v11, Landroid/os/Bundle;

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 453
    move-result v12

    .line 456
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 457
    move-result-object v1

    .line 460
    move-object v13, v1

    .line 461
    check-cast v13, Landroid/os/Bundle;

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 464
    move-result v14

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 468
    move-result v15

    .line 471
    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 472
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 474
    move-result-object v1

    .line 477
    move-object/from16 v16, v1

    .line 478
    check-cast v16, Landroid/view/RemoteAnimationAdapter;

    .line 480
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 482
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 484
    move-result-object v1

    .line 487
    move-object/from16 v17, v1

    .line 488
    check-cast v17, Lcom/android/internal/logging/InstanceId;

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 495
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;

    .line 497
    const/16 v18, 0x1

    .line 499
    move-object v9, v1

    .line 501
    invoke-direct/range {v9 .. v18}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 502
    const-string/jumbo v2, "startShortcutAndTaskWithLegacyTransition"

    .line 505
    invoke-static {v0, v2, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 508
    goto/16 :goto_2

    .line 511
    :pswitch_5
    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 513
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 515
    move-result-object v1

    .line 518
    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    filled-new-array {v4}, [[Landroid/view/RemoteAnimationTarget;

    .line 524
    move-result-object v2

    .line 527
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 528
    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;

    .line 530
    invoke-direct {v4, v5, v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 532
    const-string v1, "onStartingSplitLegacy"

    .line 535
    invoke-static {v0, v1, v4, v5}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 537
    aget-object v0, v2, v8

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {v3, v0, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 545
    goto/16 :goto_2

    .line 548
    :pswitch_6
    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 550
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 552
    move-result-object v1

    .line 555
    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    filled-new-array {v4}, [[Landroid/view/RemoteAnimationTarget;

    .line 561
    move-result-object v2

    .line 564
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 565
    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;

    .line 567
    invoke-direct {v4, v8, v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 569
    const-string v1, "onGoingToRecentsLegacy"

    .line 572
    invoke-static {v0, v1, v4, v5}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 574
    aget-object v0, v2, v8

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {v3, v0, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 582
    goto/16 :goto_2

    .line 585
    :pswitch_7
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 587
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 589
    move-result-object v1

    .line 592
    move-object v10, v1

    .line 593
    check-cast v10, Landroid/app/PendingIntent;

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 596
    move-result v11

    .line 599
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 600
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 602
    move-result-object v3

    .line 605
    move-object v12, v3

    .line 606
    check-cast v12, Landroid/os/Bundle;

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 609
    move-result v13

    .line 612
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 613
    move-result-object v1

    .line 616
    move-object v14, v1

    .line 617
    check-cast v14, Landroid/os/Bundle;

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 620
    move-result v15

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 624
    move-result v16

    .line 627
    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 628
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 630
    move-result-object v1

    .line 633
    move-object/from16 v17, v1

    .line 634
    check-cast v17, Landroid/view/RemoteAnimationAdapter;

    .line 636
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 638
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 640
    move-result-object v1

    .line 643
    move-object/from16 v18, v1

    .line 644
    check-cast v18, Lcom/android/internal/logging/InstanceId;

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 651
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;

    .line 653
    const/16 v19, 0x0

    .line 655
    move-object v9, v1

    .line 657
    invoke-direct/range {v9 .. v19}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 658
    const-string/jumbo v2, "startIntentAndTaskWithLegacyTransition"

    .line 661
    invoke-static {v0, v2, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 664
    goto/16 :goto_2

    .line 667
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 669
    move-result v10

    .line 672
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 673
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 675
    move-result-object v3

    .line 678
    move-object v11, v3

    .line 679
    check-cast v11, Landroid/os/Bundle;

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 682
    move-result v12

    .line 685
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 686
    move-result-object v1

    .line 689
    move-object v13, v1

    .line 690
    check-cast v13, Landroid/os/Bundle;

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 693
    move-result v14

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 697
    move-result v15

    .line 700
    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 701
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 703
    move-result-object v1

    .line 706
    move-object/from16 v16, v1

    .line 707
    check-cast v16, Landroid/view/RemoteAnimationAdapter;

    .line 709
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 711
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 713
    move-result-object v1

    .line 716
    move-object/from16 v17, v1

    .line 717
    check-cast v17, Lcom/android/internal/logging/InstanceId;

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 724
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;

    .line 726
    const/16 v18, 0x0

    .line 728
    move-object v9, v1

    .line 730
    invoke-direct/range {v9 .. v18}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 731
    invoke-static {v0, v6, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 734
    goto/16 :goto_2

    .line 737
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 739
    move-result v20

    .line 742
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 743
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 745
    move-result-object v3

    .line 748
    move-object/from16 v21, v3

    .line 749
    check-cast v21, Landroid/os/Bundle;

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 753
    move-result v22

    .line 756
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 757
    move-result-object v1

    .line 760
    move-object/from16 v23, v1

    .line 761
    check-cast v23, Landroid/os/Bundle;

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 765
    move-result v24

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 769
    move-result v25

    .line 772
    sget-object v1, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 773
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 775
    move-result-object v1

    .line 778
    move-object/from16 v26, v1

    .line 779
    check-cast v26, Landroid/window/RemoteTransition;

    .line 781
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 783
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 785
    move-result-object v1

    .line 788
    move-object/from16 v27, v1

    .line 789
    check-cast v27, Lcom/android/internal/logging/InstanceId;

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 796
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;

    .line 798
    const/16 v28, 0x1

    .line 800
    move-object/from16 v19, v1

    .line 802
    invoke-direct/range {v19 .. v28}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 804
    invoke-static {v0, v6, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 807
    goto/16 :goto_2

    .line 810
    :pswitch_a
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 812
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 814
    move-result-object v1

    .line 817
    move-object v10, v1

    .line 818
    check-cast v10, Landroid/app/PendingIntent;

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 821
    move-result v11

    .line 824
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 825
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 827
    move-result-object v1

    .line 830
    move-object v12, v1

    .line 831
    check-cast v12, Landroid/content/Intent;

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 834
    move-result v13

    .line 837
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 838
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 840
    move-result-object v1

    .line 843
    move-object v14, v1

    .line 844
    check-cast v14, Landroid/os/Bundle;

    .line 845
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 847
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 849
    move-result-object v1

    .line 852
    move-object v15, v1

    .line 853
    check-cast v15, Lcom/android/internal/logging/InstanceId;

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 859
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;

    .line 861
    move-object v9, v1

    .line 863
    invoke-direct/range {v9 .. v15}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;-><init>(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V

    .line 864
    const-string/jumbo v2, "startIntent"

    .line 867
    invoke-static {v0, v2, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 870
    goto/16 :goto_2

    .line 873
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 875
    move-result-object v10

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 879
    move-result-object v11

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 883
    move-result v12

    .line 886
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 887
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 889
    move-result-object v1

    .line 892
    move-object v13, v1

    .line 893
    check-cast v13, Landroid/os/Bundle;

    .line 894
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 896
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 898
    move-result-object v1

    .line 901
    move-object v14, v1

    .line 902
    check-cast v14, Landroid/os/UserHandle;

    .line 903
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 905
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 907
    move-result-object v1

    .line 910
    move-object v15, v1

    .line 911
    check-cast v15, Lcom/android/internal/logging/InstanceId;

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 917
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    .line 919
    move-object v9, v1

    .line 921
    invoke-direct/range {v9 .. v15}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V

    .line 922
    const-string/jumbo v2, "startShortcut"

    .line 925
    invoke-static {v0, v2, v1, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 928
    goto/16 :goto_2

    .line 931
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 933
    move-result v1

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 937
    move-result v3

    .line 940
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 941
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 943
    move-result-object v4

    .line 946
    check-cast v4, Landroid/os/Bundle;

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 952
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    .line 954
    invoke-direct {v2, v1, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(IILandroid/os/Bundle;)V

    .line 956
    const-string/jumbo v1, "startTask"

    .line 959
    invoke-static {v0, v1, v2, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 962
    goto/16 :goto_2

    .line 965
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 967
    move-result v1

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 974
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;

    .line 976
    invoke-direct {v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;-><init>(Z)V

    .line 978
    const-string v1, "exitSplitScreenOnHide"

    .line 981
    invoke-static {v0, v1, v2, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 983
    goto/16 :goto_2

    .line 986
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 988
    move-result v1

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 995
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;

    .line 997
    invoke-direct {v2, v1, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;-><init>(II)V

    .line 999
    const-string v1, "exitSplitScreen"

    .line 1002
    invoke-static {v0, v1, v2, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1004
    goto/16 :goto_2

    .line 1007
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1009
    move-result v1

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1016
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;

    .line 1018
    invoke-direct {v2, v1, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;-><init>(II)V

    .line 1020
    const-string v1, "removeFromSideStage"

    .line 1023
    invoke-static {v0, v1, v2, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1025
    goto/16 :goto_2

    .line 1028
    :cond_1
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1030
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1032
    move-result-object v1

    .line 1035
    check-cast v1, Landroid/app/PendingIntent;

    .line 1036
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1038
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1040
    move-result-object v3

    .line 1043
    check-cast v3, Landroid/app/PendingIntent;

    .line 1044
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1046
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1048
    move-result-object v4

    .line 1051
    check-cast v4, Landroid/os/Bundle;

    .line 1052
    sget-object v6, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1054
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1056
    move-result-object v6

    .line 1059
    check-cast v6, Landroid/window/RemoteTransition;

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1065
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;

    .line 1067
    invoke-direct {v2, v1, v3, v4, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V

    .line 1069
    const-string/jumbo v1, "startSplitWithIntentsForMiui"

    .line 1072
    invoke-static {v0, v1, v2, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1075
    goto :goto_2

    .line 1078
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1079
    move-result-object v1

    .line 1082
    if-nez v1, :cond_3

    .line 1083
    goto :goto_0

    .line 1085
    :cond_3
    invoke-interface {v1, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1086
    move-result-object v1

    .line 1089
    if-eqz v1, :cond_4

    .line 1090
    instance-of v3, v1, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 1092
    if-eqz v3, :cond_4

    .line 1094
    check-cast v1, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 1096
    :cond_4
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1101
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;

    .line 1103
    invoke-direct {v2, v7, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 1105
    const-string/jumbo v0, "unregisterSplitScreenListener"

    .line 1108
    invoke-static {v1, v0, v2, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1111
    goto :goto_2

    .line 1114
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1115
    move-result-object v1

    .line 1118
    if-nez v1, :cond_6

    .line 1119
    goto :goto_1

    .line 1121
    :cond_6
    invoke-interface {v1, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1122
    move-result-object v3

    .line 1125
    if-eqz v3, :cond_7

    .line 1126
    instance-of v4, v3, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 1128
    if-eqz v4, :cond_7

    .line 1130
    move-object v4, v3

    .line 1132
    check-cast v4, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 1133
    goto :goto_1

    .line 1135
    :cond_7
    new-instance v4, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    .line 1136
    invoke-direct {v4, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 1138
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1144
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;

    .line 1146
    invoke-direct {v2, v7, v0, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1148
    const-string v0, "registerSplitScreenListener"

    .line 1151
    invoke-static {v1, v0, v2, v8}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1153
    :goto_2
    return v5

    .line 1156
    :cond_8
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1157
    return v5

    .line 1160
    nop

    .line 1161
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 1162
.end method
