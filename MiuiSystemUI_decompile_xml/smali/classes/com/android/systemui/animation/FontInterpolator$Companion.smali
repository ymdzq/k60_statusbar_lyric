.class public abstract Lcom/android/systemui/animation/FontInterpolator$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    .line 6
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    .line 12
    move-result p0

    .line 15
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    .line 16
    move-result p1

    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
    .line 25
.end method
