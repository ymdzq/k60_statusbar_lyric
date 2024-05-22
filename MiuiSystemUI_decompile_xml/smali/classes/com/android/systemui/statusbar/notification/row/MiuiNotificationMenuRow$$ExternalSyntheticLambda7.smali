.class public final synthetic Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda7;->f$1:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda7;->f$2:Landroid/content/Context;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda7;->f$1:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda7;->f$2:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIcon:Landroid/widget/ImageView;

    .line 13
    const v3, 0x7f0812fe    # @drawable/miui_notification_menu_ic_bg_inactive 'res/drawable/miui_notification_menu_ic_bg_inactive.xml'

    .line 15
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 18
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 21
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getTargetPackageName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    sget-boolean v4, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->DEBUG:Z

    .line 27
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    .line 31
    move-result v5

    .line 34
    const/4 v6, 0x0

    .line 35
    :try_start_0
    invoke-static {v5}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    .line 36
    move-result v7

    .line 39
    const/4 v8, 0x2

    .line 40
    if-eqz v7, :cond_0

    .line 41
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 43
    invoke-virtual {v4, v3, v8, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 45
    move-result-object v7

    .line 48
    invoke-static {v7, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    .line 49
    move-result v7

    .line 52
    sget-object v8, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    .line 53
    invoke-interface {v8, v3, v7, v6}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 55
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    .line 59
    move-result v7

    .line 62
    if-nez v7, :cond_1

    .line 63
    invoke-static {v4, v3}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    .line 65
    move-result v7

    .line 68
    if-eqz v7, :cond_1

    .line 69
    new-instance v7, Landroid/os/UserHandle;

    .line 71
    const/16 v9, 0x3e7

    .line 73
    invoke-direct {v7, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 75
    invoke-virtual {v4, v3, v8, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 78
    move-result-object v7

    .line 81
    invoke-static {v7, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    .line 82
    move-result v7

    .line 85
    sget-object v8, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    .line 86
    invoke-interface {v8, v3, v7, v6}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    sget-object v7, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    .line 91
    invoke-interface {v7, v3, v5, v6}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :catch_1
    const/16 v5, 0xb

    .line 96
    const/4 v7, 0x1

    .line 98
    invoke-static {v4, v5, v3, v7}, Landroid/miui/AppOpsUtils;->setMode(Landroid/content/Context;ILjava/lang/String;I)V

    .line 99
    new-instance v5, Landroid/content/Intent;

    .line 102
    const-string v8, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    .line 104
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v8, "com.android.systemui"

    .line 109
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v8, "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

    .line 114
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v7, "app_packageName"

    .line 119
    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/PushEvents;->getMessageId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    move-result v3

    .line 131
    if-nez v3, :cond_2

    .line 132
    const-string v3, "messageId"

    .line 134
    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_2
    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    const-class v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 142
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 147
    check-cast v3, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 148
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 150
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 152
    move-result-object v4

    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 159
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 161
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 163
    move-result-object v5

    .line 166
    if-eqz v5, :cond_3

    .line 167
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 169
    if-eqz v5, :cond_3

    .line 171
    const-string v8, "adid"

    .line 173
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 175
    move-result-wide v8

    .line 178
    const-wide/16 v10, 0x0

    .line 179
    cmp-long v5, v8, v10

    .line 181
    if-eqz v5, :cond_3

    .line 183
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 185
    move-result-object v5

    .line 188
    goto :goto_1

    .line 189
    :cond_3
    const/4 v5, 0x0

    .line 190
    :goto_1
    invoke-virtual {v3, v7, v5}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->sendBlockNotificationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v5, Lcom/miui/systemui/events/BlockEvent;

    .line 194
    iget-object v7, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 196
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 198
    move-result-object v9

    .line 201
    iget-object v7, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 202
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 204
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 206
    move-result-wide v11

    .line 209
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifIndex(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 210
    move-result v13

    .line 213
    iget-object v7, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 214
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 216
    move-result v14

    .line 219
    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/lang/String;

    .line 220
    move-result-object v15

    .line 223
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifIndex(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 224
    move-result v16

    .line 227
    iget-object v7, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 228
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 230
    move-result-object v7

    .line 233
    invoke-virtual {v7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 234
    move-result-object v17

    .line 237
    move-object v8, v5

    .line 238
    invoke-direct/range {v8 .. v17}, Lcom/miui/systemui/events/BlockEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;ILjava/lang/String;)V

    .line 239
    iget-object v7, v3, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 242
    invoke-interface {v7, v5}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 244
    new-instance v7, Ljava/util/HashMap;

    .line 247
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 249
    invoke-virtual {v5}, Lcom/miui/systemui/events/BlockEvent;->getIndex()I

    .line 252
    move-result v8

    .line 255
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object v8

    .line 259
    const-string v9, "index"

    .line 260
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 265
    const-string/jumbo v8, "sbn"

    .line 267
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v4, "source"

    .line 273
    invoke-virtual {v5}, Lcom/miui/systemui/events/BlockEvent;->getSource()Ljava/lang/String;

    .line 276
    move-result-object v8

    .line 279
    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v4, "channel_id"

    .line 283
    invoke-virtual {v5}, Lcom/miui/systemui/events/BlockEvent;->getChannelId()Ljava/lang/String;

    .line 285
    move-result-object v5

    .line 288
    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 292
    const-string v5, "notification_block"

    .line 294
    invoke-virtual {v3, v4, v5, v7}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 296
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 299
    move-result-object v2

    .line 302
    check-cast v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 303
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 305
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 307
    move-result-object v1

    .line 310
    sget-object v3, Lcom/miui/systemui/events/ModalDialogSource;->DISABLE:Lcom/miui/systemui/events/ModalDialogSource;

    .line 311
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 313
    move-result-object v3

    .line 316
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    new-instance v4, Lcom/miui/systemui/events/ModalDialogConfirmEvent;

    .line 320
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 322
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 324
    move-result-object v5

    .line 327
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 328
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 330
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 332
    move-result-object v1

    .line 335
    invoke-direct {v4, v5, v7, v1, v3}, Lcom/miui/systemui/events/ModalDialogConfirmEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 339
    invoke-interface {v1, v4}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 341
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 344
    const-class v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 347
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 349
    move-result-object v1

    .line 352
    check-cast v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 353
    sget-object v2, Lcom/miui/systemui/events/ModalExitMode;->DISABLE:Lcom/miui/systemui/events/ModalExitMode;

    .line 355
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 357
    move-result-object v2

    .line 360
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->animExitModal(Ljava/lang/String;)V

    .line 361
    const v1, 0x7f13076f    # @string/miui_notification_menu_setting_success 'Done'

    .line 364
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 367
    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    return-void
    .line 374
.end method
