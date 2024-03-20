.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$15;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/16 v1, 0x12d

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_39

    .line 7
    const/16 v1, 0x12e

    .line 9
    const/4 v3, 0x1

    .line 11
    if-eq v0, v1, :cond_2e

    .line 12
    const/16 v1, 0x130

    .line 14
    if-eq v0, v1, :cond_2d

    .line 16
    const/16 v1, 0x132

    .line 18
    const/4 v4, 0x2

    .line 20
    if-eq v0, v1, :cond_28

    .line 21
    const/16 v1, 0x138

    .line 23
    if-eq v0, v1, :cond_27

    .line 25
    const/16 v1, 0x13a

    .line 27
    if-eq v0, v1, :cond_26

    .line 29
    const/16 v1, 0x3e8

    .line 31
    const-string v5, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP"

    .line 33
    if-eq v0, v1, :cond_25

    .line 35
    packed-switch v0, :pswitch_data_0

    .line 37
    packed-switch v0, :pswitch_data_1

    .line 40
    packed-switch v0, :pswitch_data_2

    .line 43
    packed-switch v0, :pswitch_data_3

    .line 46
    packed-switch v0, :pswitch_data_4

    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    goto/16 :goto_1c

    .line 55
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 57
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILjava/util/concurrent/CountDownLatch;)V

    .line 65
    goto/16 :goto_1c

    .line 68
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 70
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 77
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecondaryLockscreenRequirement(I)V

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result p1

    .line 91
    if-ge v2, p1, :cond_3b

    .line 92
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 100
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 105
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 106
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 110
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 113
    goto :goto_0

    .line 115
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 121
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 126
    move-result p1

    .line 129
    if-ge v2, p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 137
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 138
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 140
    move-result-object p1

    .line 143
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 144
    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 148
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 151
    goto :goto_1

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Lcom/android/keyguard/KeyguardUpdateMonitor$18;

    .line 154
    if-eqz p1, :cond_3b

    .line 156
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 160
    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Lcom/android/keyguard/KeyguardUpdateMonitor$18;

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Lcom/android/keyguard/KeyguardUpdateMonitor$18;

    .line 170
    goto/16 :goto_1c

    .line 172
    :pswitch_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 174
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 176
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 183
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 186
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 188
    if-ne v0, v3, :cond_3

    .line 190
    move v0, v3

    .line 192
    goto :goto_2

    .line 193
    :cond_3
    move v0, v2

    .line 194
    :goto_2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 195
    if-ne p1, v3, :cond_4

    .line 197
    goto :goto_3

    .line 199
    :cond_4
    move v3, v2

    .line 200
    :goto_3
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 201
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 203
    invoke-virtual {p1, v0, v3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logPrimaryKeyguardBouncerChanged(ZZ)V

    .line 205
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 208
    if-eqz p1, :cond_5

    .line 210
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 212
    :cond_5
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 214
    if-eq v1, p1, :cond_8

    .line 216
    move p1, v2

    .line 218
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 221
    move-result v0

    .line 224
    if-ge p1, v0, :cond_7

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object v0

    .line 232
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 233
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 235
    move-result-object v0

    .line 238
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 239
    if-eqz v0, :cond_6

    .line 241
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 243
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerStateChanged(Z)V

    .line 245
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 248
    goto :goto_4

    .line 250
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 251
    :cond_8
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 254
    if-eq v5, p1, :cond_3b

    .line 256
    if-eqz p1, :cond_9

    .line 258
    sget-object p1, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->UNLOCK_INTENT:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    .line 260
    const-string v0, "bouncerFullyShown"

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    .line 264
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 269
    move-result p1

    .line 272
    if-ge v2, p1, :cond_3b

    .line 273
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    move-result-object p1

    .line 280
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 281
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 283
    move-result-object p1

    .line 286
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 287
    if-eqz p1, :cond_a

    .line 289
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 291
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerFullyShowingChanged(Z)V

    .line 293
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 296
    goto :goto_5

    .line 298
    :pswitch_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 304
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 307
    move p1, v2

    .line 310
    :goto_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 311
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 313
    move-result v0

    .line 316
    if-ge p1, v0, :cond_c

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 319
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 321
    move-result-object v0

    .line 324
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 325
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 327
    move-result-object v0

    .line 330
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 331
    if-eqz v0, :cond_b

    .line 333
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep$1()V

    .line 335
    :cond_b
    add-int/lit8 p1, p1, 0x1

    .line 338
    goto :goto_6

    .line 340
    :cond_c
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 341
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 343
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 345
    const-string v0, "Started going to sleep, mGoingToSleep=true, mAssistantVisible=false"

    .line 347
    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    .line 349
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 352
    invoke-virtual {p0, v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 354
    goto/16 :goto_1c

    .line 357
    :pswitch_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 359
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 366
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 369
    :goto_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 373
    move-result v0

    .line 376
    if-ge v2, v0, :cond_e

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 381
    move-result-object v0

    .line 384
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 385
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 387
    move-result-object v0

    .line 390
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 391
    if-eqz v0, :cond_d

    .line 393
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 395
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 398
    goto :goto_7

    .line 400
    :cond_e
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FINISHED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 401
    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 403
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 406
    goto/16 :goto_1c

    .line 409
    :pswitch_6
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 411
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 414
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    const-string v0, "KeyguardUpdateMonitor#handleStartedWakingUp"

    .line 421
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 426
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceWakeUpTriggersConfig:Lcom/android/keyguard/FaceWakeUpTriggersConfig;

    .line 432
    iget-object v0, v0, Lcom/android/keyguard/FaceWakeUpTriggersConfig;->triggerFaceAuthOnWakeUpFrom:Ljava/util/Set;

    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    move-result-object v1

    .line 439
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 440
    move-result v0

    .line 443
    if-eqz v0, :cond_f

    .line 444
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 446
    invoke-virtual {v0, p1}, Lcom/android/keyguard/FaceAuthUiEvent;->setExtraInfo(I)V

    .line 448
    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 451
    goto :goto_8

    .line 454
    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 455
    invoke-virtual {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logSkipUpdateFaceListeningOnWakeup(I)V

    .line 457
    :goto_8
    invoke-virtual {p0, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlockFromWakeReason(IZ)V

    .line 460
    move p1, v2

    .line 463
    :goto_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 464
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 466
    move-result v0

    .line 469
    if-ge p1, v0, :cond_11

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 472
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 474
    move-result-object v0

    .line 477
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 478
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 480
    move-result-object v0

    .line 483
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 484
    if-eqz v0, :cond_10

    .line 486
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 488
    :cond_10
    add-int/lit8 p1, p1, 0x1

    .line 491
    goto :goto_9

    .line 493
    :cond_11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMiuiFaceUnlockManager:Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 494
    check-cast p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 496
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mWakeupByNotification:Z

    .line 498
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 500
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 503
    goto/16 :goto_1c

    .line 506
    :pswitch_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 508
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    .line 510
    goto/16 :goto_1c

    .line 513
    :pswitch_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 515
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 517
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 519
    check-cast p1, Landroid/telephony/ServiceState;

    .line 521
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(ILandroid/telephony/ServiceState;)V

    .line 523
    goto/16 :goto_1c

    .line 526
    :pswitch_9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 528
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    .line 530
    goto/16 :goto_1c

    .line 533
    :pswitch_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 540
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 543
    const-string v0, "onSubscriptionInfoChanged()"

    .line 545
    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->v(Ljava/lang/String;)V

    .line 547
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 550
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    .line 552
    move-result-object p1

    .line 555
    if-eqz p1, :cond_12

    .line 556
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 558
    move-result-object p1

    .line 561
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    move-result v0

    .line 565
    if-eqz v0, :cond_13

    .line 566
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 568
    move-result-object v0

    .line 571
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 572
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 574
    invoke-virtual {v1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logSubInfo(Landroid/telephony/SubscriptionInfo;)V

    .line 576
    goto :goto_a

    .line 579
    :cond_12
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 580
    const-string v0, "onSubscriptionInfoChanged: list is null"

    .line 582
    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->v(Ljava/lang/String;)V

    .line 584
    :cond_13
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    .line 587
    move-result-object p1

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    .line 591
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    new-instance v1, Ljava/util/HashSet;

    .line 596
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 598
    move v3, v2

    .line 601
    :goto_b
    move-object v4, p1

    .line 602
    check-cast v4, Ljava/util/ArrayList;

    .line 603
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 605
    move-result v5

    .line 608
    if-ge v3, v5, :cond_15

    .line 609
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 611
    move-result-object v4

    .line 614
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 615
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 617
    move-result v5

    .line 620
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    move-result-object v5

    .line 624
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 628
    move-result v5

    .line 631
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 632
    move-result v6

    .line 635
    invoke-virtual {p0, v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    .line 636
    move-result v5

    .line 639
    if-eqz v5, :cond_14

    .line 640
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 645
    goto :goto_b

    .line 647
    :cond_15
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 648
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 650
    move-result-object p1

    .line 653
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 654
    move-result-object p1

    .line 657
    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 658
    move-result v3

    .line 661
    if-eqz v3, :cond_18

    .line 662
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 664
    move-result-object v3

    .line 667
    check-cast v3, Ljava/util/Map$Entry;

    .line 668
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 670
    move-result-object v4

    .line 673
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 674
    move-result v4

    .line 677
    if-nez v4, :cond_16

    .line 678
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 680
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 682
    move-result-object v5

    .line 685
    check-cast v5, Ljava/lang/Integer;

    .line 686
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 688
    move-result v5

    .line 691
    invoke-virtual {v4, v5}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logInvalidSubId(I)V

    .line 692
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 695
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 698
    move-result-object v3

    .line 701
    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 702
    move v4, v2

    .line 704
    :goto_c
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 705
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 707
    move-result v5

    .line 710
    if-ge v4, v5, :cond_16

    .line 711
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 713
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 715
    move-result-object v5

    .line 718
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 719
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 721
    move-result-object v5

    .line 724
    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 725
    if-eqz v5, :cond_17

    .line 727
    iget v6, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 729
    iget v7, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 731
    iget v8, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 733
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    .line 735
    :cond_17
    add-int/lit8 v4, v4, 0x1

    .line 738
    goto :goto_c

    .line 740
    :cond_18
    move p1, v2

    .line 741
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 742
    move-result v1

    .line 745
    if-ge p1, v1, :cond_1b

    .line 746
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 748
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 750
    move-result-object v3

    .line 753
    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 754
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 756
    move-result v3

    .line 759
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 760
    move-result-object v3

    .line 763
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    move-result-object v1

    .line 767
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 768
    move v3, v2

    .line 770
    :goto_e
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 771
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 773
    move-result v4

    .line 776
    if-ge v3, v4, :cond_1a

    .line 777
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 779
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 781
    move-result-object v4

    .line 784
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 785
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 787
    move-result-object v4

    .line 790
    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 791
    if-eqz v4, :cond_19

    .line 793
    iget v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 795
    iget v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 797
    iget v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 799
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    .line 801
    iget v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 804
    iget v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 806
    iget v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 808
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStatusBarSimStateChanged(III)V

    .line 810
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 813
    goto :goto_e

    .line 815
    :cond_1a
    add-int/lit8 p1, p1, 0x1

    .line 816
    goto :goto_d

    .line 818
    :cond_1b
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    .line 819
    goto/16 :goto_1c

    .line 822
    :pswitch_b
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 824
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 826
    check-cast p1, Ljava/lang/Boolean;

    .line 828
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 830
    move-result p1

    .line 833
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 837
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 840
    goto/16 :goto_1c

    .line 843
    :pswitch_c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 845
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserRemoved(I)V

    .line 849
    goto/16 :goto_1c

    .line 852
    :pswitch_d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 854
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 858
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 861
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    .line 864
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 866
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 868
    move-result p0

    .line 871
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 872
    goto/16 :goto_1c

    .line 875
    :pswitch_e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 877
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 879
    check-cast p1, Ljava/lang/String;

    .line 881
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 883
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 886
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 889
    const-string v1, "handleTimeZoneUpdate"

    .line 891
    invoke-virtual {v0, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    .line 893
    :goto_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 896
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 898
    move-result v0

    .line 901
    if-ge v2, v0, :cond_3b

    .line 902
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 904
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 906
    move-result-object v0

    .line 909
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 910
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 912
    move-result-object v0

    .line 915
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 916
    if-eqz v0, :cond_1c

    .line 918
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 920
    move-result-object v1

    .line 923
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 924
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 927
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 930
    goto :goto_f

    .line 932
    :pswitch_f
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 933
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 935
    check-cast p1, Ljava/lang/Boolean;

    .line 937
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 939
    move-result p1

    .line 942
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    .line 943
    goto/16 :goto_1c

    .line 946
    :pswitch_10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 948
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 950
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 953
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 956
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    .line 958
    move-result p1

    .line 961
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 962
    if-eq v0, p1, :cond_3b

    .line 964
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 966
    :goto_10
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 968
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 970
    move-result p1

    .line 973
    if-ge v2, p1, :cond_3b

    .line 974
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 976
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 978
    move-result-object p1

    .line 981
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 982
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 984
    move-result-object p1

    .line 987
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 988
    if-eqz p1, :cond_1d

    .line 990
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLogoutEnabledChanged()V

    .line 992
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 995
    goto :goto_10

    .line 997
    :pswitch_11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 998
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 1000
    goto/16 :goto_1c

    .line 1003
    :pswitch_12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1005
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1007
    check-cast p1, Ljava/lang/Boolean;

    .line 1009
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1011
    move-result p1

    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAssistantVisible(Z)V

    .line 1015
    goto/16 :goto_1c

    .line 1018
    :pswitch_13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1020
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1022
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1024
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1027
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    .line 1030
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1032
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    .line 1035
    move-result p1

    .line 1038
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 1039
    :goto_11
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1041
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1043
    move-result p1

    .line 1046
    if-ge v2, p1, :cond_3b

    .line 1047
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1049
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1051
    move-result-object p1

    .line 1054
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 1055
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1057
    move-result-object p1

    .line 1060
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1061
    if-eqz p1, :cond_1e

    .line 1063
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    .line 1065
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 1068
    goto :goto_11

    .line 1070
    :pswitch_14
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1071
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1073
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1075
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1078
    if-ne p1, v3, :cond_1f

    .line 1081
    move p1, v3

    .line 1083
    goto :goto_12

    .line 1084
    :cond_1f
    move p1, v2

    .line 1085
    :goto_12
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 1086
    :goto_13
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1088
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1090
    move-result p1

    .line 1093
    if-ge v2, p1, :cond_21

    .line 1094
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1096
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1098
    move-result-object p1

    .line 1101
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 1102
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1104
    move-result-object p1

    .line 1107
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1108
    if-eqz p1, :cond_20

    .line 1110
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 1112
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    .line 1114
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 1117
    goto :goto_13

    .line 1119
    :cond_21
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 1120
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 1123
    if-eqz p1, :cond_3b

    .line 1125
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_DREAM_STARTED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1127
    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 1129
    goto/16 :goto_1c

    .line 1132
    :pswitch_15
    const-string p1, "KeyguardUpdateMonitor#handler MSG_SCREEN_TURNED_OFF"

    .line 1134
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1136
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1141
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1144
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 1147
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 1149
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1151
    goto/16 :goto_1c

    .line 1154
    :pswitch_16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1156
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1158
    check-cast p1, Landroid/content/Intent;

    .line 1160
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 1162
    invoke-virtual {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logServiceProvidersUpdated(Landroid/content/Intent;)V

    .line 1164
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    .line 1167
    goto/16 :goto_1c

    .line 1170
    :pswitch_17
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1174
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1177
    :goto_14
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1180
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1182
    move-result p1

    .line 1185
    if-ge v2, p1, :cond_3b

    .line 1186
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1188
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1190
    move-result-object p1

    .line 1193
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 1194
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1196
    move-result-object p1

    .line 1199
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1200
    if-eqz p1, :cond_22

    .line 1202
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardDismissAnimationFinished()V

    .line 1204
    :cond_22
    add-int/lit8 v2, v2, 0x1

    .line 1207
    goto :goto_14

    .line 1209
    :pswitch_18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1215
    :goto_15
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1218
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1220
    move-result p1

    .line 1223
    if-ge v2, p1, :cond_3b

    .line 1224
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1226
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1228
    move-result-object p1

    .line 1231
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 1232
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1234
    move-result-object p1

    .line 1237
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1238
    if-eqz p1, :cond_23

    .line 1240
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRequireUnlockForNfc()V

    .line 1242
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 1245
    goto :goto_15

    .line 1247
    :pswitch_19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1248
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1250
    check-cast p1, Ljava/lang/String;

    .line 1252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1254
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 1260
    invoke-virtual {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logTimeFormatChanged(Ljava/lang/String;)V

    .line 1262
    :goto_16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1265
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1267
    move-result v0

    .line 1270
    if-ge v2, v0, :cond_3b

    .line 1271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1273
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1275
    move-result-object v0

    .line 1278
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1279
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1281
    move-result-object v0

    .line 1284
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1285
    if-eqz v0, :cond_24

    .line 1287
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeFormatChanged(Ljava/lang/String;)V

    .line 1289
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 1292
    goto :goto_16

    .line 1294
    :cond_25
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1295
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1298
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1300
    check-cast p1, Ljava/lang/String;

    .line 1302
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 1304
    invoke-virtual {p0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->handleStartedWakingUpWithReason(Ljava/lang/String;)V

    .line 1306
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1309
    goto/16 :goto_1c

    .line 1312
    :cond_26
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1314
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1316
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    .line 1318
    goto/16 :goto_1c

    .line 1321
    :cond_27
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1323
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    .line 1325
    goto/16 :goto_1c

    .line 1328
    :cond_28
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1330
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1332
    check-cast p1, Ljava/lang/String;

    .line 1334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1336
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1339
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 1342
    invoke-virtual {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logPhoneStateChanged(Ljava/lang/String;)V

    .line 1344
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 1347
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1349
    move-result v0

    .line 1352
    if-eqz v0, :cond_29

    .line 1353
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 1355
    goto :goto_17

    .line 1357
    :cond_29
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 1358
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1360
    move-result v0

    .line 1363
    if-eqz v0, :cond_2a

    .line 1364
    iput v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 1366
    goto :goto_17

    .line 1368
    :cond_2a
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 1369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1371
    move-result p1

    .line 1374
    if-eqz p1, :cond_2b

    .line 1375
    iput v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 1377
    :cond_2b
    :goto_17
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1379
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1381
    move-result p1

    .line 1384
    if-ge v2, p1, :cond_3b

    .line 1385
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1387
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1389
    move-result-object p1

    .line 1392
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 1393
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1395
    move-result-object p1

    .line 1398
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1399
    if-eqz p1, :cond_2c

    .line 1401
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged()V

    .line 1403
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    .line 1406
    goto :goto_17

    .line 1408
    :cond_2d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1409
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1411
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1413
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1415
    check-cast p1, Ljava/lang/Integer;

    .line 1417
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 1419
    move-result p1

    .line 1422
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    .line 1423
    goto/16 :goto_1c

    .line 1426
    :cond_2e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1428
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1430
    check-cast p1, Lcom/miui/charge/MiuiBatteryStatus;

    .line 1432
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1434
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 1440
    invoke-virtual {p1}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 1442
    move-result v1

    .line 1445
    invoke-virtual {v0}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 1446
    move-result v4

    .line 1449
    if-eqz v4, :cond_2f

    .line 1450
    if-eqz v1, :cond_2f

    .line 1452
    iget v5, v0, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 1454
    iget v6, p1, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 1456
    if-eq v5, v6, :cond_2f

    .line 1458
    move v5, v3

    .line 1460
    goto :goto_18

    .line 1461
    :cond_2f
    move v5, v2

    .line 1462
    :goto_18
    if-ne v4, v1, :cond_37

    .line 1463
    if-eqz v5, :cond_30

    .line 1465
    goto :goto_19

    .line 1467
    :cond_30
    iget v4, v0, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 1468
    iget v5, p1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 1470
    if-eq v4, v5, :cond_31

    .line 1472
    goto :goto_19

    .line 1474
    :cond_31
    if-eqz v1, :cond_32

    .line 1475
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 1477
    iget v4, v0, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 1479
    if-eq v1, v4, :cond_32

    .line 1481
    goto :goto_19

    .line 1483
    :cond_32
    iget-boolean v1, v0, Lcom/miui/charge/MiuiBatteryStatus;->present:Z

    .line 1484
    iget-boolean v4, p1, Lcom/miui/charge/MiuiBatteryStatus;->present:Z

    .line 1486
    if-eq v1, v4, :cond_33

    .line 1488
    goto :goto_19

    .line 1490
    :cond_33
    iget-object v1, v0, Lcom/miui/charge/MiuiBatteryStatus;->incompatibleCharger:Ljava/util/Optional;

    .line 1491
    iget-object v4, p1, Lcom/miui/charge/MiuiBatteryStatus;->incompatibleCharger:Ljava/util/Optional;

    .line 1493
    invoke-virtual {v1, v4}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    .line 1495
    move-result v1

    .line 1498
    if-nez v1, :cond_34

    .line 1499
    goto :goto_19

    .line 1501
    :cond_34
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargingStatus:I

    .line 1502
    iget v4, v0, Lcom/miui/charge/MiuiBatteryStatus;->chargingStatus:I

    .line 1504
    if-eq v1, v4, :cond_35

    .line 1506
    goto :goto_19

    .line 1508
    :cond_35
    iget v1, v0, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 1509
    iget v4, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 1511
    if-ne v1, v4, :cond_37

    .line 1513
    iget v1, v0, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 1515
    iget v4, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 1517
    if-ne v1, v4, :cond_37

    .line 1519
    iget v0, v0, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 1521
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 1523
    if-eq v0, v1, :cond_36

    .line 1525
    goto :goto_19

    .line 1527
    :cond_36
    move v3, v2

    .line 1528
    :cond_37
    :goto_19
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 1529
    if-eqz v3, :cond_3b

    .line 1531
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 1533
    invoke-virtual {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logHandleBatteryUpdate(Lcom/miui/charge/MiuiBatteryStatus;)V

    .line 1535
    :goto_1a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1538
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1540
    move-result v0

    .line 1543
    if-ge v2, v0, :cond_3b

    .line 1544
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1546
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1548
    move-result-object v0

    .line 1551
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1552
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1554
    move-result-object v0

    .line 1557
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1558
    if-eqz v0, :cond_38

    .line 1560
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/miui/charge/MiuiBatteryStatus;)V

    .line 1562
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 1565
    goto :goto_1a

    .line 1567
    :cond_39
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1568
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1570
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1573
    :goto_1b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1576
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1578
    move-result p1

    .line 1581
    if-ge v2, p1, :cond_3b

    .line 1582
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 1584
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1586
    move-result-object p1

    .line 1589
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 1590
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1592
    move-result-object p1

    .line 1595
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1596
    if-eqz p1, :cond_3a

    .line 1598
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1600
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    .line 1603
    goto :goto_1b

    .line 1605
    :cond_3b
    :goto_1c
    return-void

    .line 1606
    nop

    .line 1607
    :pswitch_data_0
    .packed-switch 0x134
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1608
    :pswitch_data_1
    .packed-switch 0x13e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1618
    :pswitch_data_2
    .packed-switch 0x148
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 1632
    :pswitch_data_3
    .packed-switch 0x14c
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
    .end packed-switch

    .line 1642
    :pswitch_data_4
    .packed-switch 0x158
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
    .line 1668
.end method
