.class public final Landroidx/compose/animation/core/DecayAnimationSpecKt;
.super Ljava/lang/Object;
.source "DecayAnimationSpec.kt"


# direct methods
.method public static final calculateTargetValue(Landroidx/compose/animation/core/DecayAnimationSpec;FF)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/animation/core/DecayAnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    move-result-object p0

    .line 82
    invoke-static {p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->AnimationVector(F)Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object p1

    .line 83
    invoke-static {p2}, Landroidx/compose/animation/core/AnimationVectorsKt;->AnimationVector(F)Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object p2

    .line 81
    invoke-interface {p0, p1, p2}, Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;->getTargetValue(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 85
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector1D;->getValue()F

    move-result p0

    return p0
.end method

.method public static final generateDecayAnimationSpec(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/FloatDecayAnimationSpec;",
            ")",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V

    return-object v0
.end method
