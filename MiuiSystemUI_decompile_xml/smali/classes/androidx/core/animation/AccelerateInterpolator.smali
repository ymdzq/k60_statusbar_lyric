.class public Landroidx/core/animation/AccelerateInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/animation/Interpolator;


# instance fields
.field public final mDoubleFactor:D

.field public final mFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    move-result-object p1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v1, Landroidx/core/animation/AndroidResources;->STYLEABLE_ACCELERATE_INTERPOLATOR:[I

    .line 13
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 18
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 23
    move-result-object p1

    .line 26
    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 29
    move-result p2

    .line 32
    iput p2, p0, Landroidx/core/animation/AccelerateInterpolator;->mFactor:F

    .line 33
    const/high16 v0, 0x40000000    # 2.0f

    .line 35
    mul-float/2addr p2, v0

    .line 37
    float-to-double v0, p2

    .line 38
    iput-wide v0, p0, Landroidx/core/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/animation/AccelerateInterpolator;->mFactor:F

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 8
    mul-float/2addr p1, p1

    .line 10
    return p1

    .line 11
    :cond_0
    float-to-double v0, p1

    .line 12
    iget-wide p0, p0, Landroidx/core/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 13
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 15
    move-result-wide p0

    .line 18
    double-to-float p0, p0

    .line 19
    return p0
    .line 20
.end method
