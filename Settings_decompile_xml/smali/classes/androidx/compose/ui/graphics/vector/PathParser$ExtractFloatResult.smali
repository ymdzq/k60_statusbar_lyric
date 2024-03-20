.class final Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;
.super Ljava/lang/Object;
.source "PathParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractFloatResult"
.end annotation


# instance fields
.field private endPosition:I

.field private endWithNegativeOrDot:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endPosition:I

    .line 640
    iput-boolean p2, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endWithNegativeOrDot:Z

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 636
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endPosition:I

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endPosition:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endWithNegativeOrDot:Z

    iget-boolean p1, p1, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endWithNegativeOrDot:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEndPosition()I
    .locals 0

    .line 639
    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endPosition:I

    return p0
.end method

.method public final getEndWithNegativeOrDot()Z
    .locals 0

    .line 640
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endWithNegativeOrDot:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endWithNegativeOrDot:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setEndPosition(I)V
    .locals 0

    .line 639
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endPosition:I

    return-void
.end method

.method public final setEndWithNegativeOrDot(Z)V
    .locals 0

    .line 640
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endWithNegativeOrDot:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtractFloatResult(endPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endWithNegativeOrDot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->endWithNegativeOrDot:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
