.class Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field aspectRatio:F

.field dragPoint:Landroid/graphics/PointF;

.field extremeRatio:Z

.field height:F

.field lastMode:I

.field mode:I

.field preMode:I

.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;

.field width:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    .line 7
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->dragPoint:Landroid/graphics/PointF;

    .line 12
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 15
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 17
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->lastMode:I

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public equals(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 2
    iget v1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 10
    iget p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 12
    cmpl-float p0, p0, p1

    .line 14
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public frame(I)Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->dragPoint:Landroid/graphics/PointF;

    .line 2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 4
    if-nez p1, :cond_0

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 8
    sub-float/2addr v0, v1

    .line 10
    :cond_0
    float-to-int v0, v0

    .line 11
    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->dragPoint:Landroid/graphics/PointF;

    .line 14
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->dragPoint:Landroid/graphics/PointF;

    .line 19
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 21
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 23
    add-float/2addr p1, v1

    .line 25
    :goto_0
    float-to-int p1, p1

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->dragPoint:Landroid/graphics/PointF;

    .line 27
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 29
    float-to-int v2, v1

    .line 31
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 32
    add-float/2addr v1, p0

    .line 34
    float-to-int p0, v1

    .line 35
    new-instance v1, Landroid/graphics/Rect;

    .line 36
    invoke-direct {v1, v0, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 38
    return-object v1
    .line 41
.end method

.method public initMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 4
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->lastMode:I

    .line 6
    return-void
    .line 8
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    if-lez v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 9
    cmpl-float v0, v0, v1

    .line 11
    if-lez v0, :cond_0

    .line 13
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 15
    cmpl-float v0, v0, v1

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 21
    const/4 v0, -0x1

    .line 23
    if-eq p0, v0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->x:F

    .line 3
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->y:F

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 7
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 9
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 11
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 14
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 16
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->lastMode:I

    .line 18
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 21
    return-void
    .line 23
.end method

.method public set(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 2
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 4
    iget v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 6
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 8
    iget v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 10
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->dragPoint:Landroid/graphics/PointF;

    .line 14
    iget-object v1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->dragPoint:Landroid/graphics/PointF;

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 18
    iget-boolean p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 21
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 23
    return-void
    .line 25
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "WindowGrid{x="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->x:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", y="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->y:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", width="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", height="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", mode="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 49
    const/16 v1, 0x7d

    .line 51
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method
