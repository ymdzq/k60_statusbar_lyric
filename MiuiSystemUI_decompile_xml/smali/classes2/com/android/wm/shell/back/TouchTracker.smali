.class public final Lcom/android/wm/shell/back/TouchTracker;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final LINEAR_DISTANCE:I


# instance fields
.field public mCancelled:Z

.field public mInitTouchX:F

.field public mInitTouchY:F

.field public mLatestTouchX:F

.field public mLatestTouchY:F

.field public mLatestVelocityX:F

.field public mLatestVelocityY:F

.field public mLinearDistance:F

.field public mMaxDistance:F

.field public mNonLinearFactor:F

.field public mStartThresholdX:F

.field public mSwipeEdge:I

.field public mTriggerBack:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "persist.wm.debug.predictive_back_linear_distance"

    .line 2
    const/4 v1, -0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    move-result v0

    .line 8
    sput v0, Lcom/android/wm/shell/back/TouchTracker;->LINEAR_DISTANCE:I

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/android/wm/shell/back/TouchTracker;->LINEAR_DISTANCE:I

    .line 5
    int-to-float v0, v0

    .line 7
    iput v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mLinearDistance:F

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final createProgressEvent()Landroid/window/BackMotionEvent;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchX:F

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/TouchTracker;->getProgress(F)F

    .line 8
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    move v4, v0

    .line 14
    new-instance v0, Landroid/window/BackMotionEvent;

    .line 15
    iget v2, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchX:F

    .line 17
    iget v3, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchY:F

    .line 19
    iget v5, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityX:F

    .line 21
    iget v6, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityY:F

    .line 23
    iget v7, p0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    .line 25
    const/4 v8, 0x0

    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v8}, Landroid/window/BackMotionEvent;-><init>(FFFFFILandroid/view/RemoteAnimationTarget;)V

    .line 29
    return-object v0
.end method

.method public final getProgress(F)F
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mTriggerBack:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchX:F

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mStartThresholdX:F

    .line 9
    :goto_0
    sub-float/2addr v0, p1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 12
    move-result p1

    .line 15
    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mLinearDistance:F

    .line 16
    iget v1, p0, Lcom/android/wm/shell/back/TouchTracker;->mMaxDistance:F

    .line 18
    const/4 v2, 0x0

    .line 20
    cmpl-float v3, v1, v2

    .line 21
    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    if-nez v3, :cond_1

    .line 25
    move v1, v4

    .line 27
    :cond_1
    cmpg-float v3, v0, v1

    .line 28
    if-gez v3, :cond_4

    .line 30
    sub-float v3, v1, v0

    .line 32
    iget p0, p0, Lcom/android/wm/shell/back/TouchTracker;->mNonLinearFactor:F

    .line 34
    mul-float/2addr p0, v3

    .line 36
    add-float/2addr p0, v0

    .line 37
    cmpg-float v5, p1, v0

    .line 38
    if-gtz v5, :cond_2

    .line 40
    const/4 v5, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v5, 0x0

    .line 44
    :goto_1
    if-eqz v5, :cond_3

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    sub-float v0, p1, v0

    .line 48
    div-float/2addr v0, v3

    .line 50
    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 51
    move-result p0

    .line 54
    :goto_2
    div-float/2addr p1, p0

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    div-float/2addr p1, v1

    .line 57
    :goto_3
    invoke-static {p1, v2, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 58
    move-result p0

    .line 61
    return p0
    .line 62
.end method
