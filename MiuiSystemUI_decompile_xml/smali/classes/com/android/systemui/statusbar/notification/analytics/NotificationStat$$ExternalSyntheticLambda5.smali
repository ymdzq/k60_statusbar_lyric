.class public final synthetic Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda5;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda5;->f$2:Z

    .line 6
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 13
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "duration"

    .line 17
    if-nez v2, :cond_0

    .line 19
    goto/16 :goto_5

    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifIndex(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 23
    move-result v2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v6

    .line 30
    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 31
    iget-wide v8, v8, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->seeTime:J

    .line 33
    sub-long/2addr v6, v8

    .line 35
    new-instance v8, Ljava/util/HashMap;

    .line 36
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 38
    if-eqz p0, :cond_2

    .line 41
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 43
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFold(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    move p0, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move p0, v3

    .line 53
    :goto_0
    if-eqz p0, :cond_2

    .line 54
    sget-object p0, Lcom/miui/systemui/events/NotifSource;->UNIMPORTANT:Lcom/miui/systemui/events/NotifSource;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 61
    :cond_2
    const-string/jumbo p0, "source"

    .line 62
    invoke-virtual {v8, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string p0, "index"

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 73
    invoke-virtual {v8, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->visualPosition:I

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object p0

    .line 82
    const-string/jumbo v1, "visualPosition"

    .line 83
    invoke-virtual {v8, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {v8, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 96
    const-string/jumbo v1, "sbn"

    .line 98
    invoke-virtual {v8, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 104
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 106
    move-result p0

    .line 109
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    move-result-object p0

    .line 113
    const-string v1, "expanded"

    .line 114
    invoke-virtual {v8, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 119
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 121
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 125
    move-result p0

    .line 128
    if-eqz p0, :cond_3

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getChildrenStream(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/util/stream/Stream;

    .line 131
    move-result-object p0

    .line 134
    new-instance v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda7;

    .line 135
    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda7;-><init>(I)V

    .line 137
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 140
    move-result-object p0

    .line 143
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 144
    move-result-object v1

    .line 147
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 148
    move-result-object p0

    .line 151
    check-cast p0, Ljava/util/List;

    .line 152
    const-string v1, "item_sbns"

    .line 154
    invoke-virtual {v8, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    goto :goto_4

    .line 159
    :cond_3
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 160
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 162
    move-result-object p0

    .line 165
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 166
    const-string v1, "miui.inner_notifications"

    .line 168
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    .line 170
    move-result-object p0

    .line 173
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 174
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 179
    const-string v2, "com.miui.notification"

    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v1

    .line 185
    if-eqz v1, :cond_4

    .line 186
    if-eqz p0, :cond_4

    .line 188
    move v1, v4

    .line 190
    goto :goto_1

    .line 191
    :cond_4
    move v1, v3

    .line 192
    :goto_1
    if-nez v1, :cond_5

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 195
    move-result-object p0

    .line 198
    goto :goto_3

    .line 199
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 200
    array-length v2, p0

    .line 202
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    array-length v2, p0

    .line 206
    move v6, v3

    .line 207
    :goto_2
    if-ge v6, v2, :cond_6

    .line 208
    aget-wide v9, p0, v6

    .line 210
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 212
    move-result-object v7

    .line 215
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v6, v6, 0x1

    .line 219
    goto :goto_2

    .line 221
    :cond_6
    move-object p0, v1

    .line 222
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 223
    move-result v1

    .line 226
    if-nez v1, :cond_7

    .line 227
    const-string v1, "item_ts_ids"

    .line 229
    invoke-virtual {v8, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_7
    :goto_4
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 234
    const-string v1, "notification_expose"

    .line 236
    invoke-virtual {v0, p0, v1, v8}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 238
    :goto_5
    new-instance p0, Ljava/util/HashMap;

    .line 241
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 243
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 246
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 248
    move-result v1

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    move-result-object v1

    .line 255
    const-string/jumbo v2, "sbn_id"

    .line 256
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 262
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 264
    move-result-object v1

    .line 267
    const-string/jumbo v2, "send_pkg"

    .line 268
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 274
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 276
    const-string/jumbo v2, "target_pkg"

    .line 278
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 284
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 286
    move-result-wide v1

    .line 289
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    move-result-object v1

    .line 293
    const-string/jumbo v2, "ts_id"

    .line 294
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 300
    move-result-wide v1

    .line 303
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 304
    iget-wide v6, v6, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->seeTime:J

    .line 306
    sub-long/2addr v1, v6

    .line 308
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    move-result-object v1

    .line 312
    invoke-virtual {p0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 318
    move-result-wide v5

    .line 321
    iput-wide v5, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->seeTime:J

    .line 322
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getIsNotificationGrouped(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 327
    const-string v2, "if_group"

    .line 328
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getIsPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 333
    move-result v1

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    move-result-object v1

    .line 340
    const-string v2, "is_priority"

    .line 341
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->visualPosition:I

    .line 346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    move-result-object v1

    .line 351
    const-string v2, "position"

    .line 352
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 357
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->generateTextId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 359
    move-result-object v1

    .line 362
    const-string/jumbo v2, "text_id"

    .line 363
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string/jumbo v1, "style"

    .line 369
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 372
    move-result-object v2

    .line 375
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 379
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 381
    move-result-object v1

    .line 384
    iget v1, v1, Landroid/app/Notification;->priority:I

    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    move-result-object v1

    .line 390
    const-string v2, "priority"

    .line 391
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 396
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->resolvePushMsgId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 398
    move-result-object v1

    .line 401
    const-string v2, "push_id"

    .line 402
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 407
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 409
    move-result-object v1

    .line 412
    iget v1, v1, Landroid/app/Notification;->flags:I

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    move-result-object v1

    .line 418
    const-string v2, "flags"

    .line 419
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 424
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 426
    move-result-object v1

    .line 429
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 430
    if-nez v1, :cond_8

    .line 432
    goto :goto_6

    .line 434
    :cond_8
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 435
    const-string v2, "android.picture"

    .line 437
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 439
    move-result-object v1

    .line 442
    if-eqz v1, :cond_9

    .line 443
    move v1, v4

    .line 445
    goto :goto_7

    .line 446
    :cond_9
    :goto_6
    move v1, v3

    .line 447
    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 448
    move-result-object v1

    .line 451
    const-string v2, "if_large_icon"

    .line 452
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 457
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 459
    move-result-object v1

    .line 462
    if-nez v1, :cond_a

    .line 463
    move v1, v3

    .line 465
    goto :goto_8

    .line 466
    :cond_a
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 467
    const-string v2, "android.contains.customView"

    .line 469
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 471
    move-result v1

    .line 474
    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 475
    move-result-object v1

    .line 478
    const-string v2, "if_custom_icon"

    .line 479
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 484
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 486
    move-result-object v2

    .line 489
    iget-object v2, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 490
    if-eqz v2, :cond_b

    .line 492
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 494
    move-result-object v1

    .line 497
    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 498
    array-length v1, v1

    .line 500
    if-lez v1, :cond_b

    .line 501
    move v3, v4

    .line 503
    :cond_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 504
    move-result-object v1

    .line 507
    const-string v2, "if_custom_action"

    .line 508
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 513
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getChannelId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 515
    move-result-object v1

    .line 518
    const-string v2, "channel_id"

    .line 519
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 524
    move-result v1

    .line 527
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    move-result-object v1

    .line 531
    const-string v2, "importance"

    .line 532
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    .line 537
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->isGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 539
    move-result v1

    .line 542
    if-eqz v1, :cond_c

    .line 543
    const-string/jumbo v1, "true"

    .line 545
    goto :goto_9

    .line 548
    :cond_c
    const-string v1, "false"

    .line 549
    :goto_9
    const-string v2, "group_expansion"

    .line 551
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifGroupKey(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 556
    move-result-object v1

    .line 559
    const-string v2, "group_key"

    .line 560
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 565
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getFoldReason(Landroid/service/notification/StatusBarNotification;)I

    .line 567
    move-result v1

    .line 570
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    move-result-object v1

    .line 574
    const-string v2, "analyze_value"

    .line 575
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifTag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 580
    move-result-object v1

    .line 583
    const-string v2, "notification_tag"

    .line 584
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 589
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 591
    move-result v1

    .line 594
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 595
    move-result-object v1

    .line 598
    const-string v2, "if_delete_notification"

    .line 599
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 604
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFoldEntrance(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 606
    move-result v1

    .line 609
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 610
    move-result-object v1

    .line 613
    const-string v2, "if_unimportant_notification"

    .line 614
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 619
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 621
    move-result-object v1

    .line 624
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    .line 625
    move-result v1

    .line 628
    if-eqz v1, :cond_d

    .line 629
    new-instance v1, Lorg/json/JSONArray;

    .line 631
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getChildrenStream(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/util/stream/Stream;

    .line 633
    move-result-object v2

    .line 636
    new-instance v3, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda7;

    .line 637
    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda7;-><init>(I)V

    .line 639
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 642
    move-result-object v2

    .line 645
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 646
    move-result-object v3

    .line 649
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 650
    move-result-object v2

    .line 653
    check-cast v2, Ljava/util/List;

    .line 654
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 656
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 659
    move-result-object v1

    .line 662
    const-string v2, "group_items"

    .line 663
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    goto :goto_a

    .line 668
    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getChildrenStream(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/util/stream/Stream;

    .line 669
    move-result-object v1

    .line 672
    new-instance v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda7;

    .line 673
    invoke-direct {v2, v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda7;-><init>(I)V

    .line 675
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 678
    move-result-object v1

    .line 681
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 682
    move-result-object v2

    .line 685
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 686
    move-result-object v1

    .line 689
    check-cast v1, Ljava/util/List;

    .line 690
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 692
    move-result v2

    .line 695
    if-nez v2, :cond_e

    .line 696
    new-instance v2, Lorg/json/JSONArray;

    .line 698
    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 700
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 703
    move-result-object v1

    .line 706
    const-string v2, "items"

    .line 707
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_e
    :goto_a
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->ifOngoingNotifCanCancel(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 712
    move-result v0

    .line 715
    const-string v1, "if_delete_retained_notification"

    .line 716
    if-eqz v0, :cond_f

    .line 718
    const-string/jumbo v0, "\u662f"

    .line 720
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    goto :goto_b

    .line 726
    :cond_f
    const-string/jumbo v0, "\u5426"

    .line 727
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :goto_b
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->resolveMediaStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 733
    move-result-object p1

    .line 736
    const-string v0, "media_notification_style"

    .line 737
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    return-object p0
    .line 742
.end method
