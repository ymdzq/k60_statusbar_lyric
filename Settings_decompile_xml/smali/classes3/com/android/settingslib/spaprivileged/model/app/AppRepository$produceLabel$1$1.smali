.class final Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.settingslib.spaprivileged.model.app.AppRepository$produceLabel$1$1"
    f = "AppRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$produceState:Landroidx/compose/runtime/ProduceStateScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProduceStateScope<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isClonedAppPage:Z

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppRepository;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ProduceStateScope;ZLcom/android/settingslib/spaprivileged/model/app/AppRepository;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ProduceStateScope<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/android/settingslib/spaprivileged/model/app/AppRepository;",
            "Landroid/content/Context;",
            "Landroid/content/pm/ApplicationInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScope;

    iput-boolean p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$isClonedAppPage:Z

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppRepository;

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$app:Landroid/content/pm/ApplicationInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScope;

    iget-boolean v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$isClonedAppPage:Z

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppRepository;

    iget-object v4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$app:Landroid/content/pm/ApplicationInfo;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;-><init>(Landroidx/compose/runtime/ProduceStateScope;ZLcom/android/settingslib/spaprivileged/model/app/AppRepository;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 65535
    iget v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScope;

    iget-boolean v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$isClonedAppPage:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppRepository;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/spaprivileged/model/app/AppRepository;->access$isCloneApp(Lcom/android/settingslib/spaprivileged/model/app/AppRepository;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppRepository;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppRepository;->loadLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$context:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/spaprivileged/R$string;->cloned_app_info_label:I

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppRepository;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1$1;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppRepository;->loadLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{\n                    co\u2026l(app))\n                }"

    .line 45
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 50
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 65535
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
