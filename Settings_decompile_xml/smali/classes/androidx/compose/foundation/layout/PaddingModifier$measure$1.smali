.class final Landroidx/compose/foundation/layout/PaddingModifier$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Padding.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/PaddingModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic this$0:Landroidx/compose/foundation/layout/PaddingModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/PaddingModifier;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    iput-object p2, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput-object p3, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 368
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 9

    const-string v1, "$this$layout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/PaddingModifier;->getRtlAware()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v3, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v4, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/PaddingModifier;->getStart-D9Ej5fM()F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/PaddingModifier;->getTop-D9Ej5fM()F

    move-result v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v3, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v4, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/PaddingModifier;->getStart-D9Ej5fM()F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/PaddingModifier;->getTop-D9Ej5fM()F

    move-result v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :goto_0
    return-void
.end method
