.class public final Lcom/android/systemui/media/controls/resume/MediaResumeListener$mediaBrowserCallback$1;
.super Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/resume/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/resume/MediaResumeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener$mediaBrowserCallback$1;->this$0:Lcom/android/systemui/media/controls/resume/MediaResumeListener;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final addTrack(Landroid/media/MediaDescription;Landroid/content/ComponentName;Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;)V
    .locals 30

    .line 1
    move-object/from16 v1, p3

    .line 2
    const-string v2, "MediaResumeListener"

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->isBrowserConnected()Z

    .line 6
    move-result v0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    move-object v9, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 15
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 17
    move-result-object v0

    .line 20
    move-object v9, v0

    .line 21
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    move-result-object v4

    .line 27
    iget-object v5, v1, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    .line 28
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 33
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    const/high16 v6, 0x4000000

    .line 39
    invoke-static {v0, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 41
    move-result-object v11

    .line 44
    move-object/from16 v0, p0

    .line 45
    iget-object v4, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener$mediaBrowserCallback$1;->this$0:Lcom/android/systemui/media/controls/resume/MediaResumeListener;

    .line 47
    iget-object v0, v4, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 55
    move-result-object v6

    .line 58
    new-instance v8, Lcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;

    .line 59
    move-object/from16 v7, p2

    .line 61
    invoke-direct {v8, v4, v7}, Lcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;-><init>(Lcom/android/systemui/media/controls/resume/MediaResumeListener;Landroid/content/ComponentName;)V

    .line 63
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object v10

    .line 69
    invoke-virtual {v0, v10, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 70
    move-result-object v10

    .line 73
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 74
    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v10, "Error getting package information"

    .line 80
    invoke-static {v2, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    const-string v10, "Adding resume controls for "

    .line 87
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget v10, v1, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mUserId:I

    .line 92
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v10, ": "

    .line 97
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    move-object/from16 v10, p1

    .line 102
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 110
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, v4, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 114
    if-nez v0, :cond_1

    .line 116
    move-object v2, v3

    .line 118
    goto :goto_2

    .line 119
    :cond_1
    move-object v2, v0

    .line 120
    :goto_2
    iget v1, v1, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mUserId:I

    .line 121
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    move-result-object v29

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 127
    move-result-object v7

    .line 130
    iget-object v4, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 131
    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 136
    if-nez v0, :cond_3

    .line 137
    iget-object v6, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 139
    invoke-virtual {v6}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->getNewInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 141
    move-result-object v15

    .line 144
    :try_start_1
    iget-object v0, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->context:Landroid/content/Context;

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 147
    move-result-object v0

    .line 150
    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 151
    move-result-object v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v3

    .line 162
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 166
    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    goto :goto_3

    .line 170
    :catch_1
    move-exception v0

    .line 171
    const-string v3, "Could not get app UID for "

    .line 172
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v3

    .line 177
    const-string v5, "MediaDataManager"

    .line 178
    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const/4 v0, -0x1

    .line 183
    :goto_3
    sget-object v12, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->LOADING:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 184
    const/4 v13, 0x0

    .line 186
    const/4 v14, 0x0

    .line 187
    const/4 v3, 0x0

    .line 188
    move-object v5, v15

    .line 189
    move-object v15, v3

    .line 190
    const/16 v16, 0x0

    .line 191
    const/16 v18, 0x0

    .line 193
    const/16 v19, 0x0

    .line 195
    const/16 v20, 0x0

    .line 197
    const/16 v22, 0x0

    .line 199
    const/16 v23, 0x1

    .line 201
    const/16 v24, 0x0

    .line 203
    const/16 v25, 0x0

    .line 205
    const v28, 0xceef7ff

    .line 207
    move-object/from16 v17, v7

    .line 210
    move-object/from16 v21, v8

    .line 212
    move-object/from16 v26, v5

    .line 214
    move/from16 v27, v0

    .line 216
    invoke-static/range {v12 .. v28}, Lcom/android/systemui/media/controls/models/player/MediaData;->copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 218
    move-result-object v3

    .line 221
    invoke-virtual {v4, v7, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v2, v0, v5, v7}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logSingleVsMultipleMediaAdded(ILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    .line 225
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->RESUME_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 228
    iget-object v4, v6, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 230
    invoke-interface {v4, v3, v0, v7, v5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 232
    :cond_3
    new-instance v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;

    .line 235
    move-object v4, v0

    .line 237
    move-object v5, v2

    .line 238
    move v6, v1

    .line 239
    move-object v1, v7

    .line 240
    move-object/from16 v7, p1

    .line 241
    move-object/from16 v10, v29

    .line 243
    move-object v12, v1

    .line 245
    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;ILandroid/media/MediaDescription;Lcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 246
    iget-object v1, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 249
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 251
    return-void
    .line 254
.end method
