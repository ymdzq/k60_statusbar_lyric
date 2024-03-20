.class public final Lcom/android/systemui/wmshell/MiuiBubbleManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public isBubbleSwitchOpen:Z

.field public isZenMode:Z

.field public final mBubbleNotification:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleNotification;

.field public final mBubbleSupport:Z

.field public final mBubbleSwitch:Lcom/android/systemui/wmshell/MiuiBubbleManager$1;

.field public final mContext:Landroid/content/Context;

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mMiuiBarrageController:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mZenModeSwitch:Lcom/android/systemui/wmshell/MiuiBubbleManager$1;


# direct methods
.method public static -$$Nest$mshouldHeadUp(Lcom/android/systemui/wmshell/MiuiBubbleManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_18

    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->isBubbleSwitchOpen:Z

    .line 5
    if-eqz v1, :cond_19

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mBubbleSupport:Z

    .line 9
    if-nez v1, :cond_0

    .line 11
    goto/16 :goto_b

    .line 13
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 15
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 17
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 19
    move-result v3

    .line 22
    invoke-static {v3, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isAppEnableBubbleNotification(ILjava/lang/String;)Z

    .line 23
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    goto/16 :goto_b

    .line 29
    :cond_1
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 31
    move-result-object v2

    .line 34
    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 35
    if-eqz v2, :cond_2

    .line 37
    goto/16 :goto_b

    .line 39
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 41
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 43
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    goto/16 :goto_b

    .line 49
    :cond_3
    const-class v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 51
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 56
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 57
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 59
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    .line 61
    if-eqz v2, :cond_4

    .line 63
    goto/16 :goto_b

    .line 65
    :cond_4
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 67
    iget-object v2, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    move-result-object v3

    .line 74
    const-string v4, "heads_up_notifications_enabled"

    .line 75
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 77
    move-result v3

    .line 80
    const/4 v4, 0x1

    .line 81
    if-eqz v3, :cond_5

    .line 82
    move v3, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    move v3, v0

    .line 86
    :goto_0
    const-string v5, "MiuiBubbleManager"

    .line 87
    if-nez v3, :cond_6

    .line 89
    goto :goto_3

    .line 91
    :cond_6
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 92
    move-result v3

    .line 95
    if-eqz v3, :cond_7

    .line 96
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 98
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 102
    move-result v3

    .line 105
    if-eqz v3, :cond_7

    .line 106
    const-string v3, "No alerting: suppressed due to group alert behavior"

    .line 108
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    move v3, v0

    .line 113
    goto :goto_1

    .line 114
    :cond_7
    move v3, v4

    .line 115
    :goto_1
    if-nez v3, :cond_8

    .line 116
    goto :goto_3

    .line 118
    :cond_8
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 119
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/app/Notification;->isBubbleNotification()Z

    .line 123
    move-result v3

    .line 126
    if-eqz v3, :cond_9

    .line 127
    const-string/jumbo p1, "shouldHeadUp: google bubbles"

    .line 129
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    goto :goto_3

    .line 135
    :cond_9
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    .line 136
    move-result p1

    .line 139
    const/4 v3, 0x4

    .line 140
    if-ge p1, v3, :cond_a

    .line 141
    goto :goto_3

    .line 143
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mPowerManager:Landroid/os/PowerManager;

    .line 144
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 146
    move-result p1

    .line 149
    if-eqz p1, :cond_b

    .line 150
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 152
    invoke-interface {p1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    .line 154
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_2

    .line 158
    :catch_0
    move-exception p1

    .line 159
    const-string v3, "Failed to query dream manager."

    .line 160
    invoke-static {v5, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    move p1, v0

    .line 165
    :goto_2
    if-nez p1, :cond_b

    .line 166
    move p1, v4

    .line 168
    goto :goto_4

    .line 169
    :cond_b
    :goto_3
    move p1, v0

    .line 170
    :goto_4
    if-eqz p1, :cond_19

    .line 171
    iget-boolean p1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->isZenMode:Z

    .line 173
    if-eqz p1, :cond_c

    .line 175
    goto/16 :goto_b

    .line 177
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 179
    move-result p1

    .line 182
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 183
    move-result-object v3

    .line 186
    const-string v6, "miui_mirror_dnd_mode"

    .line 187
    invoke-static {v3, v6, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 189
    move-result v3

    .line 192
    if-eqz v3, :cond_d

    .line 193
    move v3, v4

    .line 195
    goto :goto_5

    .line 196
    :cond_d
    move v3, v0

    .line 197
    :goto_5
    if-eqz v3, :cond_e

    .line 198
    const-string p0, "miui bubbles: mirror dnd mode"

    .line 200
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    goto/16 :goto_b

    .line 205
    :cond_e
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 207
    move-result-object v3

    .line 210
    const-string v6, "gb_boosting"

    .line 211
    invoke-static {v3, v6, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 213
    move-result v3

    .line 216
    if-ne v3, v4, :cond_f

    .line 217
    move v3, v4

    .line 219
    goto :goto_6

    .line 220
    :cond_f
    move v3, v0

    .line 221
    :goto_6
    if-eqz v3, :cond_11

    .line 222
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 224
    move-result-object v2

    .line 227
    const-string v3, "gb_notification"

    .line 228
    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 230
    move-result p1

    .line 233
    if-nez p1, :cond_10

    .line 234
    move p1, v4

    .line 236
    goto :goto_7

    .line 237
    :cond_10
    move p1, v0

    .line 238
    :goto_7
    if-eqz p1, :cond_11

    .line 239
    const-string p0, "Game mode DND"

    .line 241
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    goto :goto_b

    .line 246
    :cond_11
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 247
    move-result-object p1

    .line 250
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 251
    const-string v3, "miui.enableFloat"

    .line 253
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 255
    move-result v2

    .line 258
    if-eqz v2, :cond_12

    .line 259
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 261
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 263
    move-result p1

    .line 266
    goto :goto_8

    .line 267
    :cond_12
    iget-object p1, p1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    .line 268
    invoke-virtual {p1}, Landroid/app/MiuiNotification;->isEnableFloat()Z

    .line 270
    move-result p1

    .line 273
    :goto_8
    if-nez p1, :cond_13

    .line 274
    const-string p0, "miui bubbles, require miui permission"

    .line 276
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    goto :goto_b

    .line 281
    :cond_13
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 282
    move-result-object p1

    .line 285
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 286
    const-string v1, "android.progressMax"

    .line 288
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 290
    move-result v1

    .line 293
    const-string v2, "android.progressIndeterminate"

    .line 294
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 296
    move-result p1

    .line 299
    if-nez v1, :cond_15

    .line 300
    if-eqz p1, :cond_14

    .line 302
    goto :goto_9

    .line 304
    :cond_14
    move p1, v0

    .line 305
    goto :goto_a

    .line 306
    :cond_15
    :goto_9
    move p1, v4

    .line 307
    :goto_a
    if-eqz p1, :cond_16

    .line 308
    const-string p0, "miui bubbles, has progress"

    .line 310
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    goto :goto_b

    .line 315
    :cond_16
    iget-object p0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mMiuiBarrageController:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->isShowBarrageInGameScene()Z

    .line 318
    move-result p0

    .line 321
    if-eqz p0, :cond_17

    .line 322
    const-string p0, "No float notification for barrage in game scene"

    .line 324
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    goto :goto_b

    .line 329
    :cond_17
    move v0, v4

    .line 330
    goto :goto_b

    .line 331
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    :cond_19
    :goto_b
    return v0
    .line 335
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleNotification;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;-><init>(Lcom/android/systemui/wmshell/MiuiBubbleManager;I)V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mBubbleSwitch:Lcom/android/systemui/wmshell/MiuiBubbleManager$1;

    .line 11
    new-instance v2, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;

    .line 13
    const/4 v3, 0x1

    .line 15
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;-><init>(Lcom/android/systemui/wmshell/MiuiBubbleManager;I)V

    .line 16
    iput-object v2, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mZenModeSwitch:Lcom/android/systemui/wmshell/MiuiBubbleManager$1;

    .line 19
    iput-object p1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mContext:Landroid/content/Context;

    .line 21
    iput-object p3, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 23
    iput-object p5, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mBubbleNotification:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleNotification;

    .line 25
    const-string p3, "MiuiBubbleManager"

    .line 27
    const-string/jumbo p5, "setupNotifPipeline: "

    .line 29
    invoke-static {p3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p3, Lcom/android/systemui/wmshell/MiuiBubbleManager$3;

    .line 35
    invoke-direct {p3, p0}, Lcom/android/systemui/wmshell/MiuiBubbleManager$3;-><init>(Lcom/android/systemui/wmshell/MiuiBubbleManager;)V

    .line 37
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 40
    const-string p2, "power"

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p2

    .line 48
    check-cast p2, Landroid/os/PowerManager;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mPowerManager:Landroid/os/PowerManager;

    .line 51
    const-string p2, "keyguard"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object p2

    .line 58
    check-cast p2, Landroid/app/KeyguardManager;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 61
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isBubbleNotificationSwitchOpen(Landroid/content/Context;)Z

    .line 63
    move-result p2

    .line 66
    iput-boolean p2, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->isBubbleSwitchOpen:Z

    .line 67
    iput-object p4, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mMiuiBarrageController:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    move-result-object p2

    .line 74
    const-string p3, "miui_bubbles_notification_switch"

    .line 75
    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    move-result-object p3

    .line 80
    invoke-virtual {p2, p3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    move-result-object p1

    .line 87
    const-string/jumbo p2, "zen_mode"

    .line 88
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->isSupportBubbleNotification()Z

    .line 98
    move-result p1

    .line 101
    iput-boolean p1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mBubbleSupport:Z

    .line 102
    return-void
    .line 104
.end method
