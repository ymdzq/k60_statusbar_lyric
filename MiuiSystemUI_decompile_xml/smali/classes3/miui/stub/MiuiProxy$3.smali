.class public final Lmiui/stub/MiuiProxy$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic val$iObserver:Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;


# direct methods
.method public constructor <init>(Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/stub/MiuiProxy$3;->val$iObserver:Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$3;->val$iObserver:Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;->onFinishedGoingToSleep()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onPostFinishedWakingUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$3;->val$iObserver:Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onStartedGoingToSleep()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$3;->val$iObserver:Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;->onStartedGoingToSleep()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onStartedWakingUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$3;->val$iObserver:Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;->onStartedWakingUp()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
