.class public final Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    iget v1, v0, Landroid/os/Message;->what:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_17

    .line 7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    move-object v8, v0

    .line 11
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 12
    move-object/from16 v0, p0

    .line 14
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    .line 16
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v3, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 23
    sget-object v4, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logStartPipeline$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logStartPipeline$2;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 27
    const-string v5, "NotifBindPipeline"

    .line 29
    const/4 v6, 0x0

    .line 31
    invoke-virtual {v1, v5, v3, v4, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 32
    move-result-object v4

    .line 35
    invoke-static {v8, v4, v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 36
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    .line 39
    if-eqz v1, :cond_16

    .line 41
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    .line 43
    check-cast v1, Landroid/util/ArrayMap;

    .line 45
    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    .line 51
    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 53
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    .line 55
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;

    .line 57
    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V

    .line 59
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 62
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 67
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 68
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;

    .line 70
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    sget-object v7, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger$logStageParams$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger$logStageParams$2;

    .line 75
    const-string v9, "RowContentBindStage"

    .line 77
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 79
    invoke-virtual {v5, v9, v3, v7, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 81
    move-result-object v3

    .line 84
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 88
    invoke-interface {v3, v6}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->toString()Ljava/lang/String;

    .line 92
    move-result-object v6

    .line 95
    invoke-interface {v3, v6}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v5, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 99
    iget v3, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    .line 102
    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    .line 104
    and-int v6, v5, v3

    .line 106
    xor-int/lit8 v3, v3, 0xf

    .line 108
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    .line 110
    move-object v15, v5

    .line 112
    check-cast v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;

    .line 113
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    move v5, v2

    .line 118
    :goto_0
    const/4 v7, 0x0

    .line 119
    const/4 v9, 0x2

    .line 120
    if-eqz v3, :cond_5

    .line 121
    and-int v11, v3, v5

    .line 123
    if-eqz v11, :cond_4

    .line 125
    if-eq v5, v2, :cond_3

    .line 127
    if-eq v5, v9, :cond_2

    .line 129
    const/4 v11, 0x4

    .line 131
    if-eq v5, v11, :cond_1

    .line 132
    const/16 v9, 0x8

    .line 134
    if-eq v5, v9, :cond_0

    .line 136
    goto :goto_1

    .line 138
    :cond_0
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 139
    move-result-object v9

    .line 142
    new-instance v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    .line 143
    const/4 v12, 0x3

    .line 145
    invoke-direct {v11, v15, v10, v8, v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 146
    invoke-virtual {v9, v7, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;)V

    .line 149
    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 153
    move-result-object v7

    .line 156
    new-instance v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    .line 157
    invoke-direct {v11, v15, v10, v8, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 159
    invoke-virtual {v7, v9, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;)V

    .line 162
    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 166
    move-result-object v7

    .line 169
    new-instance v9, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    .line 170
    invoke-direct {v9, v15, v10, v8, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 172
    invoke-virtual {v7, v2, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;)V

    .line 175
    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 179
    move-result-object v9

    .line 182
    new-instance v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    .line 183
    invoke-direct {v11, v15, v10, v8, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 185
    invoke-virtual {v9, v7, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;)V

    .line 188
    :cond_4
    :goto_1
    not-int v7, v5

    .line 191
    and-int/2addr v3, v7

    .line 192
    shl-int/lit8 v5, v5, 0x1

    .line 193
    goto :goto_0

    .line 195
    :cond_5
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseLowPriority:Z

    .line 196
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeight:Z

    .line 198
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    .line 200
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mViewsNeedReinflation:Z

    .line 202
    new-instance v14, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;

    .line 204
    invoke-direct {v14, v1, v4}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;-><init>(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;)V

    .line 206
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    .line 209
    iget-boolean v1, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    .line 212
    if-eqz v1, :cond_6

    .line 214
    goto/16 :goto_9

    .line 216
    :cond_6
    iget-object v1, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 218
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getImageResolver()Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    .line 220
    move-result-object v3

    .line 223
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 224
    move-result-object v1

    .line 227
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->hasCache()Z

    .line 228
    move-result v4

    .line 231
    if-nez v4, :cond_7

    .line 232
    goto/16 :goto_7

    .line 234
    :cond_7
    new-instance v4, Ljava/util/HashSet;

    .line 236
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 238
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 241
    if-nez v1, :cond_8

    .line 243
    goto :goto_6

    .line 245
    :cond_8
    const-string v5, "android.messages"

    .line 246
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 248
    move-result-object v5

    .line 251
    if-nez v5, :cond_9

    .line 252
    const/4 v5, 0x0

    .line 254
    goto :goto_2

    .line 255
    :cond_9
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 256
    move-result-object v5

    .line 259
    :goto_2
    if-eqz v5, :cond_b

    .line 260
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 262
    move-result-object v5

    .line 265
    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    move-result v9

    .line 269
    if-eqz v9, :cond_b

    .line 270
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    move-result-object v9

    .line 275
    check-cast v9, Landroid/app/Notification$MessagingStyle$Message;

    .line 276
    invoke-static {v9}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 278
    move-result v16

    .line 281
    if-eqz v16, :cond_a

    .line 282
    invoke-virtual {v9}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    .line 284
    move-result-object v9

    .line 287
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 288
    goto :goto_3

    .line 291
    :cond_b
    const-string v5, "android.messages.historic"

    .line 292
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 294
    move-result-object v1

    .line 297
    if-nez v1, :cond_c

    .line 298
    const/4 v1, 0x0

    .line 300
    goto :goto_4

    .line 301
    :cond_c
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 302
    move-result-object v1

    .line 305
    :goto_4
    if-eqz v1, :cond_e

    .line 306
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 308
    move-result-object v1

    .line 311
    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    move-result v5

    .line 315
    if-eqz v5, :cond_e

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    move-result-object v5

    .line 321
    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    .line 322
    invoke-static {v5}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 324
    move-result v9

    .line 327
    if-eqz v9, :cond_d

    .line 328
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    .line 330
    move-result-object v5

    .line 333
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    goto :goto_5

    .line 337
    :cond_e
    iput-object v4, v3, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mWantedUriSet:Ljava/util/Set;

    .line 338
    :goto_6
    iget-object v1, v3, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mWantedUriSet:Ljava/util/Set;

    .line 340
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$$ExternalSyntheticLambda0;

    .line 342
    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;)V

    .line 344
    invoke-interface {v1, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 347
    :goto_7
    if-eqz v0, :cond_10

    .line 350
    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    .line 352
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    .line 354
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    .line 356
    check-cast v0, Landroid/util/ArrayMap;

    .line 358
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    move-result-object v0

    .line 363
    check-cast v0, Landroid/util/SparseArray;

    .line 364
    if-nez v0, :cond_f

    .line 366
    goto :goto_8

    .line 368
    :cond_f
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 369
    :cond_10
    :goto_8
    and-int/lit8 v0, v6, 0x1

    .line 372
    if-eqz v0, :cond_11

    .line 374
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 376
    move-result-object v0

    .line 379
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    .line 380
    :cond_11
    and-int/lit8 v0, v6, 0x2

    .line 383
    if-eqz v0, :cond_12

    .line 385
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 387
    move-result-object v0

    .line 390
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    .line 391
    :cond_12
    and-int/lit8 v0, v6, 0x4

    .line 394
    if-eqz v0, :cond_13

    .line 396
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 398
    move-result-object v0

    .line 401
    const/4 v1, 0x2

    .line 402
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    .line 403
    :cond_13
    and-int/lit8 v0, v6, 0x8

    .line 406
    if-eqz v0, :cond_14

    .line 408
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 410
    move-result-object v0

    .line 413
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    .line 414
    :cond_14
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;

    .line 417
    iget-object v4, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 419
    iget-boolean v5, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    .line 421
    iget-object v7, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    .line 423
    iget-object v9, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    .line 425
    iget-object v1, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 427
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    .line 429
    iget-object v2, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mSmartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    .line 431
    move-object v3, v0

    .line 433
    move-object/from16 p0, v0

    .line 434
    move-object v0, v15

    .line 436
    move-object v15, v1

    .line 437
    move-object/from16 v16, v2

    .line 438
    invoke-direct/range {v3 .. v16}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;-><init>(Ljava/util/concurrent/Executor;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)V

    .line 440
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    .line 443
    if-eqz v1, :cond_15

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->doInBackground()Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    .line 447
    move-result-object v0

    .line 450
    move-object/from16 v1, p0

    .line 451
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 453
    goto :goto_9

    .line 456
    :cond_15
    move-object/from16 v1, p0

    .line 457
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 459
    const/4 v2, 0x0

    .line 461
    new-array v2, v2, [Ljava/lang/Void;

    .line 462
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 464
    :goto_9
    return-void

    .line 467
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 468
    const-string v1, "No stage was ever set on the pipeline"

    .line 470
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 472
    throw v0

    .line 475
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    .line 478
    const-string v3, "Unknown message type: "

    .line 480
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    iget v0, v0, Landroid/os/Message;->what:I

    .line 485
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    move-result-object v0

    .line 493
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 494
    throw v1
    .line 497
.end method
