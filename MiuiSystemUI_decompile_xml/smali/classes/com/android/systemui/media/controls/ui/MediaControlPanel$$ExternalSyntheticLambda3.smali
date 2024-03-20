.class public final synthetic Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_a

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 12
    check-cast v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 16
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v1, Lcom/android/systemui/monet/ColorScheme;

    .line 23
    invoke-static {p0}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    .line 25
    move-result-object p0

    .line 28
    invoke-direct {v1, p0}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;)V

    .line 29
    new-instance p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;

    .line 32
    const/4 v2, 0x4

    .line 34
    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 38
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 40
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 46
    check-cast v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 50
    check-cast p0, Landroid/media/session/MediaController;

    .line 52
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 54
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    .line 56
    iget-object p0, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 59
    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 63
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object p0, v1

    .line 68
    :goto_0
    iput-object p0, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 69
    iget-object p0, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 71
    if-eqz p0, :cond_1

    .line 73
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 75
    move-result-object p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move-object p0, v1

    .line 80
    :goto_1
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 81
    const-wide/16 v5, 0x0

    .line 83
    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    .line 87
    move-result-wide v7

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move-wide v7, v5

    .line 92
    :goto_2
    const-wide/16 v9, 0x100

    .line 93
    and-long/2addr v7, v9

    .line 95
    cmp-long v4, v7, v5

    .line 96
    if-eqz v4, :cond_3

    .line 98
    move v7, v2

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    move v7, v3

    .line 102
    :goto_3
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 103
    if-eqz v4, :cond_4

    .line 105
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 107
    move-result-wide v4

    .line 110
    long-to-int v1, v4

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v1

    .line 115
    :cond_4
    move-object v10, v1

    .line 116
    if-eqz p0, :cond_5

    .line 117
    const-string v1, "android.media.metadata.DURATION"

    .line 119
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 121
    move-result-wide v4

    .line 124
    long-to-int p0, v4

    .line 125
    move v11, p0

    .line 126
    goto :goto_4

    .line 127
    :cond_5
    move v11, v3

    .line 128
    :goto_4
    iget-object p0, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 129
    if-eqz p0, :cond_6

    .line 131
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    .line 133
    move-result p0

    .line 136
    goto :goto_5

    .line 137
    :cond_6
    move p0, v3

    .line 138
    :goto_5
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 139
    move-result v8

    .line 142
    iget-object p0, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 143
    if-eqz p0, :cond_9

    .line 145
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    .line 147
    move-result p0

    .line 150
    if-nez p0, :cond_7

    .line 151
    move p0, v2

    .line 153
    goto :goto_6

    .line 154
    :cond_7
    move p0, v3

    .line 155
    :goto_6
    if-nez p0, :cond_9

    .line 156
    if-gtz v11, :cond_8

    .line 158
    goto :goto_7

    .line 160
    :cond_8
    move v6, v2

    .line 161
    goto :goto_8

    .line 162
    :cond_9
    :goto_7
    move v6, v3

    .line 163
    :goto_8
    new-instance p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;

    .line 164
    iget-boolean v9, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->scrubbing:Z

    .line 166
    move-object v5, p0

    .line 168
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;I)V

    .line 169
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;)V

    .line 172
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->checkIfPollingNeeded()V

    .line 175
    return-void

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 179
    check-cast v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 181
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 183
    check-cast p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 185
    invoke-virtual {v0, v3}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->closeGuts(Z)V

    .line 187
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    .line 190
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 192
    move-result-object v1

    .line 195
    check-cast v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 196
    iget-object v2, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 198
    const-wide/16 v3, 0x258

    .line 200
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    .line 202
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    .line 205
    if-nez p0, :cond_a

    .line 207
    const-string p0, "MediaControlPanel"

    .line 209
    const-string v0, "Cannot create dismiss action click action: extras missing dismiss_intent."

    .line 211
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    goto :goto_9

    .line 216
    :cond_a
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 217
    move-result-object v1

    .line 220
    if-eqz v1, :cond_b

    .line 221
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 223
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 230
    const-string v2, "com.google.android.apps.gsa.staticplugins.opa.smartspace.ExportedSmartspaceTrampolineActivity"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    move-result v1

    .line 236
    if-eqz v1, :cond_b

    .line 237
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    goto :goto_9

    .line 244
    :cond_b
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 245
    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    :goto_9
    return-void

    .line 250
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 251
    check-cast v0, Landroid/widget/ImageView;

    .line 253
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 255
    check-cast p0, Landroid/app/smartspace/SmartspaceAction;

    .line 257
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 259
    move-result-object p0

    .line 262
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 263
    return-void

    .line 266
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 267
    check-cast v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 269
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 271
    check-cast p0, Lcom/android/systemui/monet/ColorScheme;

    .line 273
    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 275
    if-nez v4, :cond_c

    .line 277
    goto/16 :goto_c

    .line 279
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/monet/ColorScheme;->accent2:Lcom/android/systemui/monet/TonalPalette;

    .line 281
    invoke-virtual {v4}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    .line 283
    move-result v4

    .line 286
    iget-object v5, p0, Lcom/android/systemui/monet/ColorScheme;->neutral1:Lcom/android/systemui/monet/TonalPalette;

    .line 287
    iget-object v6, v5, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 289
    check-cast v6, Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 293
    move-result-object v6

    .line 296
    check-cast v6, Ljava/lang/Number;

    .line 297
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 299
    move-result v6

    .line 302
    iget-object v7, p0, Lcom/android/systemui/monet/ColorScheme;->neutral2:Lcom/android/systemui/monet/TonalPalette;

    .line 303
    iget-object v7, v7, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 305
    const/4 v8, 0x3

    .line 307
    check-cast v7, Ljava/util/ArrayList;

    .line 308
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    move-result-object v7

    .line 313
    check-cast v7, Ljava/lang/Number;

    .line 314
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 316
    move-result v7

    .line 319
    sget-object v8, Lcom/android/systemui/flags/Flags;->MEDIA_RECOMMENDATION_CARD_UPDATE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 320
    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 322
    check-cast v9, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 324
    invoke-virtual {v9, v8}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 326
    move-result v10

    .line 329
    if-eqz v10, :cond_e

    .line 330
    iget-object v10, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 332
    iget-object v10, v10, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->cardTitle:Landroid/widget/TextView;

    .line 334
    if-eqz v10, :cond_d

    .line 336
    goto :goto_b

    .line 338
    :cond_d
    move-object v10, v1

    .line 339
    :goto_b
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    :cond_e
    iget-object v10, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 343
    iget-object v10, v10, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 345
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 347
    move-result-object v4

    .line 350
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 351
    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 354
    iget-object v4, v4, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaTitles:Ljava/util/List;

    .line 356
    new-instance v10, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda16;

    .line 358
    invoke-direct {v10, v6, v3}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda16;-><init>(II)V

    .line 360
    invoke-interface {v4, v10}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 363
    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 366
    iget-object v3, v3, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaSubtitles:Ljava/util/List;

    .line 368
    new-instance v4, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda16;

    .line 370
    invoke-direct {v4, v7, v2}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda16;-><init>(II)V

    .line 372
    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 375
    invoke-virtual {v9, v8}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 378
    move-result v3

    .line 381
    if-eqz v3, :cond_10

    .line 382
    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 384
    iget-object v3, v3, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaProgressBars:Ljava/util/List;

    .line 386
    if-eqz v3, :cond_f

    .line 388
    move-object v1, v3

    .line 390
    :cond_f
    new-instance v3, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda16;

    .line 391
    const/4 v4, 0x2

    .line 393
    invoke-direct {v3, v6, v4}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda16;-><init>(II)V

    .line 394
    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 397
    :cond_10
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 400
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 402
    iput-object p0, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 404
    iget-object v1, p0, Lcom/android/systemui/monet/ColorScheme;->accent2:Lcom/android/systemui/monet/TonalPalette;

    .line 406
    invoke-virtual {v1}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    .line 408
    move-result v1

    .line 411
    iget-object v3, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->dismissText:Landroid/widget/TextView;

    .line 412
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iget-boolean v4, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->isDismissible:Z

    .line 417
    iget-object v6, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    .line 419
    if-nez v4, :cond_11

    .line 421
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    :cond_11
    iget-object v1, v5, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 426
    check-cast v1, Ljava/util/ArrayList;

    .line 428
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 430
    move-result-object v1

    .line 433
    check-cast v1, Ljava/lang/Number;

    .line 434
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 436
    move-result v1

    .line 439
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 440
    move-result-object v1

    .line 443
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    .line 444
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 446
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->isDismissible:Z

    .line 449
    if-eqz v2, :cond_12

    .line 451
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 453
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/monet/ColorScheme;->accent1:Lcom/android/systemui/monet/TonalPalette;

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    .line 458
    move-result p0

    .line 461
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 462
    move-result-object p0

    .line 465
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->settings:Landroid/widget/ImageButton;

    .line 466
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 468
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 471
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 474
    :goto_c
    return-void

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 478
.end method
