.class final Landroidx/compose/foundation/text/TextController$coreModifiers$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoreText.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextController;-><init>(Landroidx/compose/foundation/text/TextState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/TextController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextController;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 475
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->invoke(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/TextState;->setLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 479
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-static {v0}, Landroidx/compose/foundation/text/TextController;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/TextController;)Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    .line 481
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->getPreviousGlobalPosition-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 482
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-static {p1}, Landroidx/compose/foundation/text/TextController;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/TextController;)Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifyPositionChange(J)V

    .line 484
    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/TextState;->setPreviousGlobalPosition-k-4lQ0M(J)V

    :cond_1
    return-void
.end method
