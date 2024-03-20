.class final Landroidx/compose/foundation/layout/BoxChildData;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "Box.kt"

# interfaces
.implements Landroidx/compose/ui/layout/ParentDataModifier;


# instance fields
.field private alignment:Landroidx/compose/ui/Alignment;

.field private matchParentSize:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Alignment;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 264
    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxChildData;->alignment:Landroidx/compose/ui/Alignment;

    .line 265
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/BoxChildData;->matchParentSize:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 272
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/BoxChildData;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/BoxChildData;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    .line 274
    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/layout/BoxChildData;->alignment:Landroidx/compose/ui/Alignment;

    iget-object v3, p1, Landroidx/compose/foundation/layout/BoxChildData;->alignment:Landroidx/compose/ui/Alignment;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxChildData;->matchParentSize:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/BoxChildData;->matchParentSize:Z

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 264
    iget-object p0, p0, Landroidx/compose/foundation/layout/BoxChildData;->alignment:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getMatchParentSize()Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxChildData;->matchParentSize:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 279
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxChildData;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 280
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxChildData;->matchParentSize:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/BoxChildData;
    .locals 0

    .line 0
    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 263
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/BoxChildData;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/BoxChildData;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxChildData(alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxChildData;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matchParentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxChildData;->matchParentSize:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
