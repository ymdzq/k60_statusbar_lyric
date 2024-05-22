.class public abstract Lcom/android/wm/shell/common/ScreenshotUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;

    .line 2
    invoke-direct {v0, p0, p2, p4}, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4
    new-instance p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 7
    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 9
    invoke-virtual {p0, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 16
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 23
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 29
    invoke-virtual {p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 31
    move-result-object p0

    .line 34
    invoke-static {p0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->accept(Ljava/lang/Object;)V

    .line 39
    iget-object p0, v0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mScreenshot:Landroid/view/SurfaceControl;

    .line 42
    return-object p0
    .line 44
.end method
