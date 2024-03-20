.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;
.super Ljava/lang/Object;
.source "SelectionAdjustment.kt"


# direct methods
.method public static final ensureAtLeastOneChar(IIZZ)J
    .locals 0

    if-nez p1, :cond_0

    .line 427
    invoke-static {p0, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0

    :cond_0
    if-nez p0, :cond_2

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 433
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    goto :goto_0

    .line 435
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_2
    if-ne p0, p1, :cond_4

    if-eqz p2, :cond_3

    add-int/lit8 p0, p1, -0x1

    .line 441
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p1, -0x1

    .line 443
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    :goto_1
    return-wide p0

    :cond_4
    if-eqz p2, :cond_6

    if-nez p3, :cond_5

    add-int/lit8 p1, p0, -0x1

    .line 452
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p0, 0x1

    .line 455
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    add-int/lit8 p1, p0, 0x1

    .line 460
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    goto :goto_2

    :cond_7
    add-int/lit8 p1, p0, -0x1

    .line 463
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    :goto_2
    return-wide p0
.end method
