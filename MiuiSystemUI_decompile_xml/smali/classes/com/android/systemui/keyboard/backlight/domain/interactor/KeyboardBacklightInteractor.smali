.class public final Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final backlight:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final keyboardRepository:Lcom/android/systemui/keyboard/data/repository/KeyboardRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/data/repository/KeyboardRepository;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;->keyboardRepository:Lcom/android/systemui/keyboard/data/repository/KeyboardRepository;

    .line 5
    check-cast p1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    .line 7
    new-instance v0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;)V

    .line 12
    iget-object p1, p1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->isAnyKeyboardConnected:Lkotlinx/coroutines/flow/Flow;

    .line 15
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;->backlight:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 21
    return-void
    .line 23
.end method
