.class public abstract Lcom/android/wm/shell/common/SurfaceUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 2
    invoke-direct {v0, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 15
    move-result-object p0

    .line 18
    const-string p1, "SurfaceUtils.makeColorLayer"

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method

.method public static makeDimLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    const-string v0, "Dim layer"

    .line 2
    invoke-static {p1, v0, p2}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    .line 4
    move-result-object p1

    .line 7
    const p2, 0x7fffffff

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 11
    move-result-object p0

    .line 14
    const/4 p2, 0x3

    .line 15
    new-array p2, p2, [F

    .line 16
    fill-array-data p2, :array_0

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 21
    return-object p1

    .line 24
    nop

    .line 25
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
    .line 26
.end method
