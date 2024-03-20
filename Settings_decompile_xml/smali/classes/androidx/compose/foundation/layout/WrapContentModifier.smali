.class final Landroidx/compose/foundation/layout/WrapContentModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "Size.kt"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# instance fields
.field private final align:Ljava/lang/Object;

.field private final alignmentCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final direction:Landroidx/compose/foundation/layout/Direction;

.field private final unbounded:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/Direction;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "align"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    invoke-direct {p0, p5}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 854
    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 855
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    .line 856
    iput-object p3, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->alignmentCallback:Lkotlin/jvm/functions/Function2;

    .line 857
    iput-object p4, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->align:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getAlignmentCallback$p(Landroidx/compose/foundation/layout/WrapContentModifier;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 853
    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->alignmentCallback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 894
    instance-of v0, p1, Landroidx/compose/foundation/layout/WrapContentModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 895
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    check-cast p1, Landroidx/compose/foundation/layout/WrapContentModifier;

    iget-object v2, p1, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    iget-boolean v2, p1, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->align:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/compose/foundation/layout/WrapContentModifier;->align:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 899
    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->align:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    const-string v2, "$this$measure"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "measurable"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    sget-object v3, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    .line 866
    :goto_0
    iget-object v5, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    sget-object v7, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    if-eq v5, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    .line 867
    :goto_1
    iget-object v5, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    const v8, 0x7fffffff

    if-eq v5, v3, :cond_2

    iget-boolean v3, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    if-eqz v3, :cond_2

    move v3, v8

    goto :goto_2

    .line 870
    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    .line 872
    :goto_2
    iget-object v5, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    if-eq v5, v7, :cond_3

    iget-boolean v5, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    if-eqz v5, :cond_3

    goto :goto_3

    .line 875
    :cond_3
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v8

    .line 864
    :goto_3
    invoke-static {v2, v3, v4, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v2

    .line 878
    invoke-interface {p2, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 879
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v0, v2, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v7

    .line 880
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    invoke-static {v0, v2, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v8

    const/4 v9, 0x0

    .line 881
    new-instance v10, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;

    move-object v0, v10

    move-object v1, p0

    move v2, v7

    move v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;-><init>(Landroidx/compose/foundation/layout/WrapContentModifier;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/MeasureScope;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    move-object v3, p1

    move v4, v7

    move v5, v8

    move-object v6, v9

    move-object v7, v10

    move v8, v0

    move-object v9, v1

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
