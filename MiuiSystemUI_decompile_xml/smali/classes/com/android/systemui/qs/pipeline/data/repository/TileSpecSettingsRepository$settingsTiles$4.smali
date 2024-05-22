.class final Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.qs.pipeline.data.repository.TileSpecSettingsRepository$settingsTiles$4"
    f = "TileSpecRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $userId:I

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;


# direct methods
.method public constructor <init>(ILcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 2
    iput p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->$userId:I

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
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 4
    iget p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->$userId:I

    .line 6
    invoke-direct {v0, p0, v1, p2}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;-><init>(ILcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;Lkotlin/coroutines/Continuation;)V

    .line 8
    iput-object p1, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->L$0:Ljava/lang/Object;

    .line 11
    return-object v0
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    .line 15
    iget p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$4;->$userId:I

    .line 17
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->logTilesChangedInSettings(ILjava/lang/String;)V

    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0
    .line 32
.end method
