.class public interface abstract Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
.super Ljava/lang/Object;
.source "LazyListLayoutInfo.kt"


# virtual methods
.method public getAfterContentPadding()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getBeforeContentPadding()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 67
    sget-object p0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public abstract getTotalItemsCount()I
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    .line 62
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getVisibleItemsInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation
.end method
