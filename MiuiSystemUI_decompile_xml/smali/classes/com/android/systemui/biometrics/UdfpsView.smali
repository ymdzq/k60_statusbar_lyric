.class public final Lcom/android/systemui/biometrics/UdfpsView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;


# instance fields
.field public animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

.field public debugMessage:Ljava/lang/String;

.field public final debugTextPaint:Landroid/graphics/Paint;

.field public isDisplayConfigured:Z

.field public mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

.field public overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

.field public sensorRect:Landroid/graphics/Rect;

.field public final sensorTouchAreaCoefficient:F

.field public useExpandedOverlay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    const v2, -0xffff01

    .line 21
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    const/high16 v2, 0x42000000    # 32.0f

    .line 27
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 29
    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->debugTextPaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 34
    move-result-object p1

    .line 37
    sget-object v0, Lcom/android/systemui/R$styleable;->UdfpsView:[I

    .line 38
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 41
    move-result-object p1

    .line 44
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 45
    move-result p2

    .line 48
    if-eqz p2, :cond_0

    .line 49
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 52
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 57
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsView;->sensorTouchAreaCoefficient:F

    .line 60
    new-instance p1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 62
    invoke-direct {p1}, Lcom/android/settingslib/udfps/UdfpsOverlayParams;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 67
    return-void

    .line 69
    :cond_0
    :try_start_1
    const-string p0, "UdfpsView must contain sensorTouchAreaCoefficient"

    .line 70
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    :catchall_1
    move-exception p2

    .line 84
    invoke-static {p1, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 85
    throw p2
    .line 88
.end method


# virtual methods
.method public final dozeTimeTick()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->dozeTimeTick()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDebugMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->debugMessage:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getOverlayParams()Lcom/android/settingslib/udfps/UdfpsOverlayParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSensorRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getUseExpandedOverlay()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->useExpandedOverlay:Z

    .line 2
    return p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    return-void
    .line 5
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    return-void
    .line 5
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->isDisplayConfigured:Z

    .line 5
    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->debugMessage:Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    if-nez v0, :cond_2

    .line 23
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->debugMessage:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->debugTextPaint:Landroid/graphics/Paint;

    .line 30
    const/4 v1, 0x0

    .line 32
    const/high16 v2, 0x43200000    # 160.0f

    .line 33
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 35
    :cond_2
    return-void
    .line 38
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    .line 9
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
    .line 19
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 5
    iget-boolean p2, p0, Lcom/android/systemui/biometrics/UdfpsView;->useExpandedOverlay:Z

    .line 7
    if-eqz p2, :cond_0

    .line 9
    if-eqz p1, :cond_1

    .line 11
    new-instance p2, Landroid/graphics/RectF;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/Rect;

    .line 15
    invoke-direct {p2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 17
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/Rect;

    .line 28
    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsView;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 30
    iget-object p2, p2, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 34
    move-result p2

    .line 37
    const/4 p3, 0x0

    .line 38
    add-int/2addr p2, p3

    .line 39
    iget-object p4, p0, Lcom/android/systemui/biometrics/UdfpsView;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 40
    iget-object p4, p4, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 44
    move-result p4

    .line 47
    add-int/2addr p4, p3

    .line 48
    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 52
    if-eqz p1, :cond_1

    .line 54
    new-instance p2, Landroid/graphics/RectF;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/Rect;

    .line 58
    invoke-direct {p2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 63
    move-result-object p0

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    .line 67
    :cond_1
    :goto_0
    return-void
    .line 70
.end method

.method public final setAnimationViewController(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 2
    return-void
    .line 4
.end method

.method public final setDebugMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->debugMessage:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public final setOverlayParams(Lcom/android/settingslib/udfps/UdfpsOverlayParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 2
    return-void
    .line 4
.end method

.method public final setSensorRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/Rect;

    .line 2
    return-void
    .line 4
.end method

.method public final setUdfpsDisplayModeProvider(Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    .line 2
    return-void
    .line 4
.end method

.method public final setUseExpandedOverlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->useExpandedOverlay:Z

    .line 2
    return-void
    .line 4
.end method

.method public final unconfigureDisplay$1()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsView;->isDisplayConfigured:Z

    .line 5
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onDisplayUnconfigured()V

    .line 15
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 22
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsView;->mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    move-object v1, v0

    .line 29
    check-cast v1, Lcom/android/systemui/biometrics/UdfpsDisplayMode;

    .line 30
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 32
    iget-object v0, v0, Lcom/android/systemui/util/concurrency/ExecutionImpl;->mainLooper:Landroid/os/Looper;

    .line 34
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 36
    const-string v9, "disable"

    .line 39
    iget-object v10, v1, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->logger:Lcom/android/systemui/biometrics/UdfpsLogger;

    .line 41
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 46
    const-string v3, "UdfpsDisplayMode"

    .line 48
    iget-object v2, v10, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 50
    const/4 v6, 0x0

    .line 52
    const/16 v7, 0x8

    .line 53
    const/4 v8, 0x0

    .line 55
    move-object v4, v0

    .line 56
    move-object v5, v9

    .line 57
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 58
    iget-object v2, v1, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->currentRequest:Lcom/android/systemui/biometrics/Request;

    .line 61
    if-nez v2, :cond_1

    .line 63
    const-string v14, "disable | already disabled"

    .line 65
    sget-object v13, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 67
    const-string v12, "UdfpsDisplayMode"

    .line 69
    iget-object v11, v10, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 71
    const/4 v15, 0x0

    .line 73
    const/16 v16, 0x8

    .line 74
    const/16 v17, 0x0

    .line 76
    invoke-static/range {v11 .. v17}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 78
    goto :goto_1

    .line 81
    :cond_1
    const-string v3, "UdfpsDisplayMode.disable"

    .line 82
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 84
    :try_start_0
    iget-object v3, v1, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 87
    iget-object v3, v3, Lcom/android/systemui/biometrics/AuthController;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    .line 89
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    iget v2, v2, Lcom/android/systemui/biometrics/Request;->displayId:I

    .line 94
    invoke-interface {v3, v2}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;->onRequestDisabled(I)V

    .line 96
    const-string v5, "disable | removed the UDFPS refresh rate request"

    .line 99
    const-string v3, "UdfpsDisplayMode"

    .line 101
    iget-object v2, v10, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 103
    const/4 v6, 0x0

    .line 105
    const/16 v7, 0x8

    .line 106
    const/4 v8, 0x0

    .line 108
    move-object v4, v0

    .line 109
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    sget-object v2, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 115
    new-instance v3, Lcom/android/systemui/biometrics/UdfpsLogger$e$2;

    .line 117
    invoke-direct {v3, v9}, Lcom/android/systemui/biometrics/UdfpsLogger$e$2;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v4, "UdfpsDisplayMode"

    .line 122
    iget-object v5, v10, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 124
    invoke-virtual {v5, v4, v2, v3, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 126
    move-result-object v0

    .line 129
    invoke-virtual {v5, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 130
    :goto_0
    const/4 v0, 0x0

    .line 133
    iput-object v0, v1, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->currentRequest:Lcom/android/systemui/biometrics/Request;

    .line 134
    const-string v5, "disable | onDisabled is null"

    .line 136
    sget-object v4, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 138
    const-string v3, "UdfpsDisplayMode"

    .line 140
    iget-object v2, v10, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 142
    const/4 v6, 0x0

    .line 144
    const/16 v7, 0x8

    .line 145
    const/4 v8, 0x0

    .line 147
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 148
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 151
    :cond_2
    :goto_1
    return-void
    .line 154
.end method
