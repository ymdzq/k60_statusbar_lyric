.class public final Landroidx/compose/ui/graphics/vector/PathNodeKt;
.super Ljava/lang/Object;
.source "PathNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n283#1:334\n284#1,9:338\n283#1:348\n284#1,9:352\n283#1:362\n284#1,9:366\n283#1:376\n284#1,9:380\n283#1:390\n284#1,9:394\n283#1:404\n284#1,9:408\n283#1:418\n284#1,9:422\n283#1:432\n284#1,9:436\n283#1:446\n284#1,9:450\n283#1:460\n284#1,9:464\n283#1:474\n284#1,9:478\n283#1:488\n284#1,9:492\n283#1:502\n284#1,9:506\n283#1:516\n284#1,9:520\n283#1:530\n284#1,9:534\n283#1:544\n284#1,9:548\n283#1:558\n284#1,9:562\n283#1:572\n284#1,9:576\n1549#2:335\n1620#2,2:336\n1622#2:347\n1549#2:349\n1620#2,2:350\n1622#2:361\n1549#2:363\n1620#2,2:364\n1622#2:375\n1549#2:377\n1620#2,2:378\n1622#2:389\n1549#2:391\n1620#2,2:392\n1622#2:403\n1549#2:405\n1620#2,2:406\n1622#2:417\n1549#2:419\n1620#2,2:420\n1622#2:431\n1549#2:433\n1620#2,2:434\n1622#2:445\n1549#2:447\n1620#2,2:448\n1622#2:459\n1549#2:461\n1620#2,2:462\n1622#2:473\n1549#2:475\n1620#2,2:476\n1622#2:487\n1549#2:489\n1620#2,2:490\n1622#2:501\n1549#2:503\n1620#2,2:504\n1622#2:515\n1549#2:517\n1620#2,2:518\n1622#2:529\n1549#2:531\n1620#2,2:532\n1622#2:543\n1549#2:545\n1620#2,2:546\n1622#2:557\n1549#2:559\n1620#2,2:560\n1622#2:571\n1549#2:573\n1620#2,2:574\n1622#2:585\n1549#2:586\n1620#2,3:587\n*S KotlinDebug\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n*L\n153#1:334\n153#1:338,9\n157#1:348\n157#1:352,9\n161#1:362\n161#1:366,9\n165#1:376\n165#1:380,9\n169#1:390\n169#1:394,9\n173#1:404\n173#1:408,9\n177#1:418\n177#1:422,9\n181#1:432\n181#1:436,9\n185#1:446\n185#1:450,9\n196#1:460\n196#1:464,9\n207#1:474\n207#1:478,9\n216#1:488\n216#1:492,9\n225#1:502\n225#1:506,9\n234#1:516\n234#1:520,9\n243#1:530\n243#1:534,9\n247#1:544\n247#1:548,9\n251#1:558\n251#1:562,9\n263#1:572\n263#1:576,9\n153#1:335\n153#1:336,2\n153#1:347\n157#1:349\n157#1:350,2\n157#1:361\n161#1:363\n161#1:364,2\n161#1:375\n165#1:377\n165#1:378,2\n165#1:389\n169#1:391\n169#1:392,2\n169#1:403\n173#1:405\n173#1:406,2\n173#1:417\n177#1:419\n177#1:420,2\n177#1:431\n181#1:433\n181#1:434,2\n181#1:445\n185#1:447\n185#1:448,2\n185#1:459\n196#1:461\n196#1:462,2\n196#1:473\n207#1:475\n207#1:476,2\n207#1:487\n216#1:489\n216#1:490,2\n216#1:501\n225#1:503\n225#1:504,2\n225#1:515\n234#1:517\n234#1:518,2\n234#1:529\n243#1:531\n243#1:532,2\n243#1:543\n247#1:545\n247#1:546,2\n247#1:557\n251#1:559\n251#1:560,2\n251#1:571\n263#1:573\n263#1:574,2\n263#1:585\n283#1:586\n283#1:587,3\n*E\n"
.end annotation


# direct methods
.method public static final toPathNodes(C[F)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C[F)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "args"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x7a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    .line 152
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2a

    :cond_2
    const/16 v2, 0x6d

    const/4 v5, 0x2

    const/16 v6, 0xa

    if-ne v0, v2, :cond_6

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 154
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    aget v8, v6, v4

    aget v9, v6, v3

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    .line 289
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_3

    if-lez v5, :cond_3

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_3

    :cond_3
    if-lez v5, :cond_4

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_4
    :goto_3
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto/16 :goto_2a

    :cond_6
    const/16 v2, 0x4d

    if-ne v0, v2, :cond_9

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 158
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    aget v8, v6, v4

    aget v9, v6, v3

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    if-lez v5, :cond_7

    .line 289
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_5

    .line 290
    :cond_7
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_8

    if-lez v5, :cond_8

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_8
    :goto_5
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const/16 v2, 0x6c

    if-ne v0, v2, :cond_c

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 162
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v8, v6, v4

    aget v9, v6, v3

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 289
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_a

    if-lez v5, :cond_a

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_7

    .line 290
    :cond_a
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_b

    if-lez v5, :cond_b

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_b
    :goto_7
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    const/16 v2, 0x4c

    if-ne v0, v2, :cond_f

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 166
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v8, v6, v4

    aget v9, v6, v3

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 289
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_d

    if-lez v5, :cond_d

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_9

    .line 290
    :cond_d
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_e

    if-lez v5, :cond_e

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_e
    :goto_9
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    const/16 v2, 0x68

    if-ne v0, v2, :cond_12

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 170
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    aget v8, v6, v4

    invoke-direct {v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    .line 289
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_10

    if-lez v5, :cond_10

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_b

    .line 290
    :cond_10
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_11

    if-lez v5, :cond_11

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_11
    :goto_b
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    const/16 v2, 0x48

    if-ne v0, v2, :cond_15

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 174
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    aget v8, v6, v4

    invoke-direct {v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    .line 289
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_13

    if-lez v5, :cond_13

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_d

    .line 290
    :cond_13
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_14

    if-lez v5, :cond_14

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_14
    :goto_d
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    const/16 v2, 0x76

    if-ne v0, v2, :cond_18

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 178
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    aget v8, v6, v4

    invoke-direct {v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    .line 289
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_16

    if-lez v5, :cond_16

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_f

    .line 290
    :cond_16
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_17

    if-lez v5, :cond_17

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_17
    :goto_f
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_18
    const/16 v2, 0x56

    if-ne v0, v2, :cond_1b

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 182
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    aget v8, v6, v4

    invoke-direct {v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    .line 289
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_19

    if-lez v5, :cond_19

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_11

    .line 290
    :cond_19
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_1a

    if-lez v5, :cond_1a

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_1a
    :goto_11
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1b
    const/16 v2, 0x63

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-ne v0, v2, :cond_1e

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v8

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v8}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    add-int/lit8 v8, v6, 0x6

    .line 284
    invoke-static {v1, v6, v8}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v8

    .line 186
    new-instance v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 187
    aget v12, v8, v4

    .line 188
    aget v13, v8, v3

    .line 189
    aget v14, v8, v5

    .line 190
    aget v16, v8, v9

    .line 191
    aget v17, v8, v10

    .line 192
    aget v18, v8, v7

    move-object v11, v15

    move-object v7, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    .line 186
    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    .line 289
    instance-of v11, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v11, :cond_1c

    if-lez v6, :cond_1c

    new-instance v15, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v6, v8, v4

    aget v7, v8, v3

    invoke-direct {v15, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_13

    .line 290
    :cond_1c
    instance-of v11, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v11, :cond_1d

    if-lez v6, :cond_1d

    .line 291
    new-instance v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v6, v8, v4

    aget v7, v8, v3

    invoke-direct {v15, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    goto :goto_13

    :cond_1d
    move-object v15, v7

    .line 1621
    :goto_13
    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x5

    goto :goto_12

    :cond_1e
    const/16 v2, 0x43

    if-ne v0, v2, :cond_21

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v8

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v8}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    add-int/lit8 v7, v6, 0x6

    .line 284
    invoke-static {v1, v6, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v7

    .line 197
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 198
    aget v12, v7, v4

    .line 199
    aget v13, v7, v3

    .line 200
    aget v14, v7, v5

    .line 201
    aget v15, v7, v9

    .line 202
    aget v16, v7, v10

    const/4 v11, 0x5

    .line 203
    aget v17, v7, v11

    move-object v11, v8

    .line 197
    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    .line 289
    instance-of v11, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v11, :cond_1f

    if-lez v6, :cond_1f

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_15

    .line 290
    :cond_1f
    instance-of v11, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v11, :cond_20

    if-lez v6, :cond_20

    .line 291
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_20
    :goto_15
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_21
    const/16 v2, 0x73

    if-ne v0, v2, :cond_24

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v10

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v10}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    add-int/lit8 v7, v6, 0x4

    .line 284
    invoke-static {v1, v6, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v7

    .line 208
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 209
    aget v10, v7, v4

    .line 210
    aget v11, v7, v3

    .line 211
    aget v12, v7, v5

    .line 212
    aget v13, v7, v9

    .line 208
    invoke-direct {v8, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    .line 289
    instance-of v10, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v10, :cond_22

    if-lez v6, :cond_22

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_17

    .line 290
    :cond_22
    instance-of v10, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v10, :cond_23

    if-lez v6, :cond_23

    .line 291
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_23
    :goto_17
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_24
    const/16 v2, 0x53

    if-ne v0, v2, :cond_27

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v10

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v10}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    add-int/lit8 v7, v6, 0x4

    .line 284
    invoke-static {v1, v6, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v7

    .line 217
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 218
    aget v10, v7, v4

    .line 219
    aget v11, v7, v3

    .line 220
    aget v12, v7, v5

    .line 221
    aget v13, v7, v9

    .line 217
    invoke-direct {v8, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    .line 289
    instance-of v10, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v10, :cond_25

    if-lez v6, :cond_25

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_19

    .line 290
    :cond_25
    instance-of v10, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v10, :cond_26

    if-lez v6, :cond_26

    .line 291
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_26
    :goto_19
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_27
    const/16 v2, 0x71

    if-ne v0, v2, :cond_2a

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v10

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v10}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    add-int/lit8 v7, v6, 0x4

    .line 284
    invoke-static {v1, v6, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v7

    .line 226
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 227
    aget v10, v7, v4

    .line 228
    aget v11, v7, v3

    .line 229
    aget v12, v7, v5

    .line 230
    aget v13, v7, v9

    .line 226
    invoke-direct {v8, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    .line 289
    instance-of v10, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v10, :cond_28

    if-lez v6, :cond_28

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_1b

    .line 290
    :cond_28
    instance-of v10, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v10, :cond_29

    if-lez v6, :cond_29

    .line 291
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_29
    :goto_1b
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2a
    const/16 v2, 0x51

    if-ne v0, v2, :cond_2d

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v10

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v10}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    add-int/lit8 v7, v6, 0x4

    .line 284
    invoke-static {v1, v6, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v7

    .line 235
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 236
    aget v10, v7, v4

    .line 237
    aget v11, v7, v3

    .line 238
    aget v12, v7, v5

    .line 239
    aget v13, v7, v9

    .line 235
    invoke-direct {v8, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    .line 289
    instance-of v10, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v10, :cond_2b

    if-lez v6, :cond_2b

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_1d

    .line 290
    :cond_2b
    instance-of v10, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v10, :cond_2c

    if-lez v6, :cond_2c

    .line 291
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_2c
    :goto_1d
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2d
    const/16 v2, 0x74

    if-ne v0, v2, :cond_30

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 244
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    aget v8, v6, v4

    aget v9, v6, v3

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    .line 289
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_2e

    if-lez v5, :cond_2e

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_1f

    .line 290
    :cond_2e
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_2f

    if-lez v5, :cond_2f

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_2f
    :goto_1f
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_30
    const/16 v2, 0x54

    if-ne v0, v2, :cond_33

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    .line 284
    invoke-static {v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    .line 248
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    aget v8, v6, v4

    aget v9, v6, v3

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    .line 289
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_31

    if-lez v5, :cond_31

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_21

    .line 290
    :cond_31
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_32

    if-lez v5, :cond_32

    .line 291
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v6, v4

    aget v6, v6, v3

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_32
    :goto_21
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_33
    const/16 v2, 0x61

    const/4 v7, 0x7

    const/4 v11, 0x0

    if-ne v0, v2, :cond_38

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v7

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v7}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    add-int/lit8 v7, v6, 0x7

    .line 284
    invoke-static {v1, v6, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v7

    .line 252
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 253
    aget v20, v7, v4

    .line 254
    aget v21, v7, v3

    .line 255
    aget v22, v7, v5

    .line 256
    aget v13, v7, v9

    invoke-static {v13, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_34

    move/from16 v23, v3

    goto :goto_23

    :cond_34
    move/from16 v23, v4

    .line 257
    :goto_23
    aget v13, v7, v10

    invoke-static {v13, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_35

    move/from16 v24, v3

    goto :goto_24

    :cond_35
    move/from16 v24, v4

    :goto_24
    const/4 v13, 0x5

    .line 258
    aget v25, v7, v13

    .line 259
    aget v26, v7, v8

    move-object/from16 v19, v12

    .line 252
    invoke-direct/range {v19 .. v26}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 289
    instance-of v13, v12, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v13, :cond_36

    if-lez v6, :cond_36

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v12, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_25

    .line 290
    :cond_36
    instance-of v13, v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v13, :cond_37

    if-lez v6, :cond_37

    .line 291
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v12, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_37
    :goto_25
    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_38
    const/16 v2, 0x41

    if-ne v0, v2, :cond_3d

    .line 283
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v2, v1

    sub-int/2addr v2, v7

    invoke-direct {v0, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v7}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    add-int/lit8 v7, v6, 0x7

    .line 284
    invoke-static {v1, v6, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v7

    .line 264
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 265
    aget v20, v7, v4

    .line 266
    aget v21, v7, v3

    .line 267
    aget v22, v7, v5

    .line 268
    aget v13, v7, v9

    invoke-static {v13, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_39

    move/from16 v23, v3

    goto :goto_27

    :cond_39
    move/from16 v23, v4

    .line 269
    :goto_27
    aget v13, v7, v10

    invoke-static {v13, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_3a

    move/from16 v24, v3

    goto :goto_28

    :cond_3a
    move/from16 v24, v4

    :goto_28
    const/4 v13, 0x5

    .line 270
    aget v25, v7, v13

    .line 271
    aget v26, v7, v8

    move-object/from16 v19, v12

    .line 264
    invoke-direct/range {v19 .. v26}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    .line 289
    instance-of v14, v12, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v14, :cond_3b

    if-lez v6, :cond_3b

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v12, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_29

    .line 290
    :cond_3b
    instance-of v14, v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v14, :cond_3c

    if-lez v6, :cond_3c

    .line 291
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v6, v7, v4

    aget v7, v7, v3

    invoke-direct {v12, v6, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 1621
    :cond_3c
    :goto_29
    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :goto_2a
    return-object v0

    .line 275
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
