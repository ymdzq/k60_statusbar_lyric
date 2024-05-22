.class final Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.screenshot.RequestProcessor$processAsync$2"
    f = "RequestProcessor.kt"
    l = {
        0x95
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Ljava/util/function/Consumer;

.field final synthetic $screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/RequestProcessor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/RequestProcessor;Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->this$0:Lcom/android/systemui/screenshot/RequestProcessor;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->$callback:Ljava/util/function/Consumer;

    .line 6
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->this$0:Lcom/android/systemui/screenshot/RequestProcessor;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->$callback:Ljava/util/function/Consumer;

    .line 8
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;-><init>(Lcom/android/systemui/screenshot/RequestProcessor;Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    .line 10
    return-object p1
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_0

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
    iget-object p1, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->this$0:Lcom/android/systemui/screenshot/RequestProcessor;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 28
    iput v2, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->label:I

    .line 30
    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/screenshot/RequestProcessor;->process(Lcom/android/systemui/screenshot/ScreenshotData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    return-object v0

    .line 38
    :cond_2
    :goto_0
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 39
    iget-object p0, p0, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;->$callback:Ljava/util/function/Consumer;

    .line 41
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    return-object p0
    .line 48
.end method
