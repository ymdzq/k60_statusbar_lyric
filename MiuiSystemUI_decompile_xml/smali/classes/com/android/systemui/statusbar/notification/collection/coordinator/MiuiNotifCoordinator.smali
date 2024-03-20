.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$collectionListener$1;

.field public final context:Landroid/content/Context;

.field public final groupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public final handler:Landroid/os/Handler;

.field public final hideDeletedFocusController:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;

.field public final keyguardNotifController:Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

.field public mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final miuiComparators:Ljava/util/List;

.field public final miuiFinalizeFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;

.field public final miuiNotifFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final notifLiveData:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

.field public final notifPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$notifPromoter$1;

.field public final notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field public final settingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

.field public final superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

.field public final visibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/NotificationListener;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/miui/systemui/controller/SuperSaveModeController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->settingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->visibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->handler:Landroid/os/Handler;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->keyguardNotifController:Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->notifLiveData:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->groupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 21
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 23
    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->hideDeletedFocusController:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;

    .line 25
    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationRankingManagerExKt;->miuiRankingComparator:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationRankingManagerExKt$miuiRankingComparator$1;

    .line 27
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->miuiComparators:Ljava/util/List;

    .line 33
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;

    .line 35
    const/4 p2, 0x0

    .line 37
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;I)V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->miuiNotifFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;

    .line 41
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;

    .line 43
    const/4 p2, 0x1

    .line 45
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;I)V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->miuiFinalizeFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;

    .line 49
    invoke-virtual {p11, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 51
    instance-of p1, p5, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;

    .line 54
    if-eqz p1, :cond_0

    .line 56
    check-cast p5, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    const/4 p5, 0x0

    .line 61
    :goto_0
    if-eqz p5, :cond_1

    .line 62
    iput-object p12, p5, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->mHideDeletedFocusController:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;

    .line 64
    :cond_1
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$collectionListener$1;

    .line 66
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$collectionListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;)V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$collectionListener$1;

    .line 71
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$notifPromoter$1;

    .line 73
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$notifPromoter$1;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->notifPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$notifPromoter$1;

    .line 78
    return-void
    .line 80
.end method

.method public static final access$filterOut(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;Landroid/service/notification/StatusBarNotification;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->hideDeletedFocusController:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 7
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 11
    move-result v1

    .line 14
    const-string v2, "MiuiNotifCoordinator"

    .line 15
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;->mDeletedNotifs:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController$mDeletedNotifs$1;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController$mDeletedNotifs$1;->containsKey(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 33
    move-result-object v1

    .line 36
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 37
    const-string v5, "miui.focus.reopen"

    .line 39
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 41
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 47
    move-result-object v1

    .line 50
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 51
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    const-string v6, "filter out extraReopen="

    .line 59
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 70
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string/jumbo v5, "reopen"

    .line 74
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    move-result v5

    .line 80
    if-eqz v5, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController$mDeletedNotifs$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    goto :goto_0

    .line 90
    :cond_0
    const-string v0, "close"

    .line 91
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 93
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    move v0, v4

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    move v0, v3

    .line 101
    :goto_1
    if-eqz v0, :cond_2

    .line 102
    goto/16 :goto_9

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 109
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getTargetPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 113
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 114
    move-result-object v5

    .line 117
    invoke-virtual {v5}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    move-result v6

    .line 125
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->context:Landroid/content/Context;

    .line 126
    if-nez v6, :cond_3

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    move-result v6

    .line 133
    if-nez v6, :cond_3

    .line 134
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    move-result v6

    .line 139
    if-nez v6, :cond_3

    .line 140
    const-string v6, "com.xiaomi.xmsf"

    .line 142
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 144
    move-result v6

    .line 147
    if-nez v6, :cond_3

    .line 148
    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->isNotificationsBanned(Landroid/content/Context;Ljava/lang/String;)Z

    .line 150
    move-result v1

    .line 153
    if-eqz v1, :cond_3

    .line 154
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 159
    const-string p1, "filter Notification banned substitute key= "

    .line 160
    invoke-static {p1, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 165
    new-array p1, v3, [Ljava/lang/Object;

    .line 166
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 168
    move-result-object p1

    .line 171
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    move-result-object p0

    .line 175
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    goto/16 :goto_9

    .line 179
    :cond_3
    sget-boolean v1, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 181
    const-string v6, "android"

    .line 183
    if-eqz v1, :cond_6

    .line 185
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 187
    move-result-object v8

    .line 190
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v9

    .line 194
    if-nez v9, :cond_5

    .line 195
    const-string v9, "com.android.systemui"

    .line 197
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result v8

    .line 202
    if-eqz v8, :cond_4

    .line 203
    goto :goto_2

    .line 205
    :cond_4
    move v8, v3

    .line 206
    goto :goto_3

    .line 207
    :cond_5
    :goto_2
    move v8, v4

    .line 208
    :goto_3
    if-eqz v8, :cond_6

    .line 209
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 211
    move-result-object v8

    .line 214
    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 215
    const-string v9, "miui_unimportant"

    .line 217
    invoke-virtual {v8, v9, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 219
    move-result v8

    .line 222
    if-nez v8, :cond_6

    .line 223
    goto/16 :goto_9

    .line 225
    :cond_6
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 227
    move-result-object v8

    .line 230
    iget v8, v8, Landroid/app/Notification;->flags:I

    .line 231
    and-int/lit8 v8, v8, 0x40

    .line 233
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->settingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 235
    const-string v10, ":"

    .line 237
    if-eqz v8, :cond_a

    .line 239
    iget-object v8, v9, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mHideForegroundWhitelist:Ljava/util/List;

    .line 241
    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 243
    move-result v11

    .line 246
    if-nez v11, :cond_8

    .line 247
    new-instance v11, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object v11

    .line 266
    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 267
    move-result v8

    .line 270
    if-nez v8, :cond_8

    .line 271
    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    .line 273
    move-result-object v8

    .line 276
    invoke-interface {v8, v0}, Lmiui/enterprise/IApplicationHelper;->isHideForegroundNotification(Ljava/lang/String;)Z

    .line 277
    move-result v8

    .line 280
    if-eqz v8, :cond_7

    .line 281
    goto :goto_4

    .line 283
    :cond_7
    move v8, v3

    .line 284
    goto :goto_5

    .line 285
    :cond_8
    :goto_4
    move v8, v4

    .line 286
    :goto_5
    if-eqz v8, :cond_a

    .line 287
    if-eqz v1, :cond_9

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    const-string v6, "filter out foreground "

    .line 293
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 310
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 316
    move-result-object v0

    .line 319
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/NotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 320
    goto/16 :goto_9

    .line 323
    :cond_a
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 325
    move-result-object p0

    .line 328
    iget p0, p0, Landroid/app/Notification;->flags:I

    .line 329
    const/4 v8, 0x2

    .line 331
    and-int/2addr p0, v8

    .line 332
    if-eqz p0, :cond_d

    .line 333
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 335
    move-result p0

    .line 338
    if-nez p0, :cond_d

    .line 339
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 341
    move-result-object p0

    .line 344
    invoke-static {v6, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 345
    move-result p0

    .line 348
    if-eqz p0, :cond_d

    .line 349
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 351
    move-result-object p0

    .line 354
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 358
    move-result v6

    .line 361
    if-eqz v6, :cond_b

    .line 362
    goto :goto_6

    .line 364
    :cond_b
    const-string v6, "com.android.server.wm.AlertWindowNotification - "

    .line 365
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 367
    move-result v6

    .line 370
    if-nez v6, :cond_c

    .line 371
    :goto_6
    move p0, v3

    .line 373
    goto :goto_7

    .line 374
    :cond_c
    const-string v6, " - "

    .line 375
    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 377
    move-result-object p0

    .line 380
    aget-object p0, p0, v4

    .line 381
    iget-object v6, v9, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mHideAlertWindowWhitelist:Ljava/util/List;

    .line 383
    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 385
    move-result p0

    .line 388
    :goto_7
    if-eqz p0, :cond_d

    .line 389
    if-eqz v1, :cond_10

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    .line 393
    const-string p1, "filter out alert window "

    .line 395
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    move-result-object p0

    .line 412
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    goto/16 :goto_9

    .line 416
    :cond_d
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerInjectorKt;->isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    .line 418
    move-result p0

    .line 421
    if-eqz p0, :cond_e

    .line 422
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 424
    move-result-object p0

    .line 427
    sget-boolean v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->DEBUG:Z

    .line 428
    sget-boolean v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 430
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 432
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mDisableAutoGroupSummaryPackages:Ljava/util/List;

    .line 434
    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 436
    move-result p0

    .line 439
    if-eqz p0, :cond_e

    .line 440
    move p0, v4

    .line 442
    goto :goto_8

    .line 443
    :cond_e
    move p0, v3

    .line 444
    :goto_8
    if-eqz p0, :cond_f

    .line 445
    if-eqz v1, :cond_10

    .line 447
    new-instance p0, Ljava/lang/StringBuilder;

    .line 449
    const-string p1, "filter out group summary "

    .line 451
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    move-result-object p0

    .line 468
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    goto :goto_9

    .line 472
    :cond_f
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 473
    move-result-object p0

    .line 476
    iget p0, p0, Landroid/app/Notification;->flags:I

    .line 477
    and-int/2addr p0, v8

    .line 479
    if-eqz p0, :cond_11

    .line 480
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 482
    move-result-object p0

    .line 485
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->canShowOngoing(Ljava/lang/String;)Z

    .line 486
    move-result p0

    .line 489
    if-nez p0, :cond_11

    .line 490
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 492
    move-result-object p0

    .line 495
    invoke-static {v7, p0}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->isNonBlockable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 496
    move-result p0

    .line 499
    if-nez p0, :cond_11

    .line 500
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 502
    move-result-object p0

    .line 505
    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    .line 506
    move-result p0

    .line 509
    if-nez p0, :cond_11

    .line 510
    const-class p0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 512
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 514
    move-result-object p0

    .line 517
    check-cast p0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 518
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isMediaNotification(Landroid/service/notification/StatusBarNotification;Z)Z

    .line 520
    move-result p0

    .line 523
    if-nez p0, :cond_11

    .line 524
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 526
    move-result-object p0

    .line 529
    const-string p1, "filter out ongoing notif: "

    .line 530
    invoke-static {p1, p0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_10
    :goto_9
    move v3, v4

    .line 535
    :cond_11
    return v3
    .line 536
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 14

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->miuiNotifFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 9
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    move-object p1, v0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->miuiFinalizeFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;

    .line 15
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 17
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 20
    if-nez p1, :cond_1

    .line 22
    move-object p1, v0

    .line 24
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 30
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 33
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    .line 35
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 42
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->miuiComparators:Ljava/util/List;

    .line 45
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v2

    .line 50
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 60
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    .line 61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    .line 66
    const/4 v5, 0x6

    .line 68
    invoke-direct {v4, p1, v5}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    .line 69
    iput-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mListener:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 75
    if-nez p1, :cond_3

    .line 77
    move-object p1, v0

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$collectionListener$1;

    .line 80
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 85
    if-nez p1, :cond_4

    .line 87
    move-object p1, v0

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->notifPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$notifPromoter$1;

    .line 90
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    .line 92
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 95
    if-nez p1, :cond_5

    .line 97
    goto :goto_1

    .line 99
    :cond_5
    move-object v0, p1

    .line 100
    :goto_1
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$attach$1;

    .line 101
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;)V

    .line 103
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    .line 106
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderListListeners:Ljava/util/List;

    .line 108
    check-cast v0, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$onPluginConnected$1;

    .line 115
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$onPluginConnected$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->context:Landroid/content/Context;

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 122
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginConnected(Lcom/android/systemui/plugins/NotificationListenerController;Landroid/content/Context;)V

    .line 124
    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;

    .line 127
    const/4 p1, 0x0

    .line 129
    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;I)V

    .line 130
    new-instance v5, Landroid/content/IntentFilter;

    .line 133
    const-string p1, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    .line 135
    invoke-direct {v5, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->context:Landroid/content/Context;

    .line 140
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 142
    const-string v6, "com.android.systemui.permission.NOTIFICATION"

    .line 144
    const/4 v7, 0x0

    .line 146
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 147
    new-instance v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;

    .line 150
    const/4 p1, 0x1

    .line 152
    invoke-direct {v9, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$registerRemoveBannedReceiver$removeBannedReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;I)V

    .line 153
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->context:Landroid/content/Context;

    .line 156
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 158
    new-instance v11, Landroid/content/IntentFilter;

    .line 160
    const-string p0, "com.miui.app.ExtraStatusBarManager.action_remove_keyguard_notification"

    .line 162
    invoke-direct {v11, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v12, "com.android.systemui.permission.NOTIFICATION"

    .line 167
    const/4 v13, 0x0

    .line 169
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 170
    return-void
    .line 173
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "    mDeletedNotifs start"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->hideDeletedFocusController:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;->mDeletedNotifs:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController$mDeletedNotifs$1;

    .line 9
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$dump$1;

    .line 11
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$dump$1;-><init>(Ljava/io/PrintWriter;)V

    .line 13
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    const-string p0, "    mDeletedNotifs end"

    .line 19
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    return-void
    .line 24
.end method

.method public final removeNotificationOnPipeline(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotificationOnPipeline$removeRunnable$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotificationOnPipeline$removeRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;)V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 7
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->registerFutureDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;

    .line 9
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->handler:Landroid/os/Handler;

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method
