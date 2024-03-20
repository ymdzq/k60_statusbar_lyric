.class public final Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    iget-object v13, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 8
    iget-object v3, v13, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;

    .line 10
    iget-boolean v4, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 17
    sget-object v6, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logMediaLoaded$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logMediaLoaded$2;

    .line 19
    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 21
    const-string v7, "MediaCarouselCtlrLog"

    .line 23
    const/4 v14, 0x0

    .line 25
    invoke-virtual {v3, v7, v5, v6, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 26
    move-result-object v5

    .line 29
    invoke-interface {v5, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 30
    invoke-interface {v5, v4}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 33
    invoke-virtual {v3, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 36
    move-object/from16 v3, p2

    .line 39
    move/from16 v4, p6

    .line 41
    invoke-virtual {v13, v1, v3, v2, v4}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Z)Z

    .line 43
    move-result v2

    .line 46
    iget-object v15, v13, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 47
    const/4 v12, 0x5

    .line 49
    const/4 v11, 0x2

    .line 50
    const/4 v10, 0x4

    .line 51
    if-eqz v2, :cond_1

    .line 52
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 59
    move-result-object v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 65
    const/16 v17, 0x2f7

    .line 67
    iget v3, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSmartspaceId:I

    .line 69
    iget v2, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 71
    filled-new-array {v10, v11, v12}, [I

    .line 73
    move-result-object v20

    .line 76
    const/16 v21, 0x0

    .line 77
    const/16 v22, 0x0

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    .line 81
    move-result v23

    .line 84
    const/16 v24, 0x0

    .line 85
    const/16 v25, 0x0

    .line 87
    const/16 v26, 0x1b0

    .line 89
    move-object/from16 v16, v0

    .line 91
    move/from16 v18, v3

    .line 93
    move/from16 v19, v2

    .line 95
    invoke-static/range {v16 .. v26}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;III[IIIIIZI)V

    .line 97
    :cond_0
    iget-boolean v0, v15, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 100
    if-eqz v0, :cond_5

    .line 102
    iget v0, v15, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    .line 106
    move-result v2

    .line 109
    if-ne v0, v2, :cond_5

    .line 110
    iget-boolean v0, v15, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->qsExpanded:Z

    .line 112
    invoke-virtual {v13, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceImpression(Z)V

    .line 114
    goto/16 :goto_2

    .line 117
    :cond_1
    if-eqz p5, :cond_5

    .line 119
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 126
    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v0

    .line 133
    const/4 v9, 0x0

    .line 134
    move/from16 v16, v9

    .line 135
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v2

    .line 140
    if-eqz v2, :cond_4

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v2

    .line 146
    add-int/lit8 v17, v16, 0x1

    .line 147
    if-ltz v16, :cond_3

    .line 149
    check-cast v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 151
    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 153
    if-nez v3, :cond_2

    .line 155
    iget v3, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 157
    iget-object v4, v13, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 159
    check-cast v4, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 161
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    move-result-wide v4

    .line 169
    long-to-int v4, v4

    .line 170
    add-int/2addr v3, v4

    .line 171
    const/16 v4, 0x2000

    .line 172
    invoke-static {v3, v4}, Ljava/lang/Math;->floorMod(II)I

    .line 174
    move-result v3

    .line 177
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 178
    move-result v4

    .line 181
    iput v4, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSmartspaceId:I

    .line 182
    iput-boolean v9, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mIsImpressed:Z

    .line 184
    const/16 v3, 0x2f7

    .line 186
    iget v5, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 188
    filled-new-array {v10, v11, v12}, [I

    .line 190
    move-result-object v6

    .line 193
    const/4 v7, 0x0

    .line 194
    const/4 v8, 0x0

    .line 195
    const/16 v18, 0x0

    .line 196
    const/16 v19, 0x130

    .line 198
    move-object v2, v13

    .line 200
    move/from16 v20, v9

    .line 201
    move/from16 v9, v16

    .line 203
    move/from16 v16, v10

    .line 205
    move/from16 v10, p5

    .line 207
    move/from16 v21, v11

    .line 209
    move/from16 v11, v18

    .line 211
    move/from16 v18, v12

    .line 213
    move/from16 v12, v19

    .line 215
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;III[IIIIIZI)V

    .line 217
    goto :goto_1

    .line 220
    :cond_2
    move/from16 v20, v9

    .line 221
    move/from16 v16, v10

    .line 223
    move/from16 v21, v11

    .line 225
    move/from16 v18, v12

    .line 227
    :goto_1
    move/from16 v10, v16

    .line 229
    move/from16 v16, v17

    .line 231
    move/from16 v12, v18

    .line 233
    move/from16 v9, v20

    .line 235
    move/from16 v11, v21

    .line 237
    goto :goto_0

    .line 239
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 240
    throw v14

    .line 243
    :cond_4
    iget-boolean v0, v15, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 244
    if-eqz v0, :cond_5

    .line 246
    iget-boolean v0, v15, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->qsExpanded:Z

    .line 248
    if-nez v0, :cond_5

    .line 250
    invoke-virtual {v13, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceImpression(Z)V

    .line 252
    :cond_5
    :goto_2
    iget-object v0, v13, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    .line 255
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 257
    return-void
    .line 260
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logMediaRemoved$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logMediaRemoved$2;

    .line 11
    const/4 v3, 0x0

    .line 13
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    const-string v4, "MediaCarouselCtlrLog"

    .line 16
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v1

    .line 21
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    const/4 v0, 0x6

    .line 28
    invoke-static {p0, p1, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;Ljava/lang/String;I)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 29
    return-void
    .line 32
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    iget-object v15, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 10
    iget-object v4, v15, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 17
    sget-object v6, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logRecommendationLoaded$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logRecommendationLoaded$2;

    .line 19
    iget-object v4, v4, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 21
    const-string v7, "MediaCarouselCtlrLog"

    .line 23
    const/4 v14, 0x0

    .line 25
    invoke-virtual {v4, v7, v5, v6, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 26
    move-result-object v5

    .line 29
    invoke-interface {v5, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 30
    iget-boolean v6, v2, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 33
    invoke-interface {v5, v6}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 35
    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 38
    const/4 v4, 0x1

    .line 41
    if-eqz v6, :cond_5

    .line 42
    iget-object v0, v15, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 44
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 46
    invoke-virtual {v5}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->hasActiveMedia()Z

    .line 48
    move-result v5

    .line 51
    const/4 v13, 0x0

    .line 52
    if-nez v5, :cond_0

    .line 53
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 55
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 57
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 59
    move-result v0

    .line 62
    xor-int/2addr v0, v4

    .line 63
    if-eqz v0, :cond_0

    .line 64
    if-eqz v3, :cond_0

    .line 66
    goto :goto_0

    .line 68
    :cond_0
    move v4, v13

    .line 69
    :goto_0
    const/4 v0, 0x4

    .line 70
    const/4 v12, 0x2

    .line 71
    const/4 v11, 0x5

    .line 72
    iget-object v10, v15, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 73
    iget-wide v8, v2, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    .line 75
    if-eqz v4, :cond_3

    .line 77
    sget-object v4, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 84
    move-result-object v4

    .line 87
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v16

    .line 91
    move/from16 v17, v13

    .line 92
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v4

    .line 97
    if-eqz v4, :cond_3

    .line 98
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v4

    .line 103
    add-int/lit8 v18, v17, 0x1

    .line 104
    if-ltz v17, :cond_2

    .line 106
    check-cast v4, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 108
    iget-object v5, v4, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 110
    if-nez v5, :cond_1

    .line 112
    iget v5, v4, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 114
    move-object v6, v10

    .line 116
    check-cast v6, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    move-result-wide v6

    .line 125
    long-to-int v6, v6

    .line 126
    add-int/2addr v5, v6

    .line 127
    const/16 v6, 0x2000

    .line 128
    invoke-static {v5, v6}, Ljava/lang/Math;->floorMod(II)I

    .line 130
    move-result v5

    .line 133
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 134
    move-result v6

    .line 137
    iput v6, v4, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSmartspaceId:I

    .line 138
    iput-boolean v13, v4, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mIsImpressed:Z

    .line 140
    const/16 v5, 0x2f7

    .line 142
    iget v7, v4, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 144
    filled-new-array {v0, v12, v11}, [I

    .line 146
    move-result-object v19

    .line 149
    const/16 v20, 0x0

    .line 150
    const/16 v21, 0x0

    .line 152
    move-object v4, v10

    .line 154
    check-cast v4, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    move-result-wide v22

    .line 163
    sub-long v11, v22, v8

    .line 164
    long-to-int v12, v11

    .line 166
    const/16 v22, 0x0

    .line 167
    const/16 v23, 0x130

    .line 169
    move-object v4, v15

    .line 171
    move-wide/from16 v24, v8

    .line 172
    move-object/from16 v8, v19

    .line 174
    move/from16 v9, v20

    .line 176
    move-object/from16 v19, v10

    .line 178
    move/from16 v10, v21

    .line 180
    move/from16 v11, v17

    .line 182
    move/from16 v17, v13

    .line 184
    move/from16 v13, v22

    .line 186
    move-object/from16 v20, v14

    .line 188
    move/from16 v14, v23

    .line 190
    invoke-static/range {v4 .. v14}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;III[IIIIIZI)V

    .line 192
    goto :goto_2

    .line 195
    :cond_1
    move-wide/from16 v24, v8

    .line 196
    move-object/from16 v19, v10

    .line 198
    move/from16 v17, v13

    .line 200
    move-object/from16 v20, v14

    .line 202
    :goto_2
    move/from16 v13, v17

    .line 204
    move/from16 v17, v18

    .line 206
    move-object/from16 v10, v19

    .line 208
    move-object/from16 v14, v20

    .line 210
    move-wide/from16 v8, v24

    .line 212
    const/4 v11, 0x5

    .line 214
    const/4 v12, 0x2

    .line 215
    goto :goto_1

    .line 216
    :cond_2
    move-object/from16 v20, v14

    .line 217
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 219
    throw v20

    .line 222
    :cond_3
    move-wide/from16 v24, v8

    .line 223
    move-object/from16 v19, v10

    .line 225
    invoke-virtual {v15, v1, v2, v3}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->addSmartspaceMediaRecommendations(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V

    .line 227
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 230
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 235
    move-result-object v2

    .line 238
    if-eqz v2, :cond_4

    .line 239
    const/16 v3, 0x2f7

    .line 241
    iget v4, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSmartspaceId:I

    .line 243
    iget v5, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 245
    const/4 v2, 0x2

    .line 247
    const/4 v6, 0x5

    .line 248
    filled-new-array {v0, v2, v6}, [I

    .line 249
    move-result-object v6

    .line 252
    const/4 v7, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    .line 255
    move-result v9

    .line 258
    move-object/from16 v10, v19

    .line 259
    check-cast v10, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 261
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 266
    move-result-wide v10

    .line 269
    sub-long v10, v10, v24

    .line 270
    long-to-int v10, v10

    .line 272
    const/4 v11, 0x0

    .line 273
    const/16 v12, 0x130

    .line 274
    move-object v2, v15

    .line 276
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;III[IIIIIZI)V

    .line 277
    :cond_4
    iget-object v0, v15, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 280
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 282
    if-eqz v2, :cond_6

    .line 284
    iget v2, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 286
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    .line 288
    move-result v1

    .line 291
    if-ne v2, v1, :cond_6

    .line 292
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->qsExpanded:Z

    .line 294
    invoke-virtual {v15, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceImpression(Z)V

    .line 296
    goto :goto_3

    .line 299
    :cond_5
    iget-object v1, v15, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 300
    invoke-virtual {v1}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    .line 302
    iget-object v1, v2, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 305
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    .line 307
    :cond_6
    :goto_3
    return-void
    .line 310
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logRecommendationRemoved$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logRecommendationRemoved$2;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const-string v3, "MediaCarouselCtlrLog"

    .line 15
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v1

    .line 21
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 22
    invoke-interface {v1, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    if-nez p2, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    .line 33
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->isReorderingAllowed:Z

    .line 35
    if-eqz v0, :cond_0

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    .line 40
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 v0, 0x6

    .line 46
    invoke-static {p0, p1, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;Ljava/lang/String;I)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 47
    if-nez p2, :cond_3

    .line 50
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updateHostVisibility:Lkotlin/jvm/functions/Function0;

    .line 52
    if-eqz p0, :cond_3

    .line 54
    if-eqz p0, :cond_2

    .line 56
    move-object v4, p0

    .line 58
    :cond_2
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    :cond_3
    :goto_1
    return-void
    .line 62
.end method
