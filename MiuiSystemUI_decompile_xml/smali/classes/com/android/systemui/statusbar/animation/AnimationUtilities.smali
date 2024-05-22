.class public abstract Lcom/android/systemui/statusbar/animation/AnimationUtilities;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MAIN_THREAD_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/animation/LooperExecutor;-><init>(Landroid/os/Looper;)V

    .line 8
    sput-object v0, Lcom/android/systemui/statusbar/animation/AnimationUtilities;->MAIN_THREAD_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 11
    return-void
    .line 13
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/RectF;F)V
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    .line 12
    move-result v1

    .line 15
    neg-float v2, v0

    .line 16
    neg-float v3, v1

    .line 17
    invoke-virtual {p0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 18
    iget v2, p0, Landroid/graphics/RectF;->left:F

    .line 21
    mul-float/2addr v2, p1

    .line 23
    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 24
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 26
    mul-float/2addr v2, p1

    .line 28
    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 29
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 31
    mul-float/2addr v2, p1

    .line 33
    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 34
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 36
    mul-float/2addr v2, p1

    .line 38
    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 39
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 41
    :cond_0
    return-void
.end method
