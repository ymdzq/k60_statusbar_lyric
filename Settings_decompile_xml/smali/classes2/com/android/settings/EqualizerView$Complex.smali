.class Lcom/android/settings/EqualizerView$Complex;
.super Ljava/lang/Object;
.source "EqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EqualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Complex"
.end annotation


# instance fields
.field final im:F

.field final re:F


# direct methods
.method protected constructor <init>(FF)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    .line 243
    iput p2, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    return-void
.end method


# virtual methods
.method protected add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;
    .locals 3

    .line 280
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    iget v2, p1, Lcom/android/settings/EqualizerView$Complex;->re:F

    add-float/2addr v1, v2

    iget p0, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    iget p1, p1, Lcom/android/settings/EqualizerView$Complex;->im:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected con()Lcom/android/settings/EqualizerView$Complex;
    .locals 2

    .line 270
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    iget p0, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    neg-float p0, p0

    invoke-direct {v0, v1, p0}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected div(F)Lcom/android/settings/EqualizerView$Complex;
    .locals 2

    .line 321
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    div-float/2addr v1, p1

    iget p0, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    div-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;
    .locals 2

    .line 310
    iget v0, p1, Lcom/android/settings/EqualizerView$Complex;->re:F

    mul-float/2addr v0, v0

    iget v1, p1, Lcom/android/settings/EqualizerView$Complex;->im:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 311
    invoke-virtual {p1}, Lcom/android/settings/EqualizerView$Complex;->con()Lcom/android/settings/EqualizerView$Complex;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/EqualizerView$Complex;->mul(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/EqualizerView$Complex;->div(F)Lcom/android/settings/EqualizerView$Complex;

    move-result-object p0

    return-object p0
.end method

.method protected mul(F)Lcom/android/settings/EqualizerView$Complex;
    .locals 2

    .line 300
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    mul-float/2addr v1, p1

    iget p0, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected mul(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;
    .locals 5

    .line 290
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    iget v2, p1, Lcom/android/settings/EqualizerView$Complex;->re:F

    mul-float v3, v1, v2

    iget p0, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    iget p1, p1, Lcom/android/settings/EqualizerView$Complex;->im:F

    mul-float v4, p0, p1

    sub-float/2addr v3, v4

    mul-float/2addr v1, p1

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    invoke-direct {v0, v3, v1}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected rho()F
    .locals 2

    .line 252
    iget v0, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    mul-float/2addr v0, v0

    iget p0, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
