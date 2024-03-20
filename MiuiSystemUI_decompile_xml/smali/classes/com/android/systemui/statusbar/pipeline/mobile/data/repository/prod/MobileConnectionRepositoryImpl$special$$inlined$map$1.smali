.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$1;->$r8$classId:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 8
    packed-switch v2, :pswitch_data_0

    .line 10
    goto/16 :goto_0

    .line 13
    :pswitch_0
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$8$2;

    .line 15
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$8$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 17
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    if-ne p0, v1, :cond_0

    .line 24
    move-object v0, p0

    .line 26
    :cond_0
    return-object v0

    .line 27
    :pswitch_1
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$7$2;

    .line 28
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$7$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 30
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    if-ne p0, v1, :cond_1

    .line 37
    move-object v0, p0

    .line 39
    :cond_1
    return-object v0

    .line 40
    :pswitch_2
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$6$2;

    .line 41
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$6$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 43
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    if-ne p0, v1, :cond_2

    .line 50
    move-object v0, p0

    .line 52
    :cond_2
    return-object v0

    .line 53
    :pswitch_3
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$5$2;

    .line 54
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$5$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 56
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 62
    if-ne p0, v1, :cond_3

    .line 63
    move-object v0, p0

    .line 65
    :cond_3
    return-object v0

    .line 66
    :pswitch_4
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$4$2;

    .line 67
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$4$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 69
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 75
    if-ne p0, v1, :cond_4

    .line 76
    move-object v0, p0

    .line 78
    :cond_4
    return-object v0

    .line 79
    :pswitch_5
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$3$2;

    .line 80
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$3$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 82
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 88
    if-ne p0, v1, :cond_5

    .line 89
    move-object v0, p0

    .line 91
    :cond_5
    return-object v0

    .line 92
    :pswitch_6
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$2$2;

    .line 93
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 95
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 101
    if-ne p0, v1, :cond_6

    .line 102
    move-object v0, p0

    .line 104
    :cond_6
    return-object v0

    .line 105
    :pswitch_7
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$1$2;

    .line 106
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 108
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    move-result-object p0

    .line 114
    if-ne p0, v1, :cond_7

    .line 115
    move-object v0, p0

    .line 117
    :cond_7
    return-object v0

    .line 118
    :pswitch_8
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$11$2;

    .line 119
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$11$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 121
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 124
    move-result-object p0

    .line 127
    if-ne p0, v1, :cond_8

    .line 128
    move-object v0, p0

    .line 130
    :cond_8
    return-object v0

    .line 131
    :pswitch_9
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$10$2;

    .line 132
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$10$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 134
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 137
    move-result-object p0

    .line 140
    if-ne p0, v1, :cond_9

    .line 141
    move-object v0, p0

    .line 143
    :cond_9
    return-object v0

    .line 144
    :pswitch_a
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$9$2;

    .line 145
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$9$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 147
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 150
    move-result-object p0

    .line 153
    if-ne p0, v1, :cond_a

    .line 154
    move-object v0, p0

    .line 156
    :cond_a
    return-object v0

    .line 157
    :pswitch_b
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$8$2;

    .line 158
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$8$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 160
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 163
    move-result-object p0

    .line 166
    if-ne p0, v1, :cond_b

    .line 167
    move-object v0, p0

    .line 169
    :cond_b
    return-object v0

    .line 170
    :pswitch_c
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$7$2;

    .line 171
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$7$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 173
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 176
    move-result-object p0

    .line 179
    if-ne p0, v1, :cond_c

    .line 180
    move-object v0, p0

    .line 182
    :cond_c
    return-object v0

    .line 183
    :pswitch_d
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$6$2;

    .line 184
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$6$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 186
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 189
    move-result-object p0

    .line 192
    if-ne p0, v1, :cond_d

    .line 193
    move-object v0, p0

    .line 195
    :cond_d
    return-object v0

    .line 196
    :pswitch_e
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$5$2;

    .line 197
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$5$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 199
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 202
    move-result-object p0

    .line 205
    if-ne p0, v1, :cond_e

    .line 206
    move-object v0, p0

    .line 208
    :cond_e
    return-object v0

    .line 209
    :pswitch_f
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$4$2;

    .line 210
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$4$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 212
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 215
    move-result-object p0

    .line 218
    if-ne p0, v1, :cond_f

    .line 219
    move-object v0, p0

    .line 221
    :cond_f
    return-object v0

    .line 222
    :pswitch_10
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$3$2;

    .line 223
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$3$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 225
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 228
    move-result-object p0

    .line 231
    if-ne p0, v1, :cond_10

    .line 232
    move-object v0, p0

    .line 234
    :cond_10
    return-object v0

    .line 235
    :pswitch_11
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$2$2;

    .line 236
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 238
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 241
    move-result-object p0

    .line 244
    if-ne p0, v1, :cond_11

    .line 245
    move-object v0, p0

    .line 247
    :cond_11
    return-object v0

    .line 248
    :pswitch_12
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$14$2;

    .line 249
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$14$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 251
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 254
    move-result-object p0

    .line 257
    if-ne p0, v1, :cond_12

    .line 258
    move-object v0, p0

    .line 260
    :cond_12
    return-object v0

    .line 261
    :pswitch_13
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$13$2;

    .line 262
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$13$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 264
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 267
    move-result-object p0

    .line 270
    if-ne p0, v1, :cond_13

    .line 271
    move-object v0, p0

    .line 273
    :cond_13
    return-object v0

    .line 274
    :pswitch_14
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$12$2;

    .line 275
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$12$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 277
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 280
    move-result-object p0

    .line 283
    if-ne p0, v1, :cond_14

    .line 284
    move-object v0, p0

    .line 286
    :cond_14
    return-object v0

    .line 287
    :pswitch_15
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$10$2;

    .line 288
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$10$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 290
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 293
    move-result-object p0

    .line 296
    if-ne p0, v1, :cond_15

    .line 297
    move-object v0, p0

    .line 299
    :cond_15
    return-object v0

    .line 300
    :pswitch_16
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$dataEnabled$lambda$32$$inlined$mapNotNull$1$2;

    .line 301
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$dataEnabled$lambda$32$$inlined$mapNotNull$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 303
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 306
    move-result-object p0

    .line 309
    if-ne p0, v1, :cond_16

    .line 310
    move-object v0, p0

    .line 312
    :cond_16
    return-object v0

    .line 313
    :pswitch_17
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$dataEnabled$lambda$32$$inlined$map$1$2;

    .line 314
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$dataEnabled$lambda$32$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 316
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 319
    move-result-object p0

    .line 322
    if-ne p0, v1, :cond_17

    .line 323
    move-object v0, p0

    .line 325
    :cond_17
    return-object v0

    .line 326
    :pswitch_18
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$1$2;

    .line 327
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 329
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 332
    move-result-object p0

    .line 335
    if-ne p0, v1, :cond_18

    .line 336
    move-object v0, p0

    .line 338
    :cond_18
    return-object v0

    .line 339
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$9$2;

    .line 340
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$special$$inlined$mapNotNull$9$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 342
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 345
    move-result-object p0

    .line 348
    if-ne p0, v1, :cond_19

    .line 349
    move-object v0, p0

    .line 351
    :cond_19
    return-object v0

    .line 352
    nop

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 354
.end method
