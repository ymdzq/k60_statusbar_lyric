.class public final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    const/high16 v3, -0x10000

    .line 8
    and-int/2addr v2, v3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    sparse-switch v2, :sswitch_data_0

    .line 13
    goto/16 :goto_57

    .line 16
    :sswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_1d

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 40
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 42
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 44
    check-cast v4, Ljava/lang/String;

    .line 46
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 48
    check-cast v5, Landroid/os/Bundle;

    .line 50
    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setStatus(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 52
    goto :goto_0

    .line 55
    :goto_1
    :sswitch_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 56
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 60
    move-result v1

    .line 63
    if-ge v3, v1, :cond_1d

    .line 64
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 66
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 74
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleTaskbar()V

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_1

    .line 81
    :sswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 84
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 86
    check-cast v1, Ljava/lang/String;

    .line 88
    :goto_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 90
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 94
    move-result v2

    .line 97
    if-ge v3, v2, :cond_1d

    .line 98
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 100
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v2

    .line 107
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 108
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showMediaOutputSwitcher(Ljava/lang/String;)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 113
    goto :goto_2

    .line 115
    :goto_3
    :sswitch_3
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 116
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 120
    move-result v2

    .line 123
    if-ge v3, v2, :cond_1d

    .line 124
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 126
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v2

    .line 133
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 134
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    check-cast v4, Ljava/lang/Boolean;

    .line 138
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    move-result v4

    .line 143
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->enterStageSplitFromRunningApp(Z)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 147
    goto :goto_3

    .line 149
    :goto_4
    :sswitch_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 150
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 154
    move-result v1

    .line 157
    if-ge v3, v1, :cond_1d

    .line 158
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 160
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v1

    .line 167
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 168
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->goToFullscreenFromSplit()V

    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 173
    goto :goto_4

    .line 175
    :goto_5
    :sswitch_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 176
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 180
    move-result v2

    .line 183
    if-ge v3, v2, :cond_1d

    .line 184
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 186
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object v2

    .line 193
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 194
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    check-cast v4, Ljava/lang/Integer;

    .line 198
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 200
    move-result v4

    .line 203
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRearDisplayDialog(I)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 207
    goto :goto_5

    .line 209
    :sswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    check-cast v1, Landroid/content/ComponentName;

    .line 212
    :goto_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 214
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 218
    move-result v2

    .line 221
    if-ge v3, v2, :cond_1d

    .line 222
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 224
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    move-result-object v2

    .line 231
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 232
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 237
    goto :goto_6

    .line 239
    :sswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    check-cast v1, Landroid/media/INearbyMediaDevicesProvider;

    .line 242
    :goto_7
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 244
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 246
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 248
    move-result v2

    .line 251
    if-ge v3, v2, :cond_1d

    .line 252
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 254
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    move-result-object v2

    .line 261
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 262
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 264
    add-int/lit8 v3, v3, 0x1

    .line 267
    goto :goto_7

    .line 269
    :sswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    check-cast v1, Landroid/media/INearbyMediaDevicesProvider;

    .line 272
    :goto_8
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 274
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 278
    move-result v2

    .line 281
    if-ge v3, v2, :cond_1d

    .line 282
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 284
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 288
    move-result-object v2

    .line 291
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 292
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 294
    add-int/lit8 v3, v3, 0x1

    .line 297
    goto :goto_8

    .line 299
    :sswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 302
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 304
    check-cast v2, Ljava/lang/Integer;

    .line 306
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 308
    move-result v2

    .line 311
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 312
    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 314
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 316
    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 318
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 320
    check-cast v6, Ljava/lang/CharSequence;

    .line 322
    :goto_9
    iget-object v7, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 324
    iget-object v7, v7, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 326
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 328
    move-result v7

    .line 331
    if-ge v3, v7, :cond_0

    .line 332
    iget-object v7, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 334
    iget-object v7, v7, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 336
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 338
    move-result-object v7

    .line 341
    check-cast v7, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 342
    invoke-interface {v7, v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 344
    add-int/lit8 v3, v3, 0x1

    .line 347
    goto :goto_9

    .line 349
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 350
    goto/16 :goto_57

    .line 353
    :sswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 357
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 359
    check-cast v2, Ljava/lang/Integer;

    .line 361
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 363
    move-result v2

    .line 366
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 367
    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 369
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 371
    check-cast v5, Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    .line 373
    :goto_a
    iget-object v6, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 375
    iget-object v6, v6, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 377
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 379
    move-result v6

    .line 382
    if-ge v3, v6, :cond_1

    .line 383
    iget-object v6, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 385
    iget-object v6, v6, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 387
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 389
    move-result-object v6

    .line 392
    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 393
    invoke-interface {v6, v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 398
    goto :goto_a

    .line 400
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 401
    goto/16 :goto_57

    .line 404
    :goto_b
    :sswitch_b
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 406
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 408
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 410
    move-result v2

    .line 413
    if-ge v3, v2, :cond_1d

    .line 414
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 416
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 418
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 420
    move-result-object v2

    .line 423
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 424
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    check-cast v4, Landroid/hardware/biometrics/IBiometricContextListener;

    .line 428
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 430
    add-int/lit8 v3, v3, 0x1

    .line 433
    goto :goto_b

    .line 435
    :sswitch_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    check-cast v1, Ljava/lang/String;

    .line 438
    :goto_c
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 440
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 442
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 444
    move-result v2

    .line 447
    if-ge v3, v2, :cond_1d

    .line 448
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 450
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 452
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 454
    move-result-object v2

    .line 457
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 458
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 460
    add-int/lit8 v3, v3, 0x1

    .line 463
    goto :goto_c

    .line 465
    :sswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 466
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 468
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 470
    check-cast v2, Landroid/content/ComponentName;

    .line 472
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 474
    move-object v10, v4

    .line 476
    check-cast v10, Ljava/lang/CharSequence;

    .line 477
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 479
    move-object v11, v4

    .line 481
    check-cast v11, Ljava/lang/CharSequence;

    .line 482
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 484
    move-object v12, v4

    .line 486
    check-cast v12, Landroid/graphics/drawable/Icon;

    .line 487
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 489
    move-object v13, v4

    .line 491
    check-cast v13, Lcom/android/internal/statusbar/IAddTileResultCallback;

    .line 492
    :goto_d
    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 494
    iget-object v4, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 496
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 498
    move-result v4

    .line 501
    if-ge v3, v4, :cond_2

    .line 502
    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 504
    iget-object v4, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 506
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 508
    move-result-object v4

    .line 511
    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 512
    move-object v5, v2

    .line 514
    move-object v6, v10

    .line 515
    move-object v7, v11

    .line 516
    move-object v8, v12

    .line 517
    move-object v9, v13

    .line 518
    invoke-interface/range {v4 .. v9}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 519
    add-int/lit8 v3, v3, 0x1

    .line 522
    goto :goto_d

    .line 524
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 525
    goto/16 :goto_57

    .line 528
    :goto_e
    :sswitch_e
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 530
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 534
    move-result v2

    .line 537
    if-ge v3, v2, :cond_1d

    .line 538
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 540
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 544
    move-result-object v2

    .line 547
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 548
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 550
    check-cast v4, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    .line 552
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 554
    add-int/lit8 v3, v3, 0x1

    .line 557
    goto :goto_e

    .line 559
    :sswitch_f
    move v2, v3

    .line 560
    :goto_f
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 561
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 563
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 565
    move-result v5

    .line 568
    if-ge v2, v5, :cond_1d

    .line 569
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 571
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 573
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 575
    move-result-object v5

    .line 578
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 579
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 581
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 583
    if-eqz v7, :cond_3

    .line 585
    move v7, v4

    .line 587
    goto :goto_10

    .line 588
    :cond_3
    move v7, v3

    .line 589
    :goto_10
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 590
    add-int/lit8 v2, v2, 0x1

    .line 593
    goto :goto_f

    .line 595
    :goto_11
    :sswitch_10
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 596
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 598
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 600
    move-result v1

    .line 603
    if-ge v3, v1, :cond_1d

    .line 604
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 606
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 608
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 610
    move-result-object v1

    .line 613
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 614
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onEmergencyActionLaunchGestureDetected()V

    .line 616
    add-int/lit8 v3, v3, 0x1

    .line 619
    goto :goto_11

    .line 621
    :goto_12
    :sswitch_11
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 622
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 624
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 626
    move-result v2

    .line 629
    if-ge v3, v2, :cond_1d

    .line 630
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 632
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 634
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 636
    move-result-object v2

    .line 639
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 640
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 642
    check-cast v4, Ljava/lang/Boolean;

    .line 644
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 646
    move-result v4

    .line 649
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestWindowMagnificationConnection(Z)V

    .line 650
    add-int/lit8 v3, v3, 0x1

    .line 653
    goto :goto_12

    .line 655
    :sswitch_12
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 656
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 658
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 660
    move-result-object v0

    .line 663
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    move-result v2

    .line 667
    if-eqz v2, :cond_1d

    .line 668
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 670
    move-result-object v2

    .line 673
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 674
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    check-cast v3, Ljava/lang/Boolean;

    .line 678
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 680
    move-result v3

    .line 683
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->suppressAmbientDisplay(Z)V

    .line 684
    goto :goto_13

    .line 687
    :goto_14
    :sswitch_13
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 688
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 690
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 692
    move-result v2

    .line 695
    if-ge v3, v2, :cond_1d

    .line 696
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 698
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 700
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 702
    move-result-object v2

    .line 705
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 706
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    check-cast v4, Ljava/lang/Boolean;

    .line 710
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 712
    move-result v4

    .line 715
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onTracingStateChanged(Z)V

    .line 716
    add-int/lit8 v3, v3, 0x1

    .line 719
    goto :goto_14

    .line 721
    :sswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 722
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 724
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 726
    check-cast v2, Ljava/lang/String;

    .line 728
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 730
    check-cast v1, Landroid/os/IBinder;

    .line 732
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 734
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 736
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 738
    move-result-object v0

    .line 741
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    move-result v3

    .line 745
    if-eqz v3, :cond_1d

    .line 746
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    move-result-object v3

    .line 751
    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 752
    invoke-interface {v3, v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 754
    goto :goto_15

    .line 757
    :sswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 758
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 760
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 762
    check-cast v2, Ljava/lang/String;

    .line 764
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 766
    move-object v12, v3

    .line 768
    check-cast v12, Landroid/os/IBinder;

    .line 769
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 771
    move-object v13, v3

    .line 773
    check-cast v13, Ljava/lang/CharSequence;

    .line 774
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 776
    move-object v14, v3

    .line 778
    check-cast v14, Landroid/os/IBinder;

    .line 779
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 781
    move-object v15, v3

    .line 783
    check-cast v15, Landroid/app/ITransientNotificationCallback;

    .line 784
    iget v11, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 786
    iget v10, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 788
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 790
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 792
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 794
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 796
    move-result-object v0

    .line 799
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 800
    move-result v3

    .line 803
    if-eqz v3, :cond_1d

    .line 804
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 806
    move-result-object v3

    .line 809
    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 810
    move v4, v11

    .line 812
    move-object v5, v2

    .line 813
    move-object v6, v12

    .line 814
    move-object v7, v13

    .line 815
    move-object v8, v14

    .line 816
    move v9, v10

    .line 817
    move/from16 v16, v10

    .line 818
    move-object v10, v15

    .line 820
    move/from16 v17, v11

    .line 821
    move v11, v1

    .line 823
    invoke-interface/range {v3 .. v11}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    .line 824
    move/from16 v10, v16

    .line 827
    move/from16 v11, v17

    .line 829
    goto :goto_16

    .line 831
    :goto_17
    :sswitch_16
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 832
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 834
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 836
    move-result v2

    .line 839
    if-ge v3, v2, :cond_1d

    .line 840
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 842
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 844
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 846
    move-result-object v2

    .line 849
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 850
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 852
    check-cast v4, Ljava/lang/Boolean;

    .line 854
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 856
    move-result v4

    .line 859
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissInattentiveSleepWarning(Z)V

    .line 860
    add-int/lit8 v3, v3, 0x1

    .line 863
    goto :goto_17

    .line 865
    :goto_18
    :sswitch_17
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 866
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 868
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 870
    move-result v1

    .line 873
    if-ge v3, v1, :cond_1d

    .line 874
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 876
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 878
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 880
    move-result-object v1

    .line 883
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 884
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showInattentiveSleepWarning()V

    .line 886
    add-int/lit8 v3, v3, 0x1

    .line 889
    goto :goto_18

    .line 891
    :sswitch_18
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 892
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 894
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 896
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 898
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 900
    :goto_19
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 903
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 905
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 907
    move-result v1

    .line 910
    if-ge v3, v1, :cond_1d

    .line 911
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 913
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 915
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 917
    move-result-object v1

    .line 920
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 921
    invoke-interface {v1, v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->abortTransient(II)V

    .line 923
    add-int/lit8 v3, v3, 0x1

    .line 926
    goto :goto_19

    .line 928
    :sswitch_19
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 929
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 931
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 933
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 935
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 937
    if-eqz v6, :cond_4

    .line 939
    goto :goto_1a

    .line 941
    :cond_4
    move v4, v3

    .line 942
    :goto_1a
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 943
    :goto_1b
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 946
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 948
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 950
    move-result v1

    .line 953
    if-ge v3, v1, :cond_1d

    .line 954
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 956
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 958
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 960
    move-result-object v1

    .line 963
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 964
    invoke-interface {v1, v2, v5, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showTransient(IIZ)V

    .line 966
    add-int/lit8 v3, v3, 0x1

    .line 969
    goto :goto_1b

    .line 971
    :sswitch_1a
    move v2, v3

    .line 972
    :goto_1c
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 973
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 975
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 977
    move-result v5

    .line 980
    if-ge v2, v5, :cond_1d

    .line 981
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 983
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 985
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 987
    move-result-object v5

    .line 990
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 991
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 993
    if-lez v6, :cond_5

    .line 995
    move v6, v4

    .line 997
    goto :goto_1d

    .line 998
    :cond_5
    move v6, v3

    .line 999
    :goto_1d
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRecentsAnimationStateChanged(Z)V

    .line 1000
    add-int/lit8 v2, v2, 0x1

    .line 1003
    goto :goto_1c

    .line 1005
    :goto_1e
    :sswitch_1b
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1006
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1008
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1010
    move-result v1

    .line 1013
    if-ge v3, v1, :cond_1d

    .line 1014
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1016
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1018
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1020
    move-result-object v1

    .line 1023
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1024
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEscapeToast()V

    .line 1026
    add-int/lit8 v3, v3, 0x1

    .line 1029
    goto :goto_1e

    .line 1031
    :goto_1f
    :sswitch_1c
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1032
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1034
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1036
    move-result v2

    .line 1039
    if-ge v3, v2, :cond_1d

    .line 1040
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1042
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1044
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1046
    move-result-object v2

    .line 1049
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1050
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1052
    check-cast v4, Ljava/lang/Boolean;

    .line 1054
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1056
    move-result v4

    .line 1059
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEnterExitToast(Z)V

    .line 1060
    add-int/lit8 v3, v3, 0x1

    .line 1063
    goto :goto_1f

    .line 1065
    :goto_20
    :sswitch_1d
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1066
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1068
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1070
    move-result v2

    .line 1073
    if-ge v3, v2, :cond_1d

    .line 1074
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1076
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1078
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1080
    move-result-object v2

    .line 1083
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1084
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1086
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showWirelessChargingAnimation(I)V

    .line 1088
    add-int/lit8 v3, v3, 0x1

    .line 1091
    goto :goto_20

    .line 1093
    :sswitch_1e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1094
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1096
    :goto_21
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1098
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1100
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1102
    move-result v2

    .line 1105
    if-ge v3, v2, :cond_6

    .line 1106
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1108
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1110
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1112
    move-result-object v2

    .line 1115
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1116
    iget-wide v4, v1, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1118
    invoke-interface {v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideAuthenticationDialog(J)V

    .line 1120
    add-int/lit8 v3, v3, 0x1

    .line 1123
    goto :goto_21

    .line 1125
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1126
    goto/16 :goto_57

    .line 1129
    :sswitch_1f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1131
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1133
    :goto_22
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1135
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1137
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1139
    move-result v2

    .line 1142
    if-ge v3, v2, :cond_7

    .line 1143
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1145
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1147
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1149
    move-result-object v2

    .line 1152
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1153
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1155
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1157
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1159
    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricError(III)V

    .line 1161
    add-int/lit8 v3, v3, 0x1

    .line 1164
    goto :goto_22

    .line 1166
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1167
    goto/16 :goto_57

    .line 1170
    :sswitch_20
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1172
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1174
    :goto_23
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1176
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1178
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1180
    move-result v2

    .line 1183
    if-ge v3, v2, :cond_8

    .line 1184
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1186
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1188
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1190
    move-result-object v2

    .line 1193
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1194
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1196
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1198
    check-cast v5, Ljava/lang/String;

    .line 1200
    invoke-interface {v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricHelp(ILjava/lang/String;)V

    .line 1202
    add-int/lit8 v3, v3, 0x1

    .line 1205
    goto :goto_23

    .line 1207
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1208
    goto/16 :goto_57

    .line 1211
    :sswitch_21
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1213
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1215
    :goto_24
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1217
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1219
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1221
    move-result v2

    .line 1224
    if-ge v3, v2, :cond_9

    .line 1225
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1227
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1229
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1231
    move-result-object v2

    .line 1234
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1235
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1237
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricAuthenticated(I)V

    .line 1239
    add-int/lit8 v3, v3, 0x1

    .line 1242
    goto :goto_24

    .line 1244
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1245
    goto/16 :goto_57

    .line 1248
    :sswitch_22
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1250
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Lcom/android/systemui/statusbar/CommandQueue$H;

    .line 1252
    const/high16 v4, 0x2a0000

    .line 1254
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1256
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1259
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Lcom/android/systemui/statusbar/CommandQueue$H;

    .line 1261
    const/high16 v4, 0x290000

    .line 1263
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1265
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1268
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Lcom/android/systemui/statusbar/CommandQueue$H;

    .line 1270
    const/high16 v4, 0x280000

    .line 1272
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1274
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1277
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1279
    :goto_25
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1281
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1283
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1285
    move-result v2

    .line 1288
    if-ge v3, v2, :cond_a

    .line 1289
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1291
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1293
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1295
    move-result-object v2

    .line 1298
    move-object v4, v2

    .line 1299
    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1300
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1302
    move-object v5, v2

    .line 1304
    check-cast v5, Landroid/hardware/biometrics/PromptInfo;

    .line 1305
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1307
    move-object v6, v2

    .line 1309
    check-cast v6, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 1310
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1312
    move-object v7, v2

    .line 1314
    check-cast v7, [I

    .line 1315
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1317
    check-cast v2, Ljava/lang/Boolean;

    .line 1319
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1321
    move-result v8

    .line 1324
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1325
    check-cast v2, Ljava/lang/Boolean;

    .line 1327
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1329
    move-result v9

    .line 1332
    iget v10, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1333
    iget-wide v11, v1, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1335
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 1337
    move-object v13, v2

    .line 1339
    check-cast v13, Ljava/lang/String;

    .line 1340
    iget-wide v14, v1, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 1342
    invoke-interface/range {v4 .. v15}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1344
    add-int/lit8 v3, v3, 0x1

    .line 1347
    goto :goto_25

    .line 1349
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1350
    goto/16 :goto_57

    .line 1353
    :sswitch_23
    move v2, v3

    .line 1355
    :goto_26
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1356
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1358
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1360
    move-result v5

    .line 1363
    if-ge v2, v5, :cond_1d

    .line 1364
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1366
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1368
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1370
    move-result-object v5

    .line 1373
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1374
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1376
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 1378
    if-eqz v7, :cond_b

    .line 1380
    move v7, v4

    .line 1382
    goto :goto_27

    .line 1383
    :cond_b
    move v7, v3

    .line 1384
    :goto_27
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRotationProposal(IZ)V

    .line 1385
    add-int/lit8 v2, v2, 0x1

    .line 1388
    goto :goto_26

    .line 1390
    :sswitch_24
    move v2, v3

    .line 1391
    :goto_28
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1392
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1394
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1396
    move-result v5

    .line 1399
    if-ge v2, v5, :cond_1d

    .line 1400
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1402
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1404
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1406
    move-result-object v5

    .line 1409
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1410
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1412
    if-eqz v6, :cond_c

    .line 1414
    move v6, v4

    .line 1416
    goto :goto_29

    .line 1417
    :cond_c
    move v6, v3

    .line 1418
    :goto_29
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTopAppHidesStatusBar(Z)V

    .line 1419
    add-int/lit8 v2, v2, 0x1

    .line 1422
    goto :goto_28

    .line 1424
    :sswitch_25
    move v2, v3

    .line 1425
    :goto_2a
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1426
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1428
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1430
    move-result v5

    .line 1433
    if-ge v2, v5, :cond_1d

    .line 1434
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1436
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1438
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1440
    move-result-object v5

    .line 1443
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1444
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1446
    if-eqz v6, :cond_d

    .line 1448
    move v6, v4

    .line 1450
    goto :goto_2b

    .line 1451
    :cond_d
    move v6, v3

    .line 1452
    :goto_2b
    iget-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1453
    check-cast v7, Ljava/lang/String;

    .line 1455
    invoke-interface {v5, v7, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowShutdownUi(Ljava/lang/String;Z)V

    .line 1457
    add-int/lit8 v2, v2, 0x1

    .line 1460
    goto :goto_2a

    .line 1462
    :goto_2c
    :sswitch_26
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1463
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1465
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1467
    move-result v1

    .line 1470
    if-ge v3, v1, :cond_1d

    .line 1471
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1473
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1475
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1477
    move-result-object v1

    .line 1480
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1481
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->togglePanel()V

    .line 1483
    add-int/lit8 v3, v3, 0x1

    .line 1486
    goto :goto_2c

    .line 1488
    :goto_2d
    :sswitch_27
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1489
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1491
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1493
    move-result v1

    .line 1496
    if-ge v3, v1, :cond_1d

    .line 1497
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1499
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1501
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1503
    move-result-object v1

    .line 1506
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1507
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowGlobalActionsMenu()V

    .line 1509
    add-int/lit8 v3, v3, 0x1

    .line 1512
    goto :goto_2d

    .line 1514
    :goto_2e
    :sswitch_28
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1515
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1517
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1519
    move-result v2

    .line 1522
    if-ge v3, v2, :cond_1d

    .line 1523
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1525
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1527
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1529
    move-result-object v2

    .line 1532
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1533
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1535
    check-cast v4, Landroid/view/KeyEvent;

    .line 1537
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 1539
    add-int/lit8 v3, v3, 0x1

    .line 1542
    goto :goto_2e

    .line 1544
    :goto_2f
    :sswitch_29
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1545
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1547
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1549
    move-result v1

    .line 1552
    if-ge v3, v1, :cond_1d

    .line 1553
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1555
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1557
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1559
    move-result-object v1

    .line 1562
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1563
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    .line 1565
    add-int/lit8 v3, v3, 0x1

    .line 1568
    goto :goto_2f

    .line 1570
    :goto_30
    :sswitch_2a
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1571
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1573
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1575
    move-result v2

    .line 1578
    if-ge v3, v2, :cond_1d

    .line 1579
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1581
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1583
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1585
    move-result-object v2

    .line 1588
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1589
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1591
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished(I)V

    .line 1593
    add-int/lit8 v3, v3, 0x1

    .line 1596
    goto :goto_30

    .line 1598
    :goto_31
    :sswitch_2b
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1599
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1601
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1603
    move-result v1

    .line 1606
    if-ge v3, v1, :cond_1d

    .line 1607
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1609
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1611
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1613
    move-result-object v1

    .line 1616
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1617
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1619
    add-int/lit8 v3, v3, 0x1

    .line 1622
    goto :goto_31

    .line 1624
    :goto_32
    :sswitch_2c
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1625
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1627
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1629
    move-result v2

    .line 1632
    if-ge v3, v2, :cond_1d

    .line 1633
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1635
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1637
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1639
    move-result-object v2

    .line 1642
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1643
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1645
    check-cast v4, Landroid/content/ComponentName;

    .line 1647
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    .line 1649
    add-int/lit8 v3, v3, 0x1

    .line 1652
    goto :goto_32

    .line 1654
    :goto_33
    :sswitch_2d
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1655
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1657
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1659
    move-result v2

    .line 1662
    if-ge v3, v2, :cond_1d

    .line 1663
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1665
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1667
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1669
    move-result-object v2

    .line 1672
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1673
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1675
    check-cast v4, Landroid/content/ComponentName;

    .line 1677
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    .line 1679
    add-int/lit8 v3, v3, 0x1

    .line 1682
    goto :goto_33

    .line 1684
    :goto_34
    :sswitch_2e
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1685
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1687
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1689
    move-result v2

    .line 1692
    if-ge v3, v2, :cond_1d

    .line 1693
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1695
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1697
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1699
    move-result-object v2

    .line 1702
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1703
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1705
    check-cast v4, Landroid/content/ComponentName;

    .line 1707
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    .line 1709
    add-int/lit8 v3, v3, 0x1

    .line 1712
    goto :goto_34

    .line 1714
    :goto_35
    :sswitch_2f
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1715
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1717
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1719
    move-result v1

    .line 1722
    if-ge v3, v1, :cond_1d

    .line 1723
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1725
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1727
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1729
    move-result-object v1

    .line 1732
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1733
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPictureInPictureMenu()V

    .line 1735
    add-int/lit8 v3, v3, 0x1

    .line 1738
    goto :goto_35

    .line 1740
    :goto_36
    :sswitch_30
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1741
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1743
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1745
    move-result v2

    .line 1748
    if-ge v3, v2, :cond_1d

    .line 1749
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1751
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1753
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1755
    move-result-object v2

    .line 1758
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1759
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1761
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    .line 1763
    add-int/lit8 v3, v3, 0x1

    .line 1766
    goto :goto_36

    .line 1768
    :goto_37
    :sswitch_31
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1769
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1771
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1773
    move-result v2

    .line 1776
    if-ge v3, v2, :cond_1d

    .line 1777
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1779
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1781
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1783
    move-result-object v2

    .line 1786
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1787
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1789
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    .line 1791
    add-int/lit8 v3, v3, 0x1

    .line 1794
    goto :goto_37

    .line 1796
    :goto_38
    :sswitch_32
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1797
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1799
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1801
    move-result v2

    .line 1804
    if-ge v3, v2, :cond_1d

    .line 1805
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1807
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1809
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1811
    move-result-object v2

    .line 1814
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1815
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1817
    check-cast v4, Landroid/os/Bundle;

    .line 1819
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    .line 1821
    add-int/lit8 v3, v3, 0x1

    .line 1824
    goto :goto_38

    .line 1826
    :goto_39
    :sswitch_33
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1827
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1829
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1831
    move-result v1

    .line 1834
    if-ge v3, v1, :cond_1d

    .line 1835
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1837
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1839
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1841
    move-result-object v1

    .line 1844
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1845
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    .line 1847
    add-int/lit8 v3, v3, 0x1

    .line 1850
    goto :goto_39

    .line 1852
    :sswitch_34
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1853
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1855
    move v2, v3

    .line 1857
    :goto_3a
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1858
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1860
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1862
    move-result v5

    .line 1865
    if-ge v2, v5, :cond_1d

    .line 1866
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1868
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1870
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1872
    move-result-object v5

    .line 1875
    move-object v6, v5

    .line 1876
    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1877
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1879
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1881
    check-cast v5, Ljava/lang/Long;

    .line 1883
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1885
    move-result-wide v8

    .line 1888
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1889
    check-cast v5, Ljava/lang/Long;

    .line 1891
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1893
    move-result-wide v10

    .line 1896
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1897
    if-eqz v5, :cond_e

    .line 1899
    move v12, v4

    .line 1901
    goto :goto_3b

    .line 1902
    :cond_e
    move v12, v3

    .line 1903
    :goto_3b
    invoke-interface/range {v6 .. v12}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(IJJZ)V

    .line 1904
    add-int/lit8 v2, v2, 0x1

    .line 1907
    goto :goto_3a

    .line 1909
    :goto_3c
    :sswitch_35
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1910
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1912
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1914
    move-result v2

    .line 1917
    if-ge v3, v2, :cond_1d

    .line 1918
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1920
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1922
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1924
    move-result-object v2

    .line 1927
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1928
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1930
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled(I)V

    .line 1932
    add-int/lit8 v3, v3, 0x1

    .line 1935
    goto :goto_3c

    .line 1937
    :sswitch_36
    move v2, v3

    .line 1938
    :goto_3d
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1939
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1941
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1943
    move-result v5

    .line 1946
    if-ge v2, v5, :cond_1d

    .line 1947
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1949
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1951
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1953
    move-result-object v5

    .line 1956
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1957
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1959
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 1961
    if-eqz v7, :cond_f

    .line 1963
    move v7, v4

    .line 1965
    goto :goto_3e

    .line 1966
    :cond_f
    move v7, v3

    .line 1967
    :goto_3e
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending(IZ)V

    .line 1968
    add-int/lit8 v2, v2, 0x1

    .line 1971
    goto :goto_3d

    .line 1973
    :goto_3f
    :sswitch_37
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1974
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1976
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1978
    move-result v2

    .line 1981
    if-ge v3, v2, :cond_1d

    .line 1982
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1984
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 1986
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1988
    move-result-object v2

    .line 1991
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1992
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1994
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    .line 1996
    add-int/lit8 v3, v3, 0x1

    .line 1999
    goto :goto_3f

    .line 2001
    :sswitch_38
    move v2, v3

    .line 2002
    :goto_40
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2003
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2005
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2007
    move-result v5

    .line 2010
    if-ge v2, v5, :cond_1d

    .line 2011
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2013
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2015
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2017
    move-result-object v5

    .line 2020
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2021
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 2023
    if-eqz v6, :cond_10

    .line 2025
    move v6, v4

    .line 2027
    goto :goto_41

    .line 2028
    :cond_10
    move v6, v3

    .line 2029
    :goto_41
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 2030
    if-eqz v7, :cond_11

    .line 2032
    move v7, v4

    .line 2034
    goto :goto_42

    .line 2035
    :cond_11
    move v7, v3

    .line 2036
    :goto_42
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    .line 2037
    add-int/lit8 v2, v2, 0x1

    .line 2040
    goto :goto_40

    .line 2042
    :sswitch_39
    move v2, v3

    .line 2043
    :goto_43
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2044
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2046
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2048
    move-result v5

    .line 2051
    if-ge v2, v5, :cond_1d

    .line 2052
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2054
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2056
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2058
    move-result-object v5

    .line 2061
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2062
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 2064
    if-eqz v6, :cond_12

    .line 2066
    move v6, v4

    .line 2068
    goto :goto_44

    .line 2069
    :cond_12
    move v6, v3

    .line 2070
    :goto_44
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    .line 2071
    add-int/lit8 v2, v2, 0x1

    .line 2074
    goto :goto_43

    .line 2076
    :goto_45
    :sswitch_3a
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2077
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2079
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2081
    move-result v2

    .line 2084
    if-ge v3, v2, :cond_1d

    .line 2085
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2087
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2089
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2091
    move-result-object v2

    .line 2094
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2095
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2097
    iget v5, v1, Landroid/os/Message;->arg2:I

    .line 2099
    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2101
    check-cast v6, Ljava/lang/Integer;

    .line 2103
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 2105
    move-result v6

    .line 2108
    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(III)V

    .line 2109
    add-int/lit8 v3, v3, 0x1

    .line 2112
    goto :goto_45

    .line 2114
    :goto_46
    :sswitch_3b
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2115
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2119
    move-result v1

    .line 2122
    if-ge v3, v1, :cond_1d

    .line 2123
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2125
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2127
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2129
    move-result-object v1

    .line 2132
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2133
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    .line 2135
    add-int/lit8 v3, v3, 0x1

    .line 2138
    goto :goto_46

    .line 2140
    :goto_47
    :sswitch_3c
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2141
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2143
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2145
    move-result v1

    .line 2148
    if-ge v3, v1, :cond_1d

    .line 2149
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2151
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2153
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2155
    move-result-object v1

    .line 2158
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2159
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    .line 2161
    add-int/lit8 v3, v3, 0x1

    .line 2164
    goto :goto_47

    .line 2166
    :goto_48
    :sswitch_3d
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2167
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2171
    move-result v1

    .line 2174
    if-ge v3, v1, :cond_1d

    .line 2175
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2177
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2179
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2181
    move-result-object v1

    .line 2184
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2185
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    .line 2187
    add-int/lit8 v3, v3, 0x1

    .line 2190
    goto :goto_48

    .line 2192
    :sswitch_3e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2193
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2195
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2197
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2199
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2201
    move-object v11, v5

    .line 2203
    check-cast v11, Landroid/os/IBinder;

    .line 2204
    iget v12, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2206
    iget v13, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 2208
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 2210
    if-eqz v1, :cond_13

    .line 2212
    goto :goto_49

    .line 2214
    :cond_13
    move v4, v3

    .line 2215
    :goto_49
    const/4 v1, -0x1

    .line 2216
    if-ne v2, v1, :cond_14

    .line 2217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2219
    goto/16 :goto_57

    .line 2222
    :cond_14
    iget v5, v0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    .line 2224
    if-eq v5, v2, :cond_15

    .line 2226
    if-eq v5, v1, :cond_15

    .line 2228
    move v1, v3

    .line 2230
    :goto_4a
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2231
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2233
    move-result v5

    .line 2236
    if-ge v1, v5, :cond_15

    .line 2237
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2239
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2241
    move-result-object v5

    .line 2244
    move-object v14, v5

    .line 2245
    check-cast v14, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2246
    iget v15, v0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    .line 2248
    const/16 v16, 0x0

    .line 2250
    const/16 v17, 0x4

    .line 2252
    const/16 v18, 0x0

    .line 2254
    const/16 v19, 0x0

    .line 2256
    invoke-interface/range {v14 .. v19}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 2258
    add-int/lit8 v1, v1, 0x1

    .line 2261
    goto :goto_4a

    .line 2263
    :cond_15
    :goto_4b
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2264
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2266
    move-result v1

    .line 2269
    if-ge v3, v1, :cond_16

    .line 2270
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2272
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2274
    move-result-object v1

    .line 2277
    move-object v5, v1

    .line 2278
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2279
    move v6, v2

    .line 2281
    move-object v7, v11

    .line 2282
    move v8, v12

    .line 2283
    move v9, v13

    .line 2284
    move v10, v4

    .line 2285
    invoke-interface/range {v5 .. v10}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 2286
    add-int/lit8 v3, v3, 0x1

    .line 2289
    goto :goto_4b

    .line 2291
    :cond_16
    iput v2, v0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    .line 2292
    goto/16 :goto_57

    .line 2294
    :goto_4c
    :sswitch_3f
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2296
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2298
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2300
    move-result v2

    .line 2303
    if-ge v3, v2, :cond_1d

    .line 2304
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2306
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2308
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2310
    move-result-object v2

    .line 2313
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2314
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2316
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onDisplayReady(I)V

    .line 2318
    add-int/lit8 v3, v3, 0x1

    .line 2321
    goto :goto_4c

    .line 2323
    :sswitch_40
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2324
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2326
    move v2, v3

    .line 2328
    :goto_4d
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2329
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2331
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2333
    move-result v5

    .line 2336
    if-ge v2, v5, :cond_18

    .line 2337
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2339
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2341
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2343
    move-result-object v5

    .line 2346
    move-object v6, v5

    .line 2347
    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2348
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2350
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2352
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2354
    move-object v9, v5

    .line 2356
    check-cast v9, [Lcom/android/internal/view/AppearanceRegion;

    .line 2357
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 2359
    if-ne v5, v4, :cond_17

    .line 2361
    move v10, v4

    .line 2363
    goto :goto_4e

    .line 2364
    :cond_17
    move v10, v3

    .line 2365
    :goto_4e
    iget v11, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 2366
    iget v12, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 2368
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2370
    move-object v13, v5

    .line 2372
    check-cast v13, Ljava/lang/String;

    .line 2373
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2375
    move-object v14, v5

    .line 2377
    check-cast v14, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 2378
    invoke-interface/range {v6 .. v14}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 2380
    add-int/lit8 v2, v2, 0x1

    .line 2383
    goto :goto_4d

    .line 2385
    :cond_18
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2386
    goto/16 :goto_57

    .line 2389
    :goto_4f
    :sswitch_41
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2391
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2393
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2395
    move-result v2

    .line 2398
    if-ge v3, v2, :cond_1d

    .line 2399
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2401
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2403
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2405
    move-result-object v2

    .line 2408
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2409
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2411
    check-cast v4, Ljava/lang/String;

    .line 2413
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 2415
    add-int/lit8 v3, v3, 0x1

    .line 2418
    goto :goto_4f

    .line 2420
    :sswitch_42
    move v2, v3

    .line 2421
    :goto_50
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2422
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2424
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2426
    move-result v5

    .line 2429
    if-ge v2, v5, :cond_1d

    .line 2430
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2432
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2434
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2436
    move-result-object v5

    .line 2439
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2440
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 2442
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 2444
    if-eqz v7, :cond_19

    .line 2446
    move v7, v4

    .line 2448
    goto :goto_51

    .line 2449
    :cond_19
    move v7, v3

    .line 2450
    :goto_51
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(IZ)V

    .line 2451
    add-int/lit8 v2, v2, 0x1

    .line 2454
    goto :goto_50

    .line 2456
    :goto_52
    :sswitch_43
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2457
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2459
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2461
    move-result v1

    .line 2464
    if-ge v3, v1, :cond_1d

    .line 2465
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2467
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2469
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2471
    move-result-object v1

    .line 2474
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2475
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    .line 2477
    add-int/lit8 v3, v3, 0x1

    .line 2480
    goto :goto_52

    .line 2482
    :sswitch_44
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2483
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2485
    move v2, v3

    .line 2487
    :goto_53
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2488
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2490
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2492
    move-result v5

    .line 2495
    if-ge v2, v5, :cond_1d

    .line 2496
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2498
    iget-object v5, v5, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2500
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2502
    move-result-object v5

    .line 2505
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2506
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2508
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2510
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 2512
    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 2514
    if-eqz v9, :cond_1a

    .line 2516
    move v9, v4

    .line 2518
    goto :goto_54

    .line 2519
    :cond_1a
    move v9, v3

    .line 2520
    :goto_54
    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIIZ)V

    .line 2521
    add-int/lit8 v2, v2, 0x1

    .line 2524
    goto :goto_53

    .line 2526
    :sswitch_45
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 2527
    if-eq v2, v4, :cond_1c

    .line 2529
    const/4 v4, 0x2

    .line 2531
    if-eq v2, v4, :cond_1b

    .line 2532
    goto :goto_57

    .line 2534
    :cond_1b
    :goto_55
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2535
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2537
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2539
    move-result v2

    .line 2542
    if-ge v3, v2, :cond_1d

    .line 2543
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2545
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2547
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2549
    move-result-object v2

    .line 2552
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2553
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2555
    check-cast v4, Ljava/lang/String;

    .line 2557
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    .line 2559
    add-int/lit8 v3, v3, 0x1

    .line 2562
    goto :goto_55

    .line 2564
    :cond_1c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2565
    check-cast v1, Landroid/util/Pair;

    .line 2567
    :goto_56
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2569
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2571
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2573
    move-result v2

    .line 2576
    if-ge v3, v2, :cond_1d

    .line 2577
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2579
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2581
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2583
    move-result-object v2

    .line 2586
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2587
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2589
    check-cast v4, Ljava/lang/String;

    .line 2591
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2593
    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2595
    invoke-interface {v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 2597
    add-int/lit8 v3, v3, 0x1

    .line 2600
    goto :goto_56

    .line 2602
    :cond_1d
    :goto_57
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_45
        0x20000 -> :sswitch_44
        0x30000 -> :sswitch_43
        0x40000 -> :sswitch_42
        0x50000 -> :sswitch_41
        0x60000 -> :sswitch_40
        0x70000 -> :sswitch_3f
        0x80000 -> :sswitch_3e
        0x90000 -> :sswitch_3d
        0xa0000 -> :sswitch_3c
        0xb0000 -> :sswitch_3b
        0xc0000 -> :sswitch_3a
        0xd0000 -> :sswitch_39
        0xe0000 -> :sswitch_38
        0x120000 -> :sswitch_37
        0x130000 -> :sswitch_36
        0x140000 -> :sswitch_35
        0x150000 -> :sswitch_34
        0x160000 -> :sswitch_33
        0x170000 -> :sswitch_32
        0x180000 -> :sswitch_31
        0x190000 -> :sswitch_30
        0x1a0000 -> :sswitch_2f
        0x1b0000 -> :sswitch_2e
        0x1c0000 -> :sswitch_2d
        0x1d0000 -> :sswitch_2c
        0x1e0000 -> :sswitch_2b
        0x1f0000 -> :sswitch_2a
        0x200000 -> :sswitch_29
        0x210000 -> :sswitch_28
        0x220000 -> :sswitch_27
        0x230000 -> :sswitch_26
        0x240000 -> :sswitch_25
        0x250000 -> :sswitch_24
        0x260000 -> :sswitch_23
        0x270000 -> :sswitch_22
        0x280000 -> :sswitch_21
        0x290000 -> :sswitch_20
        0x2a0000 -> :sswitch_1f
        0x2b0000 -> :sswitch_1e
        0x2c0000 -> :sswitch_1d
        0x2d0000 -> :sswitch_1c
        0x2e0000 -> :sswitch_1b
        0x2f0000 -> :sswitch_1a
        0x300000 -> :sswitch_19
        0x310000 -> :sswitch_18
        0x320000 -> :sswitch_17
        0x330000 -> :sswitch_16
        0x340000 -> :sswitch_15
        0x350000 -> :sswitch_14
        0x360000 -> :sswitch_13
        0x370000 -> :sswitch_12
        0x380000 -> :sswitch_11
        0x3a0000 -> :sswitch_10
        0x3b0000 -> :sswitch_f
        0x3c0000 -> :sswitch_e
        0x3d0000 -> :sswitch_d
        0x3e0000 -> :sswitch_c
        0x3f0000 -> :sswitch_b
        0x400000 -> :sswitch_a
        0x410000 -> :sswitch_9
        0x420000 -> :sswitch_8
        0x430000 -> :sswitch_7
        0x440000 -> :sswitch_6
        0x450000 -> :sswitch_5
        0x460000 -> :sswitch_4
        0x470000 -> :sswitch_3
        0x480000 -> :sswitch_2
        0x490000 -> :sswitch_1
        0x27110000 -> :sswitch_0
    .end sparse-switch
.end method
