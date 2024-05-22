.class public final Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic $userId$inlined:I

.field public final synthetic this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 6
    iput p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1;->$userId$inlined:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1;->$r8$classId:I

    .line 6
    iget-object v3, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 8
    iget v4, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1;->$userId$inlined:I

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 12
    packed-switch v2, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 17
    :pswitch_0
    new-instance v2, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1$2;

    .line 18
    invoke-direct {v2, p1, p0, v4}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;I)V

    .line 20
    invoke-interface {v3, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    if-ne p0, v1, :cond_0

    .line 27
    move-object v0, p0

    .line 29
    :cond_0
    return-object v0

    .line 30
    :goto_0
    new-instance v2, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;

    .line 31
    invoke-direct {v2, p1, p0, v4}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;I)V

    .line 33
    invoke-interface {v3, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    if-ne p0, v1, :cond_1

    .line 40
    move-object v0, p0

    .line 42
    :cond_1
    return-object v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
