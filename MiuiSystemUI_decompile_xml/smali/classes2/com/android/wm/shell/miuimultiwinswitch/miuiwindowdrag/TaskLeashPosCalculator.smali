.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mDownPointInTask:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;->mDownPointInTask:Landroid/graphics/PointF;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public getTargetTaskLeashPos(FFFF)Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;->mDownPointInTask:Landroid/graphics/PointF;

    .line 2
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 4
    mul-float/2addr v0, p3

    .line 6
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 7
    mul-float/2addr p0, p4

    .line 9
    sub-float/2addr p1, v0

    .line 10
    sub-float/2addr p2, p0

    .line 11
    new-instance p0, Landroid/graphics/PointF;

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 14
    return-object p0
    .line 17
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;->mDownPointInTask:Landroid/graphics/PointF;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 5
    return-void
    .line 8
.end method

.method public setDownPointInTask(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;->mDownPointInTask:Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    return-void
    .line 7
.end method
