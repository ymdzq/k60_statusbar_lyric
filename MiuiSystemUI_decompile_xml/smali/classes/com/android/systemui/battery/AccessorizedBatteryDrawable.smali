.class public final Lcom/android/systemui/battery/AccessorizedBatteryDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final context:Landroid/content/Context;

.field public density:F

.field public final dualTone:Z

.field public final shieldPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->context:Landroid/content/Context;

    .line 10
    new-instance p2, Landroid/graphics/Path;

    .line 12
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Path;

    .line 17
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    .line 22
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    move-result-object v0

    .line 34
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 35
    iput v0, p0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->density:F

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v0

    .line 42
    const v1, 0x111003f    # @android:bool/config_batterymeterDualTone

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 46
    move-result v0

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->dualTone:Z

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    .line 52
    const/4 v1, 0x1

    .line 54
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 55
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    const/high16 v2, 0x40c00000    # 6.0f

    .line 62
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 67
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 69
    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 77
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    .line 82
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 84
    const v2, -0xff01

    .line 87
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 93
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 98
    iput-object v0, p0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->shieldPaint:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object p0

    .line 106
    const p1, 0x7f1302c6    # @string/config_batterymeterShieldPath 'M5 0L0 1.88V6.19C0 9.35 2.13 12.29 5 13.01C7.87 12.29 10 9.35 10 6.19V1.88L5 0Z'

    .line 107
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 113
    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 114
    move-result-object p0

    .line 117
    invoke-virtual {p2, p0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 118
    return-void
    .line 121
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9
    return-void
    .line 12
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    const/high16 v0, 0x41a00000    # 20.0f

    .line 2
    iget p0, p0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->density:F

    .line 4
    mul-float/2addr v0, p0

    .line 6
    float-to-int p0, v0

    .line 7
    return p0
    .line 8
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    const/high16 v0, 0x41400000    # 12.0f

    .line 2
    iget p0, p0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->density:F

    .line 4
    mul-float/2addr v0, p0

    .line 6
    float-to-int p0, v0

    .line 7
    return p0
    .line 8
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 16
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 21
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 32
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 34
    float-to-int v0, v0

    .line 36
    add-int/2addr v0, v2

    .line 37
    float-to-int v1, v1

    .line 38
    add-int/2addr v1, p1

    .line 39
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    :cond_1
    :goto_0
    return-void
    .line 43
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 2
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/battery/AccessorizedBatteryDrawable;->shieldPaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 15
    return-void
    .line 18
.end method
