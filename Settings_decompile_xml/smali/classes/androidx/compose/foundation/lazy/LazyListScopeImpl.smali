.class public final Landroidx/compose/foundation/lazy/LazyListScopeImpl;
.super Ljava/lang/Object;
.source "LazyListScopeImpl.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListScope;


# instance fields
.field private _headerIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/MutableIntervalList<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;"
        }
    .end annotation
.end field

.field private final intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListScopeImpl;->_intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 29
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListScopeImpl;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    return-void
.end method


# virtual methods
.method public final getHeaderIndexes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListScopeImpl;->_headerIndexes:Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final getIntervals()Landroidx/compose/foundation/lazy/layout/IntervalList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListScopeImpl;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    return-object p0
.end method

.method public item(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyItemScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListScopeImpl;->_intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 53
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    if-eqz p1, :cond_0

    .line 51
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListScopeImpl$item$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/lazy/LazyListScopeImpl$item$1;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListScopeImpl$item$2;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/lazy/LazyListScopeImpl$item$2;-><init>(Ljava/lang/Object;)V

    .line 56
    new-instance p2, Landroidx/compose/foundation/lazy/LazyListScopeImpl$item$3;

    invoke-direct {p2, p3}, Landroidx/compose/foundation/lazy/LazyListScopeImpl$item$3;-><init>(Lkotlin/jvm/functions/Function3;)V

    const p3, -0x2bd1087a

    const/4 v2, 0x1

    invoke-static {p3, v2, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p2

    .line 53
    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 51
    invoke-virtual {p0, v2, v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILjava/lang/Object;)V

    return-void
.end method

.method public items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyItemScope;",
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

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListScopeImpl;->_intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 42
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-direct {v0, p2, p3, p4}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 40
    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILjava/lang/Object;)V

    return-void
.end method
