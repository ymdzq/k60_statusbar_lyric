.class final Landroidx/compose/ui/input/pointer/util/Vector;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# instance fields
.field private final elements:[Ljava/lang/Float;

.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput p1, p0, Landroidx/compose/ui/input/pointer/util/Vector;->length:I

    .line 566
    new-array v0, p1, [Ljava/lang/Float;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final get(I)F
    .locals 0

    .line 568
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final norm()F
    .locals 2

    .line 582
    invoke-virtual {p0, p0}, Landroidx/compose/ui/input/pointer/util/Vector;->times(Landroidx/compose/ui/input/pointer/util/Vector;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final set(IF)V
    .locals 0

    .line 571
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p0, p1

    return-void
.end method

.method public final times(Landroidx/compose/ui/input/pointer/util/Vector;)F
    .locals 5

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 577
    invoke-virtual {p0, v2}, Landroidx/compose/ui/input/pointer/util/Vector;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroidx/compose/ui/input/pointer/util/Vector;->get(I)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
