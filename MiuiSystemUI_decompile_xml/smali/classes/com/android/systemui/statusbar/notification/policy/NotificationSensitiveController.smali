.class public final Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;->mContext:Landroid/content/Context;

    .line 5
    const-string/jumbo v0, "security"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Lmiui/security/SecurityManager;

    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final showSensitiveByAppLock(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 1
    const-class v0, Lcom/android/systemui/settings/UserTracker;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/settings/UserTracker;

    .line 8
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 12
    move-result v0

    .line 15
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 16
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 22
    move-result v1

    .line 25
    sget-object v2, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->sAppLocks:Ljava/util/Map;

    .line 26
    const/4 v2, 0x0

    .line 28
    if-gez v0, :cond_0

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    const-string v4, "getCurrentUserIdIfNeeded() error currentUserId < 0: originalUserId="

    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v4, "; currentUserId="

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 52
    const-string v3, "AppLockHelper"

    .line 53
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    move v0, v2

    .line 58
    :cond_0
    if-gez v1, :cond_1

    .line 59
    move v1, v0

    .line 61
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 62
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->sAppLocks:Ljava/util/Map;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v3

    .line 71
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 75
    const/4 v3, 0x1

    .line 76
    if-eqz v0, :cond_2

    .line 77
    sget-object p0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->sAppLocks:Ljava/util/Map;

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v0

    .line 84
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 88
    check-cast p0, Ljava/util/Set;

    .line 89
    if-eqz p0, :cond_3

    .line 91
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result p0

    .line 96
    if-eqz p0, :cond_3

    .line 97
    :goto_0
    move v2, v3

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 103
    move-result-object v0

    .line 106
    invoke-static {v0, v1}, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->isACLockEnabledAsUser(Landroid/content/ContentResolver;I)Z

    .line 107
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 113
    invoke-virtual {p0, p1, v1}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    .line 115
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p0, p1, v1}, Lmiui/security/SecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    .line 121
    move-result v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p0, p1, v1}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;I)Z

    .line 127
    move-result p0

    .line 130
    if-nez p0, :cond_3

    .line 131
    goto :goto_0

    .line 133
    :cond_3
    :goto_1
    return v2
    .line 134
.end method
