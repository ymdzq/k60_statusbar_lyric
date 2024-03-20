.class public Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;
.super Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DEFAULT_DIM_ANIM_DURATION:I = 0xc8

.field private static final DIM_LAYER:I = -0x80000000

.field private static final DIM_LAYER_BLUR_MAX:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeDimmer"


# instance fields
.field private mAlpha:F

.field private mBlurRadius:F

.field private mRelativeLayer:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->mRelativeLayer:Landroid/view/SurfaceControl;

    .line 5
    return-void
    .line 7
.end method

.method private createLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 4
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->TAG:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 13
    move-result-object v0

    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getParentSurface()Landroid/view/SurfaceControl;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 30
    move-result-object v0

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 36
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->getDimColor()[F

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 43
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mDisplayWidth:I

    .line 46
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mDisplayHeight:I

    .line 48
    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 50
    const/4 p0, 0x0

    .line 53
    invoke-virtual {p1, v0, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 54
    const/4 p0, 0x0

    .line 57
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 58
    return-object v0
    .line 61
.end method

.method private dim(IFI)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 14
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->mRelativeLayer:Landroid/view/SurfaceControl;

    .line 18
    invoke-virtual {v0, v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 27
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 34
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 37
    return-void
    .line 40
.end method

.method private getDimColor()[F
    .locals 4

    .line 1
    const/4 p0, 0x3

    .line 2
    new-array p0, p0, [F

    .line 3
    const/high16 v0, -0x1000000

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 7
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    const/high16 v2, 0x437f0000    # 255.0f

    .line 12
    div-float/2addr v1, v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput v1, p0, v3

    .line 16
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 18
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    div-float/2addr v1, v2

    .line 23
    const/4 v3, 0x1

    .line 24
    aput v1, p0, v3

    .line 25
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 27
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    div-float/2addr v0, v2

    .line 32
    const/4 v1, 0x2

    .line 33
    aput v0, p0, v1

    .line 34
    return-object p0
    .line 36
.end method

.method private getDimDuration()J
    .locals 2

    .line 1
    const-wide/16 v0, 0xc8

    .line 2
    return-wide v0
    .line 4
.end method

.method private relativeLayerValid()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->mRelativeLayer:Landroid/view/SurfaceControl;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method private startAnim(Landroid/view/SurfaceControl$Transaction;FF)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method private startDimEnter(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->startAnim(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 5
    return-void
    .line 8
.end method

.method private startDimExit(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->startAnim(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public attach(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->createLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->createLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public detach(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->detach(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->mRelativeLayer:Landroid/view/SurfaceControl;

    .line 6
    return-void
    .line 8
.end method

.method public dimAbove(F)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, 0x32

    .line 3
    invoke-direct {p0, v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->dim(IFI)V

    .line 5
    return-void
    .line 8
.end method

.method public dimBelow(FI)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->dim(IFI)V

    .line 3
    return-void
    .line 6
.end method

.method public forAllAnimators(Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onAnimationFinished(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onAnimationUpdate(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->relativeLayerValid()Z

    .line 2
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getDimAlpha()F

    .line 8
    move-result p2

    .line 11
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getDimBlur()F

    .line 12
    move-result p1

    .line 15
    iget p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->mAlpha:F

    .line 16
    cmpl-float p3, p3, p2

    .line 18
    if-nez p3, :cond_0

    .line 20
    iget p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->mBlurRadius:F

    .line 22
    cmpl-float p3, p3, p1

    .line 24
    if-nez p3, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->mAlpha:F

    .line 29
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->mBlurRadius:F

    .line 31
    float-to-int p1, p1

    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->dimBelow(FI)V

    .line 34
    :cond_1
    return-void
    .line 37
.end method

.method public onRootAnimationUpdate(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setAnimation(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V
    .locals 0

    .line 1
    const-string p0, "dimAlpha"

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 5
    move-result-object p0

    .line 8
    const-string p2, "dimBlur"

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 11
    return-void
    .line 14
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;->mRelativeLayer:Landroid/view/SurfaceControl;

    .line 2
    return-void
    .line 4
.end method

.method public startAnimation(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V
    .locals 0

    .line 1
    const-string p0, "dimAlpha"

    .line 2
    const/high16 p1, 0x3f000000    # 0.5f

    .line 4
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 6
    move-result-object p0

    .line 9
    const-string p1, "dimBlur"

    .line 10
    const/high16 p2, 0x42340000    # 45.0f

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 14
    return-void
    .line 17
.end method

.method public stopAnimation(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "animator_fullscreen_to_freeform_left"

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    const-string v0, "animator_fullscreen_to_freeform_right"

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    const-string v0, "animator_fullscreen_to_mini_left"

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    const-string v0, "animator_fullscreen_to_mini_right"

    .line 14
    if-ne p1, v0, :cond_1

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 18
    const-string p1, "dimAlpha"

    .line 20
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 23
    move-result-object p0

    .line 26
    const-string p1, "dimBlur"

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 29
    :cond_1
    return-void
.end method
