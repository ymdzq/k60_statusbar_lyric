.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $arrayFactory:Lkotlin/jvm/functions/Function0;

.field final synthetic $flows:[Lkotlinx/coroutines/flow/Flow;

.field final synthetic $this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $transform:Lkotlin/jvm/functions/Function3;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    .line 4
    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    .line 6
    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    .line 8
    const/4 p2, 0x2

    .line 10
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    .line 2
    iget-object v5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    .line 4
    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    .line 6
    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    .line 8
    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    .line 10
    move-object v0, v6

    .line 12
    move-object v1, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)V

    .line 14
    iput-object p1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 17
    return-object v6
    .line 19
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    sget-object v4, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    .line 10
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x3

    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x1

    .line 15
    if-eqz v2, :cond_3

    .line 16
    if-eq v2, v8, :cond_2

    .line 18
    if-eq v2, v7, :cond_1

    .line 20
    if-ne v2, v6, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    .line 32
    :cond_1
    :goto_0
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 33
    iget v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 35
    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 37
    check-cast v10, [B

    .line 39
    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 41
    check-cast v11, Lkotlinx/coroutines/channels/Channel;

    .line 43
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 45
    check-cast v12, [Ljava/lang/Object;

    .line 47
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    move-object/from16 v21, v11

    .line 52
    move v11, v2

    .line 54
    move-object v2, v10

    .line 55
    move-object v10, v12

    .line 56
    move-object/from16 v12, v21

    .line 57
    goto/16 :goto_6

    .line 59
    :cond_2
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 61
    iget v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 63
    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 65
    check-cast v10, [B

    .line 67
    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 69
    check-cast v11, Lkotlinx/coroutines/channels/Channel;

    .line 71
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 73
    check-cast v12, [Ljava/lang/Object;

    .line 75
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    move-object/from16 v13, p1

    .line 80
    check-cast v13, Lkotlinx/coroutines/channels/ChannelResult;

    .line 82
    iget-object v13, v13, Lkotlinx/coroutines/channels/ChannelResult;->holder:Ljava/lang/Object;

    .line 84
    move-object v15, v12

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 91
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 93
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    .line 95
    array-length v9, v9

    .line 97
    if-nez v9, :cond_4

    .line 98
    return-object v3

    .line 100
    :cond_4
    new-array v10, v9, [Ljava/lang/Object;

    .line 101
    const/4 v11, 0x0

    .line 103
    invoke-static {v10, v11, v9, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 104
    const/4 v12, 0x6

    .line 107
    invoke-static {v9, v5, v12}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/channels/AbstractChannel;

    .line 108
    move-result-object v12

    .line 111
    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 112
    invoke-direct {v15, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 114
    move v14, v11

    .line 117
    :goto_1
    if-ge v14, v9, :cond_5

    .line 118
    new-instance v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    .line 120
    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    .line 122
    const/16 v18, 0x0

    .line 124
    move-object/from16 v19, v13

    .line 126
    move/from16 v20, v14

    .line 128
    move-object v14, v11

    .line 130
    move-object v11, v15

    .line 131
    move/from16 v15, v20

    .line 132
    move-object/from16 v16, v11

    .line 134
    move-object/from16 v17, v12

    .line 136
    invoke-direct/range {v13 .. v18}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>([Lkotlinx/coroutines/flow/Flow;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    .line 138
    invoke-static {v2, v5, v5, v13, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 141
    add-int/lit8 v14, v20, 0x1

    .line 144
    move-object v15, v11

    .line 146
    const/4 v11, 0x0

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    new-array v2, v9, [B

    .line 149
    const/4 v11, 0x0

    .line 151
    :goto_2
    add-int/2addr v11, v8

    .line 152
    int-to-byte v11, v11

    .line 153
    iput-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 154
    iput-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 156
    iput-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 158
    iput v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 160
    iput v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 162
    iput v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 164
    invoke-interface {v12, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    move-result-object v13

    .line 169
    if-ne v13, v1, :cond_6

    .line 170
    return-object v1

    .line 172
    :cond_6
    move-object v15, v10

    .line 173
    move-object v10, v2

    .line 174
    move v2, v11

    .line 175
    move-object v11, v12

    .line 176
    :goto_3
    instance-of v12, v13, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 177
    if-nez v12, :cond_7

    .line 179
    goto :goto_4

    .line 181
    :cond_7
    move-object v13, v5

    .line 182
    :goto_4
    check-cast v13, Lkotlin/collections/IndexedValue;

    .line 183
    if-nez v13, :cond_8

    .line 185
    return-object v3

    .line 187
    :cond_8
    iget v12, v13, Lkotlin/collections/IndexedValue;->index:I

    .line 188
    aget-object v14, v15, v12

    .line 190
    iget-object v13, v13, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    .line 192
    aput-object v13, v15, v12

    .line 194
    if-ne v14, v4, :cond_9

    .line 196
    add-int/lit8 v9, v9, -0x1

    .line 198
    :cond_9
    aget-byte v13, v10, v12

    .line 200
    if-eq v13, v2, :cond_b

    .line 202
    int-to-byte v13, v2

    .line 204
    aput-byte v13, v10, v12

    .line 205
    invoke-interface {v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 207
    move-result-object v12

    .line 210
    instance-of v13, v12, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 211
    if-nez v13, :cond_a

    .line 213
    goto :goto_5

    .line 215
    :cond_a
    move-object v12, v5

    .line 216
    :goto_5
    move-object v13, v12

    .line 217
    check-cast v13, Lkotlin/collections/IndexedValue;

    .line 218
    if-nez v13, :cond_8

    .line 220
    :cond_b
    if-nez v9, :cond_d

    .line 222
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    .line 224
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 226
    move-result-object v12

    .line 229
    move-object v14, v12

    .line 230
    check-cast v14, [Ljava/lang/Object;

    .line 231
    if-nez v14, :cond_c

    .line 233
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    .line 235
    iget-object v13, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    .line 237
    iput-object v15, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 239
    iput-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 241
    iput-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 243
    iput v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 245
    iput v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 247
    iput v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 249
    invoke-interface {v12, v13, v15, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    move-result-object v12

    .line 254
    if-ne v12, v1, :cond_d

    .line 255
    return-object v1

    .line 257
    :cond_c
    const/16 v16, 0x0

    .line 258
    const/16 v17, 0x0

    .line 260
    const/16 v18, 0x0

    .line 262
    const/16 v19, 0xe

    .line 264
    move-object v12, v15

    .line 266
    move-object v13, v14

    .line 267
    move-object v5, v14

    .line 268
    move/from16 v14, v16

    .line 269
    move-object v7, v15

    .line 271
    move/from16 v15, v17

    .line 272
    move/from16 v16, v18

    .line 274
    move/from16 v17, v19

    .line 276
    invoke-static/range {v12 .. v17}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 278
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    .line 281
    iget-object v13, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    .line 283
    iput-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 285
    iput-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 287
    iput-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 289
    iput v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 291
    iput v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 293
    iput v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 295
    invoke-interface {v12, v13, v5, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-result-object v5

    .line 300
    if-ne v5, v1, :cond_e

    .line 301
    return-object v1

    .line 303
    :cond_d
    move-object v7, v15

    .line 304
    :cond_e
    move-object v12, v11

    .line 305
    move v11, v2

    .line 306
    move-object v2, v10

    .line 307
    move-object v10, v7

    .line 308
    :goto_6
    const/4 v5, 0x0

    .line 309
    const/4 v7, 0x2

    .line 310
    goto/16 :goto_2
    .line 311
.end method
