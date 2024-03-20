.class final Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;
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
    c = "com.android.settingslib.spa.widget.scaffold.SettingsPagerKt$rememberPageStateFixed$1$1"
    f = "SettingsPager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentPage$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastScreenWidthDp$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $screenWidthDp:I

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
.method constructor <init>(ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$screenWidthDp:I

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$targetPage$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$lastScreenWidthDp$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;

    iget v1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$screenWidthDp:I

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$targetPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$lastScreenWidthDp$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;-><init>(ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 65535
    iget v0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    iget-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$targetPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->access$rememberPageStateFixed$lambda$1(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->access$rememberPageStateFixed$lambda$4(Landroidx/compose/runtime/MutableState;I)V

    .line 103
    iget-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$lastScreenWidthDp$delegate:Landroidx/compose/runtime/MutableState;

    iget p0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$1$1;->$screenWidthDp:I

    invoke-static {p1, p0}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->access$rememberPageStateFixed$lambda$6(Landroidx/compose/runtime/MutableState;I)V

    .line 104
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 65535
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
