.class public final Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$1;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 6
    iget v2, v1, Landroid/os/Message;->what:I

    .line 9
    const/16 v3, 0xbb8

    .line 11
    if-eq v2, v3, :cond_0

    .line 13
    goto/16 :goto_a

    .line 15
    :cond_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    check-cast v1, Ljava/util/List;

    .line 19
    const-string v2, "KeyguardNotifHelper"

    .line 21
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_f

    .line 24
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    goto/16 :goto_b

    .line 32
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    move-result v4

    .line 37
    new-array v4, v4, [Landroid/content/ContentValues;

    .line 38
    const/4 v5, 0x0

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    move-result v6

    .line 44
    if-ge v5, v6, :cond_e

    .line 45
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

    .line 47
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v7

    .line 52
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 53
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 58
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 60
    if-nez v8, :cond_2

    .line 62
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 65
    move-result v9

    .line 68
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 69
    move-result v10

    .line 72
    if-lez v9, :cond_4

    .line 73
    if-gtz v10, :cond_3

    .line 75
    goto :goto_1

    .line 77
    :cond_3
    invoke-static {v8}, Lcom/miui/utils/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 78
    move-result-object v8

    .line 81
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 82
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 87
    const/16 v11, 0x64

    .line 89
    invoke-virtual {v8, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 91
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 94
    move-result-object v8

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :goto_1
    move-object v8, v3

    .line 99
    :goto_2
    if-nez v8, :cond_5

    .line 100
    move-object v10, v3

    .line 102
    goto/16 :goto_9

    .line 103
    :cond_5
    iget-boolean v9, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 105
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 107
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 109
    move-result-object v10

    .line 112
    if-eqz v9, :cond_6

    .line 113
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 115
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getAppName()Ljava/lang/String;

    .line 117
    move-result-object v11

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 122
    move-result-object v11

    .line 125
    :goto_3
    if-eqz v9, :cond_7

    .line 126
    sget-object v12, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 128
    sget-boolean v12, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 130
    sget-object v12, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 132
    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mContext:Landroid/content/Context;

    .line 134
    const v13, 0x7f13088e    # @string/notification_hidden_text 'You have a new message'

    .line 136
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    move-result-object v12

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 144
    move-result-object v12

    .line 147
    :goto_4
    const-string v13, ""

    .line 148
    if-eqz v9, :cond_9

    .line 150
    :cond_8
    move-object v9, v13

    .line 152
    goto :goto_5

    .line 153
    :cond_9
    iget-object v9, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 154
    const-string v10, "android.subText"

    .line 156
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 158
    move-result-object v9

    .line 161
    if-eqz v9, :cond_8

    .line 162
    :goto_5
    new-instance v10, Landroid/content/ContentValues;

    .line 164
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 166
    const-string v14, "icon"

    .line 169
    invoke-virtual {v10, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 171
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    move-result v8

    .line 177
    if-eqz v8, :cond_a

    .line 178
    move-object v8, v13

    .line 180
    goto :goto_6

    .line 181
    :cond_a
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 182
    move-result-object v8

    .line 185
    :goto_6
    const-string/jumbo v11, "title"

    .line 186
    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    move-result v8

    .line 195
    if-eqz v8, :cond_b

    .line 196
    move-object v8, v13

    .line 198
    goto :goto_7

    .line 199
    :cond_b
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 200
    move-result-object v8

    .line 203
    :goto_7
    const-string v11, "content"

    .line 204
    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v8, Landroid/widget/DateTimeView;

    .line 209
    iget-object v11, v6, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;->mContext:Landroid/content/Context;

    .line 211
    invoke-direct {v8, v11}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;)V

    .line 213
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 216
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 218
    move-result-object v11

    .line 221
    iget-wide v11, v11, Landroid/app/Notification;->when:J

    .line 222
    const-wide/16 v14, 0x0

    .line 224
    cmp-long v14, v11, v14

    .line 226
    if-eqz v14, :cond_c

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    move-result-wide v14

    .line 233
    const-wide v16, 0x7528ad000L

    .line 234
    add-long v14, v14, v16

    .line 239
    cmp-long v11, v11, v14

    .line 241
    if-gez v11, :cond_c

    .line 243
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 245
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 247
    move-result-object v11

    .line 250
    iget-wide v11, v11, Landroid/app/Notification;->when:J

    .line 251
    invoke-virtual {v8, v11, v12}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 253
    :cond_c
    invoke-virtual {v8}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    .line 256
    move-result-object v8

    .line 259
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 260
    move-result-object v8

    .line 263
    const-string/jumbo v11, "time"

    .line 264
    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v8, Ljava/util/ArrayList;

    .line 270
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;->mSortedKeys:Ljava/util/ArrayList;

    .line 272
    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 277
    move-result-object v6

    .line 280
    const-string v8, "info"

    .line 281
    invoke-virtual {v10, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    move-result v6

    .line 289
    if-eqz v6, :cond_d

    .line 290
    goto :goto_8

    .line 292
    :cond_d
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 293
    move-result-object v13

    .line 296
    :goto_8
    const-string/jumbo v6, "subtext"

    .line 297
    invoke-virtual {v10, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 303
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 305
    move-result v6

    .line 308
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    move-result-object v6

    .line 312
    const-string v8, "key"

    .line 313
    invoke-virtual {v10, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 318
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 320
    const-string v8, "pkg"

    .line 322
    invoke-virtual {v10, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 327
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 329
    move-result v6

    .line 332
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    move-result-object v6

    .line 336
    const-string/jumbo v7, "user_id"

    .line 337
    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    :goto_9
    aput-object v10, v4, v5

    .line 343
    add-int/lit8 v5, v5, 0x1

    .line 345
    goto/16 :goto_0

    .line 347
    :cond_e
    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 349
    move-result-object v1

    .line 352
    new-instance v4, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$1$$ExternalSyntheticLambda0;

    .line 353
    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$1$$ExternalSyntheticLambda0;-><init>()V

    .line 355
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 358
    move-result-object v1

    .line 361
    new-instance v4, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$1$$ExternalSyntheticLambda1;

    .line 362
    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$1$$ExternalSyntheticLambda1;-><init>()V

    .line 364
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 367
    move-result-object v1

    .line 370
    check-cast v1, [Landroid/content/ContentValues;

    .line 371
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

    .line 373
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;->mContext:Landroid/content/Context;

    .line 378
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 380
    move-result-object v0

    .line 383
    sget-object v4, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    .line 384
    invoke-virtual {v0, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 386
    sget-object v4, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    .line 389
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 391
    sget-object v1, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    .line 394
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_a

    .line 399
    :catch_0
    move-exception v0

    .line 400
    const-string v1, "handleInsertDB"

    .line 401
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    :goto_a
    return-void

    .line 406
    :cond_f
    :goto_b
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

    .line 407
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 414
    move-result-object v0

    .line 417
    sget-object v1, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    .line 418
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 420
    sget-object v1, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    .line 423
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    goto :goto_c

    .line 428
    :catch_1
    move-exception v0

    .line 429
    const-string v1, "handleClearDB"

    .line 430
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    :goto_c
    return-void
    .line 435
.end method
