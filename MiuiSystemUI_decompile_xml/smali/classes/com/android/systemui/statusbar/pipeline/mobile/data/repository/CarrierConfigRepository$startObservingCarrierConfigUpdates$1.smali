.class final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.pipeline.mobile.data.repository.CarrierConfigRepository"
    f = "CarrierConfigRepository.kt"
    l = {
        0x65
    }
    m = "startObservingCarrierConfigUpdates"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;

    .line 2
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->result:Ljava/lang/Object;

    .line 2
    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->label:I

    .line 4
    const/high16 v0, -0x80000000

    .line 6
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->label:I

    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;

    .line 11
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->startObservingCarrierConfigUpdates(Lkotlin/coroutines/Continuation;)V

    .line 13
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    return-object p0
    .line 18
.end method
