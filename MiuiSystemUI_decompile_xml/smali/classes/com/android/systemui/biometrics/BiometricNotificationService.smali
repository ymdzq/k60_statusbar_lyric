.class public final Lcom/android/systemui/biometrics/BiometricNotificationService;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mBroadcastReceiver:Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mFaceNotificationQueued:Z

.field public mFingerprintNotificationQueued:Z

.field public final mFingerprintReEnrollNotification:Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;

.field public mFingerprintReenrollRequired:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/BiometricNotificationService$1;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mNotificationChannel:Landroid/app/NotificationChannel;

.field public final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Landroid/app/NotificationManager;Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;Ljava/util/Optional;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricNotificationService$1;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/BiometricNotificationService$1;

    .line 10
    new-instance v0, Lcom/android/systemui/biometrics/BiometricNotificationService$2;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricNotificationService$2;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 23
    iput-object p4, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object p5, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 27
    iput-object p6, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mBroadcastReceiver:Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;

    .line 29
    new-instance p1, Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;

    .line 31
    invoke-direct {p1}, Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;-><init>()V

    .line 33
    invoke-virtual {p7, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintReEnrollNotification:Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;

    .line 42
    return-void
    .line 44
.end method


# virtual methods
.method public final showNotification(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p5, v1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceNotificationQueued:Z

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x2

    .line 9
    if-ne p5, v2, :cond_1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintNotificationQueued:Z

    .line 12
    :cond_1
    :goto_0
    const-string v2, "BiometricNotificationService"

    .line 14
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 16
    if-nez v3, :cond_2

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    const-string p2, "Failed to show notification "

    .line 22
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, ". Notification manager is null!"

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 42
    :cond_2
    new-instance v4, Landroid/content/Intent;

    .line 43
    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 48
    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    .line 50
    const/high16 v6, 0x4000000

    .line 52
    invoke-static {v5, v0, v4, v6, p1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 54
    move-result-object p1

    .line 57
    new-instance v0, Landroid/app/Notification$Builder;

    .line 58
    const-string v4, "BiometricHiPriNotificationChannel"

    .line 60
    invoke-direct {v0, v5, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v4, "sys"

    .line 65
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 68
    move-result-object v0

    .line 71
    const v4, 0x10803f1    # @android:drawable/ic_lock_open_wht_24dp

    .line 72
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 79
    move-result-object p2

    .line 82
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 83
    move-result-object p2

    .line 86
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 87
    move-result-object p2

    .line 90
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 91
    move-result-object p1

    .line 94
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 95
    move-result-object p1

    .line 98
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 99
    move-result-object p1

    .line 102
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 103
    move-result-object p1

    .line 106
    const/4 p2, -0x1

    .line 107
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 108
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 112
    move-result-object p1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 116
    invoke-virtual {v3, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 118
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 121
    invoke-virtual {v3, v2, p5, p1, p0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 123
    return-void
    .line 126
.end method

.method public final start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/BiometricNotificationService$1;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Landroid/app/NotificationChannel;

    .line 18
    const/4 v1, 0x4

    .line 20
    const-string v2, "BiometricHiPriNotificationChannel"

    .line 21
    const-string v3, " Biometric Unlock"

    .line 23
    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    .line 30
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    const-string v1, "fingerprint_action_show_reenroll_dialog"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "face_action_show_reenroll_dialog"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x2

    .line 45
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mBroadcastReceiver:Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;

    .line 48
    invoke-virtual {v2, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 50
    return-void
    .line 53
.end method
