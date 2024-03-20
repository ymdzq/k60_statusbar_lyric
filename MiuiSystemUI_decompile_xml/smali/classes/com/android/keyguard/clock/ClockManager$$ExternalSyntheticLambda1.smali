.class public final synthetic Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/clock/ClockManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/clock/ClockManager;

    .line 2
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 4
    check-cast p2, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    .line 12
    iget-object p1, p2, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 17
    move-result-object p2

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    move-result-object v0

    .line 24
    if-eq p2, v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    .line 27
    new-instance p2, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;

    .line 29
    invoke-direct {p2, p1}, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/plugins/ClockPlugin;)V

    .line 31
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void

    .line 37
    :cond_0
    instance-of p0, p1, Lcom/android/keyguard/clock/DefaultClockController;

    .line 38
    const/4 p0, 0x0

    .line 40
    throw p0
    .line 41
.end method
