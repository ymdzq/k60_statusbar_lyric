.class public final synthetic Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButtonController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 4
    const/16 v0, 0xc8

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 8
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mPowerManager:Landroid/os/PowerManager;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 23
    invoke-virtual {p1}, Landroid/app/ActivityTaskManager;->stopSystemLockTaskMode()V

    .line 25
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 28
    check-cast p1, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 30
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShade(Z)V

    .line 33
    new-instance p1, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;

    .line 36
    const/4 v0, 0x2

    .line 38
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/EmergencyButtonController;I)V

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 42
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
    .line 47
.end method
