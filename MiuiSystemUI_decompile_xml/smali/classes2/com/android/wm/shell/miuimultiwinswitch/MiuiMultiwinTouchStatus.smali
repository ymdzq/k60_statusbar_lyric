.class public Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private isMoved:Z

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mTouchSlop:I

.field private moveListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->mDownPoint:Landroid/graphics/PointF;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->moveListeners:Ljava/util/List;

    .line 17
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 23
    move-result p1

    .line 26
    div-int/lit8 p1, p1, 0x2

    .line 27
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->mTouchSlop:I

    .line 29
    return-void
    .line 31
.end method


# virtual methods
.method public addMoveListener(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus$MultiwinMoveListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->moveListeners:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    const/4 v2, 0x2

    .line 16
    if-eq p1, v2, :cond_0

    .line 17
    goto :goto_1

    .line 19
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->isMoved:Z

    .line 20
    if-nez p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->mDownPoint:Landroid/graphics/PointF;

    .line 24
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 26
    sub-float/2addr v0, v2

    .line 28
    float-to-double v2, v0

    .line 29
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 30
    sub-float/2addr v1, p1

    .line 32
    float-to-double v0, v1

    .line 33
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 34
    move-result-wide v0

    .line 37
    iget p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->mTouchSlop:I

    .line 38
    int-to-double v2, p1

    .line 40
    cmpl-double p1, v0, v2

    .line 41
    if-lez p1, :cond_2

    .line 43
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->isMoved:Z

    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->moveListeners:Ljava/util/List;

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    move-result p1

    .line 53
    if-lez p1, :cond_2

    .line 54
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->moveListeners:Ljava/util/List;

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p0

    .line 61
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 71
    check-cast p1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus$MultiwinMoveListener;

    .line 72
    invoke-interface {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus$MultiwinMoveListener;->onMoveOccured()V

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->mDownPoint:Landroid/graphics/PointF;

    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 80
    :cond_2
    :goto_1
    return-void
    .line 83
.end method

.method public isMoveOccured()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->isMoved:Z

    .line 2
    return p0
    .line 4
.end method

.method public removeMoveListener(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus$MultiwinMoveListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->moveListeners:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->isMoved:Z

    .line 3
    return-void
    .line 5
.end method
