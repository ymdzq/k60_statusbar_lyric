.class public final Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyboard.backlight.domain.interactor.KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1"
    f = "KeyboardBacklightInteractor.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;

    .line 2
    const/4 p2, 0x3

    .line 4
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 4
    new-instance v0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;

    .line 8
    invoke-direct {v0, p3, p0}, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;)V

    .line 10
    iput-object p1, v0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 13
    iput-object p2, v0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_1

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 30
    check-cast v1, Ljava/lang/Boolean;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    iget-object v1, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;

    .line 40
    iget-object v1, v1, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;->keyboardRepository:Lcom/android/systemui/keyboard/data/repository/KeyboardRepository;

    .line 42
    check-cast v1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    .line 44
    iget-object v1, v1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->backlight:Lkotlinx/coroutines/flow/Flow;

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 49
    const/4 v3, 0x0

    .line 51
    invoke-direct {v1, v3}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 52
    :goto_0
    iput v2, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;->label:I

    .line 55
    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 60
    if-ne p0, v0, :cond_3

    .line 61
    return-object v0

    .line 63
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 64
    return-object p0
    .line 66
.end method
