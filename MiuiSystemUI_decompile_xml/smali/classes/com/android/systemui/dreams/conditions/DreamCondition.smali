.class public final Lcom/android/systemui/dreams/conditions/DreamCondition;
.super Lcom/android/systemui/shared/condition/Condition;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDreamManager:Landroid/app/DreamManager;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/app/DreamManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/shared/condition/Condition;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/dreams/conditions/DreamCondition$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/conditions/DreamCondition$1;-><init>(Lcom/android/systemui/dreams/conditions/DreamCondition;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mDreamManager:Landroid/app/DreamManager;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mDreamManager:Landroid/app/DreamManager;

    .line 9
    invoke-virtual {v0}, Landroid/app/DreamManager;->isDreaming()Z

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    .line 15
    return-void
    .line 18
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    return-void
    .line 9
.end method
