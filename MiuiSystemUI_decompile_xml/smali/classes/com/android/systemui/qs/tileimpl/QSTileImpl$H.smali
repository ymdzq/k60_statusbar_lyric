.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field protected static final STALE:I = 0xb


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    const-string v0, "Unknown msg: "

    .line 2
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v3, 0x1

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    const-string v1, "handleAddCallback"

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 16
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 23
    if-nez v3, :cond_18

    .line 24
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 29
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 31
    goto/16 :goto_6

    .line 34
    :cond_0
    const/16 v4, 0x8

    .line 36
    if-ne v2, v4, :cond_1

    .line 38
    const-string v1, "handleRemoveCallbacks"

    .line 40
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 42
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 46
    goto/16 :goto_6

    .line 49
    :cond_1
    const/16 v4, 0x9

    .line 51
    if-ne v2, v4, :cond_2

    .line 53
    const-string v1, "handleRemoveCallback"

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 61
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    goto/16 :goto_6

    .line 68
    :cond_2
    const/4 v4, 0x2

    .line 70
    const/4 v5, 0x0

    .line 71
    if-ne v2, v4, :cond_4

    .line 72
    const-string v1, "handleClick"

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 76
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 78
    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 80
    if-eqz v2, :cond_3

    .line 82
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 84
    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    .line 86
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 90
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 92
    invoke-interface {v0, p1, v5}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 94
    goto/16 :goto_6

    .line 97
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 99
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 101
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 103
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logHandleClick(ILjava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    check-cast p1, Landroid/view/View;

    .line 112
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick(Landroid/view/View;)V

    .line 114
    goto/16 :goto_6

    .line 117
    :cond_4
    const/4 v4, 0x3

    .line 119
    if-ne v2, v4, :cond_5

    .line 120
    const-string v1, "handleSecondaryClick"

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 124
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 126
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 128
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 130
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logHandleSecondaryClick(ILjava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 135
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    check-cast p1, Landroid/view/View;

    .line 139
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick(Landroid/view/View;)V

    .line 141
    goto/16 :goto_6

    .line 144
    :cond_5
    const/4 v4, 0x4

    .line 146
    if-ne v2, v4, :cond_6

    .line 147
    const-string v1, "handleLongClick"

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 151
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 153
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 155
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 157
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logHandleLongClick(ILjava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 162
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    check-cast p1, Landroid/view/View;

    .line 166
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick(Landroid/view/View;)V

    .line 168
    goto/16 :goto_6

    .line 171
    :cond_6
    const/4 v4, 0x5

    .line 173
    if-ne v2, v4, :cond_7

    .line 174
    const-string v1, "handleRefreshState"

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 178
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 182
    goto/16 :goto_6

    .line 185
    :cond_7
    const/4 v4, 0x6

    .line 187
    if-ne v2, v4, :cond_8

    .line 188
    const-string v1, "handleUserSwitch"

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 192
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 194
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 196
    goto/16 :goto_6

    .line 199
    :cond_8
    const/4 v4, 0x7

    .line 201
    if-ne v2, v4, :cond_9

    .line 202
    const-string v1, "handleDestroy"

    .line 204
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 206
    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 208
    goto/16 :goto_6

    .line 211
    :cond_9
    const/16 v4, 0xa

    .line 213
    if-ne v2, v4, :cond_b

    .line 215
    const-string v1, "handleSetListeningInternal"

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 219
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 223
    if-eqz p1, :cond_a

    .line 225
    goto :goto_0

    .line 227
    :cond_a
    move v3, v5

    .line 228
    :goto_0
    invoke-static {v0, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-$$Nest$mhandleSetListeningInternal(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V

    .line 229
    goto/16 :goto_6

    .line 232
    :cond_b
    const/16 v4, 0xb

    .line 234
    if-ne v2, v4, :cond_c

    .line 236
    const-string v1, "handleStale"

    .line 238
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 240
    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    .line 242
    goto/16 :goto_6

    .line 245
    :cond_c
    const/16 v6, 0xc

    .line 247
    if-ne v2, v6, :cond_d

    .line 249
    const-string v1, "initialize"

    .line 251
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 253
    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleInitialize()V

    .line 255
    goto/16 :goto_6

    .line 258
    :cond_d
    const/16 v6, 0x3eb

    .line 260
    if-ne v2, v6, :cond_f

    .line 262
    const-string v1, "handleShowDetail"

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 266
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 268
    if-eqz p1, :cond_e

    .line 270
    goto :goto_1

    .line 272
    :cond_e
    move v3, v5

    .line 273
    :goto_1
    iput-boolean v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 274
    :goto_2
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 278
    move-result v2

    .line 281
    if-ge v5, v2, :cond_18

    .line 282
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    move-result-object p1

    .line 287
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 288
    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onShowDetail(Z)V

    .line 290
    add-int/lit8 v5, v5, 0x1

    .line 293
    goto :goto_2

    .line 295
    :cond_f
    const/16 v6, 0x3ec

    .line 296
    if-ne v2, v6, :cond_11

    .line 298
    const-string v1, "handleToggleStateChanged"

    .line 300
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 302
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 304
    if-eqz p1, :cond_10

    .line 306
    goto :goto_3

    .line 308
    :cond_10
    move v3, v5

    .line 309
    :goto_3
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 312
    move-result v2

    .line 315
    if-ge v5, v2, :cond_18

    .line 316
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    move-result-object p1

    .line 321
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 322
    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    .line 324
    add-int/lit8 v5, v5, 0x1

    .line 327
    goto :goto_3

    .line 329
    :cond_11
    const/16 v6, 0x3ed

    .line 330
    if-ne v2, v6, :cond_13

    .line 332
    const-string v1, "handleScanStateChanged"

    .line 334
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 336
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 338
    if-eqz p1, :cond_12

    .line 340
    goto :goto_4

    .line 342
    :cond_12
    move v3, v5

    .line 343
    :goto_4
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 344
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 346
    move-result v2

    .line 349
    if-ge v5, v2, :cond_18

    .line 350
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 352
    move-result-object p1

    .line 355
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 356
    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onScanStateChanged(Z)V

    .line 358
    add-int/lit8 v5, v5, 0x1

    .line 361
    goto :goto_4

    .line 363
    :cond_13
    const/16 v6, 0x3e9

    .line 364
    if-ne v2, v6, :cond_15

    .line 366
    const-string v1, "handleShowEdit"

    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 370
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 372
    if-eqz p1, :cond_14

    .line 374
    goto :goto_5

    .line 376
    :cond_14
    move v3, v5

    .line 377
    :goto_5
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 378
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 380
    move-result v2

    .line 383
    if-ge v5, v2, :cond_18

    .line 384
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 386
    move-result-object p1

    .line 389
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 390
    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onShowEdit(Z)V

    .line 392
    add-int/lit8 v5, v5, 0x1

    .line 395
    goto :goto_5

    .line 397
    :cond_15
    const/16 v3, 0x3ea

    .line 398
    if-ne v2, v3, :cond_17

    .line 400
    const-string v1, "handleRemoveCallbacksByType"

    .line 402
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 404
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 406
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 408
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 410
    move-result v3

    .line 413
    if-nez v3, :cond_16

    .line 414
    goto :goto_6

    .line 416
    :cond_16
    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda3;

    .line 417
    invoke-direct {v3, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 419
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 422
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 425
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    goto :goto_6

    .line 430
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    .line 433
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    iget p1, p1, Landroid/os/Message;->what:I

    .line 438
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    move-result-object p1

    .line 446
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :catchall_0
    move-exception p1

    .line 451
    const-string v0, "Error in "

    .line 452
    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    move-result-object v0

    .line 457
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 458
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 460
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    :cond_18
    :goto_6
    return-void
    .line 465
.end method
