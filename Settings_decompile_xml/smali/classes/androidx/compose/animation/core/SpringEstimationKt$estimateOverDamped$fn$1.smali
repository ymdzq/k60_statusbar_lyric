.class final Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SpringEstimation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/SpringEstimationKt;->estimateOverDamped(Lkotlin/Pair;DDD)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $c1:D

.field final synthetic $c2:D

.field final synthetic $r1:D

.field final synthetic $r2:D

.field final synthetic $signedDelta:D


# direct methods
.method constructor <init>(DDDDD)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$c1:D

    iput-wide p3, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$r1:D

    iput-wide p5, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$c2:D

    iput-wide p7, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$r2:D

    iput-wide p9, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$signedDelta:D

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(D)Ljava/lang/Double;
    .locals 6

    .line 245
    iget-wide v0, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$c1:D

    iget-wide v2, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$r1:D

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$c2:D

    iget-wide v4, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$r2:D

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    iget-wide p0, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->$signedDelta:D

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 245
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;->invoke(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
