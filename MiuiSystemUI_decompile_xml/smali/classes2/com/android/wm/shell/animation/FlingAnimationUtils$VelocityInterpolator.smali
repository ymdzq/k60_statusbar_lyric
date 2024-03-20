.class public final Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final mDiff:F

.field public final mDurationSeconds:F

.field public final mVelocity:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;->mDurationSeconds:F

    .line 5
    iput p2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;->mVelocity:F

    .line 7
    iput p3, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;->mDiff:F

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;->mDurationSeconds:F

    .line 2
    mul-float/2addr p1, v0

    .line 4
    iget v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;->mVelocity:F

    .line 5
    mul-float/2addr p1, v0

    .line 7
    iget p0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;->mDiff:F

    .line 8
    div-float/2addr p1, p0

    .line 10
    return p1
    .line 11
.end method
