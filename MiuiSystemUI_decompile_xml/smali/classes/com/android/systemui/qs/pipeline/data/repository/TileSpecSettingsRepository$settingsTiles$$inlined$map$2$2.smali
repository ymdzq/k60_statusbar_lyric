.class public final Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $userId$inlined:I

.field public final synthetic this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 4
    iput p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;->$userId$inlined:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto/16 :goto_6

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    check-cast p1, Ljava/lang/String;

    .line 53
    iget-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    const-string v2, ","

    .line 60
    filled-new-array {v2}, [Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 65
    invoke-static {p1, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 66
    move-result-object p1

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 72
    move-result v4

    .line 75
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p1

    .line 82
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v4

    .line 86
    if-eqz v4, :cond_3

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/String;

    .line 93
    invoke-static {v4}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    .line 95
    move-result-object v4

    .line 98
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_1

    .line 102
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 103
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object v2

    .line 111
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v4

    .line 115
    sget-object v5, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    .line 116
    if-eqz v4, :cond_5

    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v4

    .line 123
    move-object v6, v4

    .line 124
    check-cast v6, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    .line 125
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    move-result v5

    .line 130
    xor-int/2addr v5, v3

    .line 131
    if-eqz v5, :cond_4

    .line 132
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_2

    .line 137
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    move-result v2

    .line 141
    xor-int/2addr v2, v3

    .line 142
    iget v4, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;->$userId$inlined:I

    .line 143
    iget-object v6, p2, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    .line 145
    if-eqz v2, :cond_6

    .line 147
    const/4 p2, 0x0

    .line 149
    invoke-virtual {v6, v4, p1, p2}, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->logParsedTiles(ILjava/util/List;Z)V

    .line 150
    goto :goto_5

    .line 153
    :cond_6
    iget-object p1, p2, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->resources:Landroid/content/res/Resources;

    .line 154
    invoke-static {p1}, Lcom/android/systemui/qs/QSHost;->getDefaultSpecs(Landroid/content/res/Resources;)Ljava/util/List;

    .line 156
    move-result-object p1

    .line 159
    new-instance p2, Ljava/util/ArrayList;

    .line 160
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 162
    move-result v2

    .line 165
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    check-cast p1, Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    move-result-object p1

    .line 174
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result v2

    .line 178
    if-eqz v2, :cond_7

    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v2

    .line 184
    check-cast v2, Ljava/lang/String;

    .line 185
    invoke-static {v2}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    .line 187
    move-result-object v2

    .line 190
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    goto :goto_3

    .line 194
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    .line 195
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object p2

    .line 203
    :cond_8
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v2

    .line 207
    if-eqz v2, :cond_9

    .line 208
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v2

    .line 213
    move-object v7, v2

    .line 214
    check-cast v7, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    .line 215
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    move-result v7

    .line 220
    xor-int/2addr v7, v3

    .line 221
    if-eqz v7, :cond_8

    .line 222
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    goto :goto_4

    .line 227
    :cond_9
    invoke-virtual {v6, v4, p1, v3}, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->logParsedTiles(ILjava/util/List;Z)V

    .line 228
    :goto_5
    iput v3, v0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2$1;->label:I

    .line 231
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$settingsTiles$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 233
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 235
    move-result-object p0

    .line 238
    if-ne p0, v1, :cond_a

    .line 239
    return-object v1

    .line 241
    :cond_a
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 242
    return-object p0
    .line 244
.end method
