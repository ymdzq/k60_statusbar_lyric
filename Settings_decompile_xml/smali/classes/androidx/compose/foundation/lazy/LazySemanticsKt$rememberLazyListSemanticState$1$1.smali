.class public final Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;
.super Ljava/lang/Object;
.source "LazySemantics.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazySemanticsKt;->rememberLazyListSemanticState(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $isVertical:Z

.field final synthetic $itemProvider:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

.field final synthetic $reverseScrolling:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$reverseScrolling:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$isVertical:Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateScrollBy(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->animateScrollBy$default(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public collectionInfo()Landroidx/compose/ui/semantics/CollectionInfo;
    .locals 2

    .line 71
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$isVertical:Z

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 72
    new-instance p0, Landroidx/compose/ui/semantics/CollectionInfo;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Landroidx/compose/ui/semantics/CollectionInfo;

    invoke-direct {p0, v1, v0}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    :goto_0
    return-object p0
.end method

.method public scrollAxisRange()Landroidx/compose/ui/semantics/ScrollAxisRange;
    .locals 5

    .line 40
    new-instance v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 41
    new-instance v1, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1$scrollAxisRange$1;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1$scrollAxisRange$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 48
    new-instance v2, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1$scrollAxisRange$2;

    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    invoke-direct {v2, v3, v4}, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1$scrollAxisRange$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;)V

    .line 59
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$reverseScrolling:Z

    .line 40
    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    return-object v0
.end method

.method public scrollToItem(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$rememberLazyListSemanticState$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListState;->scrollToItem$default(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
