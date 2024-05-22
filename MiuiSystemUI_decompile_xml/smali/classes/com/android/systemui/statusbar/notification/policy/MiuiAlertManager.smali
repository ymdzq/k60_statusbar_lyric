.class public final Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

.field public final mKeyguardSensorInjector:Lcom/android/keyguard/injector/KeyguardSensorInjector;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

.field public final mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

.field public final mNm:Landroid/app/INotificationManager;

.field public final mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mSettingsManager:Lcom/miui/systemui/SettingsManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/miui/systemui/SettingsManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;Lcom/android/systemui/log/NotificationAlertLogger;Lcom/android/keyguard/injector/KeyguardSensorInjector;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mNm:Landroid/app/INotificationManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    .line 13
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mBgHandler:Landroid/os/Handler;

    .line 15
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 17
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 19
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 21
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mKeyguardSensorInjector:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 23
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final buzzBeepBlink(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 8
    const-string v1, "miui.focus.enableAlert"

    .line 10
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    .line 20
    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->miuiMirrorDndModeEnabled:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    return-void

    .line 26
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 27
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFold(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    return-void

    .line 35
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager$$ExternalSyntheticLambda0;

    .line 36
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mBgHandler:Landroid/os/Handler;

    .line 41
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
    .line 46
.end method

.method public final wakeUpForNotificationInternal()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mContext:Landroid/content/Context;

    .line 2
    const-string v0, "power"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/PowerManager;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v0

    .line 15
    const-string v2, "com.android.systemui:NOTIFICATION"

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 18
    const-class p0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 21
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 27
    check-cast p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 29
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mWakeupByNotification:Z

    .line 32
    return-void
    .line 34
.end method
