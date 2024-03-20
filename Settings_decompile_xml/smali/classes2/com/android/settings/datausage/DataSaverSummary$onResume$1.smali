.class final Lcom/android/settings/datausage/DataSaverSummary$onResume$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DataSaverSummary.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSaverSummary;->onResume()V
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
    c = "com.android.settings.datausage.DataSaverSummary$onResume$1"
    f = "DataSaverSummary.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverSummary;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/datausage/DataSaverSummary;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/settings/datausage/DataSaverSummary$onResume$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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
    new-instance p1, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;-><init>(Lcom/android/settings/datausage/DataSaverSummary;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 79
    iget v0, p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    .line 80
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    new-instance v1, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 84
    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverSummary;->access$getDataUsageBridgeCallbacks$p(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataSaverSummary;->access$getDataSaverBackend$p(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "dataSaverBackend"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 83
    :cond_0
    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataSaverSummary;->access$setDataUsageBridge$p(Lcom/android/settings/datausage/DataSaverSummary;Lcom/android/settings/datausage/AppStateDataUsageBridge;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    .line 87
    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverSummary;->access$getApplicationsStateCallbacks$p(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-virtual {v2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    .line 86
    invoke-static {v0, p1}, Lcom/android/settings/datausage/DataSaverSummary;->access$setSession$p(Lcom/android/settings/datausage/DataSaverSummary;Lcom/android/settingslib/applications/ApplicationsState$Session;)V

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {p0}, Lcom/android/settings/datausage/DataSaverSummary;->access$getDataUsageBridge$p(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/AppStateDataUsageBridge;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppStateBaseBridge;->resume(Z)V

    .line 89
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
