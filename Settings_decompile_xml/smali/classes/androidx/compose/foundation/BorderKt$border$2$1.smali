.class final Landroidx/compose/foundation/BorderKt$border$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Border.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BorderKt$border$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "Landroidx/compose/ui/draw/DrawResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $borderCacheRef:Landroidx/compose/ui/node/Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $brush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $width:F


# direct methods
.method constructor <init>(FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;",
            "Landroidx/compose/ui/graphics/Brush;",
            ")V"
        }
    .end annotation

    .line 0
    iput p1, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$width:F

    iput-object p2, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p3, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$borderCacheRef:Landroidx/compose/ui/node/Ref;

    iput-object p4, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 13

    const-string v2, "$this$drawWithCache"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget v2, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$width:F

    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-nez v2, :cond_1

    .line 103
    invoke-static {p1}, Landroidx/compose/foundation/BorderKt;->access$drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto/16 :goto_3

    .line 106
    :cond_1
    iget v2, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$width:F

    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->getHairline-D9Ej5fM()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    iget v2, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$width:F

    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 107
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v3

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v3, v6

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    div-float v2, v9, v6

    .line 110
    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    .line 112
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    sub-float/2addr v2, v9

    .line 113
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    sub-float/2addr v3, v9

    .line 111
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v10

    mul-float/2addr v6, v9

    .line 116
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v2

    cmpl-float v2, v6, v2

    if-lez v2, :cond_3

    move v12, v4

    goto :goto_2

    :cond_3
    move v12, v5

    .line 117
    :goto_2
    iget-object v2, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, p1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v2

    .line 118
    instance-of v3, v2, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v3, :cond_4

    .line 120
    iget-object v3, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$borderCacheRef:Landroidx/compose/ui/node/Ref;

    .line 121
    iget-object v4, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 122
    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/graphics/Outline$Generic;

    move-object v0, p1

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v12

    move v5, v9

    .line 119
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/BorderKt;->access$drawGenericBorder(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto :goto_3

    .line 126
    :cond_4
    instance-of v3, v2, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v3, :cond_5

    .line 128
    iget-object v3, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$borderCacheRef:Landroidx/compose/ui/node/Ref;

    .line 129
    iget-object v4, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 130
    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/graphics/Outline$Rounded;

    move-object v0, p1

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-wide v4, v7

    move-wide v6, v10

    move v8, v12

    .line 127
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/BorderKt;->access$drawRoundRectBorder-SYlcjDY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto :goto_3

    .line 136
    :cond_5
    instance-of v2, v2, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v2, :cond_6

    .line 138
    iget-object v2, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    move-object v0, p1

    move-object v1, v2

    move-wide v2, v7

    move-wide v4, v10

    move v6, v12

    move v7, v9

    .line 137
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/BorderKt;->access$drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/BorderKt$border$2$1;->invoke(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method
