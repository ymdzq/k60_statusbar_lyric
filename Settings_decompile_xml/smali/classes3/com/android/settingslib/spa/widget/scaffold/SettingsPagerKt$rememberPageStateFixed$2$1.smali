.class final Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsPager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->rememberPageStateFixed(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/pager/PagerState;
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
    c = "com.android.settingslib.spa.widget.scaffold.SettingsPagerKt$rememberPageStateFixed$2$1"
    f = "SettingsPager.kt"
    l = {
        0x6b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $pagerState:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $targetPage$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->$targetPage$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->$targetPage$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65535
    iget v1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->label:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->$targetPage$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->access$rememberPageStateFixed$lambda$3(Landroidx/compose/runtime/MutableState;)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 107
    iget-object v4, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->$targetPage$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->access$rememberPageStateFixed$lambda$3(Landroidx/compose/runtime/MutableState;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    iput v3, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->label:I

    move-object v7, p0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/pager/PagerState;->scrollToPage$default(Landroidx/compose/foundation/pager/PagerState;IFLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 108
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$2$1;->$targetPage$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p0, v2}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->access$rememberPageStateFixed$lambda$4(Landroidx/compose/runtime/MutableState;I)V

    .line 110
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
