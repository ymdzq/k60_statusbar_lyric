.class public abstract Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSuppressors:Ljava/util/List;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field protected mUseHeadsUp:Z

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/PowerManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 15
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 17
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 19
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 21
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 23
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 25
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 27
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 29
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    .line 31
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    .line 33
    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 35
    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 37
    new-instance p2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;

    .line 39
    invoke-direct {p2, p0, p9}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Landroid/os/Handler;)V

    .line 41
    const-string p0, "heads_up_notifications_enabled"

    .line 44
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    move-result-object p0

    .line 49
    const/4 p3, 0x1

    .line 50
    invoke-virtual {p1, p0, p3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    const-string/jumbo p0, "ticker_gets_heads_up"

    .line 54
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {p1, p0, p3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;->onChange(Z)V

    .line 64
    return-void
    .line 67
.end method

.method public static getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->shouldLaunch:Z

    .line 4
    if-eqz p0, :cond_0

    .line 6
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSED_ONLY_BY_DND:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSED_BY_DND:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 11
    :cond_1
    :goto_0
    return-object p0
    .line 13
.end method


# virtual methods
.method public final canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ge v1, v3, :cond_2

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    .line 22
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 24
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrMode:Z

    .line 26
    if-eqz v3, :cond_1

    .line 28
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 38
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoAlertingSuppressedBy(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 40
    :cond_0
    return v0

    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    return v4
    .line 47
.end method

.method public final canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    .line 4
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 13
    if-ge v1, v3, :cond_4

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 26
    sget-object v7, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 28
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 30
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    goto :goto_1

    .line 36
    :cond_0
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 37
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 39
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 41
    iget v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled1:I

    .line 43
    const/high16 v6, 0x40000

    .line 45
    and-int/2addr v3, v6

    .line 47
    if-eqz v3, :cond_1

    .line 48
    goto :goto_2

    .line 50
    :cond_1
    :goto_1
    move v4, v0

    .line 51
    :goto_2
    if-eqz v4, :cond_3

    .line 52
    if-eqz p2, :cond_2

    .line 54
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    .line 60
    invoke-virtual {v5, p1, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoAlertingSuppressedBy(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 62
    :cond_2
    return v0

    .line 65
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->shouldHideNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 71
    move-result p0

    .line 74
    if-eqz p0, :cond_7

    .line 75
    if-eqz p2, :cond_6

    .line 77
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 82
    move-result p0

    .line 85
    if-eqz p0, :cond_5

    .line 86
    goto :goto_3

    .line 88
    :cond_5
    sget-object p0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 89
    sget-object p2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$keyguardHideNotification$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$keyguardHideNotification$2;

    .line 91
    const/4 v1, 0x0

    .line 93
    iget-object v2, v5, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 94
    const-string v3, "InterruptionStateProvider"

    .line 96
    invoke-virtual {v2, v3, p0, p2, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 98
    move-result-object p0

    .line 101
    invoke-static {p1, p0, v2, p0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 102
    :cond_6
    :goto_3
    return v0

    .line 105
    :cond_7
    return v4
    .line 106
.end method

.method public final canAlertHeadsUpCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 4
    move-result v1

    .line 7
    const-string v2, "InterruptionStateProvider"

    .line 8
    const/4 v3, 0x0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 11
    const/4 v4, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    if-eqz p2, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 31
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    sget-object p2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 38
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingGroupAlertBehavior$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingGroupAlertBehavior$2;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 42
    invoke-virtual {p0, v2, p2, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 44
    move-result-object p2

    .line 47
    invoke-static {p1, p2, p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 48
    :cond_1
    :goto_0
    return v4

    .line 51
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    move-result-wide v0

    .line 55
    iget-wide v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    .line 56
    const-wide/16 v7, 0x7d0

    .line 58
    add-long/2addr v5, v7

    .line 60
    cmp-long v0, v0, v5

    .line 61
    const/4 v1, 0x1

    .line 63
    if-gez v0, :cond_3

    .line 64
    move v0, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v0, v4

    .line 68
    :goto_1
    if-eqz v0, :cond_5

    .line 69
    if-eqz p2, :cond_4

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    sget-object p2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingRecentFullscreen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingRecentFullscreen$2;

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 80
    invoke-virtual {p0, v2, p2, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 82
    move-result-object p2

    .line 85
    invoke-static {p1, p2, p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 86
    :cond_4
    return v4

    .line 89
    :cond_5
    return v1
    .line 90
.end method

.method public abstract checkHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
.end method
