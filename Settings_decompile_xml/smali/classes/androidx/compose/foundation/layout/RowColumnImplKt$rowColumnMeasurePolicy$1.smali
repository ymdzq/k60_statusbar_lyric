.class public final Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/RowColumnImplKt;->rowColumnMeasurePolicy-TDGSqEk(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)Landroidx/compose/ui/layout/MeasurePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $arrangement:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/Integer;",
            "[I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "[I",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $arrangementSpacing:F

.field final synthetic $crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field final synthetic $crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

.field final synthetic $orientation:Landroidx/compose/foundation/layout/LayoutOrientation;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-[I-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-[I",
            "Lkotlin/Unit;",
            ">;F",
            "Landroidx/compose/foundation/layout/SizeMode;",
            "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    iput-object p2, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangement:Lkotlin/jvm/functions/Function5;

    iput p3, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    iput-object p4, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    iput-object p5, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$MaxIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 125
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 126
    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 123
    invoke-interface {v0, p2, p3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$MaxIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 117
    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 114
    invoke-interface {v0, p2, p3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    const-string v0, "$this$measure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroidx/compose/ui/layout/Placeable;

    .line 59
    new-instance v10, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

    .line 60
    iget-object v2, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 61
    iget-object v3, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangement:Lkotlin/jvm/functions/Function5;

    .line 62
    iget v4, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 63
    iget-object v5, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 64
    iget-object v6, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    const/4 v9, 0x0

    move-object v1, v10

    move-object v7, p2

    .line 59
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x0

    .line 71
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p3

    .line 70
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measureWithoutPlacing-_EkL_-Y(Landroidx/compose/ui/layout/MeasureScope;JII)Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    move-result-object p2

    .line 76
    iget-object p0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object p3, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p0, p3, :cond_0

    .line 77
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getMainAxisSize()I

    move-result p0

    .line 78
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getCrossAxisSize()I

    move-result p3

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getCrossAxisSize()I

    move-result p0

    .line 81
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getMainAxisSize()I

    move-result p3

    :goto_0
    move v1, p0

    move v2, p3

    const/4 v3, 0x0

    .line 83
    new-instance v4, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;

    invoke-direct {v4, v10, p2, p1}, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;-><init>(Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;Landroidx/compose/ui/layout/MeasureScope;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$MinIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 107
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 108
    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 105
    invoke-interface {v0, p2, p3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$MinIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 99
    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 96
    invoke-interface {v0, p2, p3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
