.class public final Landroidx/compose/ui/layout/LookaheadOnPlacedModifier;
.super Ljava/lang/Object;
.source "LookaheadLayout.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# instance fields
.field private final callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;",
            "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final rootCoordinates:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final onPlaced(Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;)V
    .locals 1

    const-string v0, "coordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroidx/compose/ui/layout/LookaheadOnPlacedModifier;->callback:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Landroidx/compose/ui/layout/LookaheadOnPlacedModifier;->rootCoordinates:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
