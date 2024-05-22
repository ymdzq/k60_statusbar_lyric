.class public Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field aspectRatio:F

.field heiRatio:F

.field mode:I

.field widRatio:F

.field xRatio:F

.field yRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 10
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 12
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 13
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    return-void
.end method

.method public constructor <init>(FFFFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 3
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 4
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 5
    iput p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 6
    iput p5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 7
    iput p6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 7
    iget v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 9
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 11
    iget v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 13
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 15
    iget v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 17
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 19
    iget v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 21
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 23
    iget p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 25
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 27
    return-void
    .line 29
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 3
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 9
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 11
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 13
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 16
    return-void
    .line 18
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "WindowRatio xRatio:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->xRatio:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " yRatio:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->yRatio:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " widRatio:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->widRatio:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, " heiRatio:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->heiRatio:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " aspectRatio:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->aspectRatio:F

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, " mode:"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityWindowRatio;->mode:I

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    return-object p0
    .line 68
.end method
