.class public final Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final handler:Landroid/os/Handler;

.field public hideSilentNotificationsOnLockscreen:Z

.field public final highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final onStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final showSilentNotifsUri:Landroid/net/Uri;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->handler:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 21
    const-string p1, "lock_screen_show_silent_notifications"

    .line 23
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->showSilentNotifsUri:Landroid/net/Uri;

    .line 29
    new-instance p1, Lcom/android/systemui/util/ListenerSet;

    .line 31
    invoke-direct {p1}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->onStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

    .line 36
    new-instance p1, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$userTrackerCallback$1;

    .line 38
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$userTrackerCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->userTrackerCallback:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$userTrackerCallback$1;

    .line 43
    return-void
    .line 45
.end method

.method public static final access$notifyStateChanged(Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->onStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/function/Consumer;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public static final userSettingsDisallowNotification$disallowForUser(Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto/16 :goto_6

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 15
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 17
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v0, :cond_1

    .line 22
    goto/16 :goto_5

    .line 24
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 26
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getLockscreenVisibilityOverride()I

    .line 28
    move-result p1

    .line 31
    const/4 v0, -0x1

    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    goto :goto_6

    .line 35
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 42
    if-eq p2, p1, :cond_3

    .line 44
    move p0, v1

    .line 46
    goto :goto_4

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 48
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 50
    move-result v3

    .line 53
    if-gez v3, :cond_8

    .line 54
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 56
    const-string v4, "lock_screen_show_notifications"

    .line 58
    invoke-interface {v3, v2, p2, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 60
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    move v3, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move v3, v2

    .line 68
    :goto_0
    if-ne p2, v0, :cond_5

    .line 69
    goto :goto_1

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 72
    const/4 v4, 0x0

    .line 74
    invoke-virtual {v0, v4, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 75
    move-result v0

    .line 78
    and-int/lit8 v0, v0, 0x4

    .line 79
    if-nez v0, :cond_6

    .line 81
    :goto_1
    move v0, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_6
    move v0, v2

    .line 85
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 86
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->getPrivateNotificationsAllowed()Z

    .line 88
    move-result p0

    .line 91
    if-eqz v3, :cond_7

    .line 92
    if-eqz v0, :cond_7

    .line 94
    if-eqz p0, :cond_7

    .line 96
    move p0, v1

    .line 98
    goto :goto_3

    .line 99
    :cond_7
    move p0, v2

    .line 100
    :goto_3
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 101
    goto :goto_4

    .line 104
    :cond_8
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 105
    move-result p0

    .line 108
    :goto_4
    if-nez p0, :cond_9

    .line 109
    goto :goto_6

    .line 111
    :cond_9
    :goto_5
    move v1, v2

    .line 112
    :goto_6
    return v1
    .line 113
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo p2, "statusBarStateController.currentOrUpcomingState="

    .line 2
    const-string v0, "keyguardStateController.isShowing="

    .line 5
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->isLockedOrLocking()Z

    .line 11
    move-result v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    const-string v3, "isLockedOrLocking="

    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 35
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 37
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 56
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 58
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 77
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->hideSilentNotificationsOnLockscreen:Z

    .line 80
    const-string p2, "hideSilentNotificationsOnLockscreen="

    .line 82
    invoke-static {p2, p0, p1}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 84
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 89
    throw p0
    .line 92
.end method

.method public final isLockedOrLocking()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 13
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 15
    if-ne p0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    return v1
    .line 21
.end method

.method public final shouldHideIfEntrySilent(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 12
    move-result-object v0

    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->hideSilentNotificationsOnLockscreen:Z

    .line 16
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 23
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 25
    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->shouldHideIfEntrySilent(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    .line 29
    :cond_2
    :goto_0
    return v1
    .line 32
.end method

.method public final shouldHideNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->isLockedOrLocking()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    goto/16 :goto_d

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 13
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    .line 15
    const/4 v3, 0x1

    .line 17
    if-nez v2, :cond_1

    .line 18
    goto/16 :goto_c

    .line 20
    :cond_1
    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 22
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 24
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    move-result v2

    .line 33
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->userSettingsDisallowNotification$disallowForUser(Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    .line 34
    move-result v4

    .line 37
    const/4 v5, -0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    move v0, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    if-ne v2, v5, :cond_3

    .line 43
    goto :goto_0

    .line 45
    :cond_3
    if-ne v2, v0, :cond_4

    .line 46
    :goto_0
    move v0, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    invoke-static {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->userSettingsDisallowNotification$disallowForUser(Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    .line 50
    move-result v0

    .line 53
    :goto_1
    if-eqz v0, :cond_5

    .line 54
    goto/16 :goto_c

    .line 56
    :cond_5
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 58
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 60
    move-result-object v0

    .line 63
    iget v0, v0, Landroid/app/Notification;->visibility:I

    .line 64
    if-ne v0, v5, :cond_6

    .line 66
    goto/16 :goto_c

    .line 68
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    .line 70
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 72
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    .line 78
    move-result v0

    .line 81
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 82
    const-string v4, "NotificationFilterController"

    .line 84
    if-eqz v0, :cond_7

    .line 86
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    .line 88
    if-eqz v0, :cond_a

    .line 90
    const-string/jumbo v0, "show media on keyguard "

    .line 92
    invoke-static {v0, v2, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    goto :goto_3

    .line 98
    :cond_7
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 99
    sget-object v5, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 101
    if-eqz v0, :cond_8

    .line 103
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 105
    const-string v5, "com.android.cts.verifier"

    .line 107
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v0

    .line 112
    if-eqz v0, :cond_8

    .line 113
    move v0, v3

    .line 115
    goto :goto_2

    .line 116
    :cond_8
    move v0, v1

    .line 117
    :goto_2
    if-eqz v0, :cond_9

    .line 118
    goto :goto_3

    .line 120
    :cond_9
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 121
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 123
    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isUpdatableFocusNotification(Landroid/app/Notification;)Z

    .line 127
    move-result v0

    .line 130
    if-eqz v0, :cond_b

    .line 131
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    .line 133
    if-eqz v0, :cond_a

    .line 135
    const-string/jumbo v0, "show updatable focus notification on keyguard "

    .line 137
    invoke-static {v0, v2, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_a
    :goto_3
    move v0, v3

    .line 143
    goto :goto_4

    .line 144
    :cond_b
    move v0, v1

    .line 145
    :goto_4
    if-eqz v0, :cond_c

    .line 146
    goto/16 :goto_d

    .line 148
    :cond_c
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->DEBUG:Z

    .line 150
    const-class v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 152
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 154
    move-result-object v0

    .line 157
    check-cast v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 158
    iget-object v2, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 160
    const v5, 0x7f050088    # @bool/kept_notifications_on_keyguard 'false'

    .line 162
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 165
    move-result v2

    .line 168
    if-nez v2, :cond_e

    .line 169
    const-string v2, "OR"

    .line 171
    iget-object v0, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrier:Ljava/lang/String;

    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v0

    .line 178
    if-eqz v0, :cond_d

    .line 179
    goto :goto_5

    .line 181
    :cond_d
    move v0, v1

    .line 182
    goto :goto_6

    .line 183
    :cond_e
    :goto_5
    move v0, v3

    .line 184
    :goto_6
    if-nez v0, :cond_13

    .line 185
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 187
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 189
    move-result-object v2

    .line 192
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 193
    const-string v5, "miui.onlyShowKeyguard"

    .line 195
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 197
    move-result v2

    .line 200
    if-eqz v2, :cond_f

    .line 201
    move v0, v1

    .line 203
    goto :goto_7

    .line 204
    :cond_f
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mHasShownAfterUnlock:Z

    .line 205
    :goto_7
    if-eqz v0, :cond_13

    .line 207
    const-class v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 209
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    move-result-object v0

    .line 214
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 215
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 217
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 219
    move-result-object v2

    .line 222
    if-eqz v2, :cond_12

    .line 223
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;

    .line 225
    move-result-object v0

    .line 228
    if-eqz v0, :cond_12

    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 231
    move-result-object v0

    .line 234
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    move-result v2

    .line 238
    if-eqz v2, :cond_12

    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    move-result-object v2

    .line 244
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 245
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 247
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 249
    move-result-object v6

    .line 252
    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 253
    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 255
    move-result v6

    .line 258
    if-eqz v6, :cond_11

    .line 259
    move v2, v1

    .line 261
    goto :goto_8

    .line 262
    :cond_11
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mHasShownAfterUnlock:Z

    .line 263
    :goto_8
    if-nez v2, :cond_10

    .line 265
    move v0, v3

    .line 267
    goto :goto_9

    .line 268
    :cond_12
    move v0, v1

    .line 269
    :goto_9
    if-nez v0, :cond_13

    .line 270
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    .line 272
    if-eqz v0, :cond_14

    .line 274
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 276
    const-string v2, "has shown "

    .line 278
    invoke-static {v2, v0, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    goto :goto_a

    .line 283
    :cond_13
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 284
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->canShowOnKeyguard()Z

    .line 286
    move-result v0

    .line 289
    if-nez v0, :cond_15

    .line 290
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    .line 292
    if-eqz v0, :cond_14

    .line 294
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 296
    const-string v2, "can not show onKeyguard "

    .line 298
    invoke-static {v2, v0, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_14
    :goto_a
    move v0, v3

    .line 303
    goto :goto_b

    .line 304
    :cond_15
    move v0, v1

    .line 305
    :goto_b
    if-eqz v0, :cond_16

    .line 306
    goto :goto_c

    .line 308
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->shouldHideIfEntrySilent(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    .line 309
    move-result p0

    .line 312
    if-eqz p0, :cond_17

    .line 313
    :goto_c
    move v1, v3

    .line 315
    :cond_17
    :goto_d
    return v1
    .line 316
.end method

.method public final start()V
    .locals 9

    .line 1
    const/4 v0, -0x2

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 3
    const/4 v2, 0x0

    .line 5
    const-string v3, "lock_screen_show_silent_notifications"

    .line 6
    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getBoolForUser(ZILjava/lang/String;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v4, 0x1

    .line 12
    xor-int/2addr v0, v4

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->hideSilentNotificationsOnLockscreen:Z

    .line 14
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$start$1;

    .line 16
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$start$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;)V

    .line 18
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 21
    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 23
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$start$2;

    .line 28
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$start$2;-><init>(Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;)V

    .line 30
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 33
    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$start$settingsObserver$1;

    .line 38
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->handler:Landroid/os/Handler;

    .line 40
    invoke-direct {v0, p0, v5}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$start$settingsObserver$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Landroid/os/Handler;)V

    .line 42
    const-string v6, "lock_screen_show_notifications"

    .line 45
    const/4 v7, -0x1

    .line 47
    invoke-interface {v1, v6, v0, v7}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 48
    const-string v6, "lock_screen_allow_private_notifications"

    .line 51
    invoke-interface {v1, v6, v4, v0, v7}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    .line 53
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 56
    check-cast v4, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    .line 58
    const-string/jumbo v6, "zen_mode"

    .line 60
    invoke-virtual {v4, v6}, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 63
    move-result-object v6

    .line 66
    invoke-interface {v4}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 67
    move-result v8

    .line 70
    invoke-interface {v4, v6, v2, v0, v8}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 71
    invoke-interface {v1, v3, v0, v7}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$start$3;

    .line 77
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$start$3;-><init>(Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 82
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 84
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->userTrackerCallback:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl$userTrackerCallback$1;

    .line 89
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 91
    invoke-direct {v1, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 96
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 100
    return-void
    .line 103
.end method
