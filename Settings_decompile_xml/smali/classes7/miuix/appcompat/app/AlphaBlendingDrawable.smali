.class public Lmiuix/appcompat/app/AlphaBlendingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlphaBlendingDrawable.java"


# static fields
.field private static final ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final STATE_ACTIVATED:[I

.field private static final STATE_DRAG_HOVERED:[I

.field private static final STATE_HOVERED:[I

.field private static final STATE_HOVERED_ACTIVATED:[I

.field private static final STATE_PRESSED:[I

.field private static final STATE_SELECTED:[I

.field private static final USE_FOLME:Z


# instance fields
.field private mActivated:Z

.field private mActivatedAlpha:F

.field private mActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHovered:Z

.field private mHoveredActivatedAlpha:F

.field private mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHoveredAlpha:F

.field private mHoveredState:Lmiuix/animation/controller/AnimState;

.field private mInsetB:I

.field private mInsetL:I

.field private mInsetR:I

.field private mInsetT:I

.field private mNormalAlpha:F

.field private mNormalState:Lmiuix/animation/controller/AnimState;

.field private final mPaint:Landroid/graphics/Paint;

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

    .line 41
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_PRESSED:[I

    const v0, 0x1010369    # @android:attr/state_drag_hovered

    .line 42
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_DRAG_HOVERED:[I

    const v0, 0x10100a1    # @android:attr/state_selected

    .line 43
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_SELECTED:[I

    const v0, 0x1010367    # @android:attr/state_hovered

    const v1, 0x10102fe    # @android:attr/state_activated

    .line 44
    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED_ACTIVATED:[I

    .line 46
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED:[I

    .line 47
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_ACTIVATED:[I

    .line 64
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 84
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

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 85
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 86
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 87
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    sput-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 88
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 89
    sput-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 92
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 93
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 94
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 95
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 96
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    :goto_0
    return-void

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

    .line 104
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 178
    sget-object p1, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 180
    :cond_0
    sget-object p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 182
    :goto_0
    sget p2, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_tintColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 183
    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_tintRadius:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    .line 184
    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_normalAlpha:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    .line 185
    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_pressedAlpha:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    .line 186
    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_hoveredAlpha:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    .line 187
    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_activatedAlpha:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    .line 188
    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_hoveredActivatedAlpha:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    .line 189
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz p1, :cond_1

    .line 192
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    float-to-double p2, p2

    const-string v0, "alphaF"

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 193
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    float-to-double p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    .line 194
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    float-to-double p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 195
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    float-to-double p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 196
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    float-to-double p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 197
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 198
    iget-object p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 200
    :cond_1
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_1
    const/4 p1, 0x1

    .line 202
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setSmoothCornerEnable(Z)V

    return-void
.end method

.method private setSmoothCornerEnable(Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 427
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setDrawableSmoothCornerEnable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private toActivatedState()Z
    .locals 3

    .line 308
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 310
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 311
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 312
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 313
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 316
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    .line 320
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    if-eqz v0, :cond_3

    .line 322
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 323
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 324
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 327
    :cond_2
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    .line 331
    :cond_3
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v0, :cond_4

    return v1

    .line 336
    :cond_4
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 337
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    .line 338
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 340
    :cond_5
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_2
    return v2
.end method

.method private toHoveredActivatedState()Z
    .locals 4

    .line 223
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 225
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 226
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 227
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 228
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 231
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    .line 235
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v3, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_4

    .line 241
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 242
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 245
    :cond_3
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    .line 249
    :cond_4
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v0, :cond_6

    .line 251
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 252
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    .line 253
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 255
    :cond_5
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_2
    return v2

    .line 260
    :cond_6
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 261
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 262
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_7

    .line 263
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    .line 265
    :cond_7
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_3
    return v2
.end method

.method private toHoveredState()Z
    .locals 3

    .line 271
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 273
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 274
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 275
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 276
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 279
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    .line 283
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    if-eqz v0, :cond_4

    .line 284
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v0, :cond_3

    .line 286
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 289
    :cond_2
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    :cond_3
    return v1

    .line 297
    :cond_4
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 298
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 299
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    .line 300
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 302
    :cond_5
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_2
    return v2
.end method

.method private toNormalState()Z
    .locals 3

    .line 346
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 348
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 349
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 350
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 351
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    sget-object v2, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 354
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_0
    return v1

    .line 358
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    if-eqz v0, :cond_3

    .line 360
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 361
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 362
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    sget-object v2, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 365
    :cond_2
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_1
    return v1

    .line 369
    :cond_3
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    if-eqz v0, :cond_5

    .line 371
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 372
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    sget-object v2, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 375
    :cond_4
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method private toPressedState()Z
    .locals 4

    .line 206
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 211
    :cond_0
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    sget-object v3, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 214
    :cond_1
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    :goto_0
    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 217
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 218
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 400
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAlphaF()F
    .locals 1

    .line 123
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

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

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 172
    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

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

    .line 384
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {p0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 391
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 392
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetL:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 393
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 394
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetR:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 395
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetB:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 151
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_DRAG_HOVERED:[I

    .line 152
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_SELECTED:[I

    .line 153
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toHoveredActivatedState()Z

    move-result p0

    return p0

    .line 159
    :cond_1
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toHoveredState()Z

    move-result p0

    return p0

    .line 162
    :cond_2
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 163
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toActivatedState()Z

    move-result p0

    return p0

    .line 165
    :cond_3
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toNormalState()Z

    move-result p0

    return p0

    .line 154
    :cond_4
    :goto_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->toPressedState()Z

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

    .line 115
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setInset(IIII)V
    .locals 0

    .line 138
    iput p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetL:I

    .line 139
    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetT:I

    .line 140
    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetR:I

    .line 141
    iput p4, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetB:I

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 130
    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    if-ne v0, p1, :cond_0

    return-void

    .line 133
    :cond_0
    iput p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    .line 134
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
