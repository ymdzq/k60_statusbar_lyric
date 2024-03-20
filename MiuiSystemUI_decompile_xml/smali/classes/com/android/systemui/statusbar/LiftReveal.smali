.class public final Lcom/android/systemui/statusbar/LiftReveal;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

.field public static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/LiftReveal;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/LiftReveal;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    .line 7
    sget-object v0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 9
    sput-object v0, Lcom/android/systemui/statusbar/LiftReveal;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 5

    .line 1
    sget-object p0, Lcom/android/systemui/statusbar/LiftReveal;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 2
    check-cast p0, Landroid/view/animation/PathInterpolator;

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 6
    move-result p0

    .line 9
    const v0, 0x3eb33333    # 0.35f

    .line 10
    sub-float v1, p0, v0

    .line 13
    const/4 v2, 0x0

    .line 15
    cmpg-float v3, v1, v2

    .line 16
    if-gez v3, :cond_0

    .line 18
    move v1, v2

    .line 20
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    sub-float v0, v3, v0

    .line 23
    div-float v0, v3, v0

    .line 25
    mul-float/2addr v0, v1

    .line 27
    const v1, 0x3f59999a    # 0.85f

    .line 28
    sub-float/2addr p1, v1

    .line 31
    cmpg-float v4, p1, v2

    .line 32
    if-gez v4, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    move v2, p1

    .line 37
    :goto_0
    sub-float p1, v3, v1

    .line 38
    div-float p1, v3, p1

    .line 40
    mul-float/2addr p1, v2

    .line 42
    sub-float/2addr v3, p1

    .line 43
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 47
    move-result p1

    .line 50
    int-to-float p1, p1

    .line 51
    const/high16 v1, 0x3e800000    # 0.25f

    .line 52
    mul-float/2addr p1, v1

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 55
    move-result v1

    .line 58
    neg-int v1, v1

    .line 59
    int-to-float v1, v1

    .line 60
    mul-float/2addr v1, v0

    .line 61
    add-float/2addr v1, p1

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 63
    move-result p1

    .line 66
    int-to-float p1, p1

    .line 67
    const v2, 0x3f8ccccd    # 1.1f

    .line 68
    mul-float/2addr p1, v2

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 72
    move-result v2

    .line 75
    int-to-float v2, v2

    .line 76
    mul-float/2addr v2, p0

    .line 77
    sub-float/2addr p1, v2

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 79
    move-result v2

    .line 82
    int-to-float v2, v2

    .line 83
    const/high16 v3, 0x3f400000    # 0.75f

    .line 84
    mul-float/2addr v2, v3

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 87
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    mul-float/2addr v3, v0

    .line 92
    add-float/2addr v3, v2

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 94
    move-result v0

    .line 97
    int-to-float v0, v0

    .line 98
    const v2, 0x3f99999a    # 1.2f

    .line 99
    mul-float/2addr v0, v2

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 103
    move-result v2

    .line 106
    int-to-float v2, v2

    .line 107
    mul-float/2addr v2, p0

    .line 108
    add-float/2addr v2, v0

    .line 109
    invoke-virtual {p2, v1, p1, v3, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    .line 110
    return-void
    .line 113
.end method
