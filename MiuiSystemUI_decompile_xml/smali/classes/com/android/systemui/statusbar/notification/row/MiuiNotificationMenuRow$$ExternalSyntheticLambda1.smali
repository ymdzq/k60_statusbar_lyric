.class public final synthetic Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const-class v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 5
    const/4 v2, 0x1

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    goto/16 :goto_1

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 24
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v3, Lcom/miui/systemui/events/ClickMoreEvent;

    .line 33
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 35
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 40
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 41
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 48
    invoke-direct {v3, v4, v5, v1}, Lcom/miui/systemui/events/ClickMoreEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 52
    invoke-interface {p1, v3}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 57
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/PushEvents;->getMessageId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    move-result-object v5

    .line 70
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isHybrid(Landroid/service/notification/StatusBarNotification;)Z

    .line 71
    move-result v6

    .line 74
    const-string v7, "packageName"

    .line 75
    const/high16 v8, 0x10000000

    .line 77
    const v9, 0x8000

    .line 79
    const-string v10, "android.intent.action.MAIN"

    .line 82
    if-eqz v6, :cond_0

    .line 84
    new-instance v6, Landroid/content/Intent;

    .line 86
    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v11, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 91
    invoke-virtual {v6, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    move-result-object v6

    .line 96
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    move-result-object v6

    .line 100
    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 101
    move-result-object v5

    .line 104
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 105
    move-result v11

    .line 108
    if-lez v11, :cond_0

    .line 109
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v5

    .line 114
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 115
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 117
    iget-object v11, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 119
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 121
    invoke-virtual {v6, v11, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    const-string v5, "appName"

    .line 132
    const-string v11, ""

    .line 134
    invoke-virtual {v6, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget v5, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppUid:I

    .line 142
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 144
    move-result v5

    .line 147
    const-string/jumbo v12, "userId"

    .line 148
    invoke-virtual {v6, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v5, "messageId"

    .line 154
    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v3, "notificationId"

    .line 159
    invoke-virtual {v6, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 164
    move-result-object v3

    .line 167
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 168
    const-string v5, "miui.category"

    .line 170
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v3

    .line 175
    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :try_start_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 179
    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 185
    const-string v3, "TAG"

    .line 186
    const-string v5, "Failed startActivityAsUser() "

    .line 188
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :cond_0
    move v2, v0

    .line 193
    :goto_0
    if-nez v2, :cond_3

    .line 194
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mAppName:Ljava/lang/String;

    .line 196
    iget p1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppUid:I

    .line 198
    sget-boolean v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->DEBUG:Z

    .line 200
    if-eqz v2, :cond_1

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v2

    .line 207
    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    .line 208
    move-result-object p0

    .line 211
    const-string/jumbo v2, "startAppNotificationSettings pkg=%s label=%s uid=%s"

    .line 212
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    move-result-object p0

    .line 218
    const-string v2, "NotifiSettingsHelper"

    .line 219
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    new-instance p0, Landroid/content/Intent;

    .line 224
    invoke-direct {p0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    const-string v2, "com.android.settings"

    .line 235
    const-string v3, "com.android.settings.Settings$AppNotificationSettingsActivity"

    .line 237
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string/jumbo v2, "uid"

    .line 245
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    new-instance v3, Landroid/os/Bundle;

    .line 251
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 253
    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string p1, ":settings:show_fragment_args"

    .line 262
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 264
    invoke-static {v4}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 267
    move-result p1

    .line 270
    if-eqz p1, :cond_2

    .line 271
    invoke-static {v4, p0}, Lcom/miui/utils/IntentUtils;->transformToSplitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 273
    move-result-object p0

    .line 276
    :cond_2
    :try_start_1
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 277
    invoke-virtual {v4, p0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    :catch_1
    :cond_3
    const-class p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 282
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 284
    move-result-object p0

    .line 287
    move-object v1, p0

    .line 288
    check-cast v1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    const-wide/16 v2, 0x32

    .line 294
    sget-object p0, Lcom/miui/systemui/events/ModalExitMode;->MORE:Lcom/miui/systemui/events/ModalExitMode;

    .line 296
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 298
    move-result-object v5

    .line 301
    const/4 v4, 0x1

    .line 302
    const/4 v6, 0x0

    .line 303
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->animExitModal(JZLjava/lang/String;Z)V

    .line 304
    const-class p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 307
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 309
    move-result-object p0

    .line 312
    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 313
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 315
    return-void

    .line 318
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

    .line 319
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 321
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    new-instance v3, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

    .line 328
    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;-><init>(Landroid/content/Context;)V

    .line 330
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIconResId:I

    .line 333
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mIconView:Landroid/widget/ImageView;

    .line 335
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mIconView:Landroid/widget/ImageView;

    .line 340
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mContext:Landroid/content/Context;

    .line 345
    const v4, 0x7f130775    # @string/miui_notification_menu_title_unfocus '@string/miui_notification_menu_unfocus'

    .line 347
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 350
    move-result-object v4

    .line 353
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mTitleTv:Landroid/widget/TextView;

    .line 354
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mTitleTv:Landroid/widget/TextView;

    .line 359
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mAppName:Ljava/lang/String;

    .line 364
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 366
    move-result-object v4

    .line 369
    const v5, 0x7f13076d    # @string/miui_notification_menu_msg_unfocus 'You're about to turn off Notification spotlight for %1$s. These notifications will be displayed norm ...'

    .line 370
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 373
    move-result-object p0

    .line 376
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mMessageTv:Landroid/widget/TextView;

    .line 377
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mMessageTv:Landroid/widget/TextView;

    .line 382
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda4;

    .line 387
    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;Ljava/lang/Object;I)V

    .line 389
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)V

    .line 392
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda6;

    .line 395
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;I)V

    .line 397
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)V

    .line 400
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->show()V

    .line 403
    return-void

    .line 406
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

    .line 407
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 409
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 416
    move-result-object v1

    .line 419
    check-cast v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 420
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 422
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 424
    move-result-object v3

    .line 427
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    new-instance v4, Lcom/miui/systemui/events/ClickAllowNotificationEvent;

    .line 431
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 433
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 435
    move-result-object v5

    .line 438
    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 439
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 441
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 443
    move-result-object v3

    .line 446
    invoke-direct {v4, v5, v6, v3}, Lcom/miui/systemui/events/ClickAllowNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 450
    invoke-interface {v1, v4}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 452
    new-instance v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

    .line 455
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;-><init>(Landroid/content/Context;)V

    .line 457
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIconResId:I

    .line 460
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mIconView:Landroid/widget/ImageView;

    .line 462
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mIconView:Landroid/widget/ImageView;

    .line 467
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mIconView:Landroid/widget/ImageView;

    .line 472
    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 474
    move-result-object v3

    .line 477
    const v4, 0x7f130774    # @string/miui_notification_menu_title_not_allow 'Restrict'

    .line 478
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 481
    move-result-object v3

    .line 484
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mTitleTv:Landroid/widget/TextView;

    .line 485
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mTitleTv:Landroid/widget/TextView;

    .line 490
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mAppName:Ljava/lang/String;

    .line 495
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 497
    move-result-object v3

    .line 500
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mContext:Landroid/content/Context;

    .line 501
    const v5, 0x7f13076c    # @string/miui_notification_menu_msg_not_allow 'Restrict all notifications from %1$s?'

    .line 503
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 506
    move-result-object v3

    .line 509
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mMessageTv:Landroid/widget/TextView;

    .line 510
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mMessageTv:Landroid/widget/TextView;

    .line 515
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda7;

    .line 520
    invoke-direct {v0, p1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;Landroid/content/Context;)V

    .line 522
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)V

    .line 525
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda6;

    .line 528
    const/4 v0, 0x2

    .line 530
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;I)V

    .line 531
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)V

    .line 534
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->show()V

    .line 537
    return-void

    .line 540
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;

    .line 541
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 543
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->getGutsView()Landroid/view/View;

    .line 550
    move-result-object v3

    .line 553
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 554
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    .line 556
    move-result-object v3

    .line 559
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 560
    move-result-object v4

    .line 563
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda2;

    .line 564
    invoke-direct {v5}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda2;-><init>()V

    .line 566
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 569
    move-result-object v4

    .line 572
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda3;

    .line 573
    invoke-direct {v5}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda3;-><init>()V

    .line 575
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 578
    move-result-object v4

    .line 581
    check-cast v4, [Ljava/lang/CharSequence;

    .line 582
    iput v0, p1, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;->mChoiceIndex:I

    .line 584
    new-instance v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;

    .line 586
    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;-><init>(Landroid/content/Context;)V

    .line 588
    iget-object v1, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mIconView:Landroid/widget/ImageView;

    .line 591
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIconResId:I

    .line 593
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    iget-object p0, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mIconView:Landroid/widget/ImageView;

    .line 598
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    iget-object p0, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mIconView:Landroid/widget/ImageView;

    .line 603
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 605
    move-result-object p0

    .line 608
    const v1, 0x7f130771    # @string/miui_notification_menu_snooze_title '@string/miui_notification_menu_snooze'

    .line 609
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 612
    move-result-object p0

    .line 615
    iget-object v1, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mTitleTv:Landroid/widget/TextView;

    .line 616
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object p0, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mTitleTv:Landroid/widget/TextView;

    .line 621
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda4;

    .line 626
    invoke-direct {p0, p1, v3, v0}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;Ljava/lang/Object;I)V

    .line 628
    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)V

    .line 631
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda5;

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda5;-><init>()V

    .line 636
    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)V

    .line 639
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda6;

    .line 642
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow;I)V

    .line 644
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$CheckedItemAdapter;

    .line 647
    iget-object v1, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mContext:Landroid/content/Context;

    .line 649
    invoke-direct {p1, v1, v4}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$CheckedItemAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    .line 651
    iget-object v1, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mListView:Landroid/widget/ListView;

    .line 654
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 656
    iget-object p1, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mListView:Landroid/widget/ListView;

    .line 659
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 661
    iget-object p1, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mListView:Landroid/widget/ListView;

    .line 664
    invoke-virtual {p1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 666
    iget-object p1, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mListView:Landroid/widget/ListView;

    .line 669
    new-instance v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda0;

    .line 671
    invoke-direct {v1, v5, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalDialog;Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$$ExternalSyntheticLambda6;)V

    .line 673
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 676
    iget-object p0, v5, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mListView:Landroid/widget/ListView;

    .line 679
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 681
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->show()V

    .line 684
    return-void

    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 688
.end method
