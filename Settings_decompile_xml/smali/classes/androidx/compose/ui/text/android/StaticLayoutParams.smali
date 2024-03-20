.class final Landroidx/compose/ui/text/android/StaticLayoutParams;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.kt"


# instance fields
.field private final alignment:Landroid/text/Layout$Alignment;

.field private final breakStrategy:I

.field private final ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private final ellipsizedWidth:I

.field private final end:I

.field private final hyphenationFrequency:I

.field private final includePadding:Z

.field private final justificationMode:I

.field private final leftIndents:[I

.field private final lineBreakStyle:I

.field private final lineBreakWordStyle:I

.field private final lineSpacingExtra:F

.field private final lineSpacingMultiplier:F

.field private final maxLines:I

.field private final paint:Landroid/text/TextPaint;

.field private final rightIndents:[I

.field private final start:I

.field private final text:Ljava/lang/CharSequence;

.field private final textDir:Landroid/text/TextDirectionHeuristic;

.field private final useFallbackLineSpacing:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    const-string/jumbo v11, "text"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v11, "paint"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v11, "textDir"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "alignment"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object v1, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    .line 130
    iput v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    .line 131
    iput v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    .line 132
    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    .line 133
    iput v5, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    .line 134
    iput-object v6, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    .line 135
    iput-object v7, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    .line 136
    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    move-object/from16 v4, p9

    .line 137
    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 138
    iput v9, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    .line 139
    iput v10, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    move/from16 v4, p12

    .line 140
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    move/from16 v4, p13

    .line 141
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    move/from16 v4, p14

    .line 142
    iput-boolean v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    move/from16 v4, p15

    .line 143
    iput-boolean v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    move/from16 v4, p16

    .line 144
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    move/from16 v4, p17

    .line 145
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakStyle:I

    move/from16 v4, p18

    .line 146
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakWordStyle:I

    move/from16 v4, p19

    .line 147
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    move-object/from16 v4, p20

    .line 148
    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    move-object/from16 v4, p21

    .line 149
    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    if-gt v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v6, "Failed requirement."

    if-eqz v2, :cond_b

    .line 153
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ltz v3, :cond_1

    if-gt v3, v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz v1, :cond_a

    if-ltz v8, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    if-eqz v1, :cond_9

    if-ltz v5, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    if-eqz v1, :cond_8

    if-ltz v9, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v4

    :goto_4
    if-eqz v1, :cond_7

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-ltz v1, :cond_5

    goto :goto_5

    :cond_5
    move v0, v4

    :goto_5
    if-eqz v0, :cond_6

    return-void

    .line 157
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 0

    .line 135
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final getBreakStrategy()I
    .locals 0

    .line 144
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    return p0
.end method

.method public final getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    .line 137
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public final getEllipsizedWidth()I
    .locals 0

    .line 138
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    return p0
.end method

.method public final getEnd()I
    .locals 0

    .line 131
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    return p0
.end method

.method public final getHyphenationFrequency()I
    .locals 0

    .line 147
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    return p0
.end method

.method public final getIncludePadding()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    return p0
.end method

.method public final getJustificationMode()I
    .locals 0

    .line 141
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    return p0
.end method

.method public final getLeftIndents()[I
    .locals 0

    .line 148
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    return-object p0
.end method

.method public final getLineBreakStyle()I
    .locals 0

    .line 145
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakStyle:I

    return p0
.end method

.method public final getLineBreakWordStyle()I
    .locals 0

    .line 146
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakWordStyle:I

    return p0
.end method

.method public final getLineSpacingExtra()F
    .locals 0

    .line 140
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    return p0
.end method

.method public final getLineSpacingMultiplier()F
    .locals 0

    .line 139
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    return p0
.end method

.method public final getMaxLines()I
    .locals 0

    .line 136
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    return p0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 0

    .line 132
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public final getRightIndents()[I
    .locals 0

    .line 149
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    return-object p0
.end method

.method public final getStart()I
    .locals 0

    .line 130
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    return p0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 0

    .line 129
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTextDir()Landroid/text/TextDirectionHeuristic;
    .locals 0

    .line 134
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public final getUseFallbackLineSpacing()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    return p0
.end method

.method public final getWidth()I
    .locals 0

    .line 133
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    return p0
.end method
