.class public final Landroidx/compose/runtime/MovableContentState;
.super Ljava/lang/Object;
.source "Composer.kt"


# instance fields
.field private final slotTable:Landroidx/compose/runtime/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 1

    const-string/jumbo v0, "slotTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-void
.end method


# virtual methods
.method public final getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;
    .locals 0

    .line 373
    iget-object p0, p0, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-object p0
.end method
