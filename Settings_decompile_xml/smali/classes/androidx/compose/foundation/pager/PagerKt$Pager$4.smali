.class final Landroidx/compose/foundation/pager/PagerKt$Pager$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Pager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerKt;->Pager-wKDqQAw(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/pager/PageSize;FLandroidx/compose/foundation/gestures/Orientation;ILandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerKt$Pager$4\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,781:1\n83#2,3:782\n36#2:791\n1114#3,6:785\n1114#3,3:792\n1117#3,3:796\n1#4:795\n*S KotlinDebug\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerKt$Pager$4\n*L\n299#1:782,3\n322#1:791\n299#1:785,6\n322#1:792,3\n322#1:796,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $beyondBoundsPageCount:I

.field final synthetic $calculatedContentPaddings:F

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $key:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pageContent:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pageCount:I

.field final synthetic $pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize;

.field final synthetic $pageSpacing:F

.field final synthetic $pagerFlingBehavior:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $userScrollEnabled:Z

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method constructor <init>(ZLandroidx/compose/ui/unit/Density;FFZLandroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ILandroidx/compose/foundation/pager/PageSize;ILkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/unit/Density;",
            "FFZ",
            "Landroidx/compose/foundation/pager/PagerState;",
            "I",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;",
            "ZI",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "I",
            "Landroidx/compose/foundation/pager/PageSize;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 0
    move-object v0, p0

    move v1, p1

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$isVertical:Z

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$density:Landroidx/compose/ui/unit/Density;

    move v1, p3

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageSpacing:F

    move v1, p4

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$calculatedContentPaddings:F

    move v1, p5

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$reverseLayout:Z

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$state:Landroidx/compose/foundation/pager/PagerState;

    move v1, p7

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$$dirty:I

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pagerFlingBehavior:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    move v1, p10

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$userScrollEnabled:Z

    move v1, p11

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$beyondBoundsPageCount:I

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$$dirty1:I

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageCount:I

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$key:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageContent:Lkotlin/jvm/functions/Function3;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 296
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    move/from16 v2, p3

    const-string v3, "$this$BoxWithConstraints"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0xe

    const/4 v4, 0x4

    if-nez v3, :cond_1

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v3, v3, 0x5b

    const/16 v5, 0x12

    if-ne v3, v5, :cond_3

    .line 297
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 366
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_7

    .line 297
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    const-string v5, "androidx.compose.foundation.pager.Pager.<anonymous> (Pager.kt:295)"

    const v6, -0x64003921

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    iget-boolean v2, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$isVertical:Z

    if-eqz v2, :cond_5

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    goto :goto_3

    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    .line 300
    :goto_3
    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$density:Landroidx/compose/ui/unit/Density;

    .line 301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 302
    iget v5, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageSpacing:F

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v5

    .line 303
    iget v6, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$calculatedContentPaddings:F

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v6

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 299
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$density:Landroidx/compose/ui/unit/Density;

    iget v5, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageSpacing:F

    iget v6, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$calculatedContentPaddings:F

    iget-object v7, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    const v8, -0x21de6e89

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 v8, 0x0

    move v9, v8

    :goto_4
    if-ge v8, v4, :cond_6

    .line 84
    aget-object v10, v2, v8

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1114
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v9, :cond_7

    .line 1115
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_8

    .line 306
    :cond_7
    invoke-interface {v3, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    .line 307
    invoke-interface {v3, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    sub-int/2addr v1, v4

    .line 309
    invoke-interface {v7, v3, v1, v2}, Landroidx/compose/foundation/pager/PageSize;->calculateMainAxisPageSize(Landroidx/compose/ui/unit/Density;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 313
    invoke-interface {v3, v1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v1

    .line 305
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    .line 1117
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 299
    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v15

    .line 318
    iget-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$reverseLayout:Z

    if-nez v1, :cond_9

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    goto :goto_5

    :cond_9
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    :goto_5
    move-object v3, v1

    .line 320
    iget-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$reverseLayout:Z

    if-nez v1, :cond_a

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    goto :goto_6

    :cond_a
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    :goto_6
    move-object v4, v1

    .line 322
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$density:Landroidx/compose/ui/unit/Density;

    const v5, 0x44faf204

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 1114
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_b

    .line 1115
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_c

    .line 324
    :cond_b
    invoke-interface {v2, v15}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getInitialPageOffsetFraction()F

    move-result v5

    mul-float/2addr v2, v5

    .line 325
    new-instance v6, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getInitialPage()I

    move-result v5

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-direct {v6, v5, v2}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    .line 326
    invoke-virtual {v1, v6}, Landroidx/compose/foundation/pager/PagerState;->loadNewState$foundation_release(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 1117
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 322
    move-object v2, v6

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    .line 331
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 336
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 337
    iget v6, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageSpacing:F

    .line 336
    invoke-virtual {v5, v6, v3}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw(FLandroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v12

    .line 341
    iget v3, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageSpacing:F

    .line 340
    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw(FLandroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v10

    .line 333
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 346
    iget-boolean v4, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$reverseLayout:Z

    .line 345
    iget-boolean v13, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$isVertical:Z

    move v5, v13

    .line 334
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pagerFlingBehavior:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    .line 347
    iget-boolean v7, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$userScrollEnabled:Z

    .line 348
    iget v8, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$beyondBoundsPageCount:I

    .line 335
    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 344
    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 330
    new-instance v16, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;

    move/from16 v18, v13

    move-object/from16 v13, v16

    iget v14, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageCount:I

    move-object/from16 p1, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$key:Lkotlin/jvm/functions/Function1;

    move-object/from16 p3, v2

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-object/from16 v23, v3

    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$pageContent:Lkotlin/jvm/functions/Function3;

    move/from16 v24, v4

    iget v4, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$$dirty1:I

    move/from16 v19, v15

    move-object/from16 v15, v16

    move/from16 v16, v14

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    invoke-direct/range {v15 .. v22}, Landroidx/compose/foundation/pager/PagerKt$Pager$4$1;-><init>(ILkotlin/jvm/functions/Function1;ZFLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function3;I)V

    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$$dirty:I

    shr-int/lit8 v2, v1, 0x15

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x6

    iget v0, v0, Landroidx/compose/foundation/pager/PagerKt$Pager$4;->$$dirty1:I

    shl-int/lit8 v3, v0, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v0, v0, 0xf

    const/high16 v3, 0x380000

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    shl-int/lit8 v3, v1, 0x3

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    and-int/2addr v2, v1

    or-int v15, v0, v2

    shr-int/lit8 v0, v1, 0x15

    and-int/lit8 v16, v0, 0xe

    const/16 v17, 0x0

    move-object/from16 v14, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-static/range {v1 .. v17}, Landroidx/compose/foundation/lazy/LazyListKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    :goto_7
    return-void
.end method
