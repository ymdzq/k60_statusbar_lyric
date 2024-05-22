.class public abstract Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreen;


# static fields
.field static final TRANSACTION_exitSplitScreen:I = 0x6

.field static final TRANSACTION_exitSplitScreenOnHide:I = 0x7

.field static final TRANSACTION_getSoScSplitInfo:I = 0x18

.field static final TRANSACTION_onGestureEnd:I = 0x1a

.field static final TRANSACTION_onGestureStart:I = 0x19

.field static final TRANSACTION_onGoingToRecentsLegacy:I = 0xe

.field static final TRANSACTION_onStartingSplitLegacy:I = 0xf

.field static final TRANSACTION_registerSoScSplitScreenListener:I = 0x2

.field static final TRANSACTION_removeFromSideStage:I = 0x5

.field static final TRANSACTION_removeTaskFromSplit:I = 0x15

.field static final TRANSACTION_setSplitRatio:I = 0x17

.field static final TRANSACTION_snapSplitToNextRatio:I = 0x16

.field static final TRANSACTION_startIntent:I = 0xa

.field static final TRANSACTION_startIntentAndTask:I = 0x11

.field static final TRANSACTION_startIntentAndTaskWithLegacyTransition:I = 0xd

.field static final TRANSACTION_startIntents:I = 0x14

.field static final TRANSACTION_startIntentsWithLegacyTransition:I = 0x13

.field static final TRANSACTION_startShortcut:I = 0x9

.field static final TRANSACTION_startShortcutAndTask:I = 0x12

.field static final TRANSACTION_startShortcutAndTaskWithLegacyTransition:I = 0x10

.field static final TRANSACTION_startSplitWithIntentsForMiui:I = 0x1c

.field static final TRANSACTION_startTask:I = 0x8

.field static final TRANSACTION_startTasks:I = 0xb

.field static final TRANSACTION_startTasksWithLegacyTransition:I = 0xc

.field static final TRANSACTION_unregisterSoScSplitScreenListener:I = 0x3

.field static final TRANSACTION_updateDividerFixedState:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreen;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    instance-of v1, v0, Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    check-cast v0, Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    .line 18
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    return-object v0
    .line 26
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    move-object/from16 v2, p2

    .line 5
    move-object/from16 v3, p3

    .line 7
    const-string v4, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 9
    const/4 v12, 0x1

    .line 11
    if-lt v1, v12, :cond_0

    .line 12
    const v5, 0xffffff

    .line 14
    if-gt v1, v5, :cond_0

    .line 17
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    :cond_0
    const v5, 0x5f4e5446

    .line 22
    if-eq v1, v5, :cond_1

    .line 25
    packed-switch v1, :pswitch_data_0

    .line 27
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    move-result v0

    .line 33
    return v0

    .line 34
    :pswitch_1
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Landroid/app/PendingIntent;

    .line 41
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 48
    check-cast v3, Landroid/app/PendingIntent;

    .line 49
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 56
    check-cast v4, Landroid/os/Bundle;

    .line 57
    sget-object v5, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 61
    move-result-object v5

    .line 64
    check-cast v5, Landroid/window/RemoteTransition;

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 67
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startSplitWithIntentsForMiui(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V

    .line 70
    goto/16 :goto_0

    .line 73
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 75
    move-result v1

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 79
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->updateDividerFixedState(Z)V

    .line 82
    goto/16 :goto_0

    .line 85
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    move-result v1

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onGestureEnd(I)V

    .line 94
    goto/16 :goto_0

    .line 97
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 99
    move-result v1

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onGestureStart(I)V

    .line 106
    goto/16 :goto_0

    .line 109
    :pswitch_5
    invoke-interface {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->getSoScSplitInfo()Landroid/os/Bundle;

    .line 111
    move-result-object v0

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v3, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 118
    goto/16 :goto_0

    .line 121
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 123
    move-result v1

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->setSplitRatio(F)V

    .line 130
    goto/16 :goto_0

    .line 133
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 135
    move-result v1

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->snapSplitToNextRatio(I)V

    .line 142
    goto/16 :goto_0

    .line 145
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 147
    move-result v1

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->removeTaskFromSplit(I)V

    .line 154
    goto/16 :goto_0

    .line 157
    :pswitch_9
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 161
    move-result-object v1

    .line 164
    check-cast v1, Landroid/app/PendingIntent;

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 167
    move-result v3

    .line 170
    sget-object v4, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 171
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 173
    move-result-object v4

    .line 176
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 177
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 181
    move-result-object v6

    .line 184
    check-cast v6, Landroid/os/Bundle;

    .line 185
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 189
    move-result-object v7

    .line 192
    check-cast v7, Landroid/app/PendingIntent;

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 195
    move-result v8

    .line 198
    sget-object v9, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 199
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 201
    move-result-object v9

    .line 204
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 205
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 207
    move-result-object v5

    .line 210
    move-object v10, v5

    .line 211
    check-cast v10, Landroid/os/Bundle;

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 214
    move-result v11

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 218
    move-result v13

    .line 221
    sget-object v5, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 222
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 224
    move-result-object v5

    .line 227
    move-object v14, v5

    .line 228
    check-cast v14, Landroid/window/RemoteTransition;

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    move-object v0, p0

    .line 234
    move v2, v3

    .line 235
    move-object v3, v4

    .line 236
    move-object v4, v6

    .line 237
    move-object v5, v7

    .line 238
    move v6, v8

    .line 239
    move-object v7, v9

    .line 240
    move-object v8, v10

    .line 241
    move v9, v11

    .line 242
    move v10, v13

    .line 243
    move-object v11, v14

    .line 244
    invoke-interface/range {v0 .. v11}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    .line 245
    goto/16 :goto_0

    .line 248
    :pswitch_a
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 250
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 252
    move-result-object v1

    .line 255
    check-cast v1, Landroid/app/PendingIntent;

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 258
    move-result v3

    .line 261
    sget-object v4, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 262
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 264
    move-result-object v4

    .line 267
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 268
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 270
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 272
    move-result-object v6

    .line 275
    check-cast v6, Landroid/os/Bundle;

    .line 276
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 278
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 280
    move-result-object v7

    .line 283
    check-cast v7, Landroid/app/PendingIntent;

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 286
    move-result v8

    .line 289
    sget-object v9, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 290
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 292
    move-result-object v9

    .line 295
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 296
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 298
    move-result-object v5

    .line 301
    move-object v10, v5

    .line 302
    check-cast v10, Landroid/os/Bundle;

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 305
    move-result v11

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 309
    move-result v13

    .line 312
    sget-object v5, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 313
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 315
    move-result-object v5

    .line 318
    move-object v14, v5

    .line 319
    check-cast v14, Landroid/view/RemoteAnimationAdapter;

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    move-object v0, p0

    .line 325
    move v2, v3

    .line 326
    move-object v3, v4

    .line 327
    move-object v4, v6

    .line 328
    move-object v5, v7

    .line 329
    move v6, v8

    .line 330
    move-object v7, v9

    .line 331
    move-object v8, v10

    .line 332
    move v9, v11

    .line 333
    move v10, v13

    .line 334
    move-object v11, v14

    .line 335
    invoke-interface/range {v0 .. v11}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 336
    goto/16 :goto_0

    .line 339
    :pswitch_b
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 341
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 343
    move-result-object v1

    .line 346
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 347
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 349
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 351
    move-result-object v4

    .line 354
    check-cast v4, Landroid/os/Bundle;

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 357
    move-result v5

    .line 360
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 361
    move-result-object v3

    .line 364
    move-object v6, v3

    .line 365
    check-cast v6, Landroid/os/Bundle;

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 368
    move-result v7

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 372
    move-result v8

    .line 375
    sget-object v3, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 376
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 378
    move-result-object v3

    .line 381
    move-object v9, v3

    .line 382
    check-cast v9, Landroid/window/RemoteTransition;

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    move-object v0, p0

    .line 388
    move-object v2, v4

    .line 389
    move v3, v5

    .line 390
    move-object v4, v6

    .line 391
    move v5, v7

    .line 392
    move v6, v8

    .line 393
    move-object v7, v9

    .line 394
    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    .line 395
    goto/16 :goto_0

    .line 398
    :pswitch_c
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 400
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 402
    move-result-object v1

    .line 405
    check-cast v1, Landroid/app/PendingIntent;

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 408
    move-result v3

    .line 411
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 412
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 414
    move-result-object v5

    .line 417
    check-cast v5, Landroid/os/Bundle;

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 420
    move-result v6

    .line 423
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 424
    move-result-object v4

    .line 427
    move-object v7, v4

    .line 428
    check-cast v7, Landroid/os/Bundle;

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 431
    move-result v8

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 435
    move-result v9

    .line 438
    sget-object v4, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 439
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 441
    move-result-object v4

    .line 444
    move-object v10, v4

    .line 445
    check-cast v10, Landroid/window/RemoteTransition;

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    move-object v0, p0

    .line 451
    move v2, v3

    .line 452
    move-object v3, v5

    .line 453
    move v4, v6

    .line 454
    move-object v5, v7

    .line 455
    move v6, v8

    .line 456
    move v7, v9

    .line 457
    move-object v8, v10

    .line 458
    invoke-interface/range {v0 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    .line 459
    goto/16 :goto_0

    .line 462
    :pswitch_d
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 464
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 466
    move-result-object v1

    .line 469
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 470
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 472
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 474
    move-result-object v4

    .line 477
    check-cast v4, Landroid/os/Bundle;

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 480
    move-result v5

    .line 483
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 484
    move-result-object v3

    .line 487
    move-object v6, v3

    .line 488
    check-cast v6, Landroid/os/Bundle;

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 491
    move-result v7

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 495
    move-result v8

    .line 498
    sget-object v3, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 499
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 501
    move-result-object v3

    .line 504
    move-object v9, v3

    .line 505
    check-cast v9, Landroid/view/RemoteAnimationAdapter;

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    move-object v0, p0

    .line 511
    move-object v2, v4

    .line 512
    move v3, v5

    .line 513
    move-object v4, v6

    .line 514
    move v5, v7

    .line 515
    move v6, v8

    .line 516
    move-object v7, v9

    .line 517
    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 518
    goto/16 :goto_0

    .line 521
    :pswitch_e
    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 523
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 525
    move-result-object v1

    .line 528
    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    .line 534
    move-result-object v0

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {v3, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 541
    goto/16 :goto_0

    .line 544
    :pswitch_f
    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 546
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 548
    move-result-object v1

    .line 551
    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    .line 557
    move-result-object v0

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {v3, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 564
    goto/16 :goto_0

    .line 567
    :pswitch_10
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 569
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 571
    move-result-object v1

    .line 574
    check-cast v1, Landroid/app/PendingIntent;

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 577
    move-result v3

    .line 580
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 581
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 583
    move-result-object v5

    .line 586
    check-cast v5, Landroid/os/Bundle;

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 589
    move-result v6

    .line 592
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 593
    move-result-object v4

    .line 596
    move-object v7, v4

    .line 597
    check-cast v7, Landroid/os/Bundle;

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 600
    move-result v8

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 604
    move-result v9

    .line 607
    sget-object v4, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 608
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 610
    move-result-object v4

    .line 613
    move-object v10, v4

    .line 614
    check-cast v10, Landroid/view/RemoteAnimationAdapter;

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    move-object v0, p0

    .line 620
    move v2, v3

    .line 621
    move-object v3, v5

    .line 622
    move v4, v6

    .line 623
    move-object v5, v7

    .line 624
    move v6, v8

    .line 625
    move v7, v9

    .line 626
    move-object v8, v10

    .line 627
    invoke-interface/range {v0 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 628
    goto/16 :goto_0

    .line 631
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 633
    move-result v1

    .line 636
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 637
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 639
    move-result-object v4

    .line 642
    check-cast v4, Landroid/os/Bundle;

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 645
    move-result v5

    .line 648
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 649
    move-result-object v3

    .line 652
    move-object v6, v3

    .line 653
    check-cast v6, Landroid/os/Bundle;

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 656
    move-result v7

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 660
    move-result v8

    .line 663
    sget-object v3, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 664
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 666
    move-result-object v3

    .line 669
    move-object v9, v3

    .line 670
    check-cast v9, Landroid/view/RemoteAnimationAdapter;

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    move-object v0, p0

    .line 676
    move-object v2, v4

    .line 677
    move v3, v5

    .line 678
    move-object v4, v6

    .line 679
    move v5, v7

    .line 680
    move v6, v8

    .line 681
    move-object v7, v9

    .line 682
    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 683
    goto/16 :goto_0

    .line 686
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 688
    move-result v1

    .line 691
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 692
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 694
    move-result-object v4

    .line 697
    check-cast v4, Landroid/os/Bundle;

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 700
    move-result v5

    .line 703
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 704
    move-result-object v3

    .line 707
    move-object v6, v3

    .line 708
    check-cast v6, Landroid/os/Bundle;

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 711
    move-result v7

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 715
    move-result v8

    .line 718
    sget-object v3, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 719
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 721
    move-result-object v3

    .line 724
    move-object v9, v3

    .line 725
    check-cast v9, Landroid/window/RemoteTransition;

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    move-object v0, p0

    .line 731
    move-object v2, v4

    .line 732
    move v3, v5

    .line 733
    move-object v4, v6

    .line 734
    move v5, v7

    .line 735
    move v6, v8

    .line 736
    move-object v7, v9

    .line 737
    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    .line 738
    goto/16 :goto_0

    .line 741
    :pswitch_13
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 743
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 745
    move-result-object v1

    .line 748
    check-cast v1, Landroid/app/PendingIntent;

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 751
    move-result v3

    .line 754
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 755
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 757
    move-result-object v4

    .line 760
    check-cast v4, Landroid/content/Intent;

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 763
    move-result v5

    .line 766
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 767
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 769
    move-result-object v6

    .line 772
    check-cast v6, Landroid/os/Bundle;

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    move-object v0, p0

    .line 778
    move v2, v3

    .line 779
    move-object v3, v4

    .line 780
    move v4, v5

    .line 781
    move-object v5, v6

    .line 782
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    .line 783
    goto/16 :goto_0

    .line 786
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 788
    move-result-object v1

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 792
    move-result-object v3

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 796
    move-result v4

    .line 799
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 800
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 802
    move-result-object v5

    .line 805
    check-cast v5, Landroid/os/Bundle;

    .line 806
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 808
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 810
    move-result-object v6

    .line 813
    check-cast v6, Landroid/os/UserHandle;

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    move-object v0, p0

    .line 819
    move-object v2, v3

    .line 820
    move v3, v4

    .line 821
    move-object v4, v5

    .line 822
    move-object v5, v6

    .line 823
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 824
    goto :goto_0

    .line 827
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 828
    move-result v1

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 832
    move-result v3

    .line 835
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 836
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 838
    move-result-object v4

    .line 841
    check-cast v4, Landroid/os/Bundle;

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-interface {p0, v1, v3, v4}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startTask(IILandroid/os/Bundle;)V

    .line 847
    goto :goto_0

    .line 850
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 851
    move-result v1

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->exitSplitScreenOnHide(Z)V

    .line 858
    goto :goto_0

    .line 861
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 862
    move-result v1

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->exitSplitScreen(I)V

    .line 869
    goto :goto_0

    .line 872
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 873
    move-result v1

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 877
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->removeFromSideStage(I)V

    .line 880
    goto :goto_0

    .line 883
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 884
    move-result-object v1

    .line 887
    invoke-static {v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    .line 888
    move-result-object v1

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->unregisterSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V

    .line 895
    goto :goto_0

    .line 898
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 899
    move-result-object v1

    .line 902
    invoke-static {v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    .line 903
    move-result-object v1

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 907
    invoke-interface {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->registerSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V

    .line 910
    :goto_0
    return v12

    .line 913
    :cond_1
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    return v12

    .line 917
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
    .end packed-switch
    .line 918
.end method
