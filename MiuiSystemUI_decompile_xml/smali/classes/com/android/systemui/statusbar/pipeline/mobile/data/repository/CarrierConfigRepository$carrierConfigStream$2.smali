.class final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.pipeline.mobile.data.repository.CarrierConfigRepository$carrierConfigStream$2"
    f = "CarrierConfigRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

.field synthetic I$0:I

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;->$logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;->$logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lkotlin/coroutines/Continuation;)V

    .line 6
    check-cast p1, Ljava/lang/Number;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 11
    move-result p0

    .line 14
    iput p0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;->I$0:I

    .line 15
    return-object v0
    .line 17
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;

    .line 18
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object p1
    .line 25
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;->I$0:I

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;->$logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;->logCarrierConfigChanged(I)V

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
    .line 26
.end method
