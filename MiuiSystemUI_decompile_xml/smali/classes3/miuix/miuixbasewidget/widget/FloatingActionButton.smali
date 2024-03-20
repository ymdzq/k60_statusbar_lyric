.class public Lmiuix/miuixbasewidget/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field public final mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

.field public mFabColor:I

.field public final mFabShadowColor:I

.field public mHasFabColor:Z

.field public final mHasFabShadowColor:Z

.field public final mIsShadowEnabled:Z

.field public final mShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

.field public mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    invoke-direct {v0}, Lmiuix/miuixbasewidget/widget/DropShadowConfig;-><init>()V

    .line 5
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetXDp:F

    const/high16 v1, 0x40c00000    # 6.0f

    .line 7
    iput v1, v0, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetYDp:F

    .line 8
    sget-object v0, Lmiuix/miuixbasewidget/R$styleable;->FloatingActionButton:[I

    const v1, 0x7f1406cf    # @style/Widget.FloatingActionButton

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0x9

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    const/4 p3, 0x6

    .line 10
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0604fa    # @color/miuix_appcompat_fab_color '@color/miuix_appcompat_fab_color_light'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 12
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    const/16 p1, 0x8

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabShadowColor:Z

    .line 14
    iget p3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabShadowColor:I

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    new-instance p1, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f081503    # @drawable/miuix_appcompat_fab_empty_holder 'res/drawable/miuix_appcompat_fab_empty_holder.xml'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;-><init>(Lmiuix/miuixbasewidget/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    .line 17
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 18
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 21
    :cond_1
    iput-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 22
    :goto_0
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 23
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 13
    const v1, 0x7f0604fc    # @color/miuix_appcompat_fab_color_light '@color/miuix_color_blue_light_primary_default'

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result v0

    .line 20
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 21
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 24
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 30
    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 32
    return-object p0
    .line 34
.end method


# virtual methods
.method public final createFabBackground()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 2
    new-instance v1, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;

    .line 4
    invoke-direct {v1, p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 9
    iget-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    .line 12
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 17
    iget-boolean v3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabShadowColor:Z

    .line 19
    if-eqz v3, :cond_0

    .line 21
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabShadowColor:I

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    iget v3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 26
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    .line 28
    move-result v4

    .line 31
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 32
    move-result v5

    .line 35
    add-int/lit8 v5, v5, -0x1e

    .line 36
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v2

    .line 41
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 42
    move-result v3

    .line 45
    const/16 v5, 0x19

    .line 46
    invoke-static {v5, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 48
    move-result v2

    .line 51
    :goto_0
    iput v2, v1, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowColor:I

    .line 52
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 54
    if-nez v1, :cond_3

    .line 56
    new-instance v1, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 58
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v2

    .line 63
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 64
    invoke-direct {v1, v2, v3}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;-><init>(Landroid/content/Context;Lmiuix/miuixbasewidget/widget/DropShadowConfig;)V

    .line 66
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 69
    goto :goto_1

    .line 71
    :cond_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 72
    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {v1, p0, v2}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->enableViewShadow(Landroid/view/View;Z)V

    .line 76
    :cond_2
    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 82
    move-result-object v1

    .line 85
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 86
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 91
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    .line 93
    filled-new-array {v0, v2}, [Landroid/graphics/drawable/Drawable;

    .line 95
    move-result-object v0

    .line 98
    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 99
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 102
    new-instance v2, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;

    .line 104
    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    .line 106
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 109
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 112
    move-result-object p0

    .line 115
    const/high16 v2, 0xd000000

    .line 116
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    .line 121
    filled-new-array {v1, v0}, [Landroid/graphics/drawable/Drawable;

    .line 123
    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 127
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 130
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 132
    sget-object v2, Landroid/widget/ImageView;->PRESSED_ENABLED_STATE_SET:[I

    .line 135
    invoke-virtual {v0, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 137
    sget-object v2, Landroid/widget/ImageView;->ENABLED_SELECTED_STATE_SET:[I

    .line 140
    invoke-virtual {v0, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 142
    sget-object p0, Landroid/widget/ImageView;->EMPTY_STATE_SET:[I

    .line 145
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 147
    return-object v0
    .line 150
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 10
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    iget-object v2, v0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 15
    iget-object v0, v0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 19
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 22
    return-void
    .line 25
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 12
    int-to-float v0, v0

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    mul-float/2addr v0, v1

    .line 17
    const/high16 v1, 0x43200000    # 160.0f

    .line 18
    div-float/2addr v0, v1

    .line 20
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mDropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 21
    invoke-virtual {p0, p1, v0, v1}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->updateShadowValues(Landroid/content/res/Configuration;FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    .line 10
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 14
    move-result v3

    .line 17
    sub-int/2addr v3, v0

    .line 18
    sub-int/2addr v3, v2

    .line 19
    div-int/lit8 v3, v3, 0x2

    .line 20
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mEmptyHolder:Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;

    .line 22
    mul-int/lit8 v3, v3, 0x2

    .line 24
    add-int v4, v0, v3

    .line 26
    add-int/2addr v3, v1

    .line 28
    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 32
    return-void
    .line 35
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 5
    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 9
    int-to-float p4, p4

    .line 11
    int-to-float p2, p2

    .line 12
    sub-float/2addr p4, p2

    .line 13
    int-to-float p2, p5

    .line 14
    int-to-float p3, p3

    .line 15
    sub-float/2addr p2, p3

    .line 16
    const/4 p3, 0x0

    .line 17
    invoke-virtual {p1, p3, p3, p4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mIsShadowEnabled:Z

    .line 21
    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 25
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p0, p2}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->enableViewShadow(Landroid/view/View;Z)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mShadowHelper:Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;

    .line 32
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p0, p2}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->enableViewShadow(Landroid/view/View;Z)V

    .line 35
    :cond_1
    :goto_0
    return-void
    .line 38
.end method

.method public final performClick()Z
    .locals 2

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    .line 2
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 4
    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 6
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    return-void
    .line 14
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 6
    if-eq v0, p1, :cond_1

    .line 8
    :cond_0
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mFabColor:I

    .line 10
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p1

    .line 15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_1
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 20
    return-void
    .line 22
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->mHasFabColor:Z

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 10
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 15
    :goto_0
    return-void
    .line 18
.end method
