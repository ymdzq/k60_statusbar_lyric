.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public mDispatchUiModeChangeOnUserSwitched:Z

.field public final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public mIsSwitchingUser:Z

.field public final mKeyguardUpdateCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public mReinflateNotificationsOnUserSwitched:Z

.field public final mUserChangedListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;

    .line 18
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mUserChangedListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 6
    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    .line 8
    check-cast p1, Ljava/util/ArrayList;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mUserChangedListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 17
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 28
    const-class p1, Lcom/miui/systemui/SettingsManager;

    .line 31
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Lcom/miui/systemui/SettingsManager;

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$registerMiuiListeners$1;

    .line 39
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$registerMiuiListeners$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V

    .line 41
    iget-object v1, p1, Lcom/miui/systemui/SettingsManager;->notifStyleListeners:Ljava/util/List;

    .line 44
    check-cast v1, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 51
    if-nez v2, :cond_0

    .line 52
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$registerMiuiListeners$2;

    .line 57
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$registerMiuiListeners$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V

    .line 59
    iget-object v1, p1, Lcom/miui/systemui/SettingsManager;->notifFoldListeners:Ljava/util/List;

    .line 62
    check-cast v1, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 66
    move-result v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$registerMiuiListeners$3;

    .line 75
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$registerMiuiListeners$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V

    .line 77
    iget-object p0, p1, Lcom/miui/systemui/SettingsManager;->notifAggregateListeners:Ljava/util/List;

    .line 80
    check-cast p0, Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 87
    if-nez p1, :cond_2

    .line 88
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    return-void
    .line 93
.end method

.method public final onDensityOrFontScaleChanged(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/widget/MessagingMessage;->dropCache()V

    .line 2
    invoke-static {}, Lcom/android/internal/widget/MessagingGroup;->dropCache()V

    .line 5
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 14
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 18
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$2;

    .line 24
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$3;

    .line 32
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 34
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mIsSwitchingUser:Z

    .line 37
    if-nez p1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->updateNotificationsOnDensityOrFontScaleChanged()V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mReinflateNotificationsOnUserSwitched:Z

    .line 46
    :goto_0
    return-void
    .line 48
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->updateNotificationsOnDensityOrFontScaleChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public final onThemeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onUiModeChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mIsSwitchingUser:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->updateNotificationsOnUiModeChanged()V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mDispatchUiModeChangeOnUserSwitched:Z

    .line 11
    :goto_0
    return-void
    .line 13
.end method

.method public final updateNotificationsOnDensityOrFontScaleChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2
    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_5

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 24
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 26
    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onDensityOrFontScaleChanged()V

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 33
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 34
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 36
    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 40
    move-result-object v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 46
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 48
    move-result-object v3

    .line 51
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 52
    if-eqz v3, :cond_2

    .line 54
    const/4 v3, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v3, 0x0

    .line 58
    :goto_1
    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 66
    if-eqz v4, :cond_3

    .line 68
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 70
    move-result-object v2

    .line 73
    :cond_3
    iput-object v2, v3, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 74
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 76
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 78
    if-nez v2, :cond_4

    .line 80
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    .line 82
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 84
    :cond_4
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 87
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 89
    goto :goto_0

    .line 92
    :cond_5
    return-void
    .line 93
.end method

.method public final updateNotificationsOnUiModeChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 24
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onUiModeChanged()V

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    return-void
    .line 37
.end method
