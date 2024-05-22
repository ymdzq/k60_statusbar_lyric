.class final Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.mediaprojection.appselector.view.RecentTaskViewHolder$bind$1"
    f = "RecentTaskViewHolder.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    .line 6
    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 8
    iput-object p1, v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->L$0:Ljava/lang/Object;

    .line 11
    return-object v0
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 13
    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->baseIntentComponent:Landroid/content/ComponentName;

    .line 15
    const/4 v2, 0x3

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    iget-object v4, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    .line 21
    new-instance v5, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;

    .line 23
    invoke-direct {v5, v4, v0, v1, v3}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Landroid/content/ComponentName;Lkotlin/coroutines/Continuation;)V

    .line 25
    invoke-static {p1, v3, v3, v5, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 28
    new-instance v5, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$2;

    .line 31
    invoke-direct {v5, v4, v0, v1, v3}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$1$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Landroid/content/ComponentName;Lkotlin/coroutines/Continuation;)V

    .line 33
    invoke-static {p1, v3, v3, v5, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 36
    :cond_0
    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$2;

    .line 39
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    .line 41
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;->$task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 43
    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 45
    invoke-static {p1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 48
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    return-object p0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0
    .line 61
.end method
