.class final Landroidx/compose/animation/SlideModifier$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EnterExitTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SlideModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $measuredSize:J

.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic this$0:Landroidx/compose/animation/SlideModifier;


# direct methods
.method constructor <init>(Landroidx/compose/animation/SlideModifier;Landroidx/compose/ui/layout/Placeable;J)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/SlideModifier$measure$1;->this$0:Landroidx/compose/animation/SlideModifier;

    iput-object p2, p0, Landroidx/compose/animation/SlideModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput-wide p3, p0, Landroidx/compose/animation/SlideModifier$measure$1;->$measuredSize:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1017
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/SlideModifier$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 9

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Landroidx/compose/animation/SlideModifier$measure$1;->this$0:Landroidx/compose/animation/SlideModifier;

    invoke-virtual {v0}, Landroidx/compose/animation/SlideModifier;->getLazyAnimation()Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v0

    .line 1019
    iget-object v1, p0, Landroidx/compose/animation/SlideModifier$measure$1;->this$0:Landroidx/compose/animation/SlideModifier;

    invoke-virtual {v1}, Landroidx/compose/animation/SlideModifier;->getTransitionSpec()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 1018
    new-instance v2, Landroidx/compose/animation/SlideModifier$measure$1$slideOffset$1;

    iget-object v3, p0, Landroidx/compose/animation/SlideModifier$measure$1;->this$0:Landroidx/compose/animation/SlideModifier;

    iget-wide v4, p0, Landroidx/compose/animation/SlideModifier$measure$1;->$measuredSize:J

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/animation/SlideModifier$measure$1$slideOffset$1;-><init>(Landroidx/compose/animation/SlideModifier;J)V

    invoke-virtual {v0, v1, v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 1023
    iget-object v2, p0, Landroidx/compose/animation/SlideModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntOffset;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
