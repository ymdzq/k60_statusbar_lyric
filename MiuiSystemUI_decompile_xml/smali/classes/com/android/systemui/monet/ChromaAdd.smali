.class public final Lcom/android/systemui/monet/ChromaAdd;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/monet/Chroma;


# virtual methods
.method public final get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    .line 2
    move-result p0

    .line 5
    float-to-double p0, p0

    .line 6
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 7
    add-double/2addr p0, v0

    .line 9
    return-wide p0
    .line 10
.end method
