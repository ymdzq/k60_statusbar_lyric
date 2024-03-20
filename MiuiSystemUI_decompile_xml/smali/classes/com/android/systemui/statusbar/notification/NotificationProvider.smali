.class public Lcom/android/systemui/statusbar/notification/NotificationProvider;
.super Landroid/content/ContentProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final URI_CAN_SHOW_FOCUS:Landroid/net/Uri;

.field public static final URI_FOLD_IMPORTANCE:Landroid/net/Uri;

.field public static final sMatcher:Landroid/content/UriMatcher;


# instance fields
.field public final mCanShowFocusObserver:Lcom/android/systemui/statusbar/notification/NotificationProvider$1;

.field public final mFoldImportanceObserver:Lcom/android/systemui/statusbar/notification/NotificationProvider$1;

.field public final mLogger:Lcom/android/systemui/log/KeyguardNotificationLogger;

.field public final mSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

.field public mUsageDb:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "content://statusbar.notification/foldImportance"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->URI_FOLD_IMPORTANCE:Landroid/net/Uri;

    .line 8
    const-string v0, "content://statusbar.notification/canShowFocus"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->URI_CAN_SHOW_FOCUS:Landroid/net/Uri;

    .line 16
    const-string v0, "content://com.miui.notification.notificationUsage"

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    new-instance v0, Landroid/content/UriMatcher;

    .line 23
    const/4 v1, -0x1

    .line 25
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 26
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 29
    const-string v1, "notifications"

    .line 31
    const/4 v2, 0x1

    .line 33
    const-string v3, "keyguard.notification"

    .line 34
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    const-string v1, "notifications/#"

    .line 39
    const/4 v2, 0x2

    .line 41
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    const-string v1, "app_corner"

    .line 45
    const/4 v2, 0x3

    .line 47
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    const-string v1, "notification_usage"

    .line 51
    const/4 v2, 0x4

    .line 53
    const-string v3, "com.miui.notification.notificationUsage"

    .line 54
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
    .line 59
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 13
    const-class v0, Lcom/android/systemui/log/KeyguardNotificationLogger;

    .line 15
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/log/KeyguardNotificationLogger;

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mLogger:Lcom/android/systemui/log/KeyguardNotificationLogger;

    .line 23
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationProvider$1;

    .line 25
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 27
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Landroid/os/Handler;

    .line 33
    const/4 v3, 0x0

    .line 35
    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationProvider$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationProvider;Landroid/os/Handler;I)V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mFoldImportanceObserver:Lcom/android/systemui/statusbar/notification/NotificationProvider$1;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationProvider$1;

    .line 41
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Landroid/os/Handler;

    .line 47
    const/4 v2, 0x1

    .line 49
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationProvider$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationProvider;Landroid/os/Handler;I)V

    .line 50
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mCanShowFocusObserver:Lcom/android/systemui/statusbar/notification/NotificationProvider$1;

    .line 53
    return-void
    .line 55
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    move-object/from16 v1, p3

    .line 4
    const-string v2, "getKeyguardNotificationSortedKeys"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    const-string/jumbo v1, "sortedKeys"

    .line 19
    const-class v2, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

    .line 22
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

    .line 28
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;->mSortedKeys:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 32
    return-object v0

    .line 35
    :cond_0
    const-string v2, "package"

    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 41
    const-string v3, "channel_id"

    .line 42
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 47
    const-string v4, "packageName"

    .line 48
    const-string v5, ""

    .line 50
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 55
    const-string v5, "NotificationProvider"

    .line 56
    const-string v6, "call method=%s extras=%s"

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 60
    move-result-object v7

    .line 63
    filled-new-array {v0, v7}, [Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 67
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object v6

    .line 71
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    move-object/from16 v5, p0

    .line 75
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v7

    .line 82
    new-instance v8, Landroid/os/Bundle;

    .line 83
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v9, "getNotificationSettings"

    .line 88
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v9

    .line 93
    const/4 v10, 0x0

    .line 94
    const/4 v11, 0x1

    .line 95
    if-eqz v9, :cond_1

    .line 96
    const-string v1, "canShowBadge"

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v9

    .line 103
    invoke-virtual {v6, v9, v2}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowBadge(Landroid/content/Context;Ljava/lang/String;)Z

    .line 104
    move-result v9

    .line 107
    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    const-string v1, "canShowFocus"

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v9

    .line 116
    invoke-static {v9, v2}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowFocus(Landroid/content/Context;Ljava/lang/String;)Z

    .line 117
    move-result v9

    .line 120
    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    const-string v1, "canShowFloat"

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v9

    .line 129
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    move-result v9

    .line 133
    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    const-string v1, "canShowOnKeyguard"

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 139
    move-result-object v9

    .line 142
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowOnKeyguard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    move-result v9

    .line 146
    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    const-string v1, "canSound"

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 152
    move-result-object v9

    .line 155
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    move-result v9

    .line 159
    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v1, "canVibrate"

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 165
    move-result-object v9

    .line 168
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canVibrate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    move-result v9

    .line 172
    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    const-string v1, "canLights"

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 178
    move-result-object v9

    .line 181
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canLights(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 182
    move-result v3

    .line 185
    invoke-virtual {v8, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    const-string v1, "canShowOngoing"

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 191
    move-result-object v3

    .line 194
    invoke-virtual {v6, v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowOngoing(Landroid/content/Context;Ljava/lang/String;)Z

    .line 195
    move-result v2

    .line 198
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    goto/16 :goto_4

    .line 202
    :cond_1
    const-string v9, "getFoldImportance"

    .line 204
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v9

    .line 209
    const/4 v12, 0x4

    .line 210
    if-eqz v9, :cond_3

    .line 211
    const-string v1, "foldImportance"

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 215
    move-result-object v3

    .line 218
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    const-string v6, "importance"

    .line 222
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    .line 224
    move-result-object v2

    .line 227
    const-string v6, "%s_%s"

    .line 228
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    move-result-object v2

    .line 233
    const-string v6, "app_notification"

    .line 234
    invoke-virtual {v3, v6, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 236
    move-result-object v3

    .line 239
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 240
    move-result v6

    .line 243
    if-eqz v6, :cond_2

    .line 244
    invoke-interface {v3, v2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 246
    move-result v2

    .line 249
    goto :goto_0

    .line 250
    :cond_2
    move v2, v10

    .line 251
    :goto_0
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    goto/16 :goto_4

    .line 255
    :cond_3
    const-string v9, "canShowFocus"

    .line 257
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    move-result v9

    .line 262
    if-eqz v9, :cond_4

    .line 263
    const-string v1, "canShowFocus"

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 267
    move-result-object v3

    .line 270
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowFocus(Landroid/content/Context;Ljava/lang/String;)Z

    .line 274
    move-result v2

    .line 277
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    goto/16 :goto_4

    .line 281
    :cond_4
    const-string v9, "canShowBadge"

    .line 283
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    move-result v9

    .line 288
    if-eqz v9, :cond_5

    .line 289
    const-string v1, "canShowBadge"

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 293
    move-result-object v3

    .line 296
    invoke-virtual {v6, v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowBadge(Landroid/content/Context;Ljava/lang/String;)Z

    .line 297
    move-result v2

    .line 300
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    goto/16 :goto_4

    .line 304
    :cond_5
    const-string v9, "canFloat"

    .line 306
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    move-result v9

    .line 311
    if-eqz v9, :cond_6

    .line 312
    const-string v1, "canShowFloat"

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 316
    move-result-object v9

    .line 319
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    move-result v2

    .line 323
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    goto/16 :goto_4

    .line 327
    :cond_6
    const-string v9, "canShowOnKeyguard"

    .line 329
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    move-result v9

    .line 334
    if-eqz v9, :cond_7

    .line 335
    const-string v1, "canShowOnKeyguard"

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 339
    move-result-object v9

    .line 342
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowOnKeyguard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 343
    move-result v2

    .line 346
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    goto/16 :goto_4

    .line 350
    :cond_7
    const-string v9, "canSound"

    .line 352
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    move-result v9

    .line 357
    if-eqz v9, :cond_8

    .line 358
    const-string v1, "canSound"

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 362
    move-result-object v9

    .line 365
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    move-result v2

    .line 369
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    goto/16 :goto_4

    .line 373
    :cond_8
    const-string v9, "canVibrate"

    .line 375
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    move-result v9

    .line 380
    if-eqz v9, :cond_9

    .line 381
    const-string v1, "canVibrate"

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 385
    move-result-object v9

    .line 388
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canVibrate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 389
    move-result v2

    .line 392
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    goto/16 :goto_4

    .line 396
    :cond_9
    const-string v9, "canLights"

    .line 398
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    move-result v9

    .line 403
    if-eqz v9, :cond_a

    .line 404
    const-string v1, "canLights"

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 408
    move-result-object v9

    .line 411
    invoke-virtual {v6, v9, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canLights(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 412
    move-result v2

    .line 415
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 416
    goto/16 :goto_4

    .line 419
    :cond_a
    const-string v9, "canShowOngoing"

    .line 421
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    move-result v9

    .line 426
    if-eqz v9, :cond_b

    .line 427
    const-string v1, "canShowOngoing"

    .line 429
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 431
    move-result-object v3

    .line 434
    invoke-virtual {v6, v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowOngoing(Landroid/content/Context;Ljava/lang/String;)Z

    .line 435
    move-result v2

    .line 438
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    goto/16 :goto_4

    .line 442
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 444
    move-result-object v9

    .line 447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 448
    move-result v13

    .line 451
    sget-object v14, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 452
    sget-boolean v14, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 454
    if-nez v14, :cond_d

    .line 456
    if-eqz v13, :cond_c

    .line 458
    const-string v14, "com.xiaomi.xmsf"

    .line 460
    invoke-static {v9, v14}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    .line 462
    move-result v9

    .line 465
    if-ne v13, v9, :cond_c

    .line 466
    goto :goto_1

    .line 468
    :cond_c
    move v9, v10

    .line 469
    goto :goto_2

    .line 470
    :cond_d
    :goto_1
    move v9, v11

    .line 471
    :goto_2
    if-nez v9, :cond_e

    .line 472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 474
    move-result v9

    .line 477
    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUidSystem(I)Z

    .line 478
    move-result v9

    .line 481
    if-eqz v9, :cond_1e

    .line 482
    :cond_e
    const-string/jumbo v9, "setFoldImportance"

    .line 484
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    move-result v9

    .line 490
    if-eqz v9, :cond_f

    .line 491
    const-string v3, "foldImportance"

    .line 493
    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 495
    move-result v1

    .line 498
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    const-string v3, "importance"

    .line 502
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 504
    move-result-object v2

    .line 507
    const-string v3, "%s_%s"

    .line 508
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 510
    move-result-object v2

    .line 513
    const-string v3, "app_notification"

    .line 514
    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 516
    move-result-object v3

    .line 519
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 520
    move-result-object v3

    .line 523
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 524
    move-result-object v1

    .line 527
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 528
    goto/16 :goto_4

    .line 531
    :cond_f
    const-string/jumbo v9, "setShowFocus"

    .line 533
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 536
    move-result v9

    .line 539
    if-eqz v9, :cond_10

    .line 540
    const-string v3, "canShowFocus"

    .line 542
    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 544
    move-result v1

    .line 547
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    invoke-static {v7, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->setShowFocus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 551
    goto/16 :goto_4

    .line 554
    :cond_10
    const-string/jumbo v9, "setShowBadge"

    .line 556
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    move-result v9

    .line 562
    if-eqz v9, :cond_12

    .line 563
    const-string v3, "canShowBadge"

    .line 565
    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 567
    move-result v1

    .line 570
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    const-string v3, "message"

    .line 574
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 576
    move-result-object v3

    .line 579
    const-string v9, "%s_%s"

    .line 580
    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 582
    move-result-object v3

    .line 585
    sget-boolean v9, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 586
    if-eqz v9, :cond_11

    .line 588
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 590
    move-result-object v9

    .line 593
    filled-new-array {v3, v9}, [Ljava/lang/Object;

    .line 594
    move-result-object v9

    .line 597
    const-string/jumbo v13, "setShowBadge key=%s enabled=%s"

    .line 598
    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 601
    move-result-object v9

    .line 604
    const-string v13, "NotifiSettingsManager"

    .line 605
    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_11
    const-string v9, "app_notification"

    .line 610
    invoke-virtual {v7, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 612
    move-result-object v9

    .line 615
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 616
    move-result-object v9

    .line 619
    invoke-interface {v9, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 620
    move-result-object v1

    .line 623
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 624
    new-instance v1, Landroid/content/Intent;

    .line 627
    const-string v3, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    .line 629
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    const-string v3, "com.miui.extra_update_request_first_time"

    .line 634
    invoke-virtual {v1, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    const-string v3, "changed_show_badge_pkg"

    .line 639
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mContext:Landroid/content/Context;

    .line 644
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    goto/16 :goto_4

    .line 649
    :cond_12
    const-string/jumbo v9, "setFloat"

    .line 651
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 654
    move-result v9

    .line 657
    if-eqz v9, :cond_15

    .line 658
    const-string v9, "canShowFloat"

    .line 660
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 662
    move-result v1

    .line 665
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$FilterHelperCompat;->getFloatKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 669
    move-result-object v2

    .line 672
    sget-boolean v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 673
    if-eqz v3, :cond_13

    .line 675
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 677
    move-result-object v3

    .line 680
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 681
    move-result-object v3

    .line 684
    const-string/jumbo v6, "setFloat key=%s enabled=%s"

    .line 685
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 688
    move-result-object v3

    .line 691
    const-string v6, "NotifiSettingsManager"

    .line 692
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_13
    if-eqz v1, :cond_14

    .line 697
    const/4 v1, 0x2

    .line 699
    goto :goto_3

    .line 700
    :cond_14
    move v1, v11

    .line 701
    :goto_3
    const-string v3, "app_notification"

    .line 702
    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 704
    move-result-object v3

    .line 707
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 708
    move-result-object v3

    .line 711
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 712
    move-result-object v1

    .line 715
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 716
    goto/16 :goto_4

    .line 719
    :cond_15
    const-string/jumbo v9, "setShowOnKeyguard"

    .line 721
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    move-result v9

    .line 727
    if-eqz v9, :cond_17

    .line 728
    const-string v9, "canShowOnKeyguard"

    .line 730
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 732
    move-result v1

    .line 735
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$FilterHelperCompat;->getKeyguardKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 739
    move-result-object v2

    .line 742
    sget-boolean v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 743
    if-eqz v3, :cond_16

    .line 745
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 747
    move-result-object v3

    .line 750
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 751
    move-result-object v3

    .line 754
    const-string/jumbo v6, "setShowOnKeyguard key=%s enabled=%s"

    .line 755
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 758
    move-result-object v3

    .line 761
    const-string v6, "NotifiSettingsManager"

    .line 762
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_16
    const-string v3, "app_notification"

    .line 767
    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 769
    move-result-object v3

    .line 772
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 773
    move-result-object v3

    .line 776
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 777
    move-result-object v1

    .line 780
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 781
    goto/16 :goto_4

    .line 784
    :cond_17
    const-string/jumbo v9, "setSound"

    .line 786
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    move-result v9

    .line 792
    if-eqz v9, :cond_19

    .line 793
    const-string v9, "canSound"

    .line 795
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 797
    move-result v1

    .line 800
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 801
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$FilterHelperCompat;->getSoundKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 804
    move-result-object v2

    .line 807
    sget-boolean v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 808
    if-eqz v3, :cond_18

    .line 810
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 812
    move-result-object v3

    .line 815
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 816
    move-result-object v3

    .line 819
    const-string/jumbo v6, "setSound key=%s enabled=%s"

    .line 820
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 823
    move-result-object v3

    .line 826
    const-string v6, "NotifiSettingsManager"

    .line 827
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_18
    const-string v3, "app_notification"

    .line 832
    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 834
    move-result-object v3

    .line 837
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 838
    move-result-object v3

    .line 841
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 842
    move-result-object v1

    .line 845
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 846
    goto/16 :goto_4

    .line 849
    :cond_19
    const-string/jumbo v9, "setVibrate"

    .line 851
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    move-result v9

    .line 857
    if-eqz v9, :cond_1b

    .line 858
    const-string v9, "canVibrate"

    .line 860
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 862
    move-result v1

    .line 865
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 866
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$FilterHelperCompat;->getVibrateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 869
    move-result-object v2

    .line 872
    sget-boolean v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 873
    if-eqz v3, :cond_1a

    .line 875
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 877
    move-result-object v3

    .line 880
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 881
    move-result-object v3

    .line 884
    const-string/jumbo v6, "setVibrate key=%s enabled=%s"

    .line 885
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 888
    move-result-object v3

    .line 891
    const-string v6, "NotifiSettingsManager"

    .line 892
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_1a
    const-string v3, "app_notification"

    .line 897
    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 899
    move-result-object v3

    .line 902
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 903
    move-result-object v3

    .line 906
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 907
    move-result-object v1

    .line 910
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 911
    goto :goto_4

    .line 914
    :cond_1b
    const-string/jumbo v9, "setLights"

    .line 915
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 918
    move-result v9

    .line 921
    if-eqz v9, :cond_1d

    .line 922
    const-string v9, "canLights"

    .line 924
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 926
    move-result v1

    .line 929
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$FilterHelperCompat;->getLightsKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 933
    move-result-object v2

    .line 936
    sget-boolean v3, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 937
    if-eqz v3, :cond_1c

    .line 939
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 941
    move-result-object v3

    .line 944
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 945
    move-result-object v3

    .line 948
    const-string/jumbo v6, "setLights key=%s enabled=%s"

    .line 949
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 952
    move-result-object v3

    .line 955
    const-string v6, "NotifiSettingsManager"

    .line 956
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1c
    const-string v3, "app_notification"

    .line 961
    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 963
    move-result-object v3

    .line 966
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 967
    move-result-object v3

    .line 970
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 971
    move-result-object v1

    .line 974
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 975
    goto :goto_4

    .line 978
    :cond_1d
    const-string/jumbo v3, "setShowOngoing"

    .line 979
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 982
    move-result v3

    .line 985
    if-eqz v3, :cond_1e

    .line 986
    const-string v3, "canShowOngoing"

    .line 988
    invoke-virtual {v1, v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 990
    move-result v1

    .line 993
    invoke-virtual {v6, v7, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->setShowOngoing(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 994
    :cond_1e
    :goto_4
    const-string/jumbo v1, "updateNotificationUsageInfo"

    .line 997
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1000
    move-result v1

    .line 1003
    if-eqz v1, :cond_2a

    .line 1004
    const-string v0, "clear_usage_data_time"

    .line 1006
    const-string v1, "notification_stat"

    .line 1008
    const-string v2, "clearDataIfNeeded, count: "

    .line 1010
    :try_start_0
    invoke-virtual {v7, v1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1012
    move-result-object v3

    .line 1015
    const-wide/16 v5, 0x0

    .line 1016
    invoke-interface {v3, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 1018
    move-result-wide v12

    .line 1021
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1022
    move-result-wide v14

    .line 1025
    sub-long v16, v14, v12

    .line 1026
    const-wide/32 v18, 0x240c8400

    .line 1028
    cmp-long v3, v16, v18

    .line 1031
    if-lez v3, :cond_21

    .line 1033
    cmp-long v3, v12, v5

    .line 1035
    if-lez v3, :cond_20

    .line 1037
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 1039
    move-result-object v3

    .line 1042
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->getUsageDao()Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 1043
    move-result-object v3

    .line 1046
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1047
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1049
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__preparedStmtOfClearTableData:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 1052
    invoke-virtual {v3}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 1054
    move-result-object v6

    .line 1057
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 1058
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 1061
    iget-object v9, v5, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1064
    invoke-interface {v9}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1066
    move-result-object v9

    .line 1069
    iget-object v11, v5, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    .line 1070
    invoke-virtual {v11, v9}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 1072
    invoke-interface {v9}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    .line 1075
    move-result v11

    .line 1078
    if-eqz v11, :cond_1f

    .line 1079
    invoke-interface {v9}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1081
    goto :goto_5

    .line 1084
    :cond_1f
    invoke-interface {v9}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :goto_5
    :try_start_1
    invoke-interface {v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 1088
    move-result v9

    .line 1091
    iget-object v11, v5, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1092
    invoke-interface {v11}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1094
    move-result-object v11

    .line 1097
    invoke-interface {v11}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1098
    :try_start_2
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1101
    invoke-virtual {v3, v6}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1104
    const-string v3, "NotificationUsageInfoManager"

    .line 1107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1109
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1114
    const-string v2, ", currentTime: "

    .line 1117
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1122
    const-string v2, ", latest: "

    .line 1125
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    move-result-object v2

    .line 1136
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    goto :goto_6

    .line 1140
    :catchall_0
    move-exception v0

    .line 1141
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1142
    invoke-virtual {v3, v6}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1145
    throw v0

    .line 1148
    :cond_20
    :goto_6
    invoke-virtual {v7, v1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1149
    move-result-object v1

    .line 1152
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1153
    move-result-object v1

    .line 1156
    invoke-interface {v1, v0, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1157
    move-result-object v0

    .line 1160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1161
    goto :goto_7

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1166
    :cond_21
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1169
    move-result-wide v0

    .line 1172
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 1173
    move-result-object v2

    .line 1176
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->getUsageDao()Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 1177
    move-result-object v2

    .line 1180
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    const-string/jumbo v3, "select * from  notification_usage  where pkgName = ?"

    .line 1184
    sget-object v6, Landroidx/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    .line 1187
    monitor-enter v6

    .line 1189
    const/4 v5, 0x1

    .line 1190
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1191
    move-result-object v7

    .line 1194
    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 1195
    move-result-object v5

    .line 1198
    if-eqz v5, :cond_22

    .line 1199
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1201
    move-result-object v7

    .line 1204
    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1208
    move-result-object v5

    .line 1211
    check-cast v5, Landroidx/room/RoomSQLiteQuery;

    .line 1212
    iput-object v3, v5, Landroidx/room/RoomSQLiteQuery;->mQuery:Ljava/lang/String;

    .line 1214
    const/4 v3, 0x1

    .line 1216
    iput v3, v5, Landroidx/room/RoomSQLiteQuery;->mArgCount:I

    .line 1217
    monitor-exit v6

    .line 1219
    const/4 v3, 0x1

    .line 1220
    goto :goto_8

    .line 1221
    :cond_22
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 1222
    new-instance v5, Landroidx/room/RoomSQLiteQuery;

    .line 1223
    invoke-direct {v5}, Landroidx/room/RoomSQLiteQuery;-><init>()V

    .line 1225
    iput-object v3, v5, Landroidx/room/RoomSQLiteQuery;->mQuery:Ljava/lang/String;

    .line 1228
    const/4 v3, 0x1

    .line 1230
    iput v3, v5, Landroidx/room/RoomSQLiteQuery;->mArgCount:I

    .line 1231
    :goto_8
    invoke-virtual {v5, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1233
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1236
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1238
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1241
    invoke-virtual {v3, v5}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    .line 1243
    move-result-object v3

    .line 1246
    :try_start_4
    const-string v6, "id"

    .line 1247
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 1249
    move-result v6

    .line 1252
    const-string v7, "pkgName"

    .line 1253
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 1255
    move-result v7

    .line 1258
    const-string v9, "latestSentTime"

    .line 1259
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 1261
    move-result v9

    .line 1264
    const-string/jumbo v10, "sentCount"

    .line 1265
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 1268
    move-result v10

    .line 1271
    const-string v11, "avgSentDaily"

    .line 1272
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 1274
    move-result v11

    .line 1277
    const-string v12, "avgSentWeekly"

    .line 1278
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 1280
    move-result v12

    .line 1283
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1284
    move-result v13

    .line 1287
    const/4 v14, 0x0

    .line 1288
    if-eqz v13, :cond_24

    .line 1289
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 1291
    move-result v13

    .line 1294
    if-eqz v13, :cond_23

    .line 1295
    goto :goto_9

    .line 1297
    :cond_23
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1298
    move-result-object v14

    .line 1301
    :goto_9
    move-object v13, v8

    .line 1302
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 1303
    move-result-wide v7

    .line 1306
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 1307
    move-result v9

    .line 1310
    new-instance v10, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;

    .line 1311
    invoke-direct {v10, v14, v9, v7, v8}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;-><init>(Ljava/lang/String;IJ)V

    .line 1313
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 1316
    move-result v6

    .line 1319
    iput v6, v10, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->id:I

    .line 1320
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 1322
    move-result v6

    .line 1325
    iput v6, v10, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentDaily:I

    .line 1326
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 1328
    move-result v6

    .line 1331
    iput v6, v10, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentWeekly:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1332
    move-object v14, v10

    .line 1334
    goto :goto_a

    .line 1335
    :cond_24
    move-object v13, v8

    .line 1336
    :goto_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1337
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1340
    const/4 v3, 0x7

    .line 1343
    if-nez v14, :cond_27

    .line 1344
    new-instance v5, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;

    .line 1346
    const/4 v6, 0x1

    .line 1348
    invoke-direct {v5, v4, v6, v0, v1}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;-><init>(Ljava/lang/String;IJ)V

    .line 1349
    iget v0, v5, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->sentCount:I

    .line 1352
    if-ge v0, v3, :cond_25

    .line 1354
    iput v0, v5, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentWeekly:I

    .line 1356
    goto :goto_b

    .line 1358
    :cond_25
    int-to-float v0, v0

    .line 1359
    int-to-float v1, v3

    .line 1360
    div-float/2addr v0, v1

    .line 1361
    float-to-int v0, v0

    .line 1362
    iput v0, v5, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentDaily:I

    .line 1363
    :goto_b
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1365
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1367
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 1370
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 1373
    iget-object v0, v1, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1376
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1378
    move-result-object v0

    .line 1381
    iget-object v3, v1, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    .line 1382
    invoke-virtual {v3, v0}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 1384
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    .line 1387
    move-result v3

    .line 1390
    if-eqz v3, :cond_26

    .line 1391
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1393
    goto :goto_c

    .line 1396
    :cond_26
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 1397
    :goto_c
    :try_start_5
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__insertionAdapterOfNotificationUsageInfo:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 1400
    invoke-virtual {v2}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 1402
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1405
    :try_start_6
    iget v0, v2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;->$r8$classId:I

    .line 1406
    packed-switch v0, :pswitch_data_0

    .line 1408
    goto :goto_d

    .line 1411
    :pswitch_0
    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;)V

    .line 1412
    goto :goto_e

    .line 1415
    :goto_d
    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;)V

    .line 1416
    :goto_e
    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1419
    :try_start_7
    invoke-virtual {v2, v3}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1422
    iget-object v0, v1, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1425
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1427
    move-result-object v0

    .line 1430
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1431
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1434
    goto/16 :goto_15

    .line 1437
    :catchall_1
    move-exception v0

    .line 1439
    :try_start_8
    invoke-virtual {v2, v3}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1440
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1443
    :catchall_2
    move-exception v0

    .line 1444
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1445
    throw v0

    .line 1448
    :cond_27
    iget v4, v14, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->sentCount:I

    .line 1449
    const/4 v5, 0x1

    .line 1451
    add-int/2addr v4, v5

    .line 1452
    iput v4, v14, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->sentCount:I

    .line 1453
    if-ge v4, v3, :cond_28

    .line 1455
    iput v4, v14, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentWeekly:I

    .line 1457
    goto :goto_f

    .line 1459
    :cond_28
    int-to-float v4, v4

    .line 1460
    int-to-float v3, v3

    .line 1461
    div-float/2addr v4, v3

    .line 1462
    float-to-int v3, v4

    .line 1463
    iput v3, v14, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentDaily:I

    .line 1464
    :goto_f
    iput-wide v0, v14, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->latestSentTime:J

    .line 1466
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1468
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1470
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 1473
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 1476
    iget-object v0, v1, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1479
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1481
    move-result-object v0

    .line 1484
    iget-object v3, v1, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    .line 1485
    invoke-virtual {v3, v0}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 1487
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    .line 1490
    move-result v3

    .line 1493
    if-eqz v3, :cond_29

    .line 1494
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1496
    goto :goto_10

    .line 1499
    :cond_29
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 1500
    :goto_10
    :try_start_9
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__updateAdapterOfNotificationUsageInfo:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 1503
    invoke-virtual {v2}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 1505
    move-result-object v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1508
    :try_start_a
    iget v0, v2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;->$r8$classId:I

    .line 1509
    packed-switch v0, :pswitch_data_1

    .line 1511
    goto :goto_11

    .line 1514
    :pswitch_1
    invoke-virtual {v2, v3, v14}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;)V

    .line 1515
    goto :goto_12

    .line 1518
    :goto_11
    invoke-virtual {v2, v3, v14}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;)V

    .line 1519
    :goto_12
    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1522
    :try_start_b
    invoke-virtual {v2, v3}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1525
    iget-object v0, v1, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1528
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1530
    move-result-object v0

    .line 1533
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1534
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1537
    goto/16 :goto_15

    .line 1540
    :catchall_3
    move-exception v0

    .line 1542
    :try_start_c
    invoke-virtual {v2, v3}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1543
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1546
    :catchall_4
    move-exception v0

    .line 1547
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1548
    throw v0

    .line 1551
    :catchall_5
    move-exception v0

    .line 1552
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1553
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1556
    throw v0

    .line 1559
    :catchall_6
    move-exception v0

    .line 1560
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1561
    throw v0

    .line 1562
    :cond_2a
    move-object v13, v8

    .line 1563
    const-string v1, "clearPkgUsageInfoWhenRemoved"

    .line 1564
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1566
    move-result v0

    .line 1569
    if-eqz v0, :cond_2d

    .line 1570
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 1572
    move-result-object v0

    .line 1575
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 1576
    move-result-object v0

    .line 1579
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->getUsageDao()Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;

    .line 1580
    move-result-object v0

    .line 1583
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1584
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1586
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__preparedStmtOfDeleteUsageInfo:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 1589
    invoke-virtual {v2}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 1591
    move-result-object v3

    .line 1594
    if-nez v4, :cond_2b

    .line 1595
    const/4 v5, 0x1

    .line 1597
    invoke-interface {v3, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 1598
    goto :goto_13

    .line 1601
    :cond_2b
    const/4 v5, 0x1

    .line 1602
    invoke-interface {v3, v5, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 1603
    :goto_13
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 1606
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 1609
    iget-object v0, v1, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1612
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1614
    move-result-object v0

    .line 1617
    iget-object v4, v1, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    .line 1618
    invoke-virtual {v4, v0}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 1620
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    .line 1623
    move-result v4

    .line 1626
    if-eqz v4, :cond_2c

    .line 1627
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1629
    goto :goto_14

    .line 1632
    :cond_2c
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 1633
    :goto_14
    :try_start_e
    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 1636
    iget-object v0, v1, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1639
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1641
    move-result-object v0

    .line 1644
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 1645
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1648
    invoke-virtual {v2, v3}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1651
    goto :goto_15

    .line 1654
    :catchall_7
    move-exception v0

    .line 1655
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 1656
    invoke-virtual {v2, v3}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1659
    throw v0

    .line 1662
    :cond_2d
    :goto_15
    return-object v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->getDbInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 14
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 16
    move-result p1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    if-nez p2, :cond_2

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mLogger:Lcom/android/systemui/log/KeyguardNotificationLogger;

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/log/KeyguardNotificationLogger;->clear()V

    .line 28
    goto :goto_0

    .line 31
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mLogger:Lcom/android/systemui/log/KeyguardNotificationLogger;

    .line 32
    const-string p1, "="

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    aget-object p1, p1, v2

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/KeyguardNotificationLogger;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :goto_0
    const-string p0, "notifications"

    .line 49
    invoke-virtual {v0, p0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    move-result v1

    .line 54
    :goto_1
    return v1
    .line 55
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->getDbInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    return-object v1

    .line 13
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 14
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    const-wide/16 v0, -0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mLogger:Lcom/android/systemui/log/KeyguardNotificationLogger;

    .line 26
    const-string v2, "key"

    .line 28
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v2

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/systemui/log/KeyguardNotificationLogger;->add(I)V

    .line 38
    const-string p0, "notifications"

    .line 41
    invoke-virtual {v0, p0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 43
    move-result-wide v0

    .line 46
    :goto_0
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 47
    move-result-object p0

    .line 50
    return-object p0
    .line 51
.end method

.method public final onCreate()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/MiuiVendorServices;->initForDependency()V

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationProvider;->URI_FOLD_IMPORTANCE:Landroid/net/Uri;

    .line 13
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mFoldImportanceObserver:Lcom/android/systemui/statusbar/notification/NotificationProvider$1;

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 18
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object v0

    .line 28
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationProvider;->URI_CAN_SHOW_FOCUS:Landroid/net/Uri;

    .line 29
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mCanShowFocusObserver:Lcom/android/systemui/statusbar/notification/NotificationProvider$1;

    .line 31
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 40
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mUsageDb:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 44
    const/4 p0, 0x1

    .line 46
    return p0
    .line 47
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->getDbInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    return-object v0

    .line 13
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 14
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_b

    .line 21
    const/4 v4, 0x2

    .line 23
    if-eq v2, v4, :cond_9

    .line 24
    const/4 v1, 0x3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eq v2, v1, :cond_6

    .line 28
    const/4 v1, 0x4

    .line 30
    if-eq v2, v1, :cond_1

    .line 31
    goto/16 :goto_6

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mUsageDb:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 35
    iget-object v1, v1, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 37
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 39
    move-result-object v1

    .line 42
    new-instance v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;

    .line 43
    invoke-direct {v2}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;-><init>()V

    .line 45
    iput-object p2, v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->columns:[Ljava/lang/String;

    .line 48
    iput-object p3, v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->selection:Ljava/lang/String;

    .line 50
    iput-object p4, v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->bindArgs:[Ljava/lang/Object;

    .line 52
    iput-object p5, v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->orderBy:Ljava/lang/String;

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    const/16 p3, 0x78

    .line 58
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    const-string p3, "SELECT "

    .line 63
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object p3, v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->columns:[Ljava/lang/String;

    .line 68
    if-eqz p3, :cond_2

    .line 70
    array-length p4, p3

    .line 72
    if-nez p4, :cond_2

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    move v3, v4

    .line 76
    :goto_0
    if-nez v3, :cond_5

    .line 77
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    array-length p4, p3

    .line 82
    :goto_1
    if-ge v4, p4, :cond_4

    .line 83
    aget-object p5, p3, v4

    .line 85
    if-lez v4, :cond_3

    .line 87
    const-string v3, ", "

    .line 89
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_3
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 97
    goto :goto_1

    .line 99
    :cond_4
    const/16 p3, 0x20

    .line 100
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    goto :goto_2

    .line 105
    :cond_5
    const-string p3, "* "

    .line 106
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_2
    const-string p3, "FROM "

    .line 111
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object p3, v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->table:Ljava/lang/String;

    .line 116
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string p3, " WHERE "

    .line 121
    iget-object p4, v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->selection:Ljava/lang/String;

    .line 123
    invoke-static {p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string p3, " GROUP BY "

    .line 128
    invoke-static {p2, p3, v0}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string p3, " HAVING "

    .line 133
    invoke-static {p2, p3, v0}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string p3, " ORDER BY "

    .line 138
    iget-object p4, v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->orderBy:Ljava/lang/String;

    .line 140
    invoke-static {p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string p3, " LIMIT "

    .line 145
    invoke-static {p2, p3, v0}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p2

    .line 153
    new-instance p3, Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 154
    iget-object p4, v2, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->bindArgs:[Ljava/lang/Object;

    .line 156
    invoke-direct {p3, p2, p4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-interface {v1, p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    .line 161
    move-result-object p2

    .line 164
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 165
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 169
    move-result-object p0

    .line 172
    invoke-interface {p2, p0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 173
    return-object p2

    .line 176
    :cond_6
    if-eqz p2, :cond_8

    .line 177
    array-length p3, p2

    .line 179
    if-ge p3, v3, :cond_7

    .line 180
    goto :goto_4

    .line 182
    :cond_7
    new-instance v0, Landroid/database/MatrixCursor;

    .line 183
    const-string/jumbo p3, "show_corner"

    .line 185
    filled-new-array {p3}, [Ljava/lang/String;

    .line 188
    move-result-object p3

    .line 191
    invoke-direct {v0, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 192
    :goto_3
    array-length p3, p2

    .line 195
    if-ge v4, p3, :cond_c

    .line 196
    aget-object p3, p2, v4

    .line 198
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->canShowBadge(Ljava/lang/String;)Z

    .line 200
    move-result p3

    .line 203
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 204
    move-result-object p3

    .line 207
    filled-new-array {p3}, [Ljava/lang/String;

    .line 208
    move-result-object p3

    .line 211
    invoke-virtual {v0, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 212
    add-int/lit8 v4, v4, 0x1

    .line 215
    goto :goto_3

    .line 217
    :cond_8
    :goto_4
    return-object v0

    .line 218
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 219
    move-result-object v0

    .line 222
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v0

    .line 226
    check-cast v0, Ljava/lang/String;

    .line 227
    const-string v2, "notifications"

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    const-string v4, "_id="

    .line 233
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 241
    move-result v0

    .line 244
    if-nez v0, :cond_a

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    const-string v4, " AND ("

    .line 249
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const/16 p3, 0x29

    .line 257
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object p3

    .line 265
    goto :goto_5

    .line 266
    :cond_a
    const-string p3, ""

    .line 267
    :goto_5
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v4

    .line 275
    const/4 v6, 0x0

    .line 276
    const/4 v7, 0x0

    .line 277
    move-object v3, p2

    .line 278
    move-object v5, p4

    .line 279
    move-object v8, p5

    .line 280
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 281
    move-result-object v0

    .line 284
    goto :goto_6

    .line 285
    :cond_b
    const-string v2, "notifications"

    .line 286
    const/4 v6, 0x0

    .line 288
    const/4 v7, 0x0

    .line 289
    move-object v3, p2

    .line 290
    move-object v4, p3

    .line 291
    move-object v5, p4

    .line 292
    move-object v8, p5

    .line 293
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 294
    move-result-object v0

    .line 297
    if-eqz v0, :cond_c

    .line 298
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mLogger:Lcom/android/systemui/log/KeyguardNotificationLogger;

    .line 300
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 302
    move-result p3

    .line 305
    invoke-virtual {p2, p3}, Lcom/android/systemui/log/KeyguardNotificationLogger;->query(I)V

    .line 306
    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    .line 309
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 311
    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 315
    move-result-object p0

    .line 318
    invoke-interface {v0, p0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 319
    :cond_d
    return-object v0
    .line 322
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->getDbInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 14
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 16
    move-result p1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->mLogger:Lcom/android/systemui/log/KeyguardNotificationLogger;

    .line 24
    const-string p1, "key"

    .line 26
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/KeyguardNotificationLogger;->update(I)V

    .line 36
    const-string p0, "notifications"

    .line 39
    invoke-virtual {v0, p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    move-result v1

    .line 44
    :goto_0
    return v1
    .line 45
.end method
