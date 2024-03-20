.class public final Lcom/android/keyguard/EmergencyButtonController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/EmergencyButtonController$3;

.field public mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

.field public final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/telephony/TelephonyManager;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/shade/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/android/keyguard/EmergencyButtonController$1;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/keyguard/EmergencyButtonController$1;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 10
    new-instance p1, Lcom/android/keyguard/EmergencyButtonController$2;

    .line 12
    invoke-direct {p1, p0}, Lcom/android/keyguard/EmergencyButtonController$2;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 17
    new-instance p1, Lcom/android/keyguard/EmergencyButtonController$3;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/keyguard/EmergencyButtonController$3;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    .line 21
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationListener:Lcom/android/keyguard/EmergencyButtonController$3;

    .line 24
    iput-object p2, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 26
    iput-object p3, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 28
    iput-object p4, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    iput-object p5, p0, Lcom/android/keyguard/EmergencyButtonController;->mPowerManager:Landroid/os/PowerManager;

    .line 32
    iput-object p6, p0, Lcom/android/keyguard/EmergencyButtonController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 34
    iput-object p7, p0, Lcom/android/keyguard/EmergencyButtonController;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 36
    iput-object p8, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 38
    iput-object p9, p0, Lcom/android/keyguard/EmergencyButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 40
    iput-object p10, p0, Lcom/android/keyguard/EmergencyButtonController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 42
    iput-object p11, p0, Lcom/android/keyguard/EmergencyButtonController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p12, p0, Lcom/android/keyguard/EmergencyButtonController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 46
    return-void
    .line 48
.end method


# virtual methods
.method public final onInit()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/EmergencyButtonController;I)V

    .line 5
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 9
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationListener:Lcom/android/keyguard/EmergencyButtonController$3;

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 31
    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 33
    new-instance v1, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda1;

    .line 35
    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
    .line 43
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 9
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 24
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationListener:Lcom/android/keyguard/EmergencyButtonController$3;

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 28
    return-void
    .line 31
.end method

.method public updateEmergencyCallButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/EmergencyButtonController;I)V

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 12
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
