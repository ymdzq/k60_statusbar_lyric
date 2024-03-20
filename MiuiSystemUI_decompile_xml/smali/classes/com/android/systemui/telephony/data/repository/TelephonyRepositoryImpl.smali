.class public final Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final callState:Lkotlinx/coroutines/flow/Flow;

.field public final manager:Lcom/android/systemui/telephony/TelephonyListenerManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/telephony/TelephonyListenerManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->manager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 5
    new-instance p1, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1;

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1;-><init>(Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 10
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 13
    move-result-object p1

    .line 16
    const/4 v0, -0x1

    .line 17
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->callState:Lkotlinx/coroutines/flow/Flow;

    .line 22
    return-void
.end method
