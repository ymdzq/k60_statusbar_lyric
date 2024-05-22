.class public final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    const/16 v3, 0x9

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 9
    goto/16 :goto_2

    .line 12
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 14
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x7

    .line 17
    const/16 v6, 0xc

    .line 18
    const/4 v7, 0x3

    .line 20
    const/4 v8, 0x5

    .line 21
    packed-switch v0, :pswitch_data_1

    .line 22
    :pswitch_1
    goto/16 :goto_1

    .line 25
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    check-cast v0, Landroid/util/Pair;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 31
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 33
    check-cast v1, Landroid/content/Context;

    .line 35
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 39
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 41
    iget v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 43
    if-eq v2, v8, :cond_0

    .line 45
    if-ne v2, v5, :cond_8

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 54
    if-eqz p0, :cond_8

    .line 55
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {v1, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-static {v1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 69
    goto/16 :goto_1

    .line 72
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 74
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 76
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 78
    if-ne v0, v7, :cond_8

    .line 80
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanAttempt:I

    .line 82
    if-ne p1, v0, :cond_8

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    .line 86
    iput v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 89
    goto/16 :goto_1

    .line 91
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 93
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    .line 96
    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 98
    if-ne p1, v7, :cond_8

    .line 100
    iput v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 102
    goto/16 :goto_1

    .line 104
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 110
    iget-object v1, v0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 112
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 114
    move-result-object v1

    .line 117
    if-nez v1, :cond_1

    .line 118
    iget-object v0, v0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 120
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 122
    move-result-object v1

    .line 125
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 126
    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 128
    if-ne p1, v7, :cond_8

    .line 130
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result p1

    .line 141
    if-eqz p1, :cond_8

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    .line 144
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()V

    .line 147
    iput v8, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 150
    goto/16 :goto_1

    .line 152
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 156
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 158
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 160
    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 162
    if-ne v1, v8, :cond_8

    .line 164
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v0

    .line 175
    if-eqz v0, :cond_8

    .line 176
    if-ne p1, v6, :cond_2

    .line 178
    const/4 p1, 0x6

    .line 180
    iput p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 181
    goto/16 :goto_1

    .line 183
    :cond_2
    const/16 v0, 0xa

    .line 185
    if-ne p1, v0, :cond_8

    .line 187
    iput v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 189
    goto/16 :goto_1

    .line 191
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 193
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 195
    if-ne p1, v6, :cond_3

    .line 197
    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 199
    const/4 v0, 0x4

    .line 201
    if-ne p1, v0, :cond_8

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 204
    goto/16 :goto_1

    .line 207
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    goto/16 :goto_1

    .line 212
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 214
    if-ne p1, v1, :cond_4

    .line 216
    goto :goto_0

    .line 218
    :cond_4
    move v1, v4

    .line 219
    :goto_0
    if-eqz v1, :cond_5

    .line 220
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 222
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 224
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 226
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 228
    goto/16 :goto_1

    .line 231
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 233
    iput v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 235
    goto/16 :goto_1

    .line 237
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 241
    goto :goto_1

    .line 244
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 245
    iput-boolean v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompleted:Z

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 249
    move-result-wide v2

    .line 252
    iput-wide v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    .line 253
    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 255
    if-ne p1, v1, :cond_8

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 259
    goto :goto_1

    .line 262
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 263
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    .line 265
    const v0, 0x10402be    # @android:string/content_description_sliding_handle

    .line 267
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 273
    iput-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    move-result v0

    .line 279
    if-eqz v0, :cond_6

    .line 280
    goto :goto_1

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBluetoothManagerProvider:Ljavax/inject/Provider;

    .line 283
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 285
    move-result-object v0

    .line 288
    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 289
    if-nez v0, :cond_7

    .line 291
    goto :goto_1

    .line 293
    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    .line 294
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 296
    iput-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 298
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 300
    iput-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 302
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 304
    new-instance v1, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;

    .line 306
    invoke-direct {v1, p0}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    .line 308
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 311
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 313
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;

    .line 318
    invoke-direct {v0, p0}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    .line 320
    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->sErrorListener:Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;

    .line 323
    const-class v0, Landroid/hardware/input/InputManager;

    .line 325
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 327
    move-result-object p1

    .line 330
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 331
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    .line 333
    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 335
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->isInTabletMode()I

    .line 338
    move-result p1

    .line 341
    iput p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 344
    new-instance p1, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    .line 347
    invoke-direct {p1, p0}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    .line 349
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    .line 352
    :cond_8
    :goto_1
    return-void

    .line 354
    :goto_2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 355
    if-eq p1, v2, :cond_a

    .line 357
    if-eq p1, v3, :cond_9

    .line 359
    goto :goto_3

    .line 361
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 362
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 364
    if-eqz p0, :cond_c

    .line 366
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 368
    goto :goto_3

    .line 371
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 372
    iget-object v0, p1, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 374
    if-eqz v0, :cond_b

    .line 376
    goto :goto_3

    .line 378
    :cond_b
    new-instance v0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;

    .line 379
    invoke-direct {v0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    .line 381
    new-instance v2, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;

    .line 384
    invoke-direct {v2, p1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    .line 386
    new-instance v3, Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 389
    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 391
    iget-object v4, v4, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    .line 393
    invoke-direct {v3, v4}, Lcom/android/systemui/keyboard/BluetoothDialog;-><init>(Landroid/content/Context;)V

    .line 395
    iput-object v3, p1, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 398
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 400
    iget-object p1, p1, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 402
    const v3, 0x7f1303dc    # @string/enable_bluetooth_title 'Turn on Bluetooth?'

    .line 404
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 410
    iget-object p1, p1, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 412
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 414
    const v4, 0x7f1303db    # @string/enable_bluetooth_message 'To connect your keyboard with your tablet, you first have to turn on Bluetooth.'

    .line 416
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 419
    move-result-object v3

    .line 422
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 423
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 426
    iget-object p1, p1, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 428
    const v3, 0x7f1303da    # @string/enable_bluetooth_confirmation_ok 'Turn on'

    .line 430
    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 433
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 436
    iget-object p1, p1, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 438
    const/4 v3, -0x2

    .line 440
    const/high16 v4, 0x1040000    # @android:string/cancel

    .line 441
    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 443
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 446
    iget-object p1, p1, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 448
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 450
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 453
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 455
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 457
    :cond_c
    :goto_3
    return-void

    .line 460
    nop

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 462
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
    .line 468
.end method
