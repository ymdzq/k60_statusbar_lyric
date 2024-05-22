.class Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;
.super Landroid/widget/ImageView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mGreenHalo:Z

.field public mInvertColor:Z

.field public mPaint:Landroid/graphics/Paint;

.field public mSupportHalo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mSupportHalo:Z

    .line 3
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mGreenHalo:Z

    .line 4
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mInvertColor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mSupportHalo:Z

    .line 7
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mGreenHalo:Z

    .line 8
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mInvertColor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mSupportHalo:Z

    .line 11
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mGreenHalo:Z

    .line 12
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mInvertColor:Z

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mSupportHalo:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mInvertColor:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mGreenHalo:Z

    .line 13
    if-eqz v0, :cond_2

    .line 15
    :cond_1
    return-void

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 22
    move-result v1

    .line 25
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 26
    sget v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v2

    .line 33
    div-int/lit8 v2, v2, 0x2

    .line 34
    div-int/lit8 v0, v0, 0x2

    .line 36
    int-to-float v0, v0

    .line 38
    div-int/lit8 v1, v1, 0x2

    .line 39
    int-to-float v1, v1

    .line 41
    int-to-float v2, v2

    .line 42
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mPaint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    return-void
    .line 48
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 14
    const v1, 0x7f050021    # @bool/config_enableFodCircleHalo 'true'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 18
    move-result v0

    .line 21
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mSupportHalo:Z

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    .line 24
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mPaint:Landroid/graphics/Paint;

    .line 29
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mSupportHalo:Z

    .line 35
    if-eqz v0, :cond_0

    .line 37
    const v0, 0x7f080ec1    # @drawable/gxzw_white_halo_light 'res/drawable/gxzw_white_halo_light.webp'

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    return-void
    .line 50
.end method

.method public final setInvertColorStatus(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mInvertColor:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mPaint:Landroid/graphics/Paint;

    .line 6
    const/4 v1, -0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->getHealthAppAuthen()Z

    .line 16
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mGreenHalo:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    sget p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 24
    const p1, 0x7f080e58    # @drawable/gxzw_green_halo_light 'res/drawable/gxzw_green_halo_light.webp'

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHighlightView;->mSupportHalo:Z

    .line 33
    if-eqz v0, :cond_2

    .line 35
    if-eqz p1, :cond_2

    .line 37
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    if-eqz v0, :cond_3

    .line 44
    sget p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 46
    const p1, 0x7f080ec1    # @drawable/gxzw_white_halo_light 'res/drawable/gxzw_white_halo_light.webp'

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 54
    return-void
    .line 57
.end method

.method public final setVisibility(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setVisibility: visibility = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "MiuiGxzwHighlightView"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    return-void
    .line 25
.end method
