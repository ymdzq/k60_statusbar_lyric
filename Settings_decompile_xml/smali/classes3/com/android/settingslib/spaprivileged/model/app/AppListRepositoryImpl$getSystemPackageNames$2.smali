.class final Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppListRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->getSystemPackageNames(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppListRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppListRepository.kt\ncom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,200:1\n766#2:201\n857#2,2:202\n1549#2:204\n1620#2,3:205\n*S KotlinDebug\n*F\n+ 1 AppListRepository.kt\ncom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2\n*L\n148#1:201\n148#1:202,2\n148#1:204\n148#1:205,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.settingslib.spaprivileged.model.app.AppListRepositoryImpl$getSystemPackageNames$2"
    f = "AppListRepository.kt"
    l = {
        0x91,
        0x94
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $userId:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iput p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->$userId:I

    invoke-direct {v0, v1, p0, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 143
    iget v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 144
    new-instance v7, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2$loadAppsDeferred$1;

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->$userId:I

    const/4 v8, 0x0

    invoke-direct {v7, p1, v1, v8}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2$loadAppsDeferred$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    .line 145
    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget v4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->$userId:I

    iput-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->label:I

    invoke-static {p1, v4, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->access$loadHomeOrLauncherPackages(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 143
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/Set;

    .line 146
    new-instance v3, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2$showSystemPredicate$1;

    iget-object v4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    invoke-direct {v3, v4, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2$showSystemPredicate$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Ljava/util/Set;)V

    .line 148
    iput-object v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNames$2;->label:I

    invoke-interface {v1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object p0, v3

    .line 143
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1549
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1621
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 148
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1621
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 148
    :cond_7
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
