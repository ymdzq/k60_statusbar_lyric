.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$collectionListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;->showSensitiveByAppLock(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 10
    move-result v0

    .line 13
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hideSensitiveByAppLock:Z

    .line 14
    const-class v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onArrive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 25
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 35
    move-result-object p0

    .line 38
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 39
    const-string v0, "android.template"

    .line 41
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result p0

    .line 50
    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 53
    move-result-object p0

    .line 56
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 57
    const-string v1, "android.bigText"

    .line 59
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result p0

    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 71
    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Landroid/app/Notification;)Z

    .line 75
    move-result p0

    .line 78
    if-nez p0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 81
    move-result-object p0

    .line 84
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 85
    const-string v2, "android.title"

    .line 87
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 93
    move-result-object v2

    .line 96
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 97
    const-string v3, "android.text"

    .line 99
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 104
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 105
    move-result-object v3

    .line 108
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 109
    const-string v4, "android.title.big"

    .line 111
    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 116
    move-result-object p0

    .line 119
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 120
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 125
    move-result-object p0

    .line 128
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 129
    const-string p1, "android.app.Notification$BigTextStyle"

    .line 131
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
    .line 136
.end method

.method public final onEntryBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    sget-boolean p1, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->DEBUG:Z

    .line 6
    sget-boolean p1, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 8
    sget-object p1, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 10
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 12
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mCustomNotificationBgPackages:Ljava/util/List;

    .line 18
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move p0, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    :goto_0
    move p0, v2

    .line 32
    :goto_1
    if-nez p0, :cond_2

    .line 33
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 35
    move-result-object p0

    .line 38
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 39
    const-string p1, "android.colorized"

    .line 41
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 46
    move-result-object p0

    .line 49
    iget-wide p0, p0, Landroid/app/Notification;->when:J

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    move-result-wide v0

    .line 55
    const-wide v3, 0x757b12c00L

    .line 56
    add-long/2addr v0, v3

    .line 61
    cmp-long p0, p0, v0

    .line 62
    if-lez p0, :cond_3

    .line 64
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 66
    move-result-object p0

    .line 69
    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Landroid/app/Notification;->when:J

    .line 72
    :cond_3
    const-class p0, Lcom/miui/systemui/SettingsManager;

    .line 74
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    check-cast p0, Lcom/miui/systemui/SettingsManager;

    .line 80
    iget-boolean p0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 82
    if-eqz p0, :cond_4

    .line 84
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 86
    move-result-object p0

    .line 89
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 90
    const-string p1, "android.hideSmartReplies"

    .line 92
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    :cond_4
    return-void
    .line 97
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    move/from16 v1, p2

    .line 4
    const-class v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 6
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 11
    check-cast v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 12
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 14
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_0

    .line 17
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsRemove:Z

    .line 19
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifIndex(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 21
    const/4 v3, 0x3

    .line 24
    if-ne v1, v3, :cond_1

    .line 25
    const-string/jumbo v3, "\u4e00\u952e\u6e05\u9664"

    .line 27
    :goto_0
    move-object v14, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v3, 0xc

    .line 32
    if-ne v1, v3, :cond_2

    .line 34
    const-string/jumbo v3, "\u7ec4\u901a\u77e5\u5220\u9664"

    .line 36
    goto :goto_0

    .line 39
    :cond_2
    const/4 v3, 0x7

    .line 40
    if-ne v1, v3, :cond_3

    .line 41
    const-string/jumbo v3, "\u70b9\u51fb\u4e0d\u5141\u8bb8\u901a\u77e5\u6309\u94ae"

    .line 43
    goto :goto_0

    .line 46
    :cond_3
    const/4 v3, 0x2

    .line 47
    if-ne v1, v3, :cond_4

    .line 48
    const-string/jumbo v3, "\u5355\u6761\u5220\u9664"

    .line 50
    goto :goto_0

    .line 53
    :cond_4
    const-string/jumbo v3, "\u5176\u4ed6"

    .line 54
    goto :goto_0

    .line 57
    :goto_1
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/lang/String;

    .line 59
    move-result-object v15

    .line 62
    new-instance v13, Lcom/miui/systemui/events/CancelEvent;

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifTag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 65
    move-result-object v6

    .line 68
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 69
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 71
    move-result-object v7

    .line 74
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 75
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 77
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 79
    move-result-wide v9

    .line 82
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 83
    move-result-object v11

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getIsNotificationGrouped(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 87
    move-result-object v12

    .line 90
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 91
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getChannelId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 93
    move-result-object v16

    .line 96
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getScreenOrientationString()Ljava/lang/String;

    .line 97
    move-result-object v17

    .line 100
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 101
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->generateTextId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 103
    move-result-object v18

    .line 106
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 107
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 109
    move-result-object v5

    .line 112
    iget v5, v5, Landroid/app/Notification;->priority:I

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 115
    move-result v19

    .line 118
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 119
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 121
    move-result-object v4

    .line 124
    iget v4, v4, Landroid/app/Notification;->flags:I

    .line 125
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 127
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getFoldReason(Landroid/service/notification/StatusBarNotification;)I

    .line 129
    move-result v20

    .line 132
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 133
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->resolvePushMsgId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 135
    move-result-object v21

    .line 138
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 139
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 141
    move-result v22

    .line 144
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifGroupKey(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 145
    move-result-object v23

    .line 148
    iget v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->visualPosition:I

    .line 149
    move/from16 v24, v5

    .line 151
    const-string v5, "float"

    .line 153
    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 155
    move-result v25

    .line 158
    if-eqz v25, :cond_5

    .line 159
    const-string v3, ""

    .line 161
    goto :goto_2

    .line 163
    :cond_5
    if-eqz v3, :cond_6

    .line 164
    const-string/jumbo v3, "true"

    .line 166
    goto :goto_2

    .line 169
    :cond_6
    const-string v3, "false"

    .line 170
    :goto_2
    iget v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->visualPosition:I

    .line 172
    invoke-virtual {v2, v15}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getPanelSessionId(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v26

    .line 177
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 178
    move-result v25

    .line 181
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 182
    move-result-object v27

    .line 185
    move/from16 v28, v1

    .line 186
    move-object/from16 v25, v15

    .line 188
    const/4 v15, 0x0

    .line 190
    invoke-virtual {v2, v0, v15}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 194
    const-string v15, "panel"

    .line 195
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 197
    move-result v15

    .line 200
    if-eqz v15, :cond_7

    .line 201
    const-string v1, "49.2.1.1.23684"

    .line 203
    goto :goto_3

    .line 205
    :cond_7
    const-string/jumbo v15, "unimportant"

    .line 206
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 209
    move-result v15

    .line 212
    if-eqz v15, :cond_8

    .line 213
    const-string v1, "49.2.2.1.23692"

    .line 215
    goto :goto_3

    .line 217
    :cond_8
    const-string v15, "keyguard"

    .line 218
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 220
    move-result v15

    .line 223
    if-eqz v15, :cond_9

    .line 224
    const-string v1, "49.4.0.1.23724"

    .line 226
    goto :goto_3

    .line 228
    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 229
    move-result v5

    .line 232
    if-eqz v5, :cond_a

    .line 233
    const-string v1, "49.5.0.1.23726"

    .line 235
    goto :goto_3

    .line 237
    :cond_a
    const-string/jumbo v5, "shade_locked"

    .line 238
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 241
    move-result v1

    .line 244
    if-eqz v1, :cond_b

    .line 245
    const-string v1, "49.3.0.1.23721"

    .line 247
    goto :goto_3

    .line 249
    :cond_b
    const-string/jumbo v1, "undefined"

    .line 250
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->resolveMediaStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 253
    move-result-object v29

    .line 256
    const v30, 0x1509c44

    .line 257
    move-object v5, v13

    .line 260
    move-object v15, v13

    .line 261
    move-object/from16 v13, v16

    .line 262
    move-object v0, v15

    .line 264
    move-object/from16 v31, v25

    .line 265
    move-object/from16 v15, v17

    .line 267
    move-object/from16 v16, v18

    .line 269
    move/from16 v17, v24

    .line 271
    move/from16 v18, v19

    .line 273
    move/from16 v19, v4

    .line 275
    move-object/from16 v24, v3

    .line 277
    move/from16 v25, v28

    .line 279
    move-object/from16 v28, v1

    .line 281
    invoke-direct/range {v5 .. v30}, Lcom/miui/systemui/events/CancelEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 286
    invoke-interface {v1, v0}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 288
    new-instance v1, Ljava/util/HashMap;

    .line 291
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 293
    invoke-virtual {v0}, Lcom/miui/systemui/events/CancelEvent;->getPosition()I

    .line 296
    move-result v0

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    move-result-object v0

    .line 303
    const-string v3, "index"

    .line 304
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-object/from16 v0, p1

    .line 309
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 311
    const-string/jumbo v4, "sbn"

    .line 313
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v3, "source"

    .line 319
    move-object/from16 v4, v31

    .line 322
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 327
    const-string v4, "notification_delete"

    .line 329
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 331
    const/16 v1, 0x8

    .line 334
    move/from16 v3, p2

    .line 336
    if-eq v3, v1, :cond_f

    .line 338
    const/4 v1, 0x0

    .line 340
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/lang/String;

    .line 341
    move-result-object v3

    .line 344
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 345
    iget-wide v4, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->seeTime:J

    .line 347
    const-wide/16 v6, 0x0

    .line 349
    cmp-long v1, v4, v6

    .line 351
    if-nez v1, :cond_c

    .line 353
    goto :goto_5

    .line 355
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    .line 356
    const/4 v4, 0x1

    .line 358
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSummaryWithChildren()Z

    .line 365
    move-result v4

    .line 368
    if-eqz v4, :cond_e

    .line 369
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 371
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 373
    move-result-object v4

    .line 376
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 377
    move-result-object v4

    .line 380
    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    move-result v5

    .line 384
    if-eqz v5, :cond_e

    .line 385
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    move-result-object v5

    .line 390
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 391
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 393
    move-result-object v6

    .line 396
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isVisual:Z

    .line 397
    if-eqz v6, :cond_d

    .line 399
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 401
    move-result-object v5

    .line 404
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    goto :goto_4

    .line 408
    :cond_e
    const/4 v4, 0x0

    .line 409
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->handleVisibleEvent(Ljava/lang/String;Ljava/util/List;Z)V

    .line 410
    :cond_f
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/AdTracker;->getJSONTag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lorg/json/JSONObject;

    .line 413
    move-result-object v0

    .line 416
    if-eqz v0, :cond_10

    .line 417
    const-string v1, "ex"

    .line 419
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    move-result-object v0

    .line 424
    goto :goto_6

    .line 425
    :cond_10
    const/4 v0, 0x0

    .line 426
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 427
    return-void
    .line 430
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 1
    const-class p0, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;->showSensitiveByAppLock(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 10
    move-result p0

    .line 13
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hideSensitiveByAppLock:Z

    .line 14
    const-class p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 16
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 22
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onArrive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 25
    return-void
    .line 28
.end method
