.class public Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FilterSortTabView2ForegroundDrawable.java"


# static fields
.field private static final ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ALPHA_F:Ljava/lang/String; = "alphaF"

.field private static final HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final STATE_ACTIVATED:[I

.field private static final STATE_DRAG_HOVERED:[I

.field private static final STATE_HOVERED:[I

.field private static final STATE_HOVERED_ACTIVATED:[I

.field private static final STATE_PRESSED:[I

.field private static final TAG:Ljava/lang/String; = "StateTransitionDrawable"

.field private static final USE_FOLME:Z

.field private static final USE_SMOOTH_ROUND_RECT:Z

.field private static mIsCommonLiteStrategy:Ljava/lang/Boolean;


# instance fields
.field private mActivated:Z

.field private mActivatedAlpha:F

.field private mActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHovered:Z

.field private mHoveredActivatedAlpha:F

.field private mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHoveredAlpha:F

.field private mHoveredState:Lmiuix/animation/controller/AnimState;

.field private mNormalAlpha:F

.field private mNormalState:Lmiuix/animation/controller/AnimState;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPressed:Z

.field private mPressedAlpha:F

.field private mPressedState:Lmiuix/animation/controller/AnimState;

.field private mRadius:I

.field private final mRect:Landroid/graphics/RectF;

.field private mStyle:Lmiuix/animation/IStateStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x10100a7    # @android:attr/state_pressed

    .line 44
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_PRESSED:[I

    const v0, 0x1010369    # @android:attr/state_drag_hovered

    .line 45
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_DRAG_HOVERED:[I

    const v0, 0x1010367    # @android:attr/state_hovered

    const v1, 0x10102fe    # @android:attr/state_activated

    .line 46
    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_HOVERED_ACTIVATED:[I

    .line 48
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_HOVERED:[I

    .line 49
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_ACTIVATED:[I

    .line 66
    invoke-static {}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->isCommonLiteStrategy()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    .line 67
    invoke-static {}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->isCommonLiteStrategy()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_SMOOTH_ROUND_RECT:Z

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 86
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 87
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 88
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    sput-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 89
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 90
    sput-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 93
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 94
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 95
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 96
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 97
    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e800000    # 0.25f
    .end array-data

    :array_3
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method private calculatePath()V
    .locals 4

    .line 399
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 400
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    iget p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    int-to-float v2, p0

    int-to-float p0, p0

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 170
    sget-object p1, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 172
    :cond_0
    sget-object p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 174
    :goto_0
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_tintColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 175
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_tintRadius:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    .line 176
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_normalAlpha:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    .line 177
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_pressedAlpha:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedAlpha:F

    .line 178
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_hoveredAlpha:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    .line 179
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_activatedAlpha:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    .line 180
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->StateTransitionDrawable_hoveredActivatedAlpha:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    sget-boolean p1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz p1, :cond_1

    .line 184
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    float-to-double p2, p2

    const-string v0, "alphaF"

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 185
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedAlpha:F

    float-to-double p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    .line 186
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    float-to-double p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 187
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    float-to-double p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 188
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    float-to-double p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 189
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 190
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 192
    :cond_1
    iget p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    .line 194
    :goto_1
    sget-boolean p1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_SMOOTH_ROUND_RECT:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 195
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setSmoothCornerEnable(Z)V

    :cond_2
    return-void
.end method

.method private static isCommonLiteStrategy()Z
    .locals 1

    .line 435
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 437
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 437
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 441
    :cond_2
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private setSmoothCornerEnable(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 428
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "setSmoothCornerEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSmoothCornerEnabled failed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StateTransitionDrawable"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private toActivatedState()Z
    .locals 3

    .line 302
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 304
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 305
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 306
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 307
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 310
    :cond_0
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    .line 314
    :cond_1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    if-eqz v0, :cond_3

    .line 316
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 317
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 318
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 321
    :cond_2
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    .line 325
    :cond_3
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    if-eqz v0, :cond_4

    return v1

    .line 330
    :cond_4
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 331
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    .line 332
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 334
    :cond_5
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_2
    return v2
.end method

.method private toHoveredActivatedState()Z
    .locals 4

    .line 217
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 219
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 220
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 221
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 222
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 225
    :cond_0
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    .line 229
    :cond_1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    if-eqz v3, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_4

    .line 235
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 236
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 239
    :cond_3
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    .line 243
    :cond_4
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    if-eqz v0, :cond_6

    .line 245
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 246
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 249
    :cond_5
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_2
    return v2

    .line 254
    :cond_6
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 255
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 256
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_7

    .line 257
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    .line 259
    :cond_7
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_3
    return v2
.end method

.method private toHoveredState()Z
    .locals 3

    .line 265
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 267
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 268
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 269
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 270
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 273
    :cond_0
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    .line 277
    :cond_1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    if-eqz v0, :cond_4

    .line 278
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    if-eqz v0, :cond_3

    .line 280
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 283
    :cond_2
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    :cond_3
    return v1

    .line 291
    :cond_4
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 292
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 293
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    .line 294
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 296
    :cond_5
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_2
    return v2
.end method

.method private toNormalState()Z
    .locals 3

    .line 340
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 342
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 343
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 344
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 345
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    sget-object v2, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 348
    :cond_0
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_0
    return v1

    .line 352
    :cond_1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    if-eqz v0, :cond_3

    .line 354
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 355
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 356
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    sget-object v2, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 359
    :cond_2
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_1
    return v1

    .line 363
    :cond_3
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    if-eqz v0, :cond_5

    .line 365
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    .line 366
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    sget-object v2, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 369
    :cond_4
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method private toPressedState()Z
    .locals 4

    .line 200
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 205
    :cond_0
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    sget-object v3, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 208
    :cond_1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->setAlphaF(F)V

    :goto_0
    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPressed:Z

    .line 211
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mHovered:Z

    .line 212
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mActivated:Z

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 391
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_SMOOTH_ROUND_RECT:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getAlphaF()F
    .locals 1

    .line 124
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 164
    invoke-direct {p0, p1, p3, p4}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public isStateful()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 378
    sget-boolean v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {p0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 386
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->calculatePath()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 145
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_DRAG_HOVERED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_HOVERED_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toHoveredActivatedState()Z

    move-result p0

    return p0

    .line 151
    :cond_1
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_HOVERED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toHoveredState()Z

    move-result p0

    return p0

    .line 154
    :cond_2
    sget-object v0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->STATE_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 155
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toActivatedState()Z

    move-result p0

    return p0

    .line 157
    :cond_3
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toNormalState()Z

    move-result p0

    return p0

    .line 146
    :cond_4
    :goto_0
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->toPressedState()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public setAlphaF(F)V
    .locals 2

    .line 116
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 131
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    if-ne v0, p1, :cond_0

    return-void

    .line 134
    :cond_0
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/FilterSortTabView2ForegroundDrawable;->mRadius:I

    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
