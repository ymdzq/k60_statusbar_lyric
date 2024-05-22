.class public final Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final NOTIFICATION_USAGE_URI:Landroid/net/Uri;


# instance fields
.field public final mCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public mCtxForUser:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.miui.notification.notificationUsage/notification_usage"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;->NOTIFICATION_USAGE_URI:Landroid/net/Uri;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$1;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;->mCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;->mHandler:Landroid/os/Handler;

    .line 12
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 14
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;->mCtxForUser:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 26
    new-instance p1, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$2;

    .line 29
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$2;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;)V

    .line 31
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 34
    return-void
    .line 37
.end method


# virtual methods
.method public final start(Landroid/content/Context;)V
    .locals 17

    .line 1
    const-string v0, "disableComponent com.android.settings.Settings$NotificationAppListActivity"

    .line 2
    const-string v1, "NcSystem"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Landroid/content/ComponentName;

    .line 9
    const-string v1, "com.android.settings"

    .line 11
    const-string v2, "com.android.settings.Settings$NotificationAppListActivity"

    .line 13
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x2

    .line 23
    :try_start_0
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    move-object v1, v0

    .line 29
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "pkgName"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$3;

    .line 48
    move-object/from16 v4, p0

    .line 50
    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$3;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;)V

    .line 52
    move-object/from16 v4, p1

    .line 55
    invoke-virtual {v4, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    const-string v1, "persist.sys.notification_ver"

    .line 60
    const-string v0, ""

    .line 62
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 67
    const-string v5, "2"

    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v4

    .line 73
    xor-int/2addr v4, v2

    .line 74
    const/4 v6, 0x0

    .line 75
    const-string v7, "bucket="

    .line 76
    const/4 v8, 0x3

    .line 78
    const-string v9, "FoldBucketHelper"

    .line 79
    const-string v10, "persist.sys.notification_rank"

    .line 81
    if-eqz v4, :cond_4

    .line 83
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 85
    if-eqz v4, :cond_0

    .line 87
    move v11, v6

    .line 89
    goto :goto_3

    .line 90
    :cond_0
    new-instance v4, Ljava/util/Random;

    .line 91
    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 93
    const/16 v11, 0x64

    .line 96
    invoke-virtual {v4, v11}, Ljava/util/Random;->nextInt(I)I

    .line 98
    move-result v4

    .line 101
    const/16 v11, 0x5a

    .line 102
    if-ge v4, v11, :cond_1

    .line 104
    move v11, v8

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move v11, v2

    .line 108
    :goto_1
    :try_start_1
    invoke-static {v10, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    move-result v0

    .line 116
    if-eq v0, v8, :cond_2

    .line 117
    if-ne v0, v2, :cond_3

    .line 119
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v13, ",old ="

    .line 129
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v12

    .line 140
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    move v11, v0

    .line 144
    goto :goto_2

    .line 145
    :catch_1
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 147
    :cond_3
    :goto_2
    const-string v0, "fold percent="

    .line 150
    const-string v12, ",sRandomFoldType="

    .line 152
    invoke-static {v0, v4, v12, v11, v9}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 154
    :goto_3
    sput v11, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I

    .line 157
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 162
    invoke-static {v10, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    goto :goto_4

    .line 169
    :cond_4
    :try_start_2
    invoke-static {v10, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 174
    move-result v0

    .line 177
    sput v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 178
    goto :goto_4

    .line 180
    :catch_2
    sput v6, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I

    .line 181
    :goto_4
    sget v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I

    .line 183
    const/4 v1, 0x6

    .line 185
    if-ltz v0, :cond_5

    .line 186
    if-gt v0, v1, :cond_5

    .line 188
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 190
    if-eqz v0, :cond_6

    .line 192
    sget v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I

    .line 194
    if-eqz v0, :cond_6

    .line 196
    :cond_5
    sput v6, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I

    .line 198
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 200
    move-result-object v0

    .line 203
    invoke-static {v10, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_6
    sget v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I

    .line 207
    const/4 v4, 0x5

    .line 209
    const/4 v5, 0x4

    .line 210
    if-eq v0, v5, :cond_7

    .line 211
    if-eq v0, v4, :cond_7

    .line 213
    if-ne v0, v1, :cond_8

    .line 215
    :cond_7
    sput v8, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I

    .line 217
    :cond_8
    sget-object v0, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 221
    move-result-object v0

    .line 224
    const-string/jumbo v10, "user_fold"

    .line 225
    invoke-static {v0, v10, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 228
    move-result v11

    .line 231
    const-string/jumbo v12, "user_aggregate"

    .line 232
    invoke-static {v0, v12, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 235
    move-result v6

    .line 238
    sget v13, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I

    .line 239
    const/4 v14, -0x3

    .line 241
    const/4 v15, -0x1

    .line 242
    if-eq v13, v2, :cond_10

    .line 243
    if-eq v13, v8, :cond_c

    .line 245
    if-eq v13, v5, :cond_9

    .line 247
    if-eq v13, v4, :cond_9

    .line 249
    if-eq v13, v1, :cond_9

    .line 251
    move v3, v14

    .line 253
    goto :goto_8

    .line 254
    :cond_9
    if-eq v6, v15, :cond_b

    .line 255
    if-eq v6, v2, :cond_b

    .line 257
    if-ne v6, v3, :cond_a

    .line 259
    goto :goto_5

    .line 261
    :cond_a
    const/4 v2, 0x0

    .line 262
    :cond_b
    :goto_5
    if-eqz v2, :cond_14

    .line 263
    move v3, v6

    .line 265
    goto :goto_8

    .line 266
    :cond_c
    if-eq v11, v15, :cond_e

    .line 267
    if-eq v11, v2, :cond_e

    .line 269
    if-ne v11, v3, :cond_d

    .line 271
    goto :goto_6

    .line 273
    :cond_d
    const/4 v2, 0x0

    .line 274
    :cond_e
    :goto_6
    if-eqz v2, :cond_f

    .line 275
    move v3, v11

    .line 277
    :cond_f
    move/from16 v16, v14

    .line 278
    move v14, v3

    .line 280
    move/from16 v3, v16

    .line 281
    goto :goto_8

    .line 283
    :cond_10
    const/4 v1, -0x2

    .line 284
    if-eq v11, v15, :cond_12

    .line 285
    if-eq v11, v2, :cond_12

    .line 287
    if-ne v11, v1, :cond_11

    .line 289
    goto :goto_7

    .line 291
    :cond_11
    const/4 v2, 0x0

    .line 292
    :cond_12
    :goto_7
    if-eqz v2, :cond_13

    .line 293
    move v1, v11

    .line 295
    :cond_13
    move v3, v14

    .line 296
    move v14, v1

    .line 297
    :cond_14
    :goto_8
    if-eq v14, v11, :cond_15

    .line 298
    invoke-static {v0, v10, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    :cond_15
    if-eq v3, v6, :cond_16

    .line 303
    invoke-static {v0, v12, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    sget v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldSettingHelper;->sFoldBucket:I

    .line 313
    const-string v2, ",fold="

    .line 315
    const-string v4, ", aggregate="

    .line 317
    invoke-static {v0, v1, v2, v14, v4}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 319
    invoke-static {v0, v3, v9}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 322
    return-void
    .line 325
.end method
