.class public final Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/plugins/miui/notification/MiuiNotificationStatPlugin;


# instance fields
.field public mBarState:I

.field public final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mEventTracker:Lcom/miui/interfaces/IEventTracker;

.field public final mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

.field public final mGroupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mPanelSessionId:Ljava/lang/String;

.field public mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

.field public final mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final mPlugins:Ljava/util/List;

.field public final mSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPlugins:Ljava/util/List;

    .line 10
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    .line 12
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    .line 18
    const-string v1, "miui.notification.action.PLUGIN_NOTIFICATION_STAT"

    .line 20
    const-class v2, Lcom/android/systemui/plugins/miui/notification/MiuiNotificationStatPlugin;

    .line 22
    const/4 v3, 0x1

    .line 24
    invoke-interface {v0, v1, p0, v2, v3}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 25
    const-string v0, "null"

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelSessionId:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 36
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 38
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 40
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 42
    const-class p1, Lcom/miui/interfaces/IEventTracker;

    .line 44
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Lcom/miui/interfaces/IEventTracker;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 52
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBgHandler:Landroid/os/Handler;

    .line 54
    invoke-interface {p5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 56
    move-result p1

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBarState:I

    .line 60
    new-instance p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$1;

    .line 62
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$1;-><init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;)V

    .line 64
    invoke-interface {p5, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 67
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 70
    move-object p1, p8

    .line 72
    check-cast p1, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 73
    iget p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    .line 75
    new-instance p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$2;

    .line 77
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$2;-><init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;)V

    .line 79
    invoke-interface {p8, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 82
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    .line 85
    new-instance p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda1;

    .line 87
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;)V

    .line 89
    iget-object p0, p10, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->mOnGroupChangeListeners:Ljava/util/Set;

    .line 92
    check-cast p0, Ljava/util/HashSet;

    .line 94
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
    .line 99
.end method

.method public static generateTextId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statTextId:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statTextId:Ljava/lang/String;

    .line 10
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 13
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 22
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    :try_start_0
    const-string v1, "MD5"

    .line 44
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 46
    move-result-object v1

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 54
    new-instance v0, Ljava/math/BigInteger;

    .line 57
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 59
    move-result-object v1

    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 64
    const-string v1, "%1$032X"

    .line 67
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 72
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    const-string v0, ""

    .line 78
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statTextId:Ljava/lang/String;

    .line 80
    return-object v0
    .line 82
.end method

.method public static getBoolString(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    const-string/jumbo p0, "true"

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "false"

    .line 8
    :goto_0
    return-object p0
    .line 10
.end method

.method public static getChannelId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, ""

    .line 13
    :goto_0
    return-object p0
    .line 15
.end method

.method public static getIsNotificationGrouped(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-nez v0, :cond_2

    .line 15
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    const-string p0, "false"

    .line 24
    goto :goto_2

    .line 26
    :cond_2
    :goto_1
    const-string/jumbo p0, "true"

    .line 27
    :goto_2
    return-object p0
    .line 30
.end method

.method public static getNotifGroupKey(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "null"

    .line 11
    :goto_0
    return-object p0
    .line 13
.end method

.method public static getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZ)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    .line 11
    sget-object p0, Lcom/miui/systemui/events/NotifSource;->SHADE_LOCKED:Lcom/miui/systemui/events/NotifSource;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    sget-object p0, Lcom/miui/systemui/events/NotifSource;->FLOAT:Lcom/miui/systemui/events/NotifSource;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 13
    sget-object p0, Lcom/miui/systemui/events/NotifSource;->KEYGUARD:Lcom/miui/systemui/events/NotifSource;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez p4, :cond_5

    if-eqz p0, :cond_3

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 15
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFold(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    sget-object p0, Lcom/miui/systemui/events/NotifSource;->PANEL:Lcom/miui/systemui/events/NotifSource;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_5
    :goto_1
    sget-object p0, Lcom/miui/systemui/events/NotifSource;->UNIMPORTANT:Lcom/miui/systemui/events/NotifSource;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 8
    const-string v0, "android.template"

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    const-string p0, "Normal"

    .line 22
    return-object p0

    .line 24
    :cond_0
    const-string v0, "$"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 30
    if-lez v0, :cond_1

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    const-string p0, "Unknown"

    .line 40
    return-object p0
    .line 42
.end method

.method public static getNotifTag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    const-string p0, "null"

    .line 10
    :cond_0
    return-object p0
    .line 12
.end method

.method public static isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public static resolveMediaStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo p0, "\u7cfb\u7edf\u6837\u5f0f"

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 24
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaSessionToken(Landroid/service/notification/StatusBarNotification;)Landroid/media/session/MediaSession$Token;

    .line 34
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 40
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 46
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mMediaAppWhiteList:Ljava/util/List;

    .line 48
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 53
    if-nez p0, :cond_1

    .line 54
    const-string/jumbo p0, "\u81ea\u5b9a\u4e49\u6837\u5f0f"

    .line 56
    goto :goto_0

    .line 59
    :cond_1
    const-string p0, "null"

    .line 60
    :goto_0
    return-object p0
    .line 62
.end method

.method public static resolvePushMsgId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 6
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 11
    const-string v0, "message_id"

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const-string p0, ""

    .line 22
    :goto_1
    return-object p0
.end method


# virtual methods
.method public final getChildrenStream(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/util/stream/Stream;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    move-result-object v0

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    move-object v0, p0

    .line 18
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    .line 27
    move-result-object p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;

    .line 34
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 38
    move-result-object p0

    .line 41
    :goto_1
    return-object p0

    .line 42
    :cond_2
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    .line 43
    move-result-object p0

    .line 46
    return-object p0
    .line 47
.end method

.method public final getIsPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mImportantWhitelist:Ljava/util/List;

    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const-string p0, "com.xiaomi.xmsf"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 25
    const/4 v0, -0x1

    .line 26
    if-eqz p0, :cond_1

    .line 27
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 29
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 31
    move-result-object p0

    .line 34
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 35
    const-string p1, "is_priority"

    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 39
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_1
    return v0
    .line 44
.end method

.method public final getNotifIndex(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 8
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 16
    move-result p0

    .line 19
    add-int/lit8 p0, p0, 0x1

    .line 20
    return p0
    .line 22
.end method

.method public final getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 5
    const-class v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 6
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZ)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 9
    sget-object p2, Lcom/miui/systemui/events/NotifSource;->PANEL:Lcom/miui/systemui/events/NotifSource;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isVisualInFloat:Z

    if-eqz p1, :cond_1

    .line 10
    sget-object p0, Lcom/miui/systemui/events/NotifSource;->FLOAT:Lcom/miui/systemui/events/NotifSource;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final getNotificationsCount()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBarState:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    if-ne v0, v2, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move v0, v2

    .line 13
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 18
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 22
    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda4;

    .line 26
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 31
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    .line 35
    move-result-wide v0

    .line 38
    long-to-int p0, v0

    .line 39
    return p0

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getUnfoldedNotificationsCount()I

    .line 41
    move-result p0

    .line 44
    int-to-long v2, p0

    .line 45
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 46
    move-result-object p0

    .line 49
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 50
    move-result-object p0

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda6;

    .line 54
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda6;-><init>()V

    .line 56
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 59
    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    .line 63
    move-result-wide v0

    .line 66
    add-long/2addr v0, v2

    .line 67
    long-to-int p0, v0

    .line 68
    return p0
    .line 69
.end method

.method public final getPanelSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "float"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    const-string v0, "keyguard"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelSessionId:Ljava/lang/String;

    .line 19
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const-string p0, "null"

    .line 22
    return-object p0
.end method

.method public final getScreenOrientationString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    if-nez p0, :cond_0

    .line 14
    const-string/jumbo p0, "undefined"

    .line 16
    return-object p0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    if-ne p0, v0, :cond_1

    .line 21
    const-string/jumbo p0, "\u7ad6\u5c4f"

    .line 23
    return-object p0

    .line 26
    :cond_1
    const-string/jumbo p0, "\u6a2a\u5c4f"

    .line 27
    return-object p0
    .line 30
.end method

.method public final getUnfoldedNotificationsCount()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBarState:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    if-ne v0, v3, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    move v0, v3

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 15
    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 23
    move-result-object v0

    .line 26
    new-instance v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda4;

    .line 27
    invoke-direct {v1, v3, p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 29
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 32
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    .line 36
    move-result-wide v0

    .line 39
    long-to-int p0, v0

    .line 40
    return p0

    .line 41
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 42
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 46
    move-result-object v0

    .line 49
    new-instance v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda4;

    .line 50
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 55
    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    .line 59
    move-result-wide v0

    .line 62
    long-to-int p0, v0

    .line 63
    return p0
    .line 64
.end method

.method public final handleVisibleEvent(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6

    .line 1
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2
    move-result-object p2

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda5;

    .line 6
    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;Ljava/lang/String;Z)V

    .line 8
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 11
    move-result-object p2

    .line 14
    new-instance p3, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$4;

    .line 15
    invoke-direct {p3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$4;-><init>()V

    .line 17
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 20
    move-result-object p2

    .line 23
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 24
    move-result-object p3

    .line 27
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 31
    move-object v1, p2

    .line 32
    check-cast v1, Ljava/util/List;

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    move-result p2

    .line 38
    if-lez p2, :cond_5

    .line 39
    new-instance p2, Lcom/miui/systemui/events/VisibleEvent;

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getScreenOrientationString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getPanelSessionId(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 50
    const-string p3, "panel"

    .line 51
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    move-result p3

    .line 56
    if-eqz p3, :cond_0

    .line 57
    const-string p1, "49.2.1.1.26186"

    .line 59
    :goto_0
    move-object v4, p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const-string/jumbo p3, "unimportant"

    .line 63
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    move-result p3

    .line 69
    if-eqz p3, :cond_1

    .line 70
    const-string p1, "49.2.2.1.26187"

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo p3, "shade_locked"

    .line 75
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 78
    move-result p3

    .line 81
    if-eqz p3, :cond_2

    .line 82
    const-string p1, "49.3.0.1.26189"

    .line 84
    goto :goto_0

    .line 86
    :cond_2
    const-string p3, "keyguard"

    .line 87
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 89
    move-result p3

    .line 92
    if-eqz p3, :cond_3

    .line 93
    const-string p1, "49.4.0.1.26188"

    .line 95
    goto :goto_0

    .line 97
    :cond_3
    const-string p3, "float"

    .line 98
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 100
    move-result p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    const-string p1, "49.5.0.1.26190"

    .line 106
    goto :goto_0

    .line 108
    :cond_4
    const-string p1, "error"

    .line 109
    goto :goto_0

    .line 111
    :goto_1
    const v5, 0x1509c44

    .line 112
    move-object v0, p2

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/miui/systemui/events/VisibleEvent;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 119
    invoke-interface {p0, p2}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 121
    :cond_5
    return-void
    .line 124
.end method

.method public final ifOngoingNotifCanCancel(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 8
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v0

    .line 15
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppUid:I

    .line 30
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUidSystem(I)Z

    .line 32
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->isNonBlockable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 42
    move-result p0

    .line 45
    if-nez p0, :cond_0

    .line 46
    invoke-static {p1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 48
    move-result p0

    .line 51
    if-nez p0, :cond_0

    .line 52
    const-class p0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 54
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    check-cast p0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 60
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isMediaNotification(Landroid/service/notification/StatusBarNotification;Z)Z

    .line 63
    move-result p0

    .line 66
    if-nez p0, :cond_0

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0
    .line 71
.end method

.method public final onArrive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    if-eqz p2, :cond_0

    .line 6
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 8
    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 10
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 12
    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->hasProgressbar(Landroid/app/Notification;)Z

    .line 16
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 22
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 24
    const-string v3, "com.android.systemui"

    .line 26
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_1

    .line 34
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 36
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 41
    const-string v5, "UNIMPORTANT"

    .line 42
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    move v2, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v2, v4

    .line 52
    :goto_0
    if-eqz v2, :cond_3

    .line 53
    :cond_2
    return-void

    .line 55
    :cond_3
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 56
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFoldEntrance(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 58
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    goto/16 :goto_8

    .line 64
    :cond_4
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 66
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 68
    move-result v6

    .line 71
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 72
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 74
    move-result-wide v7

    .line 77
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->generateTextId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 78
    move-result-object v9

    .line 81
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->resolvePushMsgId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 82
    move-result-object v10

    .line 85
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 86
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 88
    move-result-object v11

    .line 91
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 92
    iget-object v12, v5, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 94
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 96
    move-result-object v5

    .line 99
    if-nez v5, :cond_5

    .line 100
    goto :goto_1

    .line 102
    :cond_5
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 103
    const-string v13, "android.picture"

    .line 105
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 107
    move-result-object v5

    .line 110
    if-eqz v5, :cond_6

    .line 111
    move v13, v3

    .line 113
    goto :goto_2

    .line 114
    :cond_6
    :goto_1
    move v13, v4

    .line 115
    :goto_2
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 116
    move-result-object v5

    .line 119
    if-nez v5, :cond_7

    .line 120
    move v14, v4

    .line 122
    goto :goto_3

    .line 123
    :cond_7
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 124
    const-string v14, "android.contains.customView"

    .line 126
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 128
    move-result v5

    .line 131
    move v14, v5

    .line 132
    :goto_3
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 133
    move-result-object v5

    .line 136
    iget-object v5, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 137
    if-eqz v5, :cond_8

    .line 139
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 141
    move-result-object v5

    .line 144
    iget-object v5, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 145
    array-length v5, v5

    .line 147
    if-lez v5, :cond_8

    .line 148
    goto :goto_4

    .line 150
    :cond_8
    move v3, v4

    .line 151
    :goto_4
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 152
    move-result-object v4

    .line 155
    iget v4, v4, Landroid/app/Notification;->priority:I

    .line 156
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 158
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getChannelId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 160
    move-result-object v17

    .line 163
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 164
    move-result-object v5

    .line 167
    iget v15, v5, Landroid/app/Notification;->flags:I

    .line 168
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 170
    move-result-object v2

    .line 173
    if-nez v2, :cond_9

    .line 174
    goto :goto_5

    .line 176
    :cond_9
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 177
    const-string v5, "pushUid"

    .line 179
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 184
    if-eqz v2, :cond_a

    .line 185
    goto :goto_6

    .line 187
    :cond_a
    :goto_5
    const-string v2, ""

    .line 188
    :goto_6
    move-object/from16 v19, v2

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 192
    move-result v21

    .line 195
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 196
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFold(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 198
    move-result v2

    .line 201
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 202
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getFoldReason(Landroid/service/notification/StatusBarNotification;)I

    .line 204
    move-result v20

    .line 207
    if-eqz v2, :cond_b

    .line 208
    sget-boolean v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldTool;->isInit:Z

    .line 210
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifGroupKey(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 212
    move-result-object v22

    .line 215
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->ifOngoingNotifCanCancel(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 216
    move-result v2

    .line 219
    if-eqz v2, :cond_c

    .line 220
    const-string/jumbo v2, "\u662f"

    .line 222
    goto :goto_7

    .line 225
    :cond_c
    const-string/jumbo v2, "\u5426"

    .line 226
    :goto_7
    move-object/from16 v25, v2

    .line 229
    new-instance v2, Lcom/miui/systemui/events/EnqueueEvent;

    .line 231
    move-object v5, v2

    .line 233
    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 234
    move-result-object v14

    .line 237
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 238
    move-result-object v3

    .line 241
    move/from16 v18, v15

    .line 242
    move-object v15, v3

    .line 244
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 245
    move-result-object v23

    .line 248
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifTag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 249
    move-result-object v24

    .line 252
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 253
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 255
    move-result v3

    .line 258
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 259
    move-result-object v26

    .line 262
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 263
    move-result v3

    .line 266
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 267
    move-result-object v27

    .line 270
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 271
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFoldEntrance(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 273
    move-result v3

    .line 276
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 277
    move-result-object v28

    .line 280
    const-string v29, "49.1.0.1.23427"

    .line 281
    const v30, 0x1509c44

    .line 283
    move/from16 v16, v4

    .line 286
    invoke-direct/range {v5 .. v30}, Lcom/miui/systemui/events/EnqueueEvent;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 291
    invoke-interface {v3, v2}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 293
    :goto_8
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 296
    new-instance v2, Ljava/util/HashMap;

    .line 298
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 300
    const-string/jumbo v3, "sbn"

    .line 303
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v1, "update"

    .line 309
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 312
    move-result-object v3

    .line 315
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 319
    const-string v3, "notification_enqueue"

    .line 321
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 323
    return-void
    .line 326
.end method

.method public final onClick(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 6
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsClick:Z

    .line 11
    sget-object v4, Lcom/miui/systemui/events/NotifAction;->CLICK:Lcom/miui/systemui/events/NotifAction;

    .line 13
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mFistNotifAction:Lcom/miui/systemui/events/NotifAction;

    .line 15
    sget-object v6, Lcom/miui/systemui/events/NotifAction;->NONE:Lcom/miui/systemui/events/NotifAction;

    .line 17
    if-ne v5, v6, :cond_0

    .line 19
    iput-object v4, v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mFistNotifAction:Lcom/miui/systemui/events/NotifAction;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    :cond_0
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    new-instance v15, Lcom/miui/systemui/events/ClickEvent;

    .line 30
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 32
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 37
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 38
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 40
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 42
    move-result-wide v7

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 46
    move-result-object v9

    .line 49
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 50
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 52
    move-result v4

    .line 55
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 56
    move-result-object v10

    .line 59
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getIsNotificationGrouped(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 60
    move-result-object v11

    .line 63
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 64
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getChannelId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 66
    move-result-object v12

    .line 69
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 70
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->generateTextId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 72
    move-result-object v13

    .line 75
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 76
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 78
    move-result-object v4

    .line 81
    iget v14, v4, Landroid/app/Notification;->priority:I

    .line 82
    iget v4, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBarState:I

    .line 84
    const/4 v3, 0x2

    .line 86
    move/from16 v16, v14

    .line 87
    if-eq v4, v3, :cond_2

    .line 89
    const/4 v3, 0x1

    .line 91
    if-ne v4, v3, :cond_1

    .line 92
    goto :goto_0

    .line 94
    :cond_1
    const/4 v3, 0x0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 97
    :goto_1
    const-string/jumbo v4, "true"

    .line 98
    const-string v17, "false"

    .line 101
    if-eqz v3, :cond_3

    .line 103
    const-string v3, ""

    .line 105
    goto :goto_3

    .line 107
    :cond_3
    const-class v3, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 108
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    move-result-object v3

    .line 113
    check-cast v3, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 114
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    .line 116
    if-eqz v14, :cond_4

    .line 118
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 120
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result v3

    .line 125
    if-eqz v3, :cond_4

    .line 126
    const/4 v3, 0x1

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const/4 v3, 0x0

    .line 130
    :goto_2
    if-eqz v3, :cond_5

    .line 131
    move-object v3, v4

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move-object/from16 v3, v17

    .line 135
    :goto_3
    iget-object v14, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 137
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 139
    move-result-object v14

    .line 142
    iget v14, v14, Landroid/app/Notification;->flags:I

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getScreenOrientationString()Ljava/lang/String;

    .line 145
    move-result-object v19

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 149
    move-result v20

    .line 152
    move-object/from16 v21, v4

    .line 153
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 155
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 157
    move-result v22

    .line 160
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 161
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->resolvePushMsgId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;

    .line 163
    move-result-object v23

    .line 166
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 167
    if-eqz v4, :cond_6

    .line 169
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSessionId:Ljava/util/UUID;

    .line 171
    if-eqz v4, :cond_6

    .line 173
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 178
    goto :goto_4

    .line 179
    :cond_6
    const-string v4, "null"

    .line 180
    :goto_4
    move-object/from16 v24, v4

    .line 182
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    .line 184
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->isGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 186
    move-result v4

    .line 189
    if-eqz v4, :cond_7

    .line 190
    move-object/from16 v25, v21

    .line 192
    goto :goto_5

    .line 194
    :cond_7
    move-object/from16 v25, v17

    .line 195
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifGroupKey(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 197
    move-result-object v26

    .line 200
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 201
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getFoldReason(Landroid/service/notification/StatusBarNotification;)I

    .line 203
    move-result v27

    .line 206
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->ifOngoingNotifCanCancel(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 207
    move-result v4

    .line 210
    if-eqz v4, :cond_8

    .line 211
    const-string/jumbo v4, "\u662f"

    .line 213
    goto :goto_6

    .line 216
    :cond_8
    const-string/jumbo v4, "\u5426"

    .line 217
    :goto_6
    move-object/from16 v28, v4

    .line 220
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifTag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 222
    move-result-object v29

    .line 225
    iget v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->visualPosition:I

    .line 226
    move/from16 v17, v4

    .line 228
    const-string v4, "panel"

    .line 230
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 232
    move-result v4

    .line 235
    if-eqz v4, :cond_9

    .line 236
    const-string v4, "49.2.1.1.23683"

    .line 238
    :goto_7
    move-object/from16 v33, v4

    .line 240
    goto :goto_8

    .line 242
    :cond_9
    const-string/jumbo v4, "unimportant"

    .line 243
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 246
    move-result v4

    .line 249
    if-eqz v4, :cond_a

    .line 250
    const-string v4, "49.2.2.1.23691"

    .line 252
    goto :goto_7

    .line 254
    :cond_a
    const-string v4, "keyguard"

    .line 255
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 257
    move-result v4

    .line 260
    if-eqz v4, :cond_b

    .line 261
    const-string v4, "49.4.0.1.23723"

    .line 263
    goto :goto_7

    .line 265
    :cond_b
    const-string v4, "float"

    .line 266
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 268
    move-result v4

    .line 271
    if-eqz v4, :cond_c

    .line 272
    const-string v4, "49.5.0.1.23725"

    .line 274
    goto :goto_7

    .line 276
    :cond_c
    const-string/jumbo v4, "shade_locked"

    .line 277
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 280
    move-result v4

    .line 283
    if-eqz v4, :cond_d

    .line 284
    const-string v4, "49.3.0.1.23720"

    .line 286
    goto :goto_7

    .line 288
    :cond_d
    const-string/jumbo v4, "undefined"

    .line 289
    goto :goto_7

    .line 292
    :goto_8
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->resolveMediaStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 293
    move-result-object v30

    .line 296
    const-string v31, "null"

    .line 297
    const v32, 0x1509c44

    .line 299
    move/from16 v34, v17

    .line 302
    move-object v4, v15

    .line 304
    move/from16 v17, v14

    .line 305
    move/from16 v14, v16

    .line 307
    move-object v1, v15

    .line 309
    move-object v15, v3

    .line 310
    move/from16 v16, v17

    .line 311
    move-object/from16 v17, v19

    .line 313
    move/from16 v18, v20

    .line 315
    move/from16 v19, v22

    .line 317
    move-object/from16 v20, v23

    .line 319
    move-object/from16 v21, v24

    .line 321
    move-object/from16 v22, v25

    .line 323
    move-object/from16 v23, v26

    .line 325
    move/from16 v24, v27

    .line 327
    move-object/from16 v25, v28

    .line 329
    move-object/from16 v26, p2

    .line 331
    move-object/from16 v27, v29

    .line 333
    move/from16 v28, v34

    .line 335
    move-object/from16 v29, v33

    .line 337
    invoke-direct/range {v4 .. v32}, Lcom/miui/systemui/events/ClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 342
    invoke-interface {v3, v1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 344
    new-instance v3, Ljava/util/HashMap;

    .line 347
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 349
    invoke-virtual {v1}, Lcom/miui/systemui/events/ClickEvent;->getPosition()I

    .line 352
    move-result v1

    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    move-result-object v1

    .line 359
    const-string v4, "index"

    .line 360
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v1, "source"

    .line 365
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    move-object/from16 v1, p1

    .line 371
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 373
    const-string/jumbo v5, "sbn"

    .line 375
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 381
    const-string v5, "notification_click"

    .line 383
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 385
    sget-object v3, Lcom/miui/systemui/events/NotifSource;->FLOAT:Lcom/miui/systemui/events/NotifSource;

    .line 388
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 390
    move-result-object v3

    .line 393
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 394
    move-result v3

    .line 397
    if-eqz v3, :cond_f

    .line 398
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 400
    if-eqz v3, :cond_e

    .line 402
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 404
    move-result-object v3

    .line 407
    instance-of v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 408
    if-eqz v3, :cond_e

    .line 410
    const/4 v14, 0x1

    .line 412
    goto :goto_9

    .line 413
    :cond_e
    const/4 v14, 0x0

    .line 414
    :goto_9
    if-eqz v14, :cond_f

    .line 415
    new-instance v3, Ljava/util/ArrayList;

    .line 417
    const/4 v4, 0x1

    .line 419
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 420
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const/4 v1, 0x0

    .line 426
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->handleVisibleEvent(Ljava/lang/String;Ljava/util/List;Z)V

    .line 427
    :cond_f
    return-void
    .line 430
.end method

.method public final onMediaClick(Ljava/lang/String;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v15, Lcom/miui/systemui/events/ClickEvent;

    .line 4
    const-string v2, "null"

    .line 6
    const-string v3, "null"

    .line 8
    const-wide/16 v4, 0x0

    .line 10
    const-string v6, "null"

    .line 12
    const-string v7, "null"

    .line 14
    const-string v8, "null"

    .line 16
    const-string v9, "null"

    .line 18
    const-string v10, "null"

    .line 20
    const/4 v11, 0x0

    .line 22
    const-string v12, "null"

    .line 23
    const/4 v13, 0x0

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getScreenOrientationString()Ljava/lang/String;

    .line 26
    move-result-object v14

    .line 29
    const/16 v16, 0x0

    .line 30
    const/16 v17, 0x0

    .line 32
    const-string v18, "null"

    .line 34
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 36
    if-eqz v1, :cond_0

    .line 38
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSessionId:Ljava/util/UUID;

    .line 40
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v1, "null"

    .line 49
    :goto_0
    move-object/from16 v28, v1

    .line 51
    const-string v19, "null"

    .line 53
    const-string v20, "null"

    .line 55
    const/16 v21, 0x0

    .line 57
    const-string v22, "null"

    .line 59
    const-string v23, "null"

    .line 61
    const-string v24, "null"

    .line 63
    const/16 v25, 0x0

    .line 65
    const-string v26, "null"

    .line 67
    const-string/jumbo v27, "\u7cfb\u7edf\u6837\u5f0f"

    .line 69
    const v29, 0x1509c44

    .line 72
    move-object v1, v15

    .line 75
    move-object/from16 v30, v15

    .line 76
    move/from16 v15, v16

    .line 78
    move/from16 v16, v17

    .line 80
    move-object/from16 v17, v18

    .line 82
    move-object/from16 v18, v28

    .line 84
    move-object/from16 v28, p1

    .line 86
    invoke-direct/range {v1 .. v29}, Lcom/miui/systemui/events/ClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 91
    move-object/from16 v1, v30

    .line 93
    invoke-interface {v0, v1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 95
    return-void
    .line 98
.end method

.method public final onPanelCollapsed$1()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getUnfoldedNotificationsCount()I

    .line 9
    move-result v4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotificationsCount()I

    .line 13
    move-result v8

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getScreenOrientationString()Ljava/lang/String;

    .line 17
    move-result-object v12

    .line 20
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mCollapseEvent:Lcom/miui/systemui/events/CollapseEvent;

    .line 21
    if-eqz v2, :cond_1

    .line 23
    const/4 v2, 0x0

    .line 25
    goto/16 :goto_5

    .line 26
    :cond_1
    new-instance v14, Lcom/miui/systemui/events/CollapseEvent;

    .line 28
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsClick:Z

    .line 30
    if-eqz v2, :cond_2

    .line 32
    const-string/jumbo v2, "\u70b9\u51fb\u6d88\u606f\u8df3\u8f6c"

    .line 34
    :goto_0
    move-object v3, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsClickAction:Z

    .line 39
    if-eqz v2, :cond_3

    .line 41
    const-string/jumbo v2, "\u70b9\u51fbaction"

    .line 43
    goto :goto_0

    .line 46
    :cond_3
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsHomePressed:Z

    .line 47
    if-eqz v2, :cond_4

    .line 49
    const-string/jumbo v2, "\u70b9\u51fbhome\u952e"

    .line 51
    goto :goto_0

    .line 54
    :cond_4
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsRemoveAll:Z

    .line 55
    if-eqz v2, :cond_5

    .line 57
    const-string/jumbo v2, "\u70b9\u51fb\u4e00\u952e\u6e05\u9664"

    .line 59
    goto :goto_0

    .line 62
    :cond_5
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSwitchedToControl:Z

    .line 63
    if-eqz v2, :cond_6

    .line 65
    const-string/jumbo v2, "\u5207\u6362\u63a7\u5236\u4e2d\u5fc3"

    .line 67
    goto :goto_0

    .line 70
    :cond_6
    const-string/jumbo v2, "\u5176\u4ed6"

    .line 71
    goto :goto_0

    .line 74
    :goto_1
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsRemove:Z

    .line 75
    if-eqz v2, :cond_7

    .line 77
    const-string/jumbo v2, "true"

    .line 79
    goto :goto_2

    .line 82
    :cond_7
    const-string v2, "false"

    .line 83
    :goto_2
    move-object v5, v2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    move-result-wide v6

    .line 89
    iget-wide v9, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mCreateTimeMillis:J

    .line 90
    sub-long/2addr v6, v9

    .line 92
    iget v9, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mPanelSlidingTimes:I

    .line 93
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSessionId:Ljava/util/UUID;

    .line 95
    if-eqz v2, :cond_8

    .line 97
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 102
    goto :goto_3

    .line 103
    :cond_8
    const-string v2, "null"

    .line 104
    :goto_3
    move-object v11, v2

    .line 106
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mExpandEvent:Lcom/miui/systemui/events/ExpandEvent;

    .line 107
    invoke-virtual {v2}, Lcom/miui/systemui/events/ExpandEvent;->getCurrentPage()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 112
    const-string v10, "lockscreen"

    .line 113
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v2

    .line 118
    if-eqz v2, :cond_9

    .line 119
    const-string v2, "49.3.0.1.23677"

    .line 121
    goto :goto_4

    .line 123
    :cond_9
    const-string v2, "49.2.0.1.23676"

    .line 124
    :goto_4
    move-object v13, v2

    .line 126
    const v16, 0x1509c44

    .line 127
    const/4 v10, 0x0

    .line 130
    move-object v2, v14

    .line 131
    move-object v15, v14

    .line 132
    move/from16 v14, v16

    .line 133
    invoke-direct/range {v2 .. v14}, Lcom/miui/systemui/events/CollapseEvent;-><init>(Ljava/lang/String;ILjava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    iput-object v15, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mCollapseEvent:Lcom/miui/systemui/events/CollapseEvent;

    .line 138
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 140
    invoke-interface {v2, v15}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 142
    const/4 v2, 0x0

    .line 145
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mExpandEvent:Lcom/miui/systemui/events/ExpandEvent;

    .line 146
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSessionId:Ljava/util/UUID;

    .line 148
    :goto_5
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 150
    return-void
    .line 152
.end method

.method public final onPanelExpanded(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 7
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 14
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    move v1, v2

    .line 25
    :goto_0
    const-string v0, "lockscreen"

    .line 26
    if-eqz v1, :cond_2

    .line 28
    move-object v4, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {v1, v2}, Lcom/miui/systemui/util/CommonUtil;->getTopActivityPkg(Landroid/content/Context;Z)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    move-object v4, v1

    .line 38
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotificationsCount()I

    .line 41
    move-result v6

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getScreenOrientationString()Ljava/lang/String;

    .line 45
    move-result-object v8

    .line 48
    const/4 v9, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getUnfoldedNotificationsCount()I

    .line 50
    move-result v10

    .line 53
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mExpandEvent:Lcom/miui/systemui/events/ExpandEvent;

    .line 54
    const-string v13, "null"

    .line 56
    if-eqz v3, :cond_3

    .line 58
    goto :goto_4

    .line 60
    :cond_3
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsHomePressed:Z

    .line 61
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsRemove:Z

    .line 63
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsRemoveAll:Z

    .line 65
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsClick:Z

    .line 67
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsClickAction:Z

    .line 69
    sget-object v3, Lcom/miui/systemui/events/NotifAction;->NONE:Lcom/miui/systemui/events/NotifAction;

    .line 71
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mFistNotifAction:Lcom/miui/systemui/events/NotifAction;

    .line 73
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mVisibleKeys:Ljava/util/Set;

    .line 75
    check-cast v3, Ljava/util/HashSet;

    .line 77
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    move-result-wide v11

    .line 85
    iput-wide v11, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mCreateTimeMillis:J

    .line 86
    iput v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mPanelSlidingTimes:I

    .line 88
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 90
    move-result-object v3

    .line 93
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSessionId:Ljava/util/UUID;

    .line 94
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSwitchedToControl:Z

    .line 96
    new-instance v2, Lcom/miui/systemui/events/ExpandEvent;

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v3

    .line 103
    if-eqz v3, :cond_4

    .line 104
    const-string p1, ""

    .line 106
    :cond_4
    move-object v5, p1

    .line 108
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSessionId:Ljava/util/UUID;

    .line 109
    if-eqz p1, :cond_5

    .line 111
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 116
    move-object v7, p1

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move-object v7, v13

    .line 119
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result p1

    .line 123
    if-eqz p1, :cond_6

    .line 124
    const-string p1, "49.3.0.1.23675"

    .line 126
    goto :goto_3

    .line 128
    :cond_6
    const-string p1, "49.2.0.1.23674"

    .line 129
    :goto_3
    move-object v11, p1

    .line 131
    const v12, 0x1509c44

    .line 132
    move-object v3, v2

    .line 135
    invoke-direct/range {v3 .. v12}, Lcom/miui/systemui/events/ExpandEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 136
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mExpandEvent:Lcom/miui/systemui/events/ExpandEvent;

    .line 139
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 141
    invoke-interface {p1, v2}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 143
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 146
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSessionId:Ljava/util/UUID;

    .line 148
    if-eqz p1, :cond_7

    .line 150
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 152
    move-result-object v13

    .line 155
    :cond_7
    iput-object v13, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelSessionId:Ljava/lang/String;

    .line 156
    return-void
    .line 158
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/notification/MiuiNotificationStatPlugin;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPlugins:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/notification/MiuiNotificationStatPlugin;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPlugins:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPlugins:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStatWithPlugin$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStatWithPlugin$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    return-void
    .line 14
.end method

.method public final sendBlockNotificationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "com.miui.systemAdSolution"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance p1, Landroid/content/Intent;

    .line 16
    const-string v1, "miui.intent.adblock"

    .line 18
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v0, "adid"

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 31
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 35
    :cond_0
    return-void
    .line 38
.end method
