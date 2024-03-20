.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
