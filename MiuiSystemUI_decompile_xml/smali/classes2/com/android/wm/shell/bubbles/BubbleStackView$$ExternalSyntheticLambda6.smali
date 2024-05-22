.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/function/Consumer;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;->f$1:Ljava/util/function/Consumer;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_3

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;->f$1:Ljava/util/function/Consumer;

    .line 10
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 12
    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 16
    move-result-object v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 22
    invoke-virtual {v1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    goto :goto_1

    .line 34
    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 35
    if-eqz v1, :cond_2

    .line 37
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceReady:Z

    .line 39
    if-nez v1, :cond_1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    .line 44
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 46
    move-result-object v1

    .line 49
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 50
    move-result-object v1

    .line 53
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 54
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 56
    move-result-object v2

    .line 59
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 60
    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 62
    move-result-object v3

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 66
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    .line 69
    const/high16 v2, 0x3f800000    # 1.0f

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 73
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 76
    const/4 v2, 0x4

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 79
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    .line 82
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    .line 84
    const/4 v3, 0x1

    .line 86
    invoke-direct {v2, v0, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/function/Consumer;I)V

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    new-instance p0, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;

    .line 93
    invoke-direct {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 98
    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 102
    goto :goto_2

    .line 105
    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 106
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 108
    goto :goto_2

    .line 111
    :cond_3
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 112
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 114
    :goto_2
    return-void

    .line 117
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 118
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;->f$1:Ljava/util/function/Consumer;

    .line 120
    sget-boolean v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->ENABLE_FLING_TO_DISMISS_BUBBLE:Z

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda12;

    .line 127
    const/4 v2, 0x0

    .line 129
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 138
.end method
