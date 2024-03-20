.class final Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.notification.stack.NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1"
    f = "NotificationStackSizeCalculator.kt"
    l = {
        0x143,
        0x166
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $shelfHeight:F

.field final synthetic $stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field F$0:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$shelfHeight:F

    .line 6
    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 6
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$shelfHeight:F

    .line 8
    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FLkotlin/coroutines/Continuation;)V

    .line 10
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    .line 13
    return-object v0
    .line 15
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->label:I

    .line 6
    const/4 v4, 0x1

    .line 8
    if-eqz v2, :cond_6

    .line 9
    const/4 v5, 0x2

    .line 11
    if-eq v2, v4, :cond_1

    .line 12
    if-ne v2, v5, :cond_0

    .line 14
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->I$0:I

    .line 16
    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->F$0:F

    .line 18
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->Z$0:Z

    .line 20
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$7:Ljava/lang/Object;

    .line 22
    check-cast v7, Ljava/util/Iterator;

    .line 24
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$6:Ljava/lang/Object;

    .line 26
    check-cast v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 28
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$5:Ljava/lang/Object;

    .line 30
    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    .line 32
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$4:Ljava/lang/Object;

    .line 34
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 36
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$3:Ljava/lang/Object;

    .line 38
    check-cast v11, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 40
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$2:Ljava/lang/Object;

    .line 42
    check-cast v12, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 44
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$1:Ljava/lang/Object;

    .line 46
    check-cast v13, Ljava/util/List;

    .line 48
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    .line 50
    check-cast v14, Lkotlin/sequences/SequenceBuilderIterator;

    .line 52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    move v3, v6

    .line 57
    move-object v15, v9

    .line 58
    move-object v6, v14

    .line 59
    move v9, v5

    .line 60
    move-object v14, v8

    .line 61
    move-object v8, v13

    .line 62
    move-object v13, v7

    .line 63
    move v7, v2

    .line 64
    move-object v2, v1

    .line 65
    move-object/from16 v20, v11

    .line 66
    move-object v11, v10

    .line 68
    move-object/from16 v10, v20

    .line 69
    goto/16 :goto_2

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0

    .line 80
    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->Z$0:Z

    .line 81
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$4:Ljava/lang/Object;

    .line 83
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 85
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$3:Ljava/lang/Object;

    .line 87
    check-cast v6, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 89
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$2:Ljava/lang/Object;

    .line 91
    check-cast v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 93
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$1:Ljava/lang/Object;

    .line 95
    check-cast v8, Ljava/util/List;

    .line 97
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    .line 99
    check-cast v9, Lkotlin/sequences/SequenceBuilderIterator;

    .line 101
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    .line 106
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 108
    iget v12, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$shelfHeight:F

    .line 110
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v13

    .line 115
    const/4 v14, 0x0

    .line 116
    move-object v15, v10

    .line 117
    move-object v10, v6

    .line 118
    move-object v6, v9

    .line 119
    move-object v9, v7

    .line 120
    move v7, v14

    .line 121
    move-object v14, v11

    .line 122
    move-object v11, v4

    .line 123
    move v4, v12

    .line 124
    move v12, v2

    .line 125
    move-object v2, v1

    .line 126
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v16

    .line 130
    if-eqz v16, :cond_5

    .line 131
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v16

    .line 136
    add-int/lit8 v3, v7, 0x1

    .line 137
    if-ltz v7, :cond_4

    .line 139
    move-object/from16 v5, v16

    .line 141
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 143
    move-object/from16 p0, v6

    .line 145
    iget-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 147
    move-object/from16 v16, v6

    .line 149
    check-cast v16, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 151
    move-object/from16 p1, v1

    .line 153
    move-object/from16 v1, p0

    .line 155
    move-object v6, v15

    .line 157
    move/from16 p0, v7

    .line 158
    move-object v7, v5

    .line 160
    move-object/from16 v17, v8

    .line 161
    move/from16 v8, p0

    .line 163
    move-object/from16 v18, v2

    .line 165
    move-object v2, v9

    .line 167
    move-object/from16 v9, v16

    .line 168
    move-object/from16 v16, v13

    .line 170
    move-object v13, v10

    .line 172
    move-object v10, v14

    .line 173
    move-object/from16 v19, v0

    .line 174
    move-object v0, v11

    .line 176
    move v11, v12

    .line 177
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->getSpaceNeeded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ILcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;

    .line 178
    move-result-object v6

    .line 181
    iget v7, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 182
    iget v8, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;->whenEnoughSpace:F

    .line 184
    add-float/2addr v7, v8

    .line 186
    iput v7, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 187
    iget v7, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 189
    iget v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;->whenSavingSpace:F

    .line 191
    add-float/2addr v7, v6

    .line 193
    iput v7, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 194
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 196
    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 198
    move-result v6

    .line 201
    move/from16 v7, p0

    .line 202
    if-ne v7, v6, :cond_2

    .line 204
    move-object/from16 v8, v17

    .line 206
    const/4 v5, 0x0

    .line 208
    goto :goto_1

    .line 209
    :cond_2
    move-object/from16 v8, v17

    .line 210
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    move-result-object v6

    .line 215
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 216
    invoke-virtual {v15, v14, v5, v6, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->calculateGapAndDividerHeight(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    .line 218
    move-result v5

    .line 221
    add-float/2addr v5, v4

    .line 222
    :goto_1
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;

    .line 223
    iget v7, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 225
    iget v9, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 227
    invoke-direct {v6, v7, v9, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;-><init>(FFF)V

    .line 229
    move-object/from16 v5, v19

    .line 232
    iput-object v1, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    .line 234
    iput-object v8, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$1:Ljava/lang/Object;

    .line 236
    iput-object v2, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$2:Ljava/lang/Object;

    .line 238
    iput-object v13, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$3:Ljava/lang/Object;

    .line 240
    iput-object v0, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$4:Ljava/lang/Object;

    .line 242
    iput-object v15, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$5:Ljava/lang/Object;

    .line 244
    iput-object v14, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$6:Ljava/lang/Object;

    .line 246
    move-object/from16 v7, v16

    .line 248
    iput-object v7, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$7:Ljava/lang/Object;

    .line 250
    iput-boolean v12, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->Z$0:Z

    .line 252
    iput v4, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->F$0:F

    .line 254
    iput v3, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->I$0:I

    .line 256
    const/4 v9, 0x2

    .line 258
    iput v9, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->label:I

    .line 259
    invoke-virtual {v1, v6, v5}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 261
    move-object/from16 v6, p1

    .line 264
    move-object/from16 v10, v18

    .line 266
    if-ne v10, v6, :cond_3

    .line 268
    return-object v6

    .line 270
    :cond_3
    move-object v11, v0

    .line 271
    move-object v0, v5

    .line 272
    move-object/from16 v20, v6

    .line 273
    move-object v6, v1

    .line 275
    move-object/from16 v1, v20

    .line 276
    move/from16 v21, v12

    .line 278
    move-object v12, v2

    .line 280
    move-object v2, v10

    .line 281
    move-object v10, v13

    .line 282
    move-object v13, v7

    .line 283
    move v7, v3

    .line 284
    move/from16 v3, v21

    .line 285
    :goto_2
    move v5, v9

    .line 287
    move-object v9, v12

    .line 288
    move v12, v3

    .line 289
    goto/16 :goto_0

    .line 290
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 292
    const/4 v0, 0x0

    .line 295
    throw v0

    .line 296
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 297
    return-object v0

    .line 299
    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 300
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    .line 303
    check-cast v2, Lkotlin/sequences/SequenceBuilderIterator;

    .line 305
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    .line 307
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 309
    sget-object v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 311
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    invoke-static {v5}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 316
    move-result-object v5

    .line 319
    sget-object v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$childrenSequence$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$childrenSequence$1;

    .line 320
    new-instance v7, Lkotlin/sequences/TransformingSequence;

    .line 322
    invoke-direct {v7, v5, v6}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 324
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;

    .line 327
    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;)V

    .line 329
    invoke-static {v7, v5}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 332
    move-result-object v3

    .line 335
    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 336
    move-result-object v3

    .line 339
    new-instance v5, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 340
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 342
    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 345
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 347
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 350
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 352
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    .line 355
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->onLockscreen()Z

    .line 357
    move-result v8

    .line 360
    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;

    .line 361
    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$shelfHeight:F

    .line 363
    const/4 v11, 0x0

    .line 365
    invoke-direct {v9, v11, v11, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;-><init>(FFF)V

    .line 366
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    .line 369
    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$1:Ljava/lang/Object;

    .line 371
    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$2:Ljava/lang/Object;

    .line 373
    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$3:Ljava/lang/Object;

    .line 375
    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$4:Ljava/lang/Object;

    .line 377
    iput-boolean v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->Z$0:Z

    .line 379
    iput v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->label:I

    .line 381
    invoke-virtual {v2, v9, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 383
    return-object v1
    .line 386
.end method
