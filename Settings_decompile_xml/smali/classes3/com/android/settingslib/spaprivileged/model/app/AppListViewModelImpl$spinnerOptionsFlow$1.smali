.class final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;-><init>(Landroid/app/Application;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/util/List<",
        "+TT;>;",
        "Lcom/android/settingslib/spaprivileged/model/app/AppListModel<",
        "TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/android/settingslib/spa/widget/ui/SpinnerOption;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.settingslib.spaprivileged.model.app.AppListViewModelImpl$spinnerOptionsFlow$1"
    f = "AppListViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->invoke(Ljava/util/List;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/util/List;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/android/settingslib/spaprivileged/model/app/AppListModel<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/android/settingslib/spa/widget/ui/SpinnerOption;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    new-instance p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;

    invoke-direct {p0, p3}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 127
    iget v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    .line 128
    invoke-interface {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->getSpinnerOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
