.class public final Landroidx/compose/foundation/text/TextState;
.super Ljava/lang/Object;
.source "CoreText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreText.kt\nandroidx/compose/foundation/text/TextState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,702:1\n76#2:703\n102#2,2:704\n76#2:706\n102#2,2:707\n*S KotlinDebug\n*F\n+ 1 CoreText.kt\nandroidx/compose/foundation/text/TextState\n*L\n579#1:703\n579#1:704,2\n581#1:706\n581#1:707,2\n*E\n"
.end annotation


# instance fields
.field private final drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

.field private layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private final layoutInvalidation$delegate:Landroidx/compose/runtime/MutableState;

.field private layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field private onTextLayout:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private previousGlobalPosition:J

.field private selectable:Landroidx/compose/foundation/text/selection/Selectable;

.field private final selectableId:J

.field private selectionBackgroundColor:J

.field private textDelegate:Landroidx/compose/foundation/text/TextDelegate;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/TextDelegate;J)V
    .locals 1

    const-string/jumbo v0, "textDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-wide p2, p0, Landroidx/compose/foundation/text/TextState;->selectableId:J

    .line 550
    sget-object p2, Landroidx/compose/foundation/text/TextState$onTextLayout$1;->INSTANCE:Landroidx/compose/foundation/text/TextState$onTextLayout$1;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextState;->onTextLayout:Lkotlin/jvm/functions/Function1;

    .line 559
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 573
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->previousGlobalPosition:J

    .line 576
    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->selectionBackgroundColor:J

    .line 579
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/text/TextState;->drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 581
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->layoutInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private final setDrawScopeInvalidation(Lkotlin/Unit;)V
    .locals 0

    .line 579
    iget-object p0, p0, Landroidx/compose/foundation/text/TextState;->drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setLayoutInvalidation(Lkotlin/Unit;)V
    .locals 0

    .line 581
    iget-object p0, p0, Landroidx/compose/foundation/text/TextState;->layoutInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getDrawScopeInvalidation()Lkotlin/Unit;
    .locals 0

    .line 579
    iget-object p0, p0, Landroidx/compose/foundation/text/TextState;->drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    .line 556
    iget-object p0, p0, Landroidx/compose/foundation/text/TextState;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public final getLayoutInvalidation()Lkotlin/Unit;
    .locals 0

    .line 581
    iget-object p0, p0, Landroidx/compose/foundation/text/TextState;->layoutInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 0

    .line 566
    iget-object p0, p0, Landroidx/compose/foundation/text/TextState;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    return-object p0
.end method

.method public final getOnTextLayout()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 550
    iget-object p0, p0, Landroidx/compose/foundation/text/TextState;->onTextLayout:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getPreviousGlobalPosition-F1C5BW0()J
    .locals 2

    .line 573
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextState;->previousGlobalPosition:J

    return-wide v0
.end method

.method public final getSelectable()Landroidx/compose/foundation/text/selection/Selectable;
    .locals 0

    .line 553
    iget-object p0, p0, Landroidx/compose/foundation/text/TextState;->selectable:Landroidx/compose/foundation/text/selection/Selectable;

    return-object p0
.end method

.method public final getSelectableId()J
    .locals 2

    .line 548
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextState;->selectableId:J

    return-wide v0
.end method

.method public final getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;
    .locals 0

    .line 559
    iget-object p0, p0, Landroidx/compose/foundation/text/TextState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    return-object p0
.end method

.method public final setLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 556
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method public final setLayoutResult(Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 1

    .line 568
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/TextState;->setDrawScopeInvalidation(Lkotlin/Unit;)V

    .line 569
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    return-void
.end method

.method public final setOnTextLayout(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->onTextLayout:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPreviousGlobalPosition-k-4lQ0M(J)V
    .locals 0

    .line 573
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->previousGlobalPosition:J

    return-void
.end method

.method public final setSelectable(Landroidx/compose/foundation/text/selection/Selectable;)V
    .locals 0

    .line 553
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->selectable:Landroidx/compose/foundation/text/selection/Selectable;

    return-void
.end method

.method public final setSelectionBackgroundColor-8_81llA(J)V
    .locals 0

    .line 576
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->selectionBackgroundColor:J

    return-void
.end method

.method public final setTextDelegate(Landroidx/compose/foundation/text/TextDelegate;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/TextState;->setLayoutInvalidation(Lkotlin/Unit;)V

    .line 562
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    return-void
.end method
