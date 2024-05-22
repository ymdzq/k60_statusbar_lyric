.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Ljava/lang/Runnable;

.field public final synthetic $appIntent:Landroid/app/PendingIntent;

.field public final synthetic $appName:Ljava/lang/String;

.field public final synthetic $desc:Landroid/media/MediaDescription;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $token:Landroid/media/session/MediaSession$Token;

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;ILandroid/media/MediaDescription;Lcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 2
    iput p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$userId:I

    .line 4
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    .line 10
    iput-object p6, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$appName:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    .line 14
    iput-object p8, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$packageName:Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v15, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 4
    iget v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$userId:I

    .line 6
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    .line 8
    iget-object v10, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    .line 10
    iget-object v8, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    .line 12
    iget-object v4, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$appName:Ljava/lang/String;

    .line 14
    iget-object v9, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    .line 16
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$packageName:Ljava/lang/String;

    .line 18
    sget v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->MAX_NOTIFICATION_ACTIONS:I

    .line 20
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    .line 25
    move-result-object v0

    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    move v0, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    iget-object v7, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 42
    const-string v11, "MediaDataManager"

    .line 44
    if-eqz v0, :cond_2

    .line 46
    const-string v0, "Description incomplete"

    .line 48
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto/16 :goto_8

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    const-string v12, "adding track for "

    .line 60
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v12, " from browser: "

    .line 68
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 79
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 86
    move-object v7, v0

    .line 87
    check-cast v7, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 88
    if-eqz v7, :cond_3

    .line 90
    iget v0, v7, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    .line 92
    goto :goto_2

    .line 94
    :cond_3
    const/4 v0, -0x1

    .line 95
    :goto_2
    move v14, v0

    .line 96
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 97
    move-result-object v0

    .line 100
    const/4 v12, 0x0

    .line 101
    if-nez v0, :cond_4

    .line 102
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 104
    move-result-object v13

    .line 107
    if-eqz v13, :cond_4

    .line 108
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 110
    move-result-object v0

    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    .line 117
    move-result-object v16

    .line 120
    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 121
    move-result-object v19

    .line 124
    const/16 v20, 0x1

    .line 125
    invoke-static {v0, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 127
    move-result v21

    .line 130
    move/from16 v17, v14

    .line 131
    move-object/from16 v18, v2

    .line 133
    invoke-interface/range {v16 .. v21}, Landroid/app/IUriGrantsManager;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 135
    invoke-virtual {v15, v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    .line 138
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_3

    .line 142
    :catch_0
    move-exception v0

    .line 143
    new-instance v13, Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "Failed to get URI permission: "

    .line 146
    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 157
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    move-object v0, v12

    .line 161
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 162
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 164
    move-result-object v0

    .line 167
    move-object v13, v0

    .line 168
    goto :goto_4

    .line 169
    :cond_5
    move-object v13, v12

    .line 170
    :goto_4
    if-eqz v7, :cond_6

    .line 171
    iget-object v0, v7, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 173
    if-nez v0, :cond_7

    .line 175
    :cond_6
    iget-object v0, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 177
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->getNewInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 179
    move-result-object v0

    .line 182
    :cond_7
    move-object/from16 v16, v0

    .line 183
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    .line 185
    move-result-object v0

    .line 188
    if-eqz v0, :cond_8

    .line 189
    const-string v1, "android.media.IS_EXPLICIT"

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 193
    move-result-wide v0

    .line 196
    const-wide/16 v17, 0x1

    .line 197
    cmp-long v0, v0, v17

    .line 199
    if-nez v0, :cond_8

    .line 201
    const/4 v0, 0x1

    .line 203
    goto :goto_5

    .line 204
    :cond_8
    move v0, v6

    .line 205
    :goto_5
    iget-object v1, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 206
    if-eqz v0, :cond_9

    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    sget-object v0, Lcom/android/systemui/flags/Flags;->MEDIA_EXPLICIT_INDICATOR:Lcom/android/systemui/flags/ReleasedFlag;

    .line 213
    iget-object v7, v1, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 215
    check-cast v7, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 217
    invoke-virtual {v7, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 219
    move-result v0

    .line 222
    if-eqz v0, :cond_9

    .line 223
    const/16 v17, 0x1

    .line 225
    goto :goto_6

    .line 227
    :cond_9
    move/from16 v17, v6

    .line 228
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    sget-object v0, Lcom/android/systemui/flags/Flags;->MEDIA_RESUME_PROGRESS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 233
    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 235
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 237
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 239
    move-result v0

    .line 242
    if-eqz v0, :cond_a

    .line 243
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    .line 245
    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getDescriptionProgress(Landroid/os/Bundle;)Ljava/lang/Double;

    .line 249
    move-result-object v0

    .line 252
    move-object/from16 v18, v0

    .line 253
    goto :goto_7

    .line 255
    :cond_a
    move-object/from16 v18, v12

    .line 256
    :goto_7
    invoke-virtual {v15, v10}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 258
    move-result-object v7

    .line 261
    iget-object v0, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 262
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 269
    move-result-wide v11

    .line 272
    new-instance v6, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;

    .line 273
    move-object v0, v6

    .line 275
    move-object v1, v15

    .line 276
    move-object/from16 v22, v6

    .line 277
    move-object v6, v13

    .line 279
    move-object/from16 v13, v16

    .line 280
    move-object/from16 v23, v15

    .line 282
    move/from16 v15, v17

    .line 284
    move-object/from16 v16, v18

    .line 286
    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;ILjava/lang/String;Landroid/media/MediaDescription;Landroid/graphics/drawable/Icon;Lcom/android/systemui/media/controls/models/player/MediaAction;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Ljava/lang/Runnable;JLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;)V

    .line 288
    move-object/from16 v1, v23

    .line 291
    iget-object v0, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 293
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 295
    move-object/from16 v1, v22

    .line 297
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 299
    :goto_8
    return-void
    .line 302
.end method
