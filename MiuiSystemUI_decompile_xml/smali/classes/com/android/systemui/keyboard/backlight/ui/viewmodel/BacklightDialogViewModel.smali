.class public final Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final dialogContent:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;->backlight:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 5
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 7
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 9
    new-instance p1, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$special$$inlined$map$1;

    .line 12
    invoke-direct {p1, v0}, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)V

    .line 14
    const/16 v0, 0xbb8

    .line 17
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    .line 20
    move-result p2

    .line 23
    int-to-long v0, p2

    .line 24
    new-instance p2, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$$inlined$flatMapLatest$1;

    .line 25
    const/4 v2, 0x0

    .line 27
    invoke-direct {p2, v2, v0, v1, v2}, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;JLjava/lang/Object;)V

    .line 28
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 31
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;->dialogContent:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 35
    return-void
    .line 37
.end method
