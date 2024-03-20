.class final Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleChargeAnimationShowingChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $chargeAnimationShowing:Z

.field final synthetic $dismissForTimeoutOrScreenOff:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleChargeAnimationShowingChanged$1;->$chargeAnimationShowing:Z

    .line 2
    iput-boolean p2, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleChargeAnimationShowingChanged$1;->$dismissForTimeoutOrScreenOff:Z

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 2
    iget-boolean p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleChargeAnimationShowingChanged$1;->$dismissForTimeoutOrScreenOff:Z

    .line 4
    invoke-interface {p1, p0}, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;->onChargeAnimationShowingChanged(Z)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    return-object p0
    .line 11
.end method
