.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private cAlpha:F

.field private cDegreeRange:F

.field private cDestState:I

.field private cRadius:F

.field private cThickness:F

.field private cornerX:F

.field private cornerY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFFFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cAlpha:F

    .line 3
    iput p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cDegreeRange:F

    .line 4
    iput p8, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cDestState:I

    .line 5
    invoke-static {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cornerX:F

    .line 6
    invoke-static {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cornerY:F

    .line 7
    invoke-static {p1, p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cRadius:F

    .line 8
    invoke-static {p1, p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cThickness:F

    return-void
.end method


# virtual methods
.method public getCAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public getCDegreeRange()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cDegreeRange:F

    .line 2
    return p0
    .line 4
.end method

.method public getCDestState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cDestState:I

    .line 2
    return p0
    .line 4
.end method

.method public getCRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getCThickness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cThickness:F

    .line 2
    return p0
    .line 4
.end method

.method public getCornerX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cornerX:F

    .line 2
    return p0
    .line 4
.end method

.method public getCornerY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cornerY:F

    .line 2
    return p0
    .line 4
.end method

.method public toCornerStateString()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cDestState:I

    .line 2
    if-eqz p0, :cond_3

    .line 4
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_2

    .line 7
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    const-string p0, ""

    .line 15
    return-object p0

    .line 17
    :cond_0
    const-string p0, "emphasis"

    .line 18
    return-object p0

    .line 20
    :cond_1
    const-string p0, "hold"

    .line 21
    return-object p0

    .line 23
    :cond_2
    const-string/jumbo p0, "show"

    .line 24
    return-object p0

    .line 27
    :cond_3
    const-string p0, "hide"

    .line 28
    return-object p0
    .line 30
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "CornerTipState{cDestState="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->toCornerStateString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", cornerX="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cornerX:F

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", cornerY="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cornerY:F

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", cAlpha="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cAlpha:F

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", cRadius="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cRadius:F

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", cThickness="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cThickness:F

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", cDegreeRange="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->cDegreeRange:F

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    const/16 p0, 0x7d

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    return-object p0
    .line 85
.end method
