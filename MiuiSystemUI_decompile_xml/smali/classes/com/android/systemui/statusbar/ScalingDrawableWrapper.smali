.class public final Lcom/android/systemui/statusbar/ScalingDrawableWrapper;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicHeight()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    iget p0, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    .line 7
    mul-float/2addr v0, p0

    .line 9
    float-to-int p0, v0

    .line 10
    return p0
    .line 11
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicWidth()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    iget p0, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    .line 7
    mul-float/2addr v0, p0

    .line 9
    float-to-int p0, v0

    .line 10
    return p0
    .line 11
.end method
