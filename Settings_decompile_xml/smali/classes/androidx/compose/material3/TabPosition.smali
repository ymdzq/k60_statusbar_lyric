.class public final Landroidx/compose/material3/TabPosition;
.super Ljava/lang/Object;
.source "TabRow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabPosition\n+ 2 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,495:1\n51#2:496\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabPosition\n*L\n329#1:496\n*E\n"
.end annotation


# instance fields
.field private final left:F

.field private final width:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(FF)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput p1, p0, Landroidx/compose/material3/TabPosition;->left:F

    iput p2, p0, Landroidx/compose/material3/TabPosition;->width:F

    return-void
.end method

.method public synthetic constructor <init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/TabPosition;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 333
    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/TabPosition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 335
    :cond_1
    iget v1, p0, Landroidx/compose/material3/TabPosition;->left:F

    check-cast p1, Landroidx/compose/material3/TabPosition;

    iget v3, p1, Landroidx/compose/material3/TabPosition;->left:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 336
    :cond_2
    iget p0, p0, Landroidx/compose/material3/TabPosition;->width:F

    iget p1, p1, Landroidx/compose/material3/TabPosition;->width:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLeft-D9Ej5fM()F
    .locals 0

    .line 328
    iget p0, p0, Landroidx/compose/material3/TabPosition;->left:F

    return p0
.end method

.method public final getRight-D9Ej5fM()F
    .locals 1

    .line 329
    iget v0, p0, Landroidx/compose/material3/TabPosition;->left:F

    iget p0, p0, Landroidx/compose/material3/TabPosition;->width:F

    add-float/2addr v0, p0

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public final getWidth-D9Ej5fM()F
    .locals 0

    .line 328
    iget p0, p0, Landroidx/compose/material3/TabPosition;->width:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 342
    iget v0, p0, Landroidx/compose/material3/TabPosition;->left:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 343
    iget p0, p0, Landroidx/compose/material3/TabPosition;->width:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabPosition(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/material3/TabPosition;->left:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/material3/TabPosition;->getRight-D9Ej5fM()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/material3/TabPosition;->width:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
