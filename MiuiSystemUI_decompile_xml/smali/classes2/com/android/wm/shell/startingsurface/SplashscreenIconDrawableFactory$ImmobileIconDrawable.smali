.class public Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sMask:Landroid/graphics/Path;


# instance fields
.field public final synthetic $r8$classId:I

.field public mIconBitmap:Ljava/lang/Object;

.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402a6    # @android:string/config_wearSysUiPackage

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->sMask:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    sget-object v1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->sMask:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 11
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mIconBitmap:Ljava/lang/Object;

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mPaint:Landroid/graphics/Paint;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mMatrix:Landroid/graphics/Matrix;

    if-eqz p4, :cond_0

    .line 4
    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p5, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    int-to-float p3, p3

    int-to-float p4, p2

    div-float/2addr p3, p4

    .line 5
    invoke-virtual {v1, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 6
    new-instance p3, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable$$ExternalSyntheticLambda0;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p5, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mIconBitmap:Ljava/lang/Object;

    .line 11
    move-object v2, v1

    .line 13
    check-cast v2, Landroid/graphics/Bitmap;

    .line 14
    if-eqz v2, :cond_0

    .line 16
    check-cast v1, Landroid/graphics/Bitmap;

    .line 18
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p1, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 28
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mIconBitmap:Ljava/lang/Object;

    .line 36
    check-cast v0, Landroid/graphics/Path;

    .line 38
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mIconBitmap:Ljava/lang/Object;

    .line 47
    check-cast p0, Landroid/graphics/Path;

    .line 49
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 51
    :cond_1
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 56
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 18
    :goto_0
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 22
.end method

.method public final preDrawIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "preDrawIcon"

    .line 5
    const-wide/16 v2, 0x20

    .line 7
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-static {p2, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 14
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mIconBitmap:Ljava/lang/Object;

    .line 18
    new-instance v1, Landroid/graphics/Canvas;

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mIconBitmap:Ljava/lang/Object;

    .line 22
    check-cast p0, Landroid/graphics/Bitmap;

    .line 24
    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 26
    const/4 p0, 0x0

    .line 29
    invoke-virtual {p1, p0, p0, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 30
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 36
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
    .line 43
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    return-void

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    :cond_0
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 18
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateLayerBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 4
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    const/high16 v2, 0x42c80000    # 100.0f

    .line 9
    div-float/2addr v1, v2

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    div-float/2addr p1, v2

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 18
    sget-object p1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->sMask:Landroid/graphics/Path;

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->mIconBitmap:Ljava/lang/Object;

    .line 25
    check-cast p0, Landroid/graphics/Path;

    .line 27
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 29
    return-void
.end method
