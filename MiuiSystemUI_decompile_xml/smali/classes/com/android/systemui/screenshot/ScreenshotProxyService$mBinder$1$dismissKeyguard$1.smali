.class final Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.screenshot.ScreenshotProxyService$mBinder$1$dismissKeyguard$1"
    f = "ScreenshotProxyService.kt"
    l = {
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotProxyService;Lcom/android/systemui/screenshot/IOnDoneCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

    .line 4
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotProxyService;Lcom/android/systemui/screenshot/IOnDoneCallback;Lkotlin/coroutines/Continuation;)V

    .line 8
    return-object p1
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->label:I

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    if-ne v1, v3, :cond_0

    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    goto :goto_1

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

    .line 30
    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;->label:I

    .line 32
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotProxyService;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 34
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;

    .line 36
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, p1, v1, v5}, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotProxyService;Lcom/android/systemui/screenshot/IOnDoneCallback;Lkotlin/coroutines/Continuation;)V

    .line 39
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    if-ne p0, v0, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    move-object p0, v2

    .line 49
    :goto_0
    if-ne p0, v0, :cond_3

    .line 50
    return-object v0

    .line 52
    :cond_3
    :goto_1
    return-object v2
    .line 53
.end method
