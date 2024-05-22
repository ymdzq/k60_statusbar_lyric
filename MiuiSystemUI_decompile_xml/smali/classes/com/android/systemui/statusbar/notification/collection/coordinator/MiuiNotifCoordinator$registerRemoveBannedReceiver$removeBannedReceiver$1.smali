.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    iget v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;->$r8$classId:I

    .line 6
    const-string v3, "MiuiNotifCoordinator"

    .line 8
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    move-object v4, v3

    .line 15
    goto/16 :goto_6

    .line 16
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v2, "app_packageName"

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 28
    const-string v6, "messageId"

    .line 29
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 34
    const-string v7, "change_importance"

    .line 35
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    const-string v15, "channel_id"

    .line 40
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v14

    .line 45
    const-string v7, "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

    .line 46
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 48
    move-result v7

    .line 51
    const/16 v16, 0x0

    .line 52
    if-eqz v7, :cond_5

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 61
    if-nez v8, :cond_0

    .line 63
    move-object/from16 v8, v16

    .line 65
    :cond_0
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 67
    move-result-object v8

    .line 70
    invoke-interface {v8}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 71
    move-result-object v8

    .line 74
    new-instance v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;

    .line 75
    invoke-direct {v9, v5, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;-><init>(ILjava/lang/Object;)V

    .line 77
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 80
    move-result-object v5

    .line 83
    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;

    .line 84
    invoke-direct {v8, v4, v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;-><init>(ILjava/lang/Object;)V

    .line 86
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 89
    move-result-object v5

    .line 92
    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;

    .line 93
    const/4 v9, 0x4

    .line 95
    invoke-direct {v8, v9, v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;-><init>(ILjava/lang/Object;)V

    .line 96
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 99
    move-result-object v5

    .line 102
    sget-object v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$4;

    .line 103
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 105
    move-result-object v5

    .line 108
    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$5;

    .line 109
    invoke-direct {v8, v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$5;-><init>(Ljava/util/List;)V

    .line 111
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 114
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v5

    .line 120
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v7

    .line 124
    if-eqz v7, :cond_2

    .line 125
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v7

    .line 130
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 131
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 133
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 135
    move-result-object v8

    .line 138
    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 139
    move-result-object v8

    .line 142
    const-string v9, "filter Notification key=%s"

    .line 143
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    move-result-object v8

    .line 148
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    move-result v8

    .line 155
    if-eqz v8, :cond_1

    .line 156
    const/4 v8, 0x7

    .line 158
    goto :goto_1

    .line 159
    :cond_1
    const/16 v8, 0x11

    .line 160
    :goto_1
    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->removeNotificationOnPipeline(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    .line 166
    move-result-object v4

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 170
    move-result-object v5

    .line 173
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 174
    move-result v4

    .line 177
    if-nez v4, :cond_5

    .line 178
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    move-result v4

    .line 183
    if-nez v4, :cond_5

    .line 184
    const-class v4, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 186
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 188
    move-result-object v4

    .line 191
    check-cast v4, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 192
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    const-string v5, "com.miui.systemAdSolution"

    .line 197
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result v5

    .line 202
    if-nez v5, :cond_4

    .line 203
    const-string v5, "com.miui.msa.global"

    .line 205
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v5

    .line 210
    if-eqz v5, :cond_3

    .line 211
    goto :goto_2

    .line 213
    :cond_3
    move-object/from16 v6, v16

    .line 214
    :cond_4
    :goto_2
    invoke-virtual {v4, v2, v6}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->sendBlockNotificationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v5, Lcom/miui/systemui/events/BlockEvent;

    .line 219
    const-wide/16 v9, -0x1

    .line 221
    const/4 v11, -0x1

    .line 223
    const/4 v12, 0x0

    .line 224
    sget-object v17, Lcom/miui/systemui/events/NotifSource;->SETTINGS:Lcom/miui/systemui/events/NotifSource;

    .line 225
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 227
    move-result-object v13

    .line 230
    const/16 v18, -0x1

    .line 231
    move-object v6, v5

    .line 233
    move-object v7, v2

    .line 234
    move-object v8, v2

    .line 235
    move-object/from16 p0, v14

    .line 236
    move/from16 v14, v18

    .line 238
    move-object/from16 v18, v3

    .line 240
    move-object v3, v15

    .line 242
    move-object/from16 v15, p0

    .line 243
    invoke-direct/range {v6 .. v15}, Lcom/miui/systemui/events/BlockEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;ILjava/lang/String;)V

    .line 245
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 248
    invoke-interface {v6, v5}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 250
    new-instance v5, Ljava/util/HashMap;

    .line 253
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 255
    const/4 v6, -0x1

    .line 258
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    move-result-object v6

    .line 262
    const-string v7, "index"

    .line 263
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v6, "source"

    .line 268
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 271
    move-result-object v7

    .line 274
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-object/from16 v6, p0

    .line 278
    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 283
    const-string v7, "notification_block"

    .line 285
    invoke-virtual {v4, v3, v7, v5}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 287
    goto :goto_3

    .line 290
    :cond_5
    move-object/from16 v18, v3

    .line 291
    move-object v6, v14

    .line 293
    :goto_3
    const-string v3, "EXTRA_FORBID_ONGOING_NOTIFICATION"

    .line 294
    const/4 v4, 0x0

    .line 296
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 297
    move-result v1

    .line 300
    if-eqz v1, :cond_7

    .line 301
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 303
    if-nez v1, :cond_6

    .line 305
    goto :goto_4

    .line 307
    :cond_6
    move-object/from16 v16, v1

    .line 308
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 310
    move-result-object v1

    .line 313
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 314
    move-result-object v1

    .line 317
    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;

    .line 318
    const/4 v4, 0x2

    .line 320
    invoke-direct {v3, v4, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;-><init>(ILjava/lang/Object;)V

    .line 321
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 324
    move-result-object v1

    .line 327
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;

    .line 328
    const/4 v3, 0x3

    .line 330
    invoke-direct {v2, v3, v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$1;-><init>(ILjava/lang/Object;)V

    .line 331
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 334
    move-result-object v1

    .line 337
    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$4;->INSTANCE$1:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$4;

    .line 338
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 340
    move-result-object v1

    .line 343
    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$4;->INSTANCE$2:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotifications$4;

    .line 344
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 346
    move-result-object v1

    .line 349
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 350
    move-result-object v2

    .line 353
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 354
    move-result-object v1

    .line 357
    check-cast v1, Ljava/lang/Iterable;

    .line 358
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 360
    move-result-object v1

    .line 363
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    move-result v2

    .line 367
    if-eqz v2, :cond_7

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    move-result-object v2

    .line 373
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 374
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 376
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 378
    move-result-object v3

    .line 381
    const/4 v4, 0x1

    .line 382
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 383
    move-result-object v3

    .line 386
    const-string v4, "filter Ongoing Notification key=%s"

    .line 387
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 389
    move-result-object v3

    .line 392
    move-object/from16 v4, v18

    .line 393
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v3, 0x7

    .line 398
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->removeNotificationOnPipeline(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 399
    goto :goto_5

    .line 402
    :cond_7
    return-void

    .line 403
    :goto_6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 404
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    const-string v2, "com.miui.app.ExtraStatusBarManager.extra_notification_key"

    .line 409
    const/4 v3, 0x0

    .line 411
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 412
    move-result v2

    .line 415
    const-string v5, "com.miui.app.ExtraStatusBarManager.extra_notification_click"

    .line 416
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 418
    move-result v1

    .line 421
    if-nez v2, :cond_8

    .line 422
    const-string v0, "keycode == 0 CLEAR_KEYGUARD_NOTIFICATION"

    .line 424
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    goto :goto_8

    .line 429
    :cond_8
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->notifLiveData:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 430
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 432
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->getValue()Ljava/lang/Object;

    .line 434
    move-result-object v3

    .line 437
    check-cast v3, Ljava/util/List;

    .line 438
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 440
    move-result-object v3

    .line 443
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    move-result v5

    .line 447
    if-eqz v5, :cond_b

    .line 448
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    move-result-object v5

    .line 453
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 454
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 456
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 458
    move-result v6

    .line 461
    if-eq v2, v6, :cond_9

    .line 462
    goto :goto_7

    .line 464
    :cond_9
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 465
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 467
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 469
    move-result v6

    .line 472
    const-string v8, "keycode = "

    .line 473
    const-string v9, "; click = "

    .line 475
    const-string v10, "; pkg = "

    .line 477
    invoke-static {v8, v2, v9, v1, v10}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    move-result-object v8

    .line 482
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v7, "; id = "

    .line 486
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    move-result-object v6

    .line 497
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v6, 0x1

    .line 501
    if-ne v1, v6, :cond_a

    .line 502
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 504
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->callOnClick()Z

    .line 506
    goto :goto_7

    .line 509
    :cond_a
    const/4 v6, 0x7

    .line 510
    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->removeNotificationOnPipeline(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 511
    goto :goto_7

    .line 514
    :cond_b
    :goto_8
    return-void

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 516
.end method
