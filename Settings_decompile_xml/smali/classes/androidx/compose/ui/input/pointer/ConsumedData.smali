.class public final Landroidx/compose/ui/input/pointer/ConsumedData;
.super Ljava/lang/Object;
.source "PointerEvent.kt"


# instance fields
.field private downChange:Z

.field private positionChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    .line 852
    iput-boolean p2, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return-void
.end method


# virtual methods
.method public final getDownChange()Z
    .locals 0

    .line 856
    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return p0
.end method

.method public final getPositionChange()Z
    .locals 0

    .line 850
    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    return p0
.end method

.method public final setDownChange(Z)V
    .locals 0

    .line 856
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return-void
.end method

.method public final setPositionChange(Z)V
    .locals 0

    .line 850
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    return-void
.end method
