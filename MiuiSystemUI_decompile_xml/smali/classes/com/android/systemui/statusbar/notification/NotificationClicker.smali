.class public final Lcom/android/systemui/statusbar/notification/NotificationClicker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mCentralSurfacesOptional:Ljava/util/Optional;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

.field public final mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field public final mOnDragSuccessListener:Lcom/android/systemui/statusbar/notification/NotificationClicker$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationClicker$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationClicker;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mOnDragSuccessListener:Lcom/android/systemui/statusbar/notification/NotificationClicker$1;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mCentralSurfacesOptional:Ljava/util/Optional;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubblesOptional:Ljava/util/Optional;

    .line 16
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6
    if-nez v2, :cond_0

    .line 8
    const-string v0, "NotificationClicker"

    .line 10
    const-string v1, "NotificationClicker called on a view that is not a notification row."

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 17
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mCentralSurfacesOptional:Ljava/util/Optional;

    .line 18
    new-instance v3, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticLambda1;

    .line 20
    invoke-direct {v3}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticLambda1;-><init>()V

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 25
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 28
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 30
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v2, :cond_1

    .line 36
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    move-result-wide v5

    .line 42
    sget-wide v7, Lcom/android/systemui/statusbar/notification/row/NotificationClickerInjector;->lastClickTime:J

    .line 43
    sub-long v7, v5, v7

    .line 45
    const-wide/16 v9, 0x0

    .line 47
    cmp-long v9, v9, v7

    .line 49
    if-gtz v9, :cond_2

    .line 51
    const-wide/16 v9, 0x3e8

    .line 53
    cmp-long v7, v7, v9

    .line 55
    if-gez v7, :cond_2

    .line 57
    move v7, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v7, v4

    .line 61
    :goto_0
    if-eqz v7, :cond_3

    .line 62
    sget-object v7, Lcom/android/systemui/statusbar/notification/row/NotificationClickerInjector;->lastClickNotif:Ljava/lang/String;

    .line 64
    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 66
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 68
    move-result-object v8

    .line 71
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    move-result v7

    .line 75
    if-eqz v7, :cond_3

    .line 76
    :goto_1
    move v5, v3

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 80
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 82
    move-result-object v7

    .line 85
    sput-object v7, Lcom/android/systemui/statusbar/notification/row/NotificationClickerInjector;->lastClickNotif:Ljava/lang/String;

    .line 86
    sput-wide v5, Lcom/android/systemui/statusbar/notification/row/NotificationClickerInjector;->lastClickTime:J

    .line 88
    move v5, v4

    .line 90
    :goto_2
    if-eqz v5, :cond_4

    .line 91
    return-void

    .line 93
    :cond_4
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    .line 94
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 99
    sget-object v7, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logOnClick$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logOnClick$2;

    .line 101
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 103
    const-string v8, "NotificationClicker"

    .line 105
    const/4 v9, 0x0

    .line 107
    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 108
    move-result-object v7

    .line 111
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 112
    move-result-object v8

    .line 115
    invoke-interface {v7, v8}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 119
    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 121
    move-result-object v8

    .line 124
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 125
    move-result-object v8

    .line 128
    invoke-interface {v7, v8}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 132
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 135
    move-result-object v5

    .line 138
    if-eqz v5, :cond_5

    .line 139
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 141
    move-result-object v5

    .line 144
    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    .line 145
    move-result v5

    .line 148
    if-eqz v5, :cond_5

    .line 149
    move v5, v3

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    move v5, v4

    .line 153
    :goto_3
    const/4 v7, 0x0

    .line 154
    if-eqz v5, :cond_8

    .line 155
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logMenuVisible$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logMenuVisible$2;

    .line 162
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 164
    const-string v4, "NotificationClicker"

    .line 166
    invoke-virtual {v0, v4, v6, v3, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 168
    move-result-object v3

    .line 171
    invoke-static {v2, v3, v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 172
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 175
    if-eqz v0, :cond_6

    .line 177
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 179
    :cond_6
    invoke-virtual {v1, v7, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    .line 182
    move-result-object v0

    .line 185
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 186
    if-eqz v0, :cond_7

    .line 188
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 190
    :cond_7
    return-void

    .line 193
    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 194
    move-result v5

    .line 197
    if-eqz v5, :cond_c

    .line 198
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 200
    move-result-object v5

    .line 203
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 204
    move-result-object v8

    .line 207
    if-eqz v8, :cond_9

    .line 208
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 210
    move-result-object v5

    .line 213
    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    .line 214
    move-result v5

    .line 217
    if-eqz v5, :cond_9

    .line 218
    move v5, v3

    .line 220
    goto :goto_4

    .line 221
    :cond_9
    move v5, v4

    .line 222
    :goto_4
    if-eqz v5, :cond_c

    .line 223
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logParentMenuVisible$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logParentMenuVisible$2;

    .line 230
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 232
    const-string v4, "NotificationClicker"

    .line 234
    invoke-virtual {v0, v4, v6, v3, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 236
    move-result-object v3

    .line 239
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 240
    move-result-object v2

    .line 243
    invoke-interface {v3, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 247
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 250
    move-result-object v0

    .line 253
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 254
    if-eqz v1, :cond_a

    .line 256
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 258
    :cond_a
    invoke-virtual {v0, v7, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    .line 261
    move-result-object v1

    .line 264
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 265
    if-eqz v1, :cond_b

    .line 267
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 269
    :cond_b
    return-void

    .line 272
    :cond_c
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 273
    if-eqz v5, :cond_d

    .line 275
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    .line 277
    if-eqz v5, :cond_d

    .line 279
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logChildrenExpanded$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logChildrenExpanded$2;

    .line 286
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 288
    const-string v3, "NotificationClicker"

    .line 290
    invoke-virtual {v0, v3, v6, v1, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 292
    move-result-object v1

    .line 295
    invoke-static {v2, v1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 296
    return-void

    .line 299
    :cond_d
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    .line 300
    move-result v5

    .line 303
    if-eqz v5, :cond_e

    .line 304
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logGutsExposed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logGutsExposed$2;

    .line 311
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 313
    const-string v3, "NotificationClicker"

    .line 315
    invoke-virtual {v0, v3, v6, v1, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 317
    move-result-object v1

    .line 320
    invoke-static {v2, v1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 321
    return-void

    .line 324
    :cond_e
    instance-of v5, v1, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 325
    if-nez v5, :cond_f

    .line 327
    goto/16 :goto_a

    .line 329
    :cond_f
    const-class v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 331
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 333
    move-result-object v5

    .line 336
    check-cast v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 337
    move-object v6, v1

    .line 339
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 340
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 342
    move-result-object v7

    .line 345
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 346
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getTargetPackageName()Ljava/lang/String;

    .line 348
    move-result-object v7

    .line 351
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->shouldSuppressFold()Z

    .line 355
    move-result v8

    .line 358
    if-eqz v8, :cond_10

    .line 359
    goto :goto_5

    .line 361
    :cond_10
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->cache$delegate:Lkotlin/Lazy;

    .line 362
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 364
    move-result-object v8

    .line 367
    check-cast v8, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 368
    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 370
    invoke-virtual {v9, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    move-result-object v9

    .line 375
    if-nez v9, :cond_11

    .line 376
    new-instance v9, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 378
    invoke-direct {v9, v7}, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;-><init>(Ljava/lang/String;)V

    .line 380
    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 383
    invoke-virtual {v10, v7, v9}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v10, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$1;

    .line 388
    invoke-direct {v10, v8, v9}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$1;-><init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;)V

    .line 390
    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 393
    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 395
    :cond_11
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 398
    invoke-virtual {v8, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    move-result-object v7

    .line 403
    check-cast v7, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 404
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 406
    monitor-enter v8

    .line 408
    :try_start_0
    iget v9, v7, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyClick:I

    .line 409
    add-int/2addr v9, v3

    .line 411
    iput v9, v7, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyClick:I

    .line 412
    iput-boolean v3, v7, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDataChanged:Z

    .line 414
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget v7, v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->count:I

    .line 417
    add-int/2addr v7, v3

    .line 419
    iput v7, v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->count:I

    .line 420
    const/4 v8, 0x5

    .line 422
    if-lt v7, v8, :cond_12

    .line 423
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->cache$delegate:Lkotlin/Lazy;

    .line 425
    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 427
    move-result-object v7

    .line 430
    check-cast v7, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 431
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    new-instance v8, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$$ExternalSyntheticLambda0;

    .line 436
    invoke-direct {v8, v7}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;)V

    .line 438
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 441
    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 443
    iput v4, v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->count:I

    .line 446
    :cond_12
    :goto_5
    iget-boolean v5, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 448
    if-eqz v5, :cond_13

    .line 450
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 452
    move-result v5

    .line 455
    if-nez v5, :cond_13

    .line 456
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 458
    move-result v5

    .line 461
    if-nez v5, :cond_13

    .line 462
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    .line 464
    move-result-object v4

    .line 467
    invoke-interface {v4, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 468
    goto/16 :goto_9

    .line 471
    :cond_13
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 473
    move-result-object v5

    .line 476
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 477
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFoldEntrance(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 479
    move-result v5

    .line 482
    if-eqz v5, :cond_19

    .line 483
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 485
    move-result-object v5

    .line 488
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 489
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 491
    move-result-object v5

    .line 494
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 495
    const-string v7, "miui_unimportant_click_type"

    .line 497
    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 499
    move-result v5

    .line 502
    if-nez v5, :cond_18

    .line 503
    const-class v5, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 505
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 507
    move-result-object v5

    .line 510
    check-cast v5, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 511
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 513
    move-result-object v7

    .line 516
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    sget-object v8, Lcom/miui/systemui/events/SettingsEvent;->Companion:Lcom/miui/systemui/events/SettingsEvent$Companion;

    .line 520
    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 522
    invoke-virtual {v8, v9}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getUserFold(Landroid/content/Context;)I

    .line 524
    move-result v8

    .line 527
    if-lez v8, :cond_14

    .line 528
    move v8, v3

    .line 530
    goto :goto_6

    .line 531
    :cond_14
    move v8, v4

    .line 532
    :goto_6
    new-instance v15, Lcom/miui/systemui/events/UnimportantGuideClickEvent;

    .line 533
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 535
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 537
    move-result-wide v10

    .line 540
    const-class v7, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 541
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 543
    move-result-object v7

    .line 546
    check-cast v7, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 547
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->showNotifFoldFooterIcon:Z

    .line 549
    if-eqz v7, :cond_15

    .line 551
    if-eqz v8, :cond_15

    .line 553
    const-string/jumbo v7, "true"

    .line 555
    goto :goto_7

    .line 558
    :cond_15
    const-string v7, "false"

    .line 559
    :goto_7
    move-object v12, v7

    .line 561
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getScreenOrientationString()Ljava/lang/String;

    .line 562
    move-result-object v13

    .line 565
    iget v7, v5, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBarState:I

    .line 566
    if-ne v7, v3, :cond_16

    .line 568
    const-string v7, "null"

    .line 570
    goto :goto_8

    .line 572
    :cond_16
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelSessionId:Ljava/lang/String;

    .line 573
    :goto_8
    move-object v14, v7

    .line 575
    const-string v7, "49.2.1.1.23689"

    .line 576
    const v16, 0x1509c44

    .line 578
    move-object v9, v15

    .line 581
    move-object v8, v15

    .line 582
    move-object v15, v7

    .line 583
    invoke-direct/range {v9 .. v16}, Lcom/miui/systemui/events/UnimportantGuideClickEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 584
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 587
    invoke-interface {v5, v8}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 589
    const-class v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 592
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 594
    move-result-object v5

    .line 597
    check-cast v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 598
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 600
    move-result-object v6

    .line 603
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 604
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    if-nez v6, :cond_17

    .line 609
    goto :goto_a

    .line 611
    :cond_17
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 612
    move-result-object v6

    .line 615
    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 616
    const-string v7, "miui_unimportant"

    .line 618
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 620
    move-result v6

    .line 623
    if-eqz v6, :cond_19

    .line 624
    iget-object v4, v5, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->foldNotifManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 626
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->setShowingUnimportant(Z)V

    .line 628
    :cond_18
    :goto_9
    move v4, v3

    .line 631
    :cond_19
    :goto_a
    if-eqz v4, :cond_1a

    .line 632
    return-void

    .line 634
    :cond_1a
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setJustClicked(Z)V

    .line 635
    new-instance v4, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticLambda2;

    .line 638
    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 640
    invoke-static {v4}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 643
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 646
    move-result-object v4

    .line 649
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    .line 650
    move-result v4

    .line 653
    if-nez v4, :cond_1b

    .line 654
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubblesOptional:Ljava/util/Optional;

    .line 656
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    .line 658
    move-result v4

    .line 661
    if-eqz v4, :cond_1b

    .line 662
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubblesOptional:Ljava/util/Optional;

    .line 664
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 666
    move-result-object v4

    .line 669
    check-cast v4, Lcom/android/wm/shell/bubbles/Bubbles;

    .line 670
    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 672
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 674
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 676
    new-instance v6, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda5;

    .line 678
    invoke-direct {v6, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;I)V

    .line 680
    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 683
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 685
    :cond_1b
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 688
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 690
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->onNotificationClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 692
    const-class v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 695
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 697
    move-result-object v0

    .line 700
    check-cast v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 701
    const-string v1, "item"

    .line 703
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onClick(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 705
    return-void

    .line 708
    :catchall_0
    move-exception v0

    .line 709
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    throw v0
    .line 711
.end method
