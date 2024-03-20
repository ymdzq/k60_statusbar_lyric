.class final Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.util.ConvenienceExtensionsKt$children$1"
    f = "ConvenienceExtensions.kt"
    l = {
        0x1c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_children:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    .line 2
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    .line 6
    iput-object p1, v0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->L$0:Ljava/lang/Object;

    .line 9
    return-object v0
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    iget v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->I$1:I

    .line 11
    iget v3, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->I$0:I

    .line 13
    iget-object v4, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->L$0:Ljava/lang/Object;

    .line 15
    check-cast v4, Lkotlin/sequences/SequenceBuilderIterator;

    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    move-object p1, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->L$0:Ljava/lang/Object;

    .line 35
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 37
    iget-object v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    move-result v1

    .line 44
    const/4 v3, 0x0

    .line 45
    move-object v4, p1

    .line 46
    move-object p1, v0

    .line 47
    :goto_0
    if-ge v3, v1, :cond_3

    .line 48
    iget-object v5, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object v5

    .line 55
    iput-object v4, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->L$0:Ljava/lang/Object;

    .line 56
    iput v3, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->I$0:I

    .line 58
    iput v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->I$1:I

    .line 60
    iput v2, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->label:I

    .line 62
    invoke-virtual {v4, v5, p0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 64
    if-ne v0, p1, :cond_2

    .line 67
    return-object p1

    .line 69
    :cond_2
    :goto_1
    add-int/2addr v3, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    return-object p0
    .line 74
.end method
