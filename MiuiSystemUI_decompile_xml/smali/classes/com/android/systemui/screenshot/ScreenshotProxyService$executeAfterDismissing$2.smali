.class final Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.screenshot.ScreenshotProxyService$executeAfterDismissing$2"
    f = "ScreenshotProxyService.kt"
    l = {}
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
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

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
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotProxyService;Lcom/android/systemui/screenshot/IOnDoneCallback;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 9
    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotProxyService;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 11
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2$1;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

    .line 15
    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2$1;-><init>(Lcom/android/systemui/screenshot/IOnDoneCallback;)V

    .line 17
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    return-object p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
    .line 37
.end method
