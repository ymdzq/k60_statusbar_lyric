.class public final Lcom/android/systemui/monet/HueAdd;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/monet/Hue;


# instance fields
.field public final amountDegrees:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/systemui/monet/HueAdd;->amountDegrees:D

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    .line 2
    move-result p1

    .line 5
    float-to-double v0, p1

    .line 6
    iget-wide p0, p0, Lcom/android/systemui/monet/HueAdd;->amountDegrees:D

    .line 7
    add-double/2addr v0, p0

    .line 9
    const-wide/16 p0, 0x0

    .line 10
    cmpg-double p0, v0, p0

    .line 12
    const/16 p1, 0x168

    .line 14
    if-gez p0, :cond_0

    .line 16
    int-to-double p0, p1

    .line 18
    rem-double/2addr v0, p0

    .line 19
    add-double/2addr v0, p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 22
    cmpl-double p0, v0, v2

    .line 27
    if-ltz p0, :cond_1

    .line 29
    int-to-double p0, p1

    .line 31
    rem-double/2addr v0, p0

    .line 32
    :cond_1
    :goto_0
    return-wide v0
    .line 33
.end method
