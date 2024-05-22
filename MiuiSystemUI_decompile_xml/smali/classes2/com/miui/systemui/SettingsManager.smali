.class public final Lcom/miui/systemui/SettingsManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public gameModeEnabled:Z

.field public miuiMirrorDndModeEnabled:Z

.field public miuiOptimizationEnabled:Z

.field public final miuiOptimizationListeners:Ljava/util/List;

.field public notifAggregate:Z

.field public final notifAggregateListeners:Ljava/util/List;

.field public notifFold:Z

.field public notifFoldFooterIcon:Z

.field public final notifFoldListeners:Ljava/util/List;

.field public notifStyle:I

.field public final notifStyleListeners:Ljava/util/List;

.field public final userChangedCallback:Lcom/miui/systemui/SettingsManager$userChangedCallback$1;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public wakeupForNotification:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/miui/systemui/SettingsManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    iput-object p1, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/miui/systemui/SettingsManager;->notifStyleListeners:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/miui/systemui/SettingsManager;->notifFoldListeners:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/miui/systemui/SettingsManager;->notifAggregateListeners:Ljava/util/List;

    .line 35
    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    .line 38
    new-instance v0, Lcom/miui/systemui/SettingsManager$userChangedCallback$1;

    .line 40
    invoke-direct {v0, p0}, Lcom/miui/systemui/SettingsManager$userChangedCallback$1;-><init>(Lcom/miui/systemui/SettingsManager;)V

    .line 42
    iput-object v0, p0, Lcom/miui/systemui/SettingsManager;->userChangedCallback:Lcom/miui/systemui/SettingsManager$userChangedCallback$1;

    .line 45
    sget-object v1, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    move-result-object v1

    .line 52
    const-string v2, "fold_footer_icons"

    .line 53
    const/4 v3, 0x0

    .line 55
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 56
    move-result v1

    .line 59
    if-lez v1, :cond_0

    .line 60
    const/4 v1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move v1, v3

    .line 64
    :goto_0
    iput-boolean v1, p0, Lcom/miui/systemui/SettingsManager;->notifFoldFooterIcon:Z

    .line 65
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 67
    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 69
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 74
    check-cast v4, Landroid/os/Handler;

    .line 75
    invoke-direct {v1, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 77
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 80
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifStyleChanged()V

    .line 85
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifFoldChanged()V

    .line 88
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifAggregateChanged()V

    .line 91
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onMiuiOptimizationChanged()V

    .line 94
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onMiuiMirrorDndModeChanged()V

    .line 97
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onGameModeChanged()V

    .line 100
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onWakeupForNotificationChanged()V

    .line 103
    sget-object p2, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    .line 106
    new-instance v0, Lcom/miui/systemui/SettingsManager$1;

    .line 108
    invoke-direct {v0, p0}, Lcom/miui/systemui/SettingsManager$1;-><init>(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0, p2, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    .line 113
    sget-object p2, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_FOLD:Landroid/net/Uri;

    .line 116
    new-instance v0, Lcom/miui/systemui/SettingsManager$2;

    .line 118
    invoke-direct {v0, p0}, Lcom/miui/systemui/SettingsManager$2;-><init>(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, p2, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    .line 123
    sget-object p2, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_FOLD_FOOTER_ICON:Landroid/net/Uri;

    .line 126
    new-instance v0, Lcom/miui/systemui/SettingsManager$3;

    .line 128
    invoke-direct {v0, p0}, Lcom/miui/systemui/SettingsManager$3;-><init>(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0, p2, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    .line 133
    sget-object p2, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_AGGREGATE:Landroid/net/Uri;

    .line 136
    new-instance v0, Lcom/miui/systemui/SettingsManager$4;

    .line 138
    invoke-direct {v0, p0}, Lcom/miui/systemui/SettingsManager$4;-><init>(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0, p2, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    .line 143
    sget-object p2, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    .line 146
    new-instance v0, Lcom/miui/systemui/SettingsManager$5;

    .line 148
    invoke-direct {v0, p0}, Lcom/miui/systemui/SettingsManager$5;-><init>(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 153
    move-result-object p1

    .line 156
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 157
    move-result-object v1

    .line 160
    check-cast v1, Landroid/os/Handler;

    .line 161
    new-instance v2, Lcom/miui/systemui/SettingsManager$registerObserver$1;

    .line 163
    invoke-direct {v2, v0, v1, v3}, Lcom/miui/systemui/SettingsManager$registerObserver$1;-><init>(Lkotlin/jvm/functions/Function0;Landroid/os/Handler;I)V

    .line 165
    invoke-virtual {p1, p2, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    sget-object p1, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_MIRROR_DND_MODE:Landroid/net/Uri;

    .line 171
    new-instance p2, Lcom/miui/systemui/SettingsManager$6;

    .line 173
    invoke-direct {p2, p0}, Lcom/miui/systemui/SettingsManager$6;-><init>(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    .line 178
    sget-object p1, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_GAME_MODE:Landroid/net/Uri;

    .line 181
    new-instance p2, Lcom/miui/systemui/SettingsManager$7;

    .line 183
    invoke-direct {p2, p0}, Lcom/miui/systemui/SettingsManager$7;-><init>(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    .line 188
    sget-object p1, Lcom/miui/systemui/modulesettings/KeyguardSettings;->WAKEUP_FOR_NOTIFICATION:Landroid/net/Uri;

    .line 191
    new-instance p2, Lcom/miui/systemui/SettingsManager$8;

    .line 193
    invoke-direct {p2, p0}, Lcom/miui/systemui/SettingsManager$8;-><init>(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    .line 198
    return-void
    .line 201
.end method


# virtual methods
.method public final onGameModeChanged()V
    .locals 4

    .line 1
    sget-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object v1

    .line 17
    const-string v2, "gb_notification"

    .line 18
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    move v3, v1

    .line 28
    :cond_0
    iput-boolean v3, p0, Lcom/miui/systemui/SettingsManager;->gameModeEnabled:Z

    .line 29
    return-void
    .line 31
.end method

.method public final onMiuiMirrorDndModeChanged()V
    .locals 4

    .line 1
    sget-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object v1

    .line 17
    const-string v2, "miui_mirror_dnd_mode"

    .line 18
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 v3, 0x1

    .line 27
    :cond_0
    iput-boolean v3, p0, Lcom/miui/systemui/SettingsManager;->miuiMirrorDndModeEnabled:Z

    .line 28
    return-void
    .line 30
.end method

.method public final onMiuiOptimizationChanged()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifStyleChanged()V

    .line 2
    sget-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    .line 5
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-static {v1, v0}, Lcom/miui/systemui/modulesettings/DeveloperSettings$Companion;->isMiuiOptimizationEnabled(ILandroid/content/Context;)Z

    .line 10
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 14
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;

    .line 34
    iget-boolean v2, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 36
    invoke-interface {v1, v2}, Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;->onChanged(Z)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    return-void
    .line 42
.end method

.method public final onNotifAggregateChanged()V
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    const-string/jumbo v1, "user_aggregate"

    .line 10
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    const/4 v2, 0x1

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->notifAggregate:Z

    .line 21
    if-eq v2, v0, :cond_1

    .line 23
    iput-boolean v2, p0, Lcom/miui/systemui/SettingsManager;->notifAggregate:Z

    .line 25
    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->notifAggregateListeners:Ljava/util/List;

    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$registerMiuiListeners$3;

    .line 43
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$registerMiuiListeners$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->updateNotificationsOnDensityOrFontScaleChanged()V

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    return-void
    .line 51
.end method

.method public final onNotifFoldChanged()V
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    const-string/jumbo v1, "user_fold"

    .line 10
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    const/4 v2, 0x1

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->notifFold:Z

    .line 21
    if-eq v2, v0, :cond_1

    .line 23
    iput-boolean v2, p0, Lcom/miui/systemui/SettingsManager;->notifFold:Z

    .line 25
    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->notifFoldListeners:Ljava/util/List;

    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/miui/systemui/modulesettings/NotificationSettings$FoldListener;

    .line 43
    invoke-interface {v0, v2}, Lcom/miui/systemui/modulesettings/NotificationSettings$FoldListener;->onChanged(Z)V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    return-void
    .line 49
.end method

.method public final onNotifStyleChanged()V
    .locals 4

    .line 1
    sget-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object v2

    .line 17
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 18
    if-nez v3, :cond_1

    .line 20
    sget-object v3, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    .line 22
    invoke-static {v0, v1}, Lcom/miui/systemui/modulesettings/DeveloperSettings$Companion;->isMiuiOptimizationEnabled(ILandroid/content/Context;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 33
    :goto_1
    const-string/jumbo v3, "status_bar_notification_style"

    .line 34
    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    move-result v0

    .line 40
    iget v1, p0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    .line 41
    if-eq v0, v1, :cond_2

    .line 43
    iput v0, p0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    .line 45
    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->notifStyleListeners:Ljava/util/List;

    .line 47
    check-cast p0, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p0

    .line 54
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Lcom/miui/systemui/modulesettings/NotificationSettings$StyleListener;

    .line 65
    invoke-interface {v0}, Lcom/miui/systemui/modulesettings/NotificationSettings$StyleListener;->onChanged$1()V

    .line 67
    goto :goto_2

    .line 70
    :cond_2
    return-void
    .line 71
.end method

.method public final onWakeupForNotificationChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/systemui/modulesettings/KeyguardSettings;->WAKEUP_FOR_NOTIFICATION:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 12
    invoke-static {v0, v1}, Lcom/miui/systemui/modulesettings/KeyguardSettings$Companion;->getKeyguardNotificationStatus(ILandroid/content/Context;)I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    iput-boolean v1, p0, Lcom/miui/systemui/SettingsManager;->wakeupForNotification:Z

    .line 23
    return-void
    .line 25
.end method

.method public final registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 8
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Handler;

    .line 14
    new-instance v1, Lcom/miui/systemui/SettingsManager$registerObserver$1;

    .line 16
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p2, v0, v2}, Lcom/miui/systemui/SettingsManager$registerObserver$1;-><init>(Lkotlin/jvm/functions/Function0;Landroid/os/Handler;I)V

    .line 19
    const/4 p2, 0x0

    .line 22
    const/4 v0, -0x1

    .line 23
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 24
    return-void
    .line 27
.end method
