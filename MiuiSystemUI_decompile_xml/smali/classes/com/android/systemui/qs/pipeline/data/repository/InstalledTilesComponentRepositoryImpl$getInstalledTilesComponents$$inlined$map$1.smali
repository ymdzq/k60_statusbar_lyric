.class public final Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic $userId$inlined:I

.field public final synthetic this$0:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;

    .line 4
    iput p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1;->$userId$inlined:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1$2;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;

    .line 4
    iget v2, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1;->$userId$inlined:I

    .line 6
    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;I)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 11
    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    if-ne p0, p1, :cond_0

    .line 19
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    return-object p0
    .line 24
.end method
