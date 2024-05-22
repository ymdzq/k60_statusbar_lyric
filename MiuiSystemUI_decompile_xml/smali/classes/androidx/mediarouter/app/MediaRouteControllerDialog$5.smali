.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_2

    .line 9
    :pswitch_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 10
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi29;

    .line 16
    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    .line 18
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    .line 20
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    .line 26
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 29
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 34
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string p1, " was not sent, it had been canceled."

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    const-string p1, "MediaRouteCtrlDialog"

    .line 52
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 57
    :pswitch_2
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 58
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 60
    return-void

    .line 63
    :pswitch_3
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 64
    iget-boolean v0, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 66
    xor-int/2addr v0, v2

    .line 68
    iput-boolean v0, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 69
    if-eqz v0, :cond_1

    .line 71
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 75
    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 78
    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 80
    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 87
    :goto_1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 89
    invoke-virtual {p0, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    .line 91
    return-void

    .line 94
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 95
    move-result p1

    .line 98
    const v0, 0x1020019    # @android:id/button1

    .line 99
    if-eq p1, v0, :cond_c

    .line 102
    const v3, 0x102001a    # @android:id/button2

    .line 104
    if-ne p1, v3, :cond_3

    .line 107
    goto/16 :goto_e

    .line 109
    :cond_3
    const v0, 0x7f0a063e    # @id/mr_control_playback_ctrl

    .line 111
    if-ne p1, v0, :cond_b

    .line 114
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 116
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 118
    if-eqz v0, :cond_f

    .line 120
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 122
    if-eqz p1, :cond_f

    .line 124
    iget v3, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 126
    const/4 v4, 0x3

    .line 128
    if-ne v3, v4, :cond_4

    .line 129
    move v3, v2

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    move v3, v1

    .line 133
    :goto_3
    const-wide/16 v4, 0x0

    .line 134
    const-string v6, "android.support.v4.media.session.IMediaSession"

    .line 136
    const-string v7, "MediaControllerCompat"

    .line 138
    if-eqz v3, :cond_6

    .line 140
    iget-wide v8, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 142
    const-wide/16 v10, 0x202

    .line 144
    and-long/2addr v8, v10

    .line 146
    cmp-long v8, v8, v4

    .line 147
    if-eqz v8, :cond_5

    .line 149
    move v8, v2

    .line 151
    goto :goto_4

    .line 152
    :cond_5
    move v8, v1

    .line 153
    :goto_4
    if-eqz v8, :cond_6

    .line 154
    iget-object p1, v0, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi29;

    .line 156
    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    .line 158
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 160
    move-result-object p1

    .line 163
    packed-switch v2, :pswitch_data_1

    .line 164
    goto :goto_5

    .line 167
    :pswitch_4
    :try_start_1
    check-cast p1, Landroid/support/v4/media/session/IMediaSession;

    .line 168
    check-cast p1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 175
    move-result-object v0

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 179
    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :try_start_2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    iget-object p1, p1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 186
    const/16 v3, 0x12

    .line 188
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 190
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    goto :goto_6

    .line 202
    :catchall_0
    move-exception p1

    .line 203
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 210
    :catch_1
    move-exception p1

    .line 211
    const-string v0, "Dead object in pause."

    .line 212
    invoke-static {v7, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    goto :goto_6

    .line 217
    :goto_5
    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 218
    :goto_6
    const v1, 0x7f130810    # @string/mr_controller_pause 'Pause'

    .line 221
    goto/16 :goto_d

    .line 224
    :cond_6
    if-eqz v3, :cond_8

    .line 226
    iget-wide v8, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 228
    const-wide/16 v10, 0x1

    .line 230
    and-long/2addr v8, v10

    .line 232
    cmp-long v8, v8, v4

    .line 233
    if-eqz v8, :cond_7

    .line 235
    move v8, v2

    .line 237
    goto :goto_7

    .line 238
    :cond_7
    move v8, v1

    .line 239
    :goto_7
    if-eqz v8, :cond_8

    .line 240
    iget-object p1, v0, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi29;

    .line 242
    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    .line 244
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 246
    move-result-object p1

    .line 249
    packed-switch v2, :pswitch_data_2

    .line 250
    goto :goto_8

    .line 253
    :pswitch_5
    :try_start_4
    check-cast p1, Landroid/support/v4/media/session/IMediaSession;

    .line 254
    check-cast p1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 261
    move-result-object v0

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 265
    move-result-object v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 268
    :try_start_5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    iget-object p1, p1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 272
    const/16 v3, 0x13

    .line 274
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 276
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 279
    :try_start_6
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 285
    goto :goto_9

    .line 288
    :catchall_1
    move-exception p1

    .line 289
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    throw p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 296
    :catch_2
    move-exception p1

    .line 297
    const-string v0, "Dead object in stop."

    .line 298
    invoke-static {v7, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    goto :goto_9

    .line 303
    :goto_8
    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->stop()V

    .line 304
    :goto_9
    const v1, 0x7f130812    # @string/mr_controller_stop 'Stop'

    .line 307
    goto :goto_d

    .line 310
    :cond_8
    if-nez v3, :cond_a

    .line 311
    iget-wide v8, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 313
    const-wide/16 v10, 0x204

    .line 315
    and-long/2addr v8, v10

    .line 317
    cmp-long p1, v8, v4

    .line 318
    if-eqz p1, :cond_9

    .line 320
    move p1, v2

    .line 322
    goto :goto_a

    .line 323
    :cond_9
    move p1, v1

    .line 324
    :goto_a
    if-eqz p1, :cond_a

    .line 325
    iget-object p1, v0, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi29;

    .line 327
    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    .line 329
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 331
    move-result-object p1

    .line 334
    packed-switch v2, :pswitch_data_3

    .line 335
    goto :goto_b

    .line 338
    :pswitch_6
    :try_start_7
    check-cast p1, Landroid/support/v4/media/session/IMediaSession;

    .line 339
    check-cast p1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 346
    move-result-object v0

    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 350
    move-result-object v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 353
    :try_start_8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    iget-object p1, p1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 357
    const/16 v3, 0xd

    .line 359
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 361
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 364
    :try_start_9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    goto :goto_c

    .line 373
    :catchall_2
    move-exception p1

    .line 374
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 381
    :catch_3
    move-exception p1

    .line 382
    const-string v0, "Dead object in play."

    .line 383
    invoke-static {v7, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    goto :goto_c

    .line 388
    :goto_b
    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 389
    :goto_c
    const v1, 0x7f130811    # @string/mr_controller_play 'Play'

    .line 392
    :cond_a
    :goto_d
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 395
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 397
    if-eqz p1, :cond_f

    .line 399
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 401
    move-result p1

    .line 404
    if-eqz p1, :cond_f

    .line 405
    if-eqz v1, :cond_f

    .line 407
    const/16 p1, 0x4000

    .line 409
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 411
    move-result-object p1

    .line 414
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 415
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 417
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 419
    move-result-object v0

    .line 422
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 423
    const-class v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;

    .line 426
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 428
    move-result-object v0

    .line 431
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 435
    move-result-object v0

    .line 438
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 439
    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 443
    move-result-object v1

    .line 446
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 450
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 452
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 454
    goto :goto_f

    .line 457
    :cond_b
    const v0, 0x7f0a063c    # @id/mr_close

    .line 458
    if-ne p1, v0, :cond_f

    .line 461
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 463
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 465
    goto :goto_f

    .line 468
    :cond_c
    :goto_e
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 469
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 471
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    .line 473
    move-result v1

    .line 476
    if-eqz v1, :cond_e

    .line 477
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 479
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 481
    if-ne p1, v0, :cond_d

    .line 483
    const/4 v2, 0x2

    .line 485
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter;->unselect(I)V

    .line 489
    :cond_e
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 492
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 494
    :cond_f
    :goto_f
    return-void

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 498
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    .line 510
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 516
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
    .line 522
.end method
