.class public final Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final transitionDuration:J

.field public final transitionFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(JLcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->transitionDuration:J

    .line 5
    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->transitionFlow:Lkotlinx/coroutines/flow/Flow;

    .line 7
    return-void
    .line 9
.end method

.method public static final access$createFlow_53AowQI$stepToValue(FFLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;Lcom/android/systemui/keyguard/shared/model/TransitionStep;)Ljava/lang/Float;
    .locals 2

    .line 1
    iget v0, p6, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 2
    sub-float/2addr v0, p0

    .line 4
    mul-float/2addr v0, p1

    .line 5
    iget-object p0, p6, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result p0

    .line 11
    const/4 p1, 0x0

    .line 12
    const/high16 p6, 0x3f800000    # 1.0f

    .line 13
    const/4 v1, 0x0

    .line 15
    if-eqz p0, :cond_4

    .line 16
    const/4 p3, 0x1

    .line 18
    if-eq p0, p3, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 22
    if-eqz p0, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    cmpl-float p0, v0, p6

    .line 27
    if-ltz p0, :cond_2

    .line 29
    iput-boolean p3, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 31
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    move-result-object p0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    cmpl-float p0, v0, p1

    .line 38
    if-ltz p0, :cond_3

    .line 40
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object p0

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :goto_0
    move-object p0, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    const/4 p0, 0x0

    .line 49
    iput-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 50
    if-eqz p3, :cond_5

    .line 52
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 54
    :cond_5
    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    .line 57
    move-result p0

    .line 60
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 61
    move-result p0

    .line 64
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 65
    move-result-object p0

    .line 68
    :goto_1
    if-eqz p0, :cond_6

    .line 69
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 71
    move-result p0

    .line 74
    invoke-interface {p5, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 75
    move-result p0

    .line 78
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object p0

    .line 82
    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 86
    check-cast p0, Ljava/lang/Number;

    .line 87
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 89
    move-result p0

    .line 92
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 93
    move-result-object v1

    .line 96
    :cond_6
    return-object v1
    .line 97
.end method

.method public static createFlow-53AowQI$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-wide/from16 v1, p1

    .line 4
    and-int/lit8 v3, p10, 0x4

    .line 6
    const/4 v4, 0x0

    .line 8
    if-eqz v3, :cond_0

    .line 9
    sget v3, Lkotlin/time/Duration;->$r8$clinit:I

    .line 11
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 13
    invoke-static {v4, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 15
    move-result-wide v5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-wide/from16 v5, p4

    .line 20
    :goto_0
    and-int/lit8 v3, p10, 0x8

    .line 22
    const/4 v7, 0x0

    .line 24
    if-eqz v3, :cond_1

    .line 25
    move-object v15, v7

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object/from16 v15, p6

    .line 29
    :goto_1
    and-int/lit8 v3, p10, 0x10

    .line 31
    if-eqz v3, :cond_2

    .line 33
    move-object v10, v7

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move-object/from16 v10, p7

    .line 37
    :goto_2
    and-int/lit8 v3, p10, 0x20

    .line 39
    if-eqz v3, :cond_3

    .line 41
    move-object v11, v7

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move-object/from16 v11, p8

    .line 45
    :goto_3
    and-int/lit8 v3, p10, 0x40

    .line 47
    if-eqz v3, :cond_4

    .line 49
    sget-object v3, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 51
    move-object/from16 v17, v3

    .line 53
    goto :goto_4

    .line 55
    :cond_4
    move-object/from16 v17, p9

    .line 56
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    sget v3, Lkotlin/time/Duration;->$r8$clinit:I

    .line 61
    const-wide/16 v7, 0x0

    .line 63
    cmp-long v3, v1, v7

    .line 65
    const/4 v9, 0x1

    .line 67
    if-lez v3, :cond_5

    .line 68
    move v3, v9

    .line 70
    goto :goto_5

    .line 71
    :cond_5
    move v3, v4

    .line 72
    :goto_5
    if-eqz v3, :cond_1c

    .line 73
    invoke-static {v5, v6}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 75
    move-result v3

    .line 78
    if-eqz v3, :cond_8

    .line 79
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 81
    move-result v3

    .line 84
    xor-int/2addr v3, v9

    .line 85
    if-nez v3, :cond_7

    .line 86
    xor-long v3, v1, v5

    .line 88
    cmp-long v3, v3, v7

    .line 90
    if-ltz v3, :cond_6

    .line 92
    goto :goto_6

    .line 94
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 95
    const-string v1, "Summing infinite durations of different signs yields an undefined result."

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v0

    .line 102
    :cond_7
    :goto_6
    move-wide v7, v5

    .line 103
    goto :goto_7

    .line 104
    :cond_8
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 105
    move-result v3

    .line 108
    if-eqz v3, :cond_9

    .line 109
    move-wide v7, v1

    .line 111
    :goto_7
    move v4, v9

    .line 112
    move-object/from16 p4, v10

    .line 113
    goto/16 :goto_a

    .line 115
    :cond_9
    long-to-int v3, v5

    .line 117
    and-int/2addr v3, v9

    .line 118
    long-to-int v7, v1

    .line 119
    and-int/2addr v7, v9

    .line 120
    if-ne v3, v7, :cond_e

    .line 121
    shr-long v7, v5, v9

    .line 123
    shr-long v12, v1, v9

    .line 125
    add-long/2addr v7, v12

    .line 127
    if-nez v3, :cond_a

    .line 128
    move v4, v9

    .line 130
    :cond_a
    const v3, 0xf4240

    .line 131
    if-eqz v4, :cond_c

    .line 134
    new-instance v4, Lkotlin/ranges/LongRange;

    .line 136
    const-wide v12, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 138
    move-object/from16 p4, v10

    .line 143
    const-wide v9, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 145
    invoke-direct {v4, v12, v13, v9, v10}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 150
    invoke-virtual {v4, v7, v8}, Lkotlin/ranges/LongRange;->contains(J)Z

    .line 153
    move-result v4

    .line 156
    if-eqz v4, :cond_b

    .line 157
    const/4 v4, 0x1

    .line 159
    shl-long/2addr v7, v4

    .line 160
    sget v3, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 161
    goto :goto_8

    .line 163
    :cond_b
    int-to-long v3, v3

    .line 164
    div-long/2addr v7, v3

    .line 165
    invoke-static {v7, v8}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 166
    move-result-wide v7

    .line 169
    :goto_8
    const/4 v4, 0x1

    .line 170
    goto :goto_a

    .line 171
    :cond_c
    move-object/from16 p4, v10

    .line 172
    new-instance v4, Lkotlin/ranges/LongRange;

    .line 174
    const-wide v9, -0x431bde82d7aL

    .line 176
    const-wide v12, 0x431bde82d7aL

    .line 181
    invoke-direct {v4, v9, v10, v12, v13}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 186
    invoke-virtual {v4, v7, v8}, Lkotlin/ranges/LongRange;->contains(J)Z

    .line 189
    move-result v4

    .line 192
    if-eqz v4, :cond_d

    .line 193
    int-to-long v3, v3

    .line 195
    mul-long/2addr v7, v3

    .line 196
    const/4 v4, 0x1

    .line 197
    shl-long/2addr v7, v4

    .line 198
    sget v3, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 199
    goto :goto_a

    .line 201
    :cond_d
    const/4 v4, 0x1

    .line 202
    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(J)J

    .line 203
    move-result-wide v7

    .line 206
    invoke-static {v7, v8}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 207
    move-result-wide v7

    .line 210
    goto :goto_a

    .line 211
    :cond_e
    move v4, v9

    .line 212
    move-object/from16 p4, v10

    .line 213
    if-ne v3, v4, :cond_f

    .line 215
    move v3, v4

    .line 217
    goto :goto_9

    .line 218
    :cond_f
    const/4 v3, 0x0

    .line 219
    :goto_9
    if-eqz v3, :cond_10

    .line 220
    shr-long v7, v5, v4

    .line 222
    shr-long v9, v1, v4

    .line 224
    invoke-static {v7, v8, v9, v10}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    .line 226
    move-result-wide v7

    .line 229
    goto :goto_a

    .line 230
    :cond_10
    shr-long v7, v1, v4

    .line 231
    shr-long v9, v5, v4

    .line 233
    invoke-static {v7, v8, v9, v10}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    .line 235
    move-result-wide v7

    .line 238
    :goto_a
    iget-wide v9, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->transitionDuration:J

    .line 239
    invoke-static {v7, v8, v9, v10}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    .line 241
    move-result v3

    .line 244
    if-gtz v3, :cond_1b

    .line 245
    long-to-int v3, v5

    .line 247
    and-int/2addr v3, v4

    .line 248
    if-nez v3, :cond_11

    .line 249
    move v3, v4

    .line 251
    goto :goto_b

    .line 252
    :cond_11
    const/4 v3, 0x0

    .line 253
    :goto_b
    if-eqz v3, :cond_12

    .line 254
    sget-object v3, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 256
    goto :goto_c

    .line 258
    :cond_12
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 259
    :goto_c
    long-to-int v7, v9

    .line 261
    and-int/2addr v7, v4

    .line 262
    if-nez v7, :cond_13

    .line 263
    const/4 v4, 0x1

    .line 265
    goto :goto_d

    .line 266
    :cond_13
    const/4 v4, 0x0

    .line 267
    :goto_d
    if-eqz v4, :cond_14

    .line 268
    sget-object v4, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 270
    goto :goto_e

    .line 272
    :cond_14
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 273
    :goto_e
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 275
    move-result v8

    .line 278
    if-ltz v8, :cond_15

    .line 279
    goto :goto_f

    .line 281
    :cond_15
    move-object v3, v4

    .line 282
    :goto_f
    invoke-static {v5, v6, v3}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 283
    move-result-wide v4

    .line 286
    invoke-static {v9, v10, v3}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 287
    move-result-wide v12

    .line 290
    div-double/2addr v4, v12

    .line 291
    double-to-float v12, v4

    .line 292
    if-nez v7, :cond_16

    .line 293
    const/4 v3, 0x1

    .line 295
    goto :goto_10

    .line 296
    :cond_16
    const/4 v3, 0x0

    .line 297
    :goto_10
    if-eqz v3, :cond_17

    .line 298
    sget-object v3, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 300
    goto :goto_11

    .line 302
    :cond_17
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 303
    :goto_11
    long-to-int v4, v1

    .line 305
    const/4 v5, 0x1

    .line 306
    and-int/2addr v4, v5

    .line 307
    if-nez v4, :cond_18

    .line 308
    const/4 v4, 0x1

    .line 310
    goto :goto_12

    .line 311
    :cond_18
    const/4 v4, 0x0

    .line 312
    :goto_12
    if-eqz v4, :cond_19

    .line 313
    sget-object v4, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 315
    goto :goto_13

    .line 317
    :cond_19
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 318
    :goto_13
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 320
    move-result v5

    .line 323
    if-ltz v5, :cond_1a

    .line 324
    goto :goto_14

    .line 326
    :cond_1a
    move-object v3, v4

    .line 327
    :goto_14
    invoke-static {v9, v10, v3}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 328
    move-result-wide v4

    .line 331
    invoke-static {v1, v2, v3}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 332
    move-result-wide v1

    .line 335
    div-double/2addr v4, v1

    .line 336
    double-to-float v13, v4

    .line 337
    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 338
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 340
    const/4 v1, 0x1

    .line 343
    iput-boolean v1, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 344
    iget-object v9, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->transitionFlow:Lkotlinx/coroutines/flow/Flow;

    .line 346
    new-instance v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;

    .line 348
    move-object v8, v0

    .line 350
    move-object/from16 v10, p4

    .line 351
    move-object/from16 v16, p3

    .line 353
    invoke-direct/range {v8 .. v17}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;FFLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;)V

    .line 355
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 358
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 360
    return-object v1

    .line 363
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 364
    invoke-static {v5, v6}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 366
    move-result-object v3

    .line 369
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 370
    move-result-object v1

    .line 373
    invoke-static {v9, v10}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 374
    move-result-object v2

    .line 377
    const-string/jumbo v4, "startTime("

    .line 378
    const-string v5, ") + duration("

    .line 381
    const-string v6, ") must be <= transitionDuration("

    .line 383
    invoke-static {v4, v3, v5, v1, v6}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    move-result-object v1

    .line 388
    const-string v3, ")"

    .line 389
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    move-result-object v1

    .line 394
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 395
    throw v0

    .line 398
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 399
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 401
    move-result-object v1

    .line 404
    const-string v2, "duration must be a positive number: "

    .line 405
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    move-result-object v1

    .line 410
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 411
    throw v0
    .line 414
.end method
