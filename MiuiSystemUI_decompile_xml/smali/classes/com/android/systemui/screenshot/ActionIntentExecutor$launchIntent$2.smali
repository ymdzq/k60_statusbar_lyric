.class final Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.screenshot.ActionIntentExecutor$launchIntent$2"
    f = "ActionIntentExecutor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bundle:Landroid/os/Bundle;

.field final synthetic $intent:Landroid/content/Intent;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/ActionIntentExecutor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/content/Intent;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->this$0:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->$intent:Landroid/content/Intent;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->$bundle:Landroid/os/Bundle;

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
    new-instance p1, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->this$0:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->$intent:Landroid/content/Intent;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->$bundle:Landroid/os/Bundle;

    .line 8
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/content/Intent;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->this$0:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->$intent:Landroid/content/Intent;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;->$bundle:Landroid/os/Bundle;

    .line 15
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 23
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
    .line 30
.end method
