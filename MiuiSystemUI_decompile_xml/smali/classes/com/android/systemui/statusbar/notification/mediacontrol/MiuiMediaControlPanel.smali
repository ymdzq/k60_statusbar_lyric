.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;
.super Lcom/android/systemui/media/controls/ui/MediaControlPanel;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mDominantColor:I

.field public mIsArtworkUpdate:Z

.field public final mKeyguardMediaController:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

.field public mMediaData:Lcom/android/systemui/media/controls/models/player/MediaData;

.field public final mMediaTransferManager:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/controls/ui/MediaViewController;Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/media/controls/ui/MediaCarouselController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;Lcom/android/systemui/bluetooth/BroadcastDialogController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    move-object/from16 v19, p20

    .line 1
    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/controls/ui/MediaViewController;Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/media/controls/ui/MediaCarouselController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/bluetooth/BroadcastDialogController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;)V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 3
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mIsArtworkUpdate:Z

    const/4 v0, -0x1

    .line 4
    iput v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mDominantColor:I

    move-object/from16 v0, p17

    .line 5
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mMediaTransferManager:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

    move-object/from16 v0, p21

    .line 6
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mKeyguardMediaController:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07077f    # @dimen/media_control_action_gap '50.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method


# virtual methods
.method public final bindPlayer(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    move-object/from16 v0, p2

    .line 6
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 8
    iget-object v9, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mContext:Landroid/content/Context;

    .line 10
    const/4 v10, 0x2

    .line 12
    const/4 v11, -0x1

    .line 13
    const/4 v12, 0x0

    .line 14
    const/4 v13, 0x1

    .line 15
    if-nez v1, :cond_0

    .line 16
    goto/16 :goto_10

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "MediaControlPanel#bindPlayer<"

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, ">"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 44
    const-wide/16 v2, 0x1000

    .line 45
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 47
    :cond_1
    iput-object v8, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 50
    iget-object v1, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 52
    iget v2, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->backgroundColor:I

    .line 54
    iput v2, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mBackgroundColor:I

    .line 56
    iget-object v2, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 58
    iput-object v2, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 60
    iget v2, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    .line 62
    iput v2, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 64
    iget v3, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSmartspaceId:I

    .line 66
    if-ne v3, v11, :cond_2

    .line 68
    iget-object v3, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 70
    check-cast v3, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    move-result-wide v3

    .line 80
    long-to-int v3, v3

    .line 81
    add-int/2addr v2, v3

    .line 82
    const/16 v3, 0x2000

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->floorMod(II)I

    .line 85
    move-result v2

    .line 88
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 89
    move-result v2

    .line 92
    iput v2, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSmartspaceId:I

    .line 93
    :cond_2
    iget-object v2, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 95
    iput-object v2, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 97
    iget-object v2, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 99
    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {v2, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 106
    if-nez v2, :cond_4

    .line 107
    :cond_3
    iput-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 109
    :cond_4
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 111
    if-eqz v1, :cond_5

    .line 113
    new-instance v1, Landroid/media/session/MediaController;

    .line 115
    iget-object v2, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 117
    invoke-direct {v1, v9, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 119
    iput-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 122
    goto :goto_0

    .line 124
    :cond_5
    const/4 v1, 0x0

    .line 125
    iput-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 126
    :goto_0
    iget-object v1, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 128
    if-eqz v1, :cond_6

    .line 130
    iget-object v2, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 132
    iget-object v2, v2, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 134
    new-instance v3, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda6;

    .line 136
    invoke-direct {v3, v7, v1, v0}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_6
    iget-boolean v0, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    .line 144
    if-eqz v0, :cond_7

    .line 146
    iget-object v1, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeProgress:Ljava/lang/Double;

    .line 148
    if-eqz v1, :cond_7

    .line 150
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 152
    move-result-wide v1

    .line 155
    iget-object v3, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    const/16 v4, 0x64

    .line 161
    int-to-double v4, v4

    .line 163
    mul-double/2addr v1, v4

    .line 164
    double-to-int v1, v1

    .line 165
    new-instance v2, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;

    .line 166
    const/4 v15, 0x1

    .line 168
    const/16 v16, 0x0

    .line 169
    const/16 v17, 0x0

    .line 171
    const/16 v18, 0x0

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v19

    .line 178
    const/16 v20, 0x64

    .line 179
    move-object v14, v2

    .line 181
    invoke-direct/range {v14 .. v20}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;I)V

    .line 182
    invoke-virtual {v3, v2}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;)V

    .line 185
    goto :goto_1

    .line 188
    :cond_7
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 189
    new-instance v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;

    .line 191
    invoke-direct {v2, v10, v7, v1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 193
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 196
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    :goto_1
    iget-object v1, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 201
    if-eqz v1, :cond_8

    .line 203
    iget-boolean v2, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->showBroadcastButton:Z

    .line 205
    if-eqz v2, :cond_8

    .line 207
    move v2, v13

    .line 209
    goto :goto_2

    .line 210
    :cond_8
    move v2, v12

    .line 211
    :goto_2
    iget-object v3, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 212
    iget-object v4, v3, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamless:Landroid/view/ViewGroup;

    .line 214
    if-eqz v2, :cond_a

    .line 216
    if-eqz v1, :cond_9

    .line 218
    const v0, 0x7f130217    # @string/broadcasting_description_is_broadcasting 'Broadcasting'

    .line 220
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 226
    iget-object v5, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->name:Ljava/lang/CharSequence;

    .line 227
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 229
    move-result v0

    .line 232
    if-eqz v0, :cond_9

    .line 233
    move v0, v13

    .line 235
    goto :goto_3

    .line 236
    :cond_9
    move v0, v12

    .line 237
    :goto_3
    iput-boolean v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mIsCurrentBroadcastedApp:Z

    .line 238
    const v0, 0x7f13021f    # @string/bt_le_audio_broadcast_dialog_unknown_name 'Unknown'

    .line 240
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    move-result-object v0

    .line 246
    move-object v5, v0

    .line 247
    move v0, v13

    .line 248
    goto :goto_5

    .line 249
    :cond_a
    if-eqz v1, :cond_b

    .line 250
    iget-boolean v5, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->enabled:Z

    .line 252
    if-eqz v5, :cond_c

    .line 254
    :cond_b
    if-eqz v0, :cond_d

    .line 256
    :cond_c
    move v0, v13

    .line 258
    goto :goto_4

    .line 259
    :cond_d
    move v0, v12

    .line 260
    :goto_4
    xor-int/2addr v0, v13

    .line 261
    const v5, 0x7f13071c    # @string/media_seamless_other_device 'Other device'

    .line 262
    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 265
    move-result-object v5

    .line 268
    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 269
    iget-object v0, v3, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    .line 272
    if-eqz v1, :cond_f

    .line 274
    iget-object v6, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    .line 276
    instance-of v14, v6, Lcom/android/settingslib/widget/AdaptiveIcon;

    .line 278
    if-eqz v14, :cond_e

    .line 280
    check-cast v6, Lcom/android/settingslib/widget/AdaptiveIcon;

    .line 282
    iget v6, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mBackgroundColor:I

    .line 284
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 286
    move-result-object v6

    .line 289
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 290
    :cond_e
    iget-object v6, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->name:Ljava/lang/CharSequence;

    .line 293
    if-eqz v6, :cond_f

    .line 295
    move-object v5, v6

    .line 297
    :cond_f
    iget-object v3, v3, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessText:Landroid/widget/TextView;

    .line 298
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda15;

    .line 309
    invoke-direct {v0, v7, v2, v1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;ZLcom/android/systemui/media/controls/models/player/MediaDeviceData;)V

    .line 311
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->bindPlayerContentDescription(Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 317
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->bindScrubbingTime(Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    .line 323
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    sget-object v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->genericButtonIds:Ljava/util/Set;

    .line 328
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 330
    move-result-object v1

    .line 333
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    move-result v2

    .line 337
    if-eqz v2, :cond_10

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    move-result-object v2

    .line 343
    check-cast v2, Ljava/lang/Integer;

    .line 344
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 346
    move-result v2

    .line 349
    iget-object v3, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 350
    invoke-virtual {v3, v2}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->getAction(I)Landroid/widget/ImageButton;

    .line 352
    move-result-object v2

    .line 355
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    goto :goto_6

    .line 359
    :cond_10
    iget-object v14, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 360
    iget-object v15, v14, Lcom/android/systemui/media/controls/ui/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 362
    iget-object v6, v14, Lcom/android/systemui/media/controls/ui/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 364
    iget-object v5, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 366
    if-eqz v5, :cond_14

    .line 368
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 370
    move-result-object v0

    .line 373
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 374
    move-result v1

    .line 377
    if-eqz v1, :cond_11

    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    move-result-object v1

    .line 383
    check-cast v1, Landroid/widget/ImageButton;

    .line 384
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    .line 386
    move-result v2

    .line 389
    invoke-static {v6, v2, v12}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setVisibleAndAlpha$1(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 390
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    .line 393
    move-result v1

    .line 396
    invoke-static {v15, v1, v12}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setVisibleAndAlpha$1(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 397
    goto :goto_7

    .line 400
    :cond_11
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->SEMANTIC_ACTIONS_ALL:Ljava/util/List;

    .line 401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 403
    move-result-object v0

    .line 406
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    move-result v1

    .line 410
    if-eqz v1, :cond_17

    .line 411
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    move-result-object v1

    .line 416
    check-cast v1, Ljava/lang/Integer;

    .line 417
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 419
    move-result v1

    .line 422
    iget-object v2, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 423
    invoke-virtual {v2, v1}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->getAction(I)Landroid/widget/ImageButton;

    .line 425
    move-result-object v3

    .line 428
    invoke-virtual {v5, v1}, Lcom/android/systemui/media/controls/models/player/MediaButton;->getActionById(I)Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 429
    move-result-object v4

    .line 432
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    .line 433
    move-result-object v1

    .line 436
    if-nez v1, :cond_12

    .line 437
    new-instance v1, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;

    .line 439
    invoke-direct {v1}, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;-><init>()V

    .line 441
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 444
    goto :goto_9

    .line 447
    :cond_12
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    .line 448
    move-result-object v1

    .line 451
    check-cast v1, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;

    .line 452
    :goto_9
    move-object v15, v1

    .line 454
    new-instance v6, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;

    .line 455
    move-object v1, v6

    .line 457
    move-object/from16 v2, p0

    .line 458
    move-object/from16 v16, v5

    .line 460
    move-object v5, v15

    .line 462
    move-object v11, v6

    .line 463
    move-object/from16 v6, v16

    .line 464
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/models/player/MediaAction;Lcom/android/systemui/media/controls/ui/AnimationBindHandler;Lcom/android/systemui/media/controls/models/player/MediaButton;)V

    .line 466
    invoke-virtual {v15}, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;->isAnimationRunning()Z

    .line 469
    move-result v1

    .line 472
    if-eqz v1, :cond_13

    .line 473
    iget-object v1, v15, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;->onAnimationsComplete:Ljava/util/List;

    .line 475
    check-cast v1, Ljava/util/ArrayList;

    .line 477
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    goto :goto_a

    .line 482
    :cond_13
    invoke-virtual {v11}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->invoke()Ljava/lang/Object;

    .line 483
    :goto_a
    move-object/from16 v5, v16

    .line 486
    const/4 v11, -0x1

    .line 488
    goto :goto_8

    .line 489
    :cond_14
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

    .line 490
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 492
    move-result-object v1

    .line 495
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    move-result v2

    .line 499
    if-eqz v2, :cond_15

    .line 500
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    move-result-object v2

    .line 505
    check-cast v2, Ljava/lang/Integer;

    .line 506
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 508
    move-result v2

    .line 511
    invoke-static {v6, v2, v12}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setVisibleAndAlpha$1(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 512
    invoke-static {v15, v2, v12}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setVisibleAndAlpha$1(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 515
    goto :goto_b

    .line 518
    :cond_15
    move v11, v12

    .line 519
    :goto_c
    iget-object v1, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    .line 520
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 522
    move-result v2

    .line 525
    if-ge v11, v2, :cond_16

    .line 526
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 528
    move-result v2

    .line 531
    if-ge v11, v2, :cond_16

    .line 532
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 534
    move-result-object v2

    .line 537
    iget-object v3, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 538
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 540
    move-result v16

    .line 543
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 544
    move-result-object v2

    .line 547
    check-cast v2, Landroid/widget/ImageButton;

    .line 548
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 550
    move-result-object v1

    .line 553
    move-object v3, v1

    .line 554
    check-cast v3, Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 555
    move-object/from16 v1, p0

    .line 557
    move-object v4, v6

    .line 559
    move-object v5, v15

    .line 560
    move-object/from16 v18, v6

    .line 561
    move/from16 v6, v16

    .line 563
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setGenericButton(Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/models/player/MediaAction;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Z)V

    .line 565
    add-int/lit8 v11, v11, 0x1

    .line 568
    move-object/from16 v6, v18

    .line 570
    goto :goto_c

    .line 572
    :cond_16
    move-object/from16 v18, v6

    .line 573
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 575
    move-result v1

    .line 578
    if-ge v11, v1, :cond_17

    .line 579
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 581
    move-result-object v1

    .line 584
    move-object v2, v1

    .line 585
    check-cast v2, Landroid/widget/ImageButton;

    .line 586
    const/4 v3, 0x0

    .line 588
    const/4 v6, 0x0

    .line 589
    move-object/from16 v1, p0

    .line 590
    move-object/from16 v4, v18

    .line 592
    move-object v5, v15

    .line 594
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setGenericButton(Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/models/player/MediaAction;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Z)V

    .line 595
    add-int/lit8 v11, v11, 0x1

    .line 598
    goto :goto_d

    .line 600
    :cond_17
    iget-object v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 601
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 603
    const v1, 0x7f0a0591    # @id/media_progress_bar

    .line 605
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 608
    move-result-object v2

    .line 611
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 612
    iput v12, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 614
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 616
    move-result-object v0

    .line 619
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 620
    const/high16 v1, 0x3f800000    # 1.0f

    .line 622
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 624
    iget-object v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMetadataAnimationHandler:Lcom/android/systemui/media/controls/ui/MetadataAnimationHandler;

    .line 626
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MetadataAnimationHandler;->isRunning()Z

    .line 628
    move-result v0

    .line 631
    if-nez v0, :cond_18

    .line 632
    invoke-virtual {v14}, Lcom/android/systemui/media/controls/ui/MediaViewController;->refreshState()V

    .line 634
    :cond_18
    sget-object v0, Lcom/android/systemui/flags/Flags;->UMO_TURBULENCE_NOISE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 637
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 639
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 641
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 643
    move-result v0

    .line 646
    if-eqz v0, :cond_19

    .line 647
    iget-boolean v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mButtonClicked:Z

    .line 649
    if-eqz v0, :cond_19

    .line 651
    iget-boolean v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mWasPlaying:Z

    .line 653
    if-nez v0, :cond_19

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->isPlaying()Z

    .line 657
    move-result v0

    .line 660
    if-eqz v0, :cond_19

    .line 661
    move v0, v13

    .line 663
    goto :goto_e

    .line 664
    :cond_19
    move v0, v12

    .line 665
    :goto_e
    if-eqz v0, :cond_1d

    .line 666
    iget-object v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mTurbulenceNoiseAnimationConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 668
    if-nez v0, :cond_1a

    .line 670
    new-instance v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 672
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;

    .line 674
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->accentPrimary:Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 676
    iget v2, v1, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->currentColor:I

    .line 678
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 680
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 682
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 684
    move-result v1

    .line 687
    int-to-float v3, v1

    .line 688
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 689
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 691
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 693
    move-result v1

    .line 696
    int-to-float v4, v1

    .line 697
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 698
    move-result-object v1

    .line 701
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 702
    move-result-object v1

    .line 705
    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    .line 706
    sget-object v6, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    .line 708
    move-object v1, v0

    .line 710
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;-><init>(IFFFLandroid/graphics/BlendMode;)V

    .line 711
    iput-object v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mTurbulenceNoiseAnimationConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 714
    :cond_1a
    iget-object v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mTurbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    .line 716
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mTurbulenceNoiseAnimationConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 718
    iget-object v2, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->state:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    .line 720
    sget-object v3, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;->NOT_PLAYING:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    .line 722
    if-eq v2, v3, :cond_1b

    .line 724
    goto :goto_f

    .line 726
    :cond_1b
    iget-object v2, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 727
    invoke-virtual {v2, v1}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->applyConfig(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;)V

    .line 729
    iget-object v1, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->state:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    .line 732
    if-eq v1, v3, :cond_1c

    .line 734
    goto :goto_f

    .line 736
    :cond_1c
    sget-object v1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;->EASE_IN:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    .line 737
    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->setState(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;)V

    .line 739
    iget-object v1, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->random:Ljava/util/Random;

    .line 742
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 744
    move-result v3

    .line 747
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 748
    move-result v1

    .line 751
    new-instance v4, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$finish$1;

    .line 752
    invoke-direct {v4, v0, v13}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$finish$1;-><init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;I)V

    .line 754
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->playEaseIn(FFLjava/lang/Runnable;)V

    .line 757
    :goto_f
    iget-object v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mTurbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    .line 760
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda2;

    .line 765
    invoke-direct {v1, v13, v0}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 767
    const-wide/16 v2, 0x1d4c

    .line 770
    iget-object v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 772
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 774
    :cond_1d
    iput-boolean v12, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mButtonClicked:Z

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->isPlaying()Z

    .line 779
    move-result v0

    .line 782
    iput-boolean v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mWasPlaying:Z

    .line 783
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 785
    :goto_10
    iget-object v1, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 788
    if-nez v1, :cond_1e

    .line 790
    return-void

    .line 792
    :cond_1e
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mMediaData:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 793
    if-eqz v0, :cond_20

    .line 795
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 797
    if-nez v2, :cond_1f

    .line 799
    goto :goto_11

    .line 801
    :cond_1f
    move v2, v12

    .line 802
    goto :goto_12

    .line 803
    :cond_20
    :goto_11
    move v2, v13

    .line 804
    :goto_12
    if-eqz v8, :cond_22

    .line 805
    iget-object v3, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 807
    if-nez v3, :cond_21

    .line 809
    goto :goto_13

    .line 811
    :cond_21
    move v3, v12

    .line 812
    goto :goto_14

    .line 813
    :cond_22
    :goto_13
    move v3, v13

    .line 814
    :goto_14
    if-eqz v2, :cond_23

    .line 815
    if-eqz v3, :cond_23

    .line 817
    move v0, v12

    .line 819
    goto :goto_17

    .line 820
    :cond_23
    if-eq v2, v3, :cond_24

    .line 821
    move v0, v13

    .line 823
    goto :goto_17

    .line 824
    :cond_24
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 825
    iget-object v2, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 827
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    .line 829
    move-result v3

    .line 832
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    .line 833
    move-result v4

    .line 836
    if-ne v3, v4, :cond_26

    .line 837
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    .line 839
    move-result v3

    .line 842
    const/4 v4, 0x5

    .line 843
    if-eq v3, v4, :cond_25

    .line 844
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    .line 846
    move-result v3

    .line 849
    if-ne v3, v13, :cond_26

    .line 850
    :cond_25
    move v3, v13

    .line 852
    goto :goto_15

    .line 853
    :cond_26
    move v3, v12

    .line 854
    :goto_15
    if-eqz v3, :cond_27

    .line 855
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 857
    move-result-object v0

    .line 860
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 861
    move-result-object v2

    .line 864
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    .line 865
    move-result v0

    .line 868
    goto :goto_16

    .line 869
    :cond_27
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 870
    move-result v0

    .line 873
    :goto_16
    xor-int/2addr v0, v13

    .line 874
    :goto_17
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mIsArtworkUpdate:Z

    .line 875
    iput-object v8, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mMediaData:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 877
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 879
    xor-int/2addr v0, v13

    .line 881
    sget-boolean v2, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 882
    if-eqz v2, :cond_28

    .line 884
    xor-int/lit8 v0, v0, 0x1

    .line 886
    :cond_28
    if-eqz v0, :cond_31

    .line 888
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda0;

    .line 890
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/controls/models/player/MediaViewHolder;)V

    .line 892
    iget-object v2, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamless:Landroid/view/ViewGroup;

    .line 895
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mMediaTransferManager:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

    .line 900
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 902
    if-eqz v0, :cond_32

    .line 904
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->sHasTransferComponent:Z

    .line 906
    if-nez v4, :cond_29

    .line 908
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mSupportMiPlayAudio:Z

    .line 910
    if-nez v4, :cond_29

    .line 912
    goto/16 :goto_19

    .line 914
    :cond_29
    const v4, 0x7f0a059d    # @id/media_seamless_image

    .line 916
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 919
    move-result-object v4

    .line 922
    check-cast v4, Landroid/widget/ImageView;

    .line 923
    if-nez v4, :cond_2a

    .line 925
    const-string v0, "MiuiMediaTransferManager"

    .line 927
    const-string v2, "There is no {ImageView @media_seamless_image} in root"

    .line 929
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    goto/16 :goto_19

    .line 934
    :cond_2a
    const-class v5, Lcom/android/systemui/settings/UserTracker;

    .line 936
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 938
    move-result-object v5

    .line 941
    check-cast v5, Lcom/android/systemui/settings/UserTracker;

    .line 942
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 944
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 946
    move-result v5

    .line 949
    if-nez v5, :cond_30

    .line 950
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 952
    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 955
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mOnClickHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$2;

    .line 958
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 963
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 965
    move-result v5

    .line 968
    if-nez v5, :cond_2c

    .line 969
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 974
    move-result v2

    .line 977
    if-ne v2, v13, :cond_2c

    .line 978
    const-class v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 980
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 982
    move-result-object v2

    .line 985
    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 986
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 988
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 990
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 992
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    const-class v2, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 997
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 999
    move-result-object v2

    .line 1002
    check-cast v2, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 1003
    iget-object v5, v2, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 1005
    if-eqz v5, :cond_2b

    .line 1007
    iget-object v5, v2, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mCastingCallbacks:Ljava/util/ArrayList;

    .line 1009
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    iget-object v2, v2, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 1014
    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;->registerCastingCallback(Lcom/android/systemui/plugins/miui/controls/MiPlayCastingCallback;)V

    .line 1016
    :cond_2b
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mMediaDeviceCallback:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$3;

    .line 1019
    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    .line 1021
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1023
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mMediaCallback:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$4;

    .line 1028
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 1030
    const v5, 0x800007

    .line 1032
    invoke-virtual {v2, v5, v0, v10}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 1035
    :cond_2c
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mPhoneRouteName:Ljava/lang/String;

    .line 1038
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1040
    move-result v0

    .line 1043
    if-eqz v0, :cond_2e

    .line 1044
    monitor-enter v3

    .line 1046
    :try_start_0
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 1047
    if-eqz v0, :cond_2d

    .line 1049
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 1051
    if-nez v0, :cond_2d

    .line 1053
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 1055
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    .line 1057
    iput-boolean v13, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 1060
    :cond_2d
    monitor-exit v3

    .line 1062
    goto :goto_19

    .line 1063
    :catchall_0
    move-exception v0

    .line 1064
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    throw v0

    .line 1066
    :cond_2e
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mSupportMiPlayAudio:Z

    .line 1067
    if-eqz v0, :cond_32

    .line 1069
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mIsMiPlayCasting:Z

    .line 1071
    if-eqz v0, :cond_2f

    .line 1073
    sget-object v0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    .line 1075
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1077
    goto :goto_18

    .line 1080
    :cond_2f
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 1081
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1083
    :goto_18
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1086
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    goto :goto_19

    .line 1091
    :cond_30
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 1092
    const/16 v0, 0x8

    .line 1095
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1097
    goto :goto_19

    .line 1100
    :cond_31
    iget-object v0, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    .line 1101
    const v2, 0x7f081061    # @drawable/ic_media_seamless 'res/drawable/ic_media_seamless.xml'

    .line 1103
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1106
    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 1109
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1111
    :cond_32
    :goto_19
    iget-object v0, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1118
    iget-object v3, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->app:Ljava/lang/String;

    .line 1121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    const-string v3, ", "

    .line 1126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    iget-object v4, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    .line 1131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    iget-object v3, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    .line 1139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1141
    const-string v3, "\n"

    .line 1144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1149
    move-result-object v0

    .line 1152
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1153
    move-result v3

    .line 1156
    if-eqz v3, :cond_33

    .line 1157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1159
    move-result-object v3

    .line 1162
    check-cast v3, Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 1163
    const-string v4, "MediaAction: contentDesc="

    .line 1165
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    iget-object v3, v3, Lcom/android/systemui/media/controls/models/player/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    .line 1170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1172
    const-string v3, "; "

    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    goto :goto_1a

    .line 1180
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1181
    const-string v3, "media_data_arrive: bindPlayer: "

    .line 1183
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1188
    move-result-object v2

    .line 1191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1195
    move-result-object v0

    .line 1198
    const-string v2, "MiuiMediaControlPanel"

    .line 1199
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v0, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 1204
    if-eqz v0, :cond_34

    .line 1206
    new-instance v3, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda1;

    .line 1208
    invoke-direct {v3, v7, v0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;Landroid/app/PendingIntent;)V

    .line 1210
    iget-object v0, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 1213
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1215
    :cond_34
    iget-object v3, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 1218
    if-eqz v3, :cond_35

    .line 1220
    move v12, v13

    .line 1222
    :cond_35
    const-class v0, Lcom/android/systemui/log/NotificationMediaLogger;

    .line 1223
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1225
    move-result-object v0

    .line 1228
    check-cast v0, Lcom/android/systemui/log/NotificationMediaLogger;

    .line 1229
    iget-boolean v4, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mIsArtworkUpdate:Z

    .line 1231
    invoke-virtual {v0, v8, v4}, Lcom/android/systemui/log/NotificationMediaLogger;->logSetArtWork(Lcom/android/systemui/media/controls/models/player/MediaData;Z)V

    .line 1233
    const-string v4, "Cannot find icon for package during setArtwork"

    .line 1236
    iget-object v5, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    .line 1238
    iget-object v6, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 1240
    const v10, 0x7f081102    # @drawable/ic_music_note 'res/drawable/ic_music_note.xml'

    .line 1242
    if-eqz v12, :cond_36

    .line 1245
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mIsArtworkUpdate:Z

    .line 1247
    if-eqz v0, :cond_36

    .line 1249
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 1251
    move-result-object v0

    .line 1254
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    goto :goto_1c

    .line 1258
    :cond_36
    if-nez v12, :cond_37

    .line 1259
    :try_start_1
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1261
    move-result-object v0

    .line 1264
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 1265
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1268
    goto :goto_1b

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1271
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1279
    move-result-object v11

    .line 1282
    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1286
    move-result-object v0

    .line 1289
    :goto_1b
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1290
    :cond_37
    :goto_1c
    iget-object v0, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->titleText:Landroid/widget/TextView;

    .line 1293
    iget-object v5, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    .line 1295
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    iget-object v0, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 1300
    move-object v5, v0

    .line 1302
    check-cast v5, Lcom/android/internal/widget/CachingIconView;

    .line 1303
    iget-object v0, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    .line 1305
    if-eqz v0, :cond_38

    .line 1307
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 1309
    move-result-object v11

    .line 1312
    if-eqz v11, :cond_38

    .line 1313
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 1315
    move-result-object v0

    .line 1318
    invoke-virtual {v5, v0}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    goto :goto_1e

    .line 1322
    :cond_38
    :try_start_2
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1323
    move-result-object v0

    .line 1326
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 1327
    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1330
    goto :goto_1d

    .line 1331
    :catch_1
    move-exception v0

    .line 1332
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1333
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1341
    move-result-object v4

    .line 1344
    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1345
    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1348
    move-result-object v0

    .line 1351
    :goto_1d
    invoke-virtual {v5, v0}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1352
    :goto_1e
    iget-object v0, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->artistText:Landroid/widget/TextView;

    .line 1355
    iget-object v2, v8, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    .line 1357
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    iget-object v0, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 1362
    if-nez v0, :cond_39

    .line 1364
    goto :goto_1f

    .line 1366
    :cond_39
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->titleText:Landroid/widget/TextView;

    .line 1367
    const/4 v4, -0x1

    .line 1369
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1370
    const v2, 0x7f06038d    # @color/media_secondary_text '#80ffffff'

    .line 1373
    invoke-virtual {v9, v2}, Landroid/content/Context;->getColor(I)I

    .line 1376
    move-result v2

    .line 1379
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->artistText:Landroid/widget/TextView;

    .line 1380
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1382
    const v2, 0x7f060384    # @color/media_duration_time_font_color '#66ffffff'

    .line 1385
    invoke-virtual {v9, v2}, Landroid/content/Context;->getColor(I)I

    .line 1388
    move-result v4

    .line 1391
    iget-object v5, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    .line 1392
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1394
    invoke-virtual {v9, v2}, Landroid/content/Context;->getColor(I)I

    .line 1397
    move-result v2

    .line 1400
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->totalTimeView:Landroid/widget/TextView;

    .line 1401
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1403
    const/4 v2, -0x1

    .line 1406
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1407
    move-result-object v2

    .line 1410
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action0:Landroid/widget/ImageButton;

    .line 1411
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1413
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action1:Landroid/widget/ImageButton;

    .line 1416
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1418
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action2:Landroid/widget/ImageButton;

    .line 1421
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1423
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action3:Landroid/widget/ImageButton;

    .line 1426
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1428
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->action4:Landroid/widget/ImageButton;

    .line 1431
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1433
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 1436
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1438
    const/16 v5, 0xc0

    .line 1441
    invoke-virtual {v2, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 1443
    move-result-object v2

    .line 1446
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1447
    const/16 v5, 0x80

    .line 1450
    invoke-virtual {v2, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 1452
    move-result-object v2

    .line 1455
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1456
    const/16 v4, 0xff

    .line 1459
    invoke-virtual {v2, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 1461
    move-result-object v2

    .line 1464
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    .line 1465
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1467
    :goto_1f
    if-eqz v3, :cond_3a

    .line 1470
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mIsArtworkUpdate:Z

    .line 1472
    if-eqz v0, :cond_3a

    .line 1474
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 1476
    move-result-object v0

    .line 1479
    invoke-static {v0}, Lcom/miui/utils/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 1480
    move-result-object v0

    .line 1483
    if-eqz v0, :cond_3a

    .line 1484
    new-instance v2, Landroidx/palette/graphics/Palette$Builder;

    .line 1486
    invoke-direct {v2, v0}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    .line 1488
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda2;

    .line 1491
    invoke-direct {v0, v7, v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;Lcom/android/systemui/media/controls/models/player/MediaViewHolder;)V

    .line 1493
    new-instance v1, Landroidx/palette/graphics/Palette$Builder$1;

    .line 1496
    invoke-direct {v1, v2, v0}, Landroidx/palette/graphics/Palette$Builder$1;-><init>(Landroidx/palette/graphics/Palette$Builder;Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda2;)V

    .line 1498
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1501
    iget-object v2, v2, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 1503
    filled-new-array {v2}, [Landroid/graphics/Bitmap;

    .line 1505
    move-result-object v2

    .line 1508
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1509
    :cond_3a
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mKeyguardMediaController:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

    .line 1512
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->refreshMediaPosition()V

    .line 1514
    return-void
    .line 1517
.end method
