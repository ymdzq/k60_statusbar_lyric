.class public Landroidx/core/animation/CycleInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/animation/Interpolator;


# instance fields
.field public final mCycles:F


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
    sget-object v1, Landroidx/core/animation/AndroidResources;->STYLEABLE_CYCLE_INTERPOLATOR:[I

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
    iput p2, p0, Landroidx/core/animation/CycleInterpolator;->mCycles:F

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void
    .line 38
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    iget p0, p0, Landroidx/core/animation/CycleInterpolator;->mCycles:F

    .line 4
    mul-float/2addr p0, v0

    .line 6
    float-to-double v0, p0

    .line 7
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 8
    mul-double/2addr v0, v2

    .line 13
    float-to-double p0, p1

    .line 14
    mul-double/2addr v0, p0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 16
    move-result-wide p0

    .line 19
    double-to-float p0, p0

    .line 20
    return p0
    .line 21
.end method
