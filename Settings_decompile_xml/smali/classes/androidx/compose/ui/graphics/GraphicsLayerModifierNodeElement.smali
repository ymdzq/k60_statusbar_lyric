.class final Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "GraphicsLayerModifier.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGraphicsLayerModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphicsLayerModifier.kt\nandroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,699:1\n135#2:700\n*S KotlinDebug\n*F\n+ 1 GraphicsLayerModifier.kt\nandroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement\n*L\n407#1:700\n*E\n"
.end annotation


# instance fields
.field private final alpha:F

.field private final ambientShadowColor:J

.field private final cameraDistance:F

.field private final clip:Z

.field private final compositingStrategy:I

.field private final rotationX:F

.field private final rotationY:F

.field private final rotationZ:F

.field private final scaleX:F

.field private final scaleY:F

.field private final shadowElevation:F

.field private final shape:Landroidx/compose/ui/graphics/Shape;

.field private final spotShadowColor:J

.field private final transformOrigin:J

.field private final translationX:F

.field private final translationY:F


# direct methods
.method private constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJI)V
    .locals 28

    move-object/from16 v6, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement$special$$inlined$debugInspectorInfo$1;

    move-object v7, v0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move-wide/from16 v18, p11

    move-object/from16 v20, p13

    move/from16 v21, p14

    move-object/from16 v22, p15

    move-wide/from16 v23, p16

    move-wide/from16 v25, p18

    move/from16 v27, p20

    invoke-direct/range {v7 .. v27}, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement$special$$inlined$debugInspectorInfo$1;-><init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJI)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 406
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v0, p1

    .line 389
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleX:F

    move/from16 v0, p2

    .line 390
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleY:F

    move/from16 v0, p3

    .line 391
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->alpha:F

    move/from16 v0, p4

    .line 392
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationX:F

    move/from16 v0, p5

    .line 393
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationY:F

    move/from16 v0, p6

    .line 394
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shadowElevation:F

    move/from16 v0, p7

    .line 395
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationX:F

    move/from16 v0, p8

    .line 396
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationY:F

    move/from16 v0, p9

    .line 397
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationZ:F

    move/from16 v0, p10

    .line 398
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->cameraDistance:F

    move-wide/from16 v0, p11

    .line 399
    iput-wide v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->transformOrigin:J

    move-object/from16 v0, p13

    .line 400
    iput-object v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shape:Landroidx/compose/ui/graphics/Shape;

    move/from16 v0, p14

    .line 401
    iput-boolean v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->clip:Z

    move-wide/from16 v0, p16

    .line 403
    iput-wide v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->ambientShadowColor:J

    move-wide/from16 v0, p18

    .line 404
    iput-wide v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->spotShadowColor:J

    move/from16 v0, p20

    .line 405
    iput v0, v6, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->compositingStrategy:I

    return-void
.end method

.method public synthetic constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p20}, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;-><init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 387
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->create()Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;
    .locals 26

    move-object/from16 v0, p0

    .line 429
    new-instance v23, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    move-object/from16 v1, v23

    .line 430
    iget v2, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleX:F

    .line 431
    iget v3, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleY:F

    .line 432
    iget v4, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->alpha:F

    .line 433
    iget v5, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationX:F

    .line 434
    iget v6, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationY:F

    .line 435
    iget v7, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shadowElevation:F

    .line 436
    iget v8, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationX:F

    .line 437
    iget v9, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationY:F

    .line 438
    iget v10, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationZ:F

    .line 439
    iget v11, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->cameraDistance:F

    .line 440
    iget-wide v12, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->transformOrigin:J

    .line 441
    iget-object v14, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 442
    iget-boolean v15, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->clip:Z

    const/16 v16, 0x0

    move-object/from16 v24, v1

    move/from16 v25, v2

    .line 444
    iget-wide v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->ambientShadowColor:J

    move-wide/from16 v17, v1

    .line 445
    iget-wide v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->spotShadowColor:J

    move-wide/from16 v19, v1

    .line 446
    iget v0, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->compositingStrategy:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v1, v24

    move/from16 v2, v25

    .line 429
    invoke-direct/range {v1 .. v22}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;-><init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v23
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 474
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 475
    :cond_1
    instance-of v1, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;

    if-nez v1, :cond_2

    return v2

    .line 477
    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleX:F

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleX:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-eqz v1, :cond_d

    .line 478
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleY:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleY:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_d

    .line 479
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->alpha:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->alpha:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-eqz v1, :cond_d

    .line 480
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationX:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationX:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    if-eqz v1, :cond_d

    .line 481
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationY:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationY:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    if-eqz v1, :cond_d

    .line 482
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shadowElevation:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shadowElevation:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_8

    move v1, v0

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    if-eqz v1, :cond_d

    .line 483
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationX:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationX:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_9

    move v1, v0

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    if-eqz v1, :cond_d

    .line 484
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationY:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationY:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_a

    move v1, v0

    goto :goto_7

    :cond_a
    move v1, v2

    :goto_7
    if-eqz v1, :cond_d

    .line 485
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationZ:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationZ:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_b

    move v1, v0

    goto :goto_8

    :cond_b
    move v1, v2

    :goto_8
    if-eqz v1, :cond_d

    .line 486
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->cameraDistance:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->cameraDistance:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_c

    move v1, v0

    goto :goto_9

    :cond_c
    move v1, v2

    :goto_9
    if-eqz v1, :cond_d

    .line 487
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->transformOrigin:J

    iget-wide v5, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->transformOrigin:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 488
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 489
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->clip:Z

    iget-boolean v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->clip:Z

    if-ne v1, v3, :cond_d

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 491
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->ambientShadowColor:J

    iget-wide v5, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->ambientShadowColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 492
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->spotShadowColor:J

    iget-wide v5, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->spotShadowColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 493
    iget p0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->compositingStrategy:I

    iget p1, p1, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->compositingStrategy:I

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_a

    :cond_d
    move v0, v2

    :goto_a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 497
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleX:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 498
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 499
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 500
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 501
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 502
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shadowElevation:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 503
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 504
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 505
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationZ:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 506
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->cameraDistance:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 507
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->transformOrigin:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 508
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 509
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->clip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    .line 511
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->ambientShadowColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 512
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->spotShadowColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 513
    iget p0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->compositingStrategy:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/CompositingStrategy;->hashCode-impl(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 387
    check-cast p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->update(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;
    .locals 2

    const-string/jumbo v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleX:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setScaleX(F)V

    .line 452
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->scaleY:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setScaleY(F)V

    .line 453
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->alpha:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setAlpha(F)V

    .line 454
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationX:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setTranslationX(F)V

    .line 455
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->translationY:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setTranslationY(F)V

    .line 456
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shadowElevation:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setShadowElevation(F)V

    .line 457
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationX:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setRotationX(F)V

    .line 458
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationY:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setRotationY(F)V

    .line 459
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->rotationZ:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setRotationZ(F)V

    .line 460
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->cameraDistance:F

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setCameraDistance(F)V

    .line 461
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->transformOrigin:J

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setTransformOrigin-__ExYCQ(J)V

    .line 462
    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 463
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->clip:Z

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setClip(Z)V

    const/4 v0, 0x0

    .line 464
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 465
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->ambientShadowColor:J

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setAmbientShadowColor-8_81llA(J)V

    .line 466
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->spotShadowColor:J

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setSpotShadowColor-8_81llA(J)V

    .line 467
    iget p0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierNodeElement;->compositingStrategy:I

    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->setCompositingStrategy-aDBOjCE(I)V

    .line 468
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->invalidateLayerBlock()V

    return-object p1
.end method
