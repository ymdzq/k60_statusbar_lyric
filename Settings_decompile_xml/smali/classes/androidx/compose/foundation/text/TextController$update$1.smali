.class public final Landroidx/compose/foundation/text/TextController$update$1;
.super Ljava/lang/Object;
.source "CoreText.kt"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextController;->update(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

.field private dragTotalDistance:J

.field private lastPosition:J

.field final synthetic this$0:Landroidx/compose/foundation/text/TextController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextController;Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
    .locals 2

    iput-object p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 115
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 186
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateEnd()V

    :cond_0
    return-void
.end method

.method public onDown-k-4lQ0M(J)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDrag-k-4lQ0M(J)V
    .locals 9

    .line 150
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 151
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 155
    :cond_1
    iget-wide v3, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 156
    iget-wide v3, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p1

    .line 158
    iget-wide v3, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    invoke-static {v0, v3, v4, p1, p2}, Landroidx/compose/foundation/text/TextController;->access$outOfBoundary-0a9Yr6o(Landroidx/compose/foundation/text/TextController;JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget-wide v5, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 169
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getCharacterWithWordAccelerate()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v8

    const/4 v7, 0x0

    move-wide v3, p1

    .line 164
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-5iVPX68(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 172
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 173
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    :cond_2
    return-void
.end method

.method public onStart-k-4lQ0M(J)V
    .locals 4

    .line 126
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    iget-object v2, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 127
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-static {v1, p1, p2, p1, p2}, Landroidx/compose/foundation/text/TextController;->access$outOfBoundary-0a9Yr6o(Landroidx/compose/foundation/text/TextController;JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide v0

    .line 130
    invoke-interface {v2, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateSelectAll(J)V

    goto :goto_0

    .line 137
    :cond_1
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v1

    .line 134
    invoke-interface {v2, v0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateStart-d-4ec7I(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 141
    :goto_0
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 144
    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 146
    :cond_3
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 180
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object p0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateEnd()V

    :cond_0
    return-void
.end method

.method public onUp()V
    .locals 0

    .line 0
    return-void
.end method
