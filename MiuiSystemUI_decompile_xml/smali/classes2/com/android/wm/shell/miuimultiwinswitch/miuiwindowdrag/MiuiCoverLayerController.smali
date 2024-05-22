.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiCoverLayerController"


# instance fields
.field private isAddedShadow:Z

.field private mBlurSnapShotLayer:Landroid/view/SurfaceControl;

.field private mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

.field private mShapeLayer:Landroid/view/SurfaceControl;

.field private mShapeLayerHeight:I

.field private mShapeLayerWidth:I

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 5
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 10
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 12
    invoke-direct {v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public createBlurSnapshotSurface(Landroid/content/Context;IILandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "createBlurSnapshotSurface mBlurSnapShotLayer is not null!"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 17
    :cond_0
    new-instance v0, Landroid/view/SurfaceSession;

    .line 20
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 22
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    .line 25
    invoke-direct {v1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 27
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 30
    move-result-object v0

    .line 33
    const-string v1, "blurSnapshot"

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {v0, p2, p3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 44
    move-result-object p2

    .line 47
    const/4 p3, -0x3

    .line 48
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 49
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 53
    move-result-object p2

    .line 56
    const-string p3, "neutral12"

    .line 57
    const-string v0, "neutral97"

    .line 59
    invoke-static {p1, p4, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getBitmapUiModeColor(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-result p1

    .line 64
    const/4 p3, 0x3

    .line 65
    new-array p3, p3, [F

    .line 66
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 68
    move-result p4

    .line 71
    int-to-float p4, p4

    .line 72
    const/high16 v0, 0x437f0000    # 255.0f

    .line 73
    div-float/2addr p4, v0

    .line 75
    const/4 v1, 0x0

    .line 76
    aput p4, p3, v1

    .line 77
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 79
    move-result p4

    .line 82
    int-to-float p4, p4

    .line 83
    div-float/2addr p4, v0

    .line 84
    const/4 v1, 0x1

    .line 85
    aput p4, p3, v1

    .line 86
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 88
    move-result p1

    .line 91
    int-to-float p1, p1

    .line 92
    div-float/2addr p1, v0

    .line 93
    const/4 p4, 0x2

    .line 94
    aput p1, p3, p4

    .line 95
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 97
    const/4 p4, 0x0

    .line 99
    invoke-virtual {p1, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 100
    move-result-object p1

    .line 103
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 104
    move-result-object p1

    .line 107
    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 108
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 112
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 115
    return-void
    .line 117
.end method

.method public createCoverLayer(Landroid/content/Context;IIIILandroid/graphics/Bitmap;IZZ)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "createCoverLayer caller="

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move v2, p2

    .line 27
    move v3, p3

    .line 28
    move-object v5, p6

    .line 29
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->createBlurSnapshotSurface(Landroid/content/Context;IILandroid/graphics/Bitmap;)V

    .line 30
    move-object v2, p0

    .line 33
    move v3, p4

    .line 34
    move v4, p5

    .line 35
    move/from16 v6, p7

    .line 36
    move/from16 v7, p8

    .line 38
    move/from16 v8, p9

    .line 40
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->createShapeSurface(IILandroid/graphics/Bitmap;IZZ)V

    .line 42
    return-void
    .line 45
.end method

.method public createShapeSurface(IILandroid/graphics/Bitmap;IZZ)V
    .locals 9

    .line 1
    if-lez p1, :cond_1

    .line 2
    if-lez p2, :cond_1

    .line 4
    if-eqz p3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->TAG:Ljava/lang/String;

    .line 12
    const-string v1, "createShapeSurface mShapeLayer is not null!"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 23
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayerWidth:I

    .line 26
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayerHeight:I

    .line 28
    new-instance v0, Landroid/view/SurfaceSession;

    .line 30
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 32
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    .line 35
    invoke-direct {v1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 37
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 40
    move-result-object v0

    .line 43
    const-string/jumbo v1, "shape"

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 55
    move-result-object v0

    .line 58
    const/4 v1, -0x3

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 60
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 64
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 70
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 73
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 77
    const/4 v2, 0x1

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 80
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 84
    new-instance v5, Landroid/view/Surface;

    .line 87
    invoke-direct {v5}, Landroid/view/Surface;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 92
    invoke-virtual {v5, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 94
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 97
    move-object v2, p3

    .line 99
    move v3, p4

    .line 100
    move v4, p5

    .line 101
    move v6, p1

    .line 102
    move v7, p2

    .line 103
    move v8, p6

    .line 104
    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->init(Landroid/graphics/Bitmap;IZLandroid/view/Surface;IIZ)V

    .line 105
    :cond_1
    return-void
    .line 108
.end method

.method public drawShapeCoverContent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->drawContent()V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public getBlurSnapShotLayer()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public getShapeContentAnimInfo()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->getTypeAnimInfo()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 28
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public getShapeLayer()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public getShapeTypeAnimInfo(IZLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->getTypeInfo(IZLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public reShadowForSnapShotLayer(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->isAddedShadow:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->isAddedShadow:Z

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 20
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 25
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->resetShadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V

    .line 27
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method public releaseCoverLayer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->TAG:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "releaseCoverLayer caller="

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 45
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 59
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 64
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 66
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 69
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 74
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->release()V

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 82
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 84
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->isAddedShadow:Z

    .line 87
    :cond_1
    return-void
    .line 89
.end method

.method public setCornerRadius(Landroid/view/SurfaceControl$Transaction;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    if-eqz p7, :cond_0

    .line 22
    invoke-virtual {p7}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    const/high16 v1, 0x40000000    # 2.0f

    .line 29
    invoke-static {v0, p4, v1, p2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 31
    move-result v0

    .line 34
    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    .line 35
    move-result p7

    .line 38
    int-to-float p7, p7

    .line 39
    invoke-static {p7, p5, v1, p3}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 40
    move-result p7

    .line 43
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 44
    invoke-virtual {p1, v2, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 46
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 50
    invoke-virtual {p1, p2, p4, p5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 52
    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 56
    invoke-virtual {p1, p2, p6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 58
    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 62
    iget p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayerWidth:I

    .line 64
    int-to-float p3, p3

    .line 66
    div-float/2addr p3, v1

    .line 67
    sub-float/2addr v0, p3

    .line 68
    iget p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayerHeight:I

    .line 69
    int-to-float p3, p3

    .line 71
    div-float/2addr p3, v1

    .line 72
    sub-float/2addr p7, p3

    .line 73
    invoke-virtual {p1, p2, v0, p7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 74
    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 78
    invoke-virtual {p1, p0, p6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 80
    :cond_0
    return-void
    .line 83
.end method

.method public setShadowForSnapShotLayer(Landroid/content/Context;F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->isAddedShadow:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->isAddedShadow:Z

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 20
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 25
    invoke-static {p1, v0, p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->setCoverLayerShadow(Landroid/content/Context;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V

    .line 27
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method public setShapeSwitchToType(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mMiuiMultiWinShapeCover:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setType(IZ)V

    .line 4
    return-void
    .line 7
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl$Transaction;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mShapeLayer:Landroid/view/SurfaceControl;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->mBlurSnapShotLayer:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 24
    :cond_0
    return-void
    .line 27
.end method
