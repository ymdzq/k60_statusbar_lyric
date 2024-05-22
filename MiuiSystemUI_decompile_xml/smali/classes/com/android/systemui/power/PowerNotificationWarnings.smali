.class public final Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# static fields
.field public static final DEBUG:Z

.field public static final SHOWING_STRINGS:[Ljava/lang/String;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBatteryControllerLazy:Ldagger/Lazy;

.field public mBatteryLevel:I

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public mBucket:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentBatterySnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final mHandler:Landroid/os/Handler;

.field public mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public mHighTempWarning:Z

.field public mInvalidCharger:Z

.field public final mKeyguard:Landroid/app/KeyguardManager;

.field public final mNoMan:Landroid/app/NotificationManager;

.field public final mOpenBatterySaverSettings:Landroid/content/Intent;

.field public final mOpenBatterySettings:Landroid/content/Intent;

.field public mPlaySound:Z

.field public final mPowerMan:Landroid/os/PowerManager;

.field public mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public mShowAutoSaverSuggestion:Z

.field public mShowing:I

.field public mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mUseExtraSaverConfirmation:Z

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mWarning:Z

.field public mWarningTriggerTimeMs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 4
    const-string v0, "SHOWING_INVALID_CHARGER"

    .line 6
    const-string v1, "SHOWING_AUTO_SAVER_SUGGESTION"

    .line 8
    const-string v2, "SHOWING_NOTHING"

    .line 10
    const-string v3, "SHOWING_WARNING"

    .line 12
    const-string v4, "SHOWING_SAVER"

    .line 14
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 20
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 22
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 24
    const/4 v1, 0x4

    .line 27
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 28
    move-result-object v0

    .line 31
    const/16 v1, 0xd

    .line 32
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 38
    return-void
    .line 41
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Ldagger/Lazy;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v5, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v0

    .line 10
    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iput-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 21
    const-string v2, "android.intent.action.POWER_USAGE_SUMMARY"

    .line 23
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const/high16 v2, 0x5c800000

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 34
    new-instance v0, Landroid/content/Intent;

    .line 36
    const-string v3, "android.settings.BATTERY_SAVER_SETTINGS"

    .line 38
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySaverSettings:Landroid/content/Intent;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 49
    const-class v0, Landroid/app/NotificationManager;

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroid/app/NotificationManager;

    .line 57
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 59
    const-string v0, "power"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Landroid/os/PowerManager;

    .line 67
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 69
    const-class v0, Landroid/app/KeyguardManager;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 76
    check-cast v0, Landroid/app/KeyguardManager;

    .line 77
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguard:Landroid/app/KeyguardManager;

    .line 79
    new-instance v3, Landroid/content/IntentFilter;

    .line 81
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    const-string v0, "PNW.batterySaverSettings"

    .line 86
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v0, "PNW.startSaver"

    .line 91
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v0, "PNW.dismissedWarning"

    .line 96
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v0, "PNW.clickedTempWarning"

    .line 101
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v0, "PNW.dismissedTempWarning"

    .line 106
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v0, "PNW.clickedThermalShutdownWarning"

    .line 111
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v0, "PNW.dismissedThermalShutdownWarning"

    .line 116
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v0, "PNW.startSaverConfirmation"

    .line 121
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v0, "PNW.autoSaverSuggestion"

    .line 126
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v0, "PNW.enableAutoSaver"

    .line 131
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v0, "PNW.autoSaverNoThanks"

    .line 136
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v0, "PNW.dismissAutoSaverSuggestion"

    .line 141
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 146
    const-string v4, "android.permission.DEVICE_POWER"

    .line 148
    const/4 v6, 0x2

    .line 150
    move-object v0, p1

    .line 151
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 152
    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 155
    iput-object p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 157
    iput-object p4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryControllerLazy:Ldagger/Lazy;

    .line 159
    iput-object p5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 161
    iput-object p6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 163
    iput-object p7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    move-result-object p1

    .line 170
    const p2, 0x7f050030    # @bool/config_extra_battery_saver_confirmation 'false'

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 174
    move-result p1

    .line 177
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUseExtraSaverConfirmation:Z

    .line 178
    return-void
    .line 180
.end method


# virtual methods
.method public final dismissHighTemperatureWarningInternal()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 5
    const-string v3, "high_temp"

    .line 7
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 13
    return-void
    .line 15
.end method

.method public final dismissLowBatteryNotification()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "PowerUI.Notification"

    .line 6
    const-string v1, "dismissing low battery notification"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 16
    return-void
    .line 19
.end method

.method public final dismissLowBatteryWarning()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "dismissing low battery warning: level="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 13
    const-string v2, "PowerUI.Notification"

    .line 15
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 20
    return-void
    .line 23
.end method

.method public dismissThermalShutdownWarning()V
    .locals 3

    .line 1
    const/16 v0, 0x27

    .line 2
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 6
    const-string v2, "high_temp"

    .line 8
    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 10
    return-void
    .line 13
.end method

.method public getSaverConfirmationDialog()Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 2
    return-object p0
    .line 4
.end method

.method public final logEvent(Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    move-result-object p1

    .line 16
    const/high16 v0, 0x10000000

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    move-result-object p1

    .line 22
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 23
    const/4 v1, 0x0

    .line 25
    const/high16 v2, 0x4000000

    .line 26
    invoke-static {p0, v1, p1, v2, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
    .line 32
.end method

.method public final updateNotification()V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "updateNotification mWarning="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " mPlaySound="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, " mInvalidCharger="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    const-string v1, "PowerUI.Notification"

    .line 43
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 48
    const-wide/16 v1, 0x0

    .line 50
    const v3, 0x7f08111a    # @drawable/ic_power_low 'res/drawable/ic_power_low.xml'

    .line 52
    const/4 v4, 0x2

    .line 55
    const/4 v5, 0x1

    .line 56
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 57
    const-string v7, "low_battery"

    .line 59
    const/4 v8, 0x3

    .line 61
    const/4 v9, 0x0

    .line 62
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 63
    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Landroid/app/Notification$Builder;

    .line 67
    const-string v11, "ALR"

    .line 69
    invoke-direct {v0, v6, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 82
    move-result-object v0

    .line 85
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 86
    move-result-object v0

    .line 89
    const v1, 0x7f130572    # @string/invalid_charger_title 'Can't charge via USB'

    .line 90
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 97
    move-result-object v0

    .line 100
    const v1, 0x7f130571    # @string/invalid_charger_text 'Use the charger that came with your device'

    .line 101
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 108
    move-result-object v0

    .line 111
    const v1, 0x106001c    # @android:color/system_notification_accent_color

    .line 112
    invoke-virtual {v6, v1}, Landroid/content/Context;->getColor(I)I

    .line 115
    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 119
    move-result-object v0

    .line 122
    invoke-static {v6, v0, v9}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 123
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 126
    move-result-object v0

    .line 129
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 130
    invoke-virtual {v10, v7, v8, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 132
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 135
    invoke-virtual {v10, v7, v4, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 137
    iput v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 140
    goto/16 :goto_4

    .line 142
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 144
    if-eqz v0, :cond_8

    .line 146
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 148
    move-result-object v0

    .line 151
    const-string v1, "automatic_power_save_mode"

    .line 152
    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 154
    move-result v1

    .line 157
    if-nez v1, :cond_2

    .line 158
    const-string v1, "low_power_trigger_level"

    .line 160
    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 162
    move-result v0

    .line 165
    if-lez v0, :cond_2

    .line 166
    move v0, v5

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    move v0, v9

    .line 170
    :goto_0
    if-eqz v0, :cond_3

    .line 171
    goto/16 :goto_3

    .line 173
    :cond_3
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 175
    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatterySnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 179
    iget v1, v1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 181
    int-to-double v1, v1

    .line 183
    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    .line 184
    div-double/2addr v1, v11

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 190
    const v1, 0x7f130175    # @string/battery_low_title 'Turn on Battery Saver?'

    .line 191
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 197
    const v2, 0x7f130172    # @string/battery_low_description 'You have %s battery left. Battery Saver turns on Dark theme, restricts background activity, and dela ...'

    .line 198
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 201
    move-result-object v0

    .line 204
    invoke-virtual {v6, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 208
    new-instance v2, Landroid/app/Notification$Builder;

    .line 209
    const-string v11, "BAT"

    .line 211
    invoke-direct {v2, v6, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 216
    move-result-object v2

    .line 219
    iget-wide v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 220
    invoke-virtual {v2, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 222
    move-result-object v2

    .line 225
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 226
    move-result-object v2

    .line 229
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 230
    move-result-object v2

    .line 233
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 234
    move-result-object v1

    .line 237
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 238
    move-result-object v1

    .line 241
    const-string v2, "PNW.dismissedWarning"

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 244
    move-result-object v3

    .line 247
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 248
    move-result-object v1

    .line 251
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 252
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 254
    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 257
    move-result-object v0

    .line 260
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 261
    move-result-object v0

    .line 264
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 265
    move-result-object v0

    .line 268
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 269
    move-result-object v1

    .line 272
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 273
    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 275
    move-result-object v1

    .line 278
    if-eqz v1, :cond_4

    .line 279
    move v1, v5

    .line 281
    goto :goto_1

    .line 282
    :cond_4
    move v1, v9

    .line 283
    :goto_1
    if-eqz v1, :cond_5

    .line 284
    const-string v1, "PNW.batterySaverSettings"

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 288
    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 292
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatterySnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 295
    iget-boolean v3, v1, Lcom/android/systemui/power/BatteryStateSnapshot;->isHybrid:Z

    .line 297
    if-eqz v3, :cond_6

    .line 299
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 301
    const/4 v11, -0x1

    .line 303
    if-lt v3, v11, :cond_6

    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    goto :goto_2

    .line 309
    :cond_6
    const v1, 0x1010543    # @android:attr/colorError

    .line 310
    invoke-static {v6, v1, v9}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 313
    move-result v1

    .line 316
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 317
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 320
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 322
    move-result v1

    .line 325
    if-nez v1, :cond_7

    .line 326
    const v1, 0x7f130182    # @string/battery_saver_dismiss_action 'No thanks'

    .line 328
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 331
    move-result-object v1

    .line 334
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 335
    move-result-object v2

    .line 338
    invoke-virtual {v0, v9, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 339
    const v1, 0x7f130183    # @string/battery_saver_start_action 'Turn on'

    .line 342
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 345
    move-result-object v1

    .line 348
    const-string v2, "PNW.startSaver"

    .line 349
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 351
    move-result-object v2

    .line 354
    invoke-virtual {v0, v9, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 355
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 358
    xor-int/2addr v1, v5

    .line 360
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 361
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 364
    invoke-static {v6, v0, v9}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 366
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 369
    move-result-object v0

    .line 372
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 373
    invoke-virtual {v10, v7, v4, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 375
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 378
    invoke-virtual {v10, v7, v8, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 380
    :goto_3
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 383
    goto/16 :goto_4

    .line 385
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    .line 387
    const/16 v3, 0x31

    .line 389
    const-string v5, "auto_saver"

    .line 391
    if-eqz v0, :cond_a

    .line 393
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 395
    const/4 v4, 0x4

    .line 397
    if-eq v0, v4, :cond_9

    .line 398
    const v0, 0x7f13015d    # @string/auto_saver_text 'Turn on when battery is likely to run out'

    .line 400
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 403
    move-result-object v0

    .line 406
    new-instance v7, Landroid/app/Notification$Builder;

    .line 407
    const-string v8, "HNT"

    .line 409
    invoke-direct {v7, v6, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 411
    const v8, 0x7f08111b    # @drawable/ic_power_saver 'res/drawable/ic_power_saver.xml'

    .line 414
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 417
    move-result-object v7

    .line 420
    invoke-virtual {v7, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 421
    move-result-object v1

    .line 424
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 425
    move-result-object v1

    .line 428
    const v2, 0x7f13015e    # @string/auto_saver_title 'Tap to schedule Battery Saver'

    .line 429
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 432
    move-result-object v2

    .line 435
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 436
    move-result-object v1

    .line 439
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 440
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 442
    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 445
    move-result-object v2

    .line 448
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 449
    move-result-object v1

    .line 452
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 453
    move-result-object v0

    .line 456
    const-string v1, "PNW.enableAutoSaver"

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 459
    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 463
    const-string v1, "PNW.dismissAutoSaverSuggestion"

    .line 466
    invoke-virtual {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 468
    move-result-object v1

    .line 471
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 472
    const v1, 0x7f130858    # @string/no_auto_saver_action 'No thanks'

    .line 475
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 478
    move-result-object v1

    .line 481
    const-string v2, "PNW.autoSaverNoThanks"

    .line 482
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 484
    move-result-object v2

    .line 487
    invoke-virtual {v0, v9, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 488
    invoke-static {v6, v0, v9}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 491
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 494
    move-result-object v0

    .line 497
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 498
    invoke-virtual {v10, v5, v3, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 500
    :cond_9
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 503
    goto :goto_4

    .line 505
    :cond_a
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 506
    invoke-virtual {v10, v7, v4, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 508
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 511
    invoke-virtual {v10, v7, v8, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 513
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 516
    invoke-virtual {v10, v5, v3, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 518
    iput v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 521
    :goto_4
    return-void
    .line 523
.end method
