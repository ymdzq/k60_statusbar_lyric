.class public final Landroidx/compose/material3/SwitchColors;
.super Ljava/lang/Object;
.source "Switch.kt"


# instance fields
.field private final checkedBorderColor:J

.field private final checkedIconColor:J

.field private final checkedThumbColor:J

.field private final checkedTrackColor:J

.field private final disabledCheckedBorderColor:J

.field private final disabledCheckedIconColor:J

.field private final disabledCheckedThumbColor:J

.field private final disabledCheckedTrackColor:J

.field private final disabledUncheckedBorderColor:J

.field private final disabledUncheckedIconColor:J

.field private final disabledUncheckedThumbColor:J

.field private final disabledUncheckedTrackColor:J

.field private final uncheckedBorderColor:J

.field private final uncheckedIconColor:J

.field private final uncheckedThumbColor:J

.field private final uncheckedTrackColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(JJJJJJJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 349
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    move-wide v1, p3

    .line 350
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    move-wide v1, p5

    .line 351
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    move-wide v1, p7

    .line 352
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->checkedIconColor:J

    move-wide v1, p9

    .line 353
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    move-wide v1, p11

    .line 354
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    move-wide/from16 v1, p13

    .line 355
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    move-wide/from16 v1, p15

    .line 356
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->uncheckedIconColor:J

    move-wide/from16 v1, p17

    .line 357
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledCheckedThumbColor:J

    move-wide/from16 v1, p19

    .line 358
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledCheckedTrackColor:J

    move-wide/from16 v1, p21

    .line 359
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledCheckedBorderColor:J

    move-wide/from16 v1, p23

    .line 360
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledCheckedIconColor:J

    move-wide/from16 v1, p25

    .line 361
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedThumbColor:J

    move-wide/from16 v1, p27

    .line 362
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedTrackColor:J

    move-wide/from16 v1, p29

    .line 363
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedBorderColor:J

    move-wide/from16 v1, p31

    .line 364
    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedIconColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p32}, Landroidx/compose/material3/SwitchColors;-><init>(JJJJJJJJJJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public final borderColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, 0x1b9388e1

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.SwitchColors.borderColor (Switch.kt:406)"

    .line 407
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 410
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 412
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedBorderColor:J

    goto :goto_0

    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedBorderColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    .line 408
    invoke-static {p0, p3, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 436
    instance-of v2, p1, Landroidx/compose/material3/SwitchColors;

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 438
    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    check-cast p1, Landroidx/compose/material3/SwitchColors;

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 439
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 440
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 441
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->checkedIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 442
    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 443
    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 444
    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 445
    :cond_8
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->uncheckedIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 446
    :cond_9
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedThumbColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledCheckedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 447
    :cond_a
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledCheckedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 448
    :cond_b
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledCheckedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 449
    :cond_c
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledCheckedIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 450
    :cond_d
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedThumbColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledUncheckedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 451
    :cond_e
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledUncheckedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 452
    :cond_f
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledUncheckedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 453
    :cond_10
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedIconColor:J

    iget-wide p0, p1, Landroidx/compose/material3/SwitchColors;->disabledUncheckedIconColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_11

    return v1

    :cond_11
    return v0

    :cond_12
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 459
    iget-wide v0, p0, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 460
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 461
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 462
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->checkedIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 463
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 464
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 465
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 466
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->uncheckedIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 467
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedThumbColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 468
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedTrackColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 469
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedBorderColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 470
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 471
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedThumbColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 472
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedTrackColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 473
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedBorderColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 474
    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final iconColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, -0x92470d2

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.SwitchColors.iconColor (Switch.kt:423)"

    .line 424
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 427
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->checkedIconColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->uncheckedIconColor:J

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 429
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedIconColor:J

    goto :goto_0

    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedIconColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    .line 425
    invoke-static {p0, p3, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final thumbColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, -0x5bc98451

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.SwitchColors.thumbColor (Switch.kt:372)"

    .line 373
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 376
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 378
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedThumbColor:J

    goto :goto_0

    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedThumbColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    .line 374
    invoke-static {p0, p3, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final trackColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, 0x394f81a4

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.SwitchColors.trackColor (Switch.kt:389)"

    .line 390
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 393
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 395
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedTrackColor:J

    goto :goto_0

    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedTrackColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    .line 391
    invoke-static {p0, p3, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method
