.class final Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$onPhoneSignalChange$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $signalAvailable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$onPhoneSignalChange$1;->$signalAvailable:Z

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 2
    invoke-interface {p1}, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;->onPhoneSignalChanged()V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    return-object p0
    .line 9
.end method