.class public final Lcom/google/android/material/shape/AbsoluteCornerSize;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field public final size:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 12
    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    .line 14
    iget p1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    .line 16
    cmpl-float p0, p0, p1

    .line 18
    if-nez p0, :cond_2

    .line 20
    goto :goto_0

    .line 22
    :cond_2
    move v0, v2

    .line 23
    :goto_0
    return v0
    .line 24
.end method

.method public final getCornerSize(Landroid/graphics/RectF;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    .line 2
    return p0
    .line 4
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    move-result-object p0

    .line 7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method
