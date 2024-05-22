.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/16 v1, 0x64

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    goto/16 :goto_6

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 14
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 16
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 18
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowCsdWarning(II)V

    .line 22
    goto/16 :goto_6

    .line 25
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result p1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 37
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningUiEnabled()Z

    .line 39
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v0

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object p1

    .line 50
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 53
    goto/16 :goto_6

    .line 56
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    .line 62
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    .line 66
    goto/16 :goto_6

    .line 69
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 71
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    .line 75
    if-eqz v0, :cond_11

    .line 77
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowSafetyWarning(I)V

    .line 81
    goto/16 :goto_6

    .line 84
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 86
    monitor-enter v0

    .line 88
    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

    .line 89
    if-eqz p0, :cond_0

    .line 91
    check-cast p0, Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 93
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 97
    :cond_0
    monitor-exit v0

    .line 100
    goto/16 :goto_6

    .line 101
    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0

    .line 105
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 106
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 108
    if-eqz p1, :cond_1

    .line 110
    goto :goto_0

    .line 112
    :cond_1
    move v3, v4

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 116
    invoke-virtual {p1, v0, v3}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 118
    if-nez v3, :cond_11

    .line 121
    const/4 p1, -0x1

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    .line 124
    move-result p1

    .line 127
    if-eqz p1, :cond_11

    .line 128
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 130
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 132
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 134
    goto/16 :goto_6

    .line 137
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 139
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    .line 143
    move-result p1

    .line 146
    if-eqz p1, :cond_11

    .line 147
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 149
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 151
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 153
    goto/16 :goto_6

    .line 156
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 158
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 160
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    .line 167
    if-eqz v3, :cond_2

    .line 169
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 171
    const-string v5, "onSetStreamVolume "

    .line 173
    const-string v6, " level="

    .line 175
    invoke-static {v5, v0, v6, p1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 177
    :cond_2
    if-lt v0, v1, :cond_8

    .line 180
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 182
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 184
    monitor-enter v1

    .line 186
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 187
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 189
    move-result-object v3

    .line 192
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 193
    move-result-object v3

    .line 196
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    move-result v5

    .line 200
    if-eqz v5, :cond_4

    .line 201
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    move-result-object v5

    .line 206
    check-cast v5, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 209
    move-result-object v6

    .line 212
    check-cast v6, Ljava/lang/Integer;

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v7

    .line 218
    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v6

    .line 222
    if-eqz v6, :cond_3

    .line 223
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 225
    move-result-object v2

    .line 228
    check-cast v2, Landroid/media/session/MediaSession$Token;

    .line 229
    monitor-exit v1

    .line 231
    goto :goto_1

    .line 232
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :goto_1
    if-nez v2, :cond_5

    .line 234
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 236
    const-string/jumbo p1, "setStreamVolume: No token found for stream: "

    .line 238
    invoke-static {p1, v0, p0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    goto/16 :goto_6

    .line 244
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->showForSession(Landroid/media/session/MediaSession$Token;)Z

    .line 246
    move-result v0

    .line 249
    if-eqz v0, :cond_11

    .line 250
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 252
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    .line 254
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    .line 256
    check-cast p0, Ljava/util/HashMap;

    .line 258
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    move-result-object p0

    .line 263
    check-cast p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    .line 264
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 266
    if-nez p0, :cond_6

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo p1, "setVolume: No record found for token "

    .line 272
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object p0

    .line 284
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    goto/16 :goto_6

    .line 288
    :cond_6
    sget-boolean v1, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 290
    if-eqz v1, :cond_7

    .line 292
    const-string v1, "Setting level to "

    .line 294
    invoke-static {v1, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    :cond_7
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    .line 299
    invoke-virtual {p0, p1, v4}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 301
    goto/16 :goto_6

    .line 304
    :catchall_1
    move-exception p0

    .line 306
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    throw p0

    .line 308
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 309
    invoke-virtual {p0, v0, p1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 311
    goto/16 :goto_6

    .line 314
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 316
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    .line 320
    goto/16 :goto_6

    .line 323
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 325
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 327
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onLayoutDirectionChanged(I)V

    .line 331
    goto/16 :goto_6

    .line 334
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 336
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 338
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 340
    if-eqz p1, :cond_9

    .line 342
    goto :goto_2

    .line 344
    :cond_9
    move v3, v4

    .line 345
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    if-eqz v3, :cond_a

    .line 349
    const/16 v1, -0x64

    .line 351
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 353
    invoke-virtual {p0, v0, v1, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 355
    goto/16 :goto_6

    .line 358
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 360
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    check-cast p1, Landroid/service/notification/Condition;

    .line 364
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 366
    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 368
    if-eqz p1, :cond_b

    .line 370
    iget-object v2, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 372
    :cond_b
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 374
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 376
    invoke-virtual {p0, v0, v2, p1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 378
    goto/16 :goto_6

    .line 381
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 383
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 390
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 392
    if-eqz v0, :cond_c

    .line 394
    const-string v0, "onSetZenModeW "

    .line 396
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 401
    invoke-virtual {p0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 403
    goto/16 :goto_6

    .line 406
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 408
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 410
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 412
    if-eqz p1, :cond_d

    .line 414
    goto :goto_3

    .line 416
    :cond_d
    move v3, v4

    .line 417
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 418
    if-eqz v3, :cond_e

    .line 420
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 422
    goto/16 :goto_6

    .line 425
    :cond_e
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 427
    goto/16 :goto_6

    .line 430
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 432
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    .line 437
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 439
    move-result-object v0

    .line 442
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 443
    move-result-object v0

    .line 446
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 447
    move-result v1

    .line 450
    if-eqz v1, :cond_f

    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 453
    move-result-object v1

    .line 456
    check-cast v1, Ljava/lang/Integer;

    .line 457
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 459
    move-result v1

    .line 462
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 463
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    .line 465
    move-result v2

    .line 468
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    .line 469
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 472
    move-result-object v2

    .line 475
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 476
    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    .line 478
    move-result v5

    .line 481
    iput v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 482
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 484
    move-result-object v2

    .line 487
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 488
    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 490
    move-result v5

    .line 493
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 494
    move-result v5

    .line 497
    iput v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 498
    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 500
    move-result v2

    .line 503
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    .line 504
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 507
    move-result-object v2

    .line 510
    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->isStreamAffectedByMute(I)Z

    .line 511
    move-result v4

    .line 514
    iput-boolean v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    move-result-object v4

    .line 520
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-result-object v4

    .line 524
    check-cast v4, Ljava/lang/Integer;

    .line 525
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 527
    move-result v4

    .line 530
    iput v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    .line 531
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    .line 533
    goto :goto_4

    .line 536
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    .line 537
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerMode:Lcom/android/systemui/util/RingerModeLiveData;

    .line 539
    invoke-virtual {p1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 541
    move-result-object p1

    .line 544
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 545
    move-result p1

    .line 548
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 549
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    .line 551
    if-ne p1, v1, :cond_10

    .line 553
    goto :goto_5

    .line 555
    :cond_10
    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    .line 556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 558
    move-result-object p1

    .line 561
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 562
    move-result-object p1

    .line 565
    const/16 v0, 0xc

    .line 566
    invoke-static {v0, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 568
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeW()Z

    .line 571
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenConfig()Z

    .line 574
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 577
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    .line 579
    move-result-object p1

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    .line 583
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 586
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 588
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 590
    goto :goto_6

    .line 593
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 594
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 596
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    .line 600
    goto :goto_6

    .line 603
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 604
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 606
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 608
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    .line 610
    :cond_11
    :goto_6
    return-void

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
    .end packed-switch
    .line 614
.end method
