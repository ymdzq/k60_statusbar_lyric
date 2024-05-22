.class public final Lcom/android/systemui/statusbar/CircleReveal;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field public final centerX:I

.field public final centerY:I

.field public final endRadius:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    .line 7
    iput p3, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 4

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    sub-float v0, p1, v0

    .line 4
    const/4 v1, 0x0

    .line 6
    cmpg-float v2, v0, v1

    .line 7
    if-gez v2, :cond_0

    .line 9
    move v0, v1

    .line 11
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    mul-float/2addr v1, v0

    .line 14
    const/4 v0, 0x0

    .line 15
    int-to-float v2, v0

    .line 16
    iget v3, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    .line 17
    sub-int/2addr v3, v0

    .line 19
    int-to-float v0, v3

    .line 20
    mul-float/2addr v0, p1

    .line 21
    add-float/2addr v0, v2

    .line 22
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setInterpolatedRevealAmount(F)V

    .line 23
    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    sub-float/2addr p1, v1

    .line 28
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    .line 29
    iget p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    .line 32
    int-to-float p1, p1

    .line 34
    sub-float v1, p1, v0

    .line 35
    iget p0, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    .line 37
    int-to-float p0, p0

    .line 39
    sub-float v2, p0, v0

    .line 40
    add-float/2addr p1, v0

    .line 42
    add-float/2addr p0, v0

    .line 43
    invoke-virtual {p2, v1, v2, p1, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    .line 44
    return-void
    .line 47
.end method
