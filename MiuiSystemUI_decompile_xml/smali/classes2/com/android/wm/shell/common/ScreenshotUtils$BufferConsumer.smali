.class public final Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mLayer:I

.field public final mParentSurfaceControl:Landroid/view/SurfaceControl;

.field public mScreenshot:Landroid/view/SurfaceControl;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mScreenshot:Landroid/view/SurfaceControl;

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 8
    iput-object p2, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 10
    iput p3, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mLayer:I

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 13
    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 15
    const-string v1, "ScreenshotUtils screenshot"

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 20
    move-result-object v0

    .line 23
    const/4 v1, -0x3

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 29
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 33
    move-result-object v0

    .line 36
    const-string v1, "ScreenshotUtils.takeScreenshot"

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 47
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mScreenshot:Landroid/view/SurfaceControl;

    .line 51
    iget-object v1, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 53
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 55
    move-result-object v2

    .line 58
    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 59
    iget-object v0, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 62
    iget-object v1, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mScreenshot:Landroid/view/SurfaceControl;

    .line 64
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 66
    move-result-object p1

    .line 69
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 70
    iget-object p1, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mScreenshot:Landroid/view/SurfaceControl;

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 79
    iget-object p1, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 82
    iget-object v0, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mScreenshot:Landroid/view/SurfaceControl;

    .line 84
    iget v1, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mLayer:I

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 88
    iget-object p1, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mScreenshot:Landroid/view/SurfaceControl;

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 98
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 100
    :cond_1
    :goto_0
    return-void
    .line 103
.end method
