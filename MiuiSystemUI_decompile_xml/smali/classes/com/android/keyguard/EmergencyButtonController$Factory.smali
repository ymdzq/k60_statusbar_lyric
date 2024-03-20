.class public final Lcom/android/keyguard/EmergencyButtonController$Factory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/telephony/TelephonyManager;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/shade/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 9
    iput-object p4, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mPowerManager:Landroid/os/PowerManager;

    .line 11
    iput-object p5, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 13
    iput-object p6, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 15
    iput-object p7, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 17
    iput-object p8, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 19
    iput-object p9, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 21
    iput-object p10, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 23
    iput-object p11, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;
    .locals 14

    .line 1
    new-instance v13, Lcom/android/keyguard/EmergencyButtonController;

    .line 2
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 4
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    iget-object v4, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 8
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mPowerManager:Landroid/os/PowerManager;

    .line 10
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 12
    iget-object v7, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 14
    iget-object v8, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 16
    iget-object v9, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 18
    iget-object v10, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 20
    iget-object v11, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 22
    iget-object v12, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 24
    move-object v0, v13

    .line 26
    move-object v1, p1

    .line 27
    invoke-direct/range {v0 .. v12}, Lcom/android/keyguard/EmergencyButtonController;-><init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/telephony/TelephonyManager;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/shade/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 28
    return-object v13
    .line 31
.end method
