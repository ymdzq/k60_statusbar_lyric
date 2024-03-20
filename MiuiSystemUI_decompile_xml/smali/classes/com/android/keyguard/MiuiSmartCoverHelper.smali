.class public final Lcom/android/keyguard/MiuiSmartCoverHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mHideLockForLid:Z

.field public final mKeyguardUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

.field public mLidShowing:Z

.field public volatile mShouldDelayKeyguardDone:Z

.field public final mSmartCoverReceiver:Lcom/android/keyguard/MiuiSmartCoverHelper$2;

.field public final mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mWakefulnessObserver:Lcom/android/keyguard/MiuiSmartCoverHelper$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiSmartCoverHelper$1;-><init>(Lcom/android/keyguard/MiuiSmartCoverHelper;)V

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mWakefulnessObserver:Lcom/android/keyguard/MiuiSmartCoverHelper$1;

    .line 10
    new-instance v2, Lcom/android/keyguard/MiuiSmartCoverHelper$2;

    .line 12
    invoke-direct {v2, p0}, Lcom/android/keyguard/MiuiSmartCoverHelper$2;-><init>(Lcom/android/keyguard/MiuiSmartCoverHelper;)V

    .line 14
    iput-object v2, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mSmartCoverReceiver:Lcom/android/keyguard/MiuiSmartCoverHelper$2;

    .line 17
    iput-object p2, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 19
    const-class p2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 21
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 26
    check-cast p2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 27
    iput-object p2, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mKeyguardUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 29
    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mShouldDelayKeyguardDone:Z

    .line 32
    const-class p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 34
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v4, Landroid/content/IntentFilter;

    .line 47
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    const-string p0, "miui.intent.action.SMART_COVER"

    .line 52
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 57
    const-string v5, "android.permission.DEVICE_POWER"

    .line 59
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x2

    .line 62
    move-object v1, p1

    .line 63
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 64
    return-void
    .line 67
.end method
