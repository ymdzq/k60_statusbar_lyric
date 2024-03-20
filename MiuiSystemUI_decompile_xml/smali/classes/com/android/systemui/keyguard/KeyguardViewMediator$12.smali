.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$12;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    :pswitch_0
    goto/16 :goto_3

    .line 9
    :pswitch_1
    const-string p1, "KeyguardViewMediator"

    .line 11
    const-string v0, "fw call password view onAnimationEnd timeout"

    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;->run()V

    .line 22
    goto/16 :goto_3

    .line 25
    :pswitch_2
    const-string p1, "KeyguardViewMediator"

    .line 27
    const-string v0, "fw call startKeyguardExitAnimation timeout"

    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    move-result-wide v3

    .line 39
    const-wide/16 v5, 0x0

    .line 40
    const/4 v2, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 47
    goto/16 :goto_3

    .line 50
    :pswitch_3
    const-string p1, "KeyguardViewMediator#handleMessage CANCEL_KEYGUARD_EXIT_ANIM"

    .line 52
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 57
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 59
    const-string v0, "KeyguardViewMediator"

    .line 61
    if-eqz p1, :cond_0

    .line 63
    const-string p1, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. There\'s a pending lock, so we were cancelled because the device was locked again during the unlock sequence. We should end up locked."

    .line 65
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->finishSurfaceBehindRemoteAnimation()V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    .line 73
    goto :goto_0

    .line 76
    :cond_0
    const-string p1, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. No pending lock, we should end up unlocked with the app/launcher visible."

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation(Z)V

    .line 82
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 85
    goto/16 :goto_3

    .line 88
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 90
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleSystemReady(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 92
    goto/16 :goto_3

    .line 95
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 97
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleNotifyStartedGoingToSleep(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 99
    goto/16 :goto_3

    .line 102
    :pswitch_6
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    .line 104
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 109
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleNotifyStartedWakingUp(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 111
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 114
    goto/16 :goto_3

    .line 117
    :pswitch_7
    const-string p0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    .line 119
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 121
    const-string p0, "KeyguardViewMediator"

    .line 124
    const-string p1, "Timeout while waiting for activity drawn!"

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 131
    goto/16 :goto_3

    .line 134
    :pswitch_8
    const-string v0, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    .line 136
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 141
    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 144
    iput-boolean v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 151
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    .line 153
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 155
    move-result-object v0

    .line 158
    check-cast v0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 159
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$12$$ExternalSyntheticLambda0;

    .line 161
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$12;Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)V

    .line 163
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    .line 168
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    goto/16 :goto_3

    .line 174
    :catchall_0
    move-exception p0

    .line 176
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    throw p0

    .line 178
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    .line 181
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 183
    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 185
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    .line 187
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 189
    if-eqz v1, :cond_2

    .line 191
    if-eqz v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 195
    iget-object v1, v1, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    .line 197
    new-instance v2, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 199
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 207
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 209
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 211
    move-result-object p0

    .line 214
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 215
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 219
    const/4 v1, 0x0

    .line 221
    const/4 v2, 0x0

    .line 222
    const/4 v3, 0x1

    .line 223
    const/4 v4, 0x0

    .line 224
    const/4 v5, 0x1

    .line 225
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 226
    goto/16 :goto_3

    .line 229
    :cond_2
    if-eqz v0, :cond_b

    .line 231
    :try_start_2
    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    goto/16 :goto_3

    .line 236
    :catch_0
    move-exception p0

    .line 238
    const-string p1, "DismissCallbackWrapper"

    .line 239
    const-string v0, "Failed to call callback"

    .line 241
    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    goto/16 :goto_3

    .line 246
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 248
    monitor-enter v0

    .line 250
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 251
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    check-cast p1, Landroid/os/Bundle;

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 257
    monitor-exit v0

    .line 260
    goto/16 :goto_3

    .line 261
    :catchall_1
    move-exception p0

    .line 263
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    throw p0

    .line 265
    :pswitch_b
    const-string v0, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    .line 266
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 268
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 271
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 273
    if-eqz v0, :cond_3

    .line 275
    move v0, v2

    .line 277
    goto :goto_1

    .line 278
    :cond_3
    move v0, v1

    .line 279
    :goto_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 280
    if-eqz p1, :cond_4

    .line 282
    move v1, v2

    .line 284
    :cond_4
    invoke-static {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleSetOccluded(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    .line 285
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 288
    goto/16 :goto_3

    .line 291
    :pswitch_c
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    .line 293
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 295
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 298
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleKeyguardDoneDrawing(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 300
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 303
    goto/16 :goto_3

    .line 306
    :pswitch_d
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    .line 308
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 310
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    .line 315
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 318
    goto/16 :goto_3

    .line 321
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 323
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleNotifyFinishedGoingToSleep(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 325
    goto/16 :goto_3

    .line 328
    :pswitch_f
    const-string p1, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    .line 330
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    const-string p0, "KeyguardViewMediator#handleVerifyUnlock"

    .line 340
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 342
    monitor-enter v0

    .line 345
    :try_start_4
    const-string p0, "KeyguardViewMediator"

    .line 346
    const-string p1, "handleVerifyUnlock"

    .line 348
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 353
    iget-object p0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 356
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 358
    move-result-object p0

    .line 361
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 362
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 366
    const/4 v2, 0x0

    .line 368
    const/4 v3, 0x0

    .line 369
    const/4 v4, 0x1

    .line 370
    const/4 v5, 0x0

    .line 371
    const/4 v6, 0x1

    .line 372
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 373
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 376
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 377
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 380
    goto/16 :goto_3

    .line 383
    :catchall_2
    move-exception p0

    .line 385
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 386
    throw p0

    .line 387
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 388
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 390
    if-eqz p1, :cond_5

    .line 392
    move v1, v2

    .line 394
    :cond_5
    invoke-static {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleReset(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 395
    goto/16 :goto_3

    .line 398
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 402
    goto/16 :goto_3

    .line 405
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 407
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    check-cast p1, Landroid/os/Bundle;

    .line 411
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    const-string p1, "KeyguardViewMediator#handleShow"

    .line 416
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 421
    move-result p1

    .line 424
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 425
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 427
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isMethodSecure(I)Z

    .line 429
    move-result v0

    .line 432
    if-eqz v0, :cond_6

    .line 433
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 435
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 437
    move-result-object v0

    .line 440
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardSecured(I)V

    .line 441
    :cond_6
    monitor-enter p0

    .line 444
    :try_start_6
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 445
    if-nez p1, :cond_7

    .line 447
    const-string p1, "KeyguardViewMediator"

    .line 449
    const-string v0, "ignoring handleShow because system is not ready."

    .line 451
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    monitor-exit p0

    .line 456
    goto/16 :goto_3

    .line 457
    :cond_7
    const-string p1, "KeyguardViewMediator"

    .line 459
    const-string v0, "handleShow"

    .line 461
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 466
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    .line 468
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    .line 470
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 473
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 475
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 478
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 480
    const-class p1, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 483
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 485
    move-result-object p1

    .line 488
    check-cast p1, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 489
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->INIT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 491
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardEditorHelper;->reset(Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;)V

    .line 493
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 496
    if-eqz p1, :cond_8

    .line 498
    const-string p1, "KeyguardViewMediator"

    .line 500
    const-string v0, "Forcing setShowingLocked because mHiding=true, which means we\'re showing in the middle of hiding."

    .line 502
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 507
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 509
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 511
    move-result-object p1

    .line 514
    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    .line 515
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 517
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    const-string v0, "StatusBarKeyguardViewManager#show"

    .line 522
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 524
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 527
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 529
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 531
    iput-boolean v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 533
    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 535
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 538
    move-object v3, v0

    .line 540
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 541
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 543
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 545
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardState(ZZ)V

    .line 547
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 550
    const/16 p1, 0x3e

    .line 553
    const/4 v0, 0x2

    .line 555
    invoke-static {p1, v0}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 556
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 559
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 562
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 565
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    .line 567
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 570
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 573
    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 575
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 578
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 580
    move-result-object p1

    .line 583
    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    .line 584
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 586
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 588
    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 590
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 592
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 594
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 596
    const-class p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 599
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 601
    move-result-object p1

    .line 604
    check-cast p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 605
    iput-boolean v1, p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 607
    iput-boolean v1, p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlockInScreenOff:Z

    .line 609
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 611
    move-result-object p1

    .line 614
    invoke-interface {p1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->onKeyguardShow()V

    .line 615
    const-class p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 618
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 620
    move-result-object p1

    .line 623
    check-cast p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 624
    invoke-virtual {p1, v2, v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperState(ZZ)V

    .line 626
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    .line 629
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 631
    move-result-object p1

    .line 634
    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 635
    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 637
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 639
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardTransparent:Z

    .line 641
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 643
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 646
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 648
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 651
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 652
    iget-boolean v0, p1, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    .line 654
    if-nez v0, :cond_a

    .line 656
    iget-object v0, p1, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 658
    if-eqz v0, :cond_9

    .line 660
    iget-object v1, p1, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Lcom/android/keyguard/KeyguardDisplayManager$2;

    .line 662
    const/16 v3, 0x8

    .line 664
    const/4 v4, 0x4

    .line 666
    invoke-virtual {v0, v4, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 667
    goto :goto_2

    .line 670
    :cond_9
    const-string v0, "KeyguardDisplayManager"

    .line 671
    const-string v1, "MediaRouter not yet initialized"

    .line 673
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    .line 678
    :cond_a
    iput-boolean v2, p1, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    .line 681
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetAppLock()V

    .line 683
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 686
    goto :goto_3

    .line 689
    :catchall_3
    move-exception p1

    .line 690
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 691
    throw p1

    .line 692
    :cond_b
    :goto_3
    return-void

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 694
.end method
