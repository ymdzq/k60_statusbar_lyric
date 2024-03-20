.class public Lmiuix/appcompat/app/AlphaBlendingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field public static final ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field public static final HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field public static final HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field public static final PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field public static final PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field public static final STATE_ACTIVATED:[I

.field public static final STATE_DRAG_HOVERED:[I

.field public static final STATE_HOVERED:[I

.field public static final STATE_HOVERED_ACTIVATED:[I

.field public static final STATE_PRESSED:[I

.field public static final STATE_SELECTED:[I

.field public static final USE_FOLME:Z

.field public static final USE_SMOOTH_ROUND_RECT:Z


# instance fields
.field public mActivated:Z

.field public mActivatedAlpha:F

.field public mActivatedState:Lmiuix/animation/controller/AnimState;

.field public mHovered:Z

.field public mHoveredActivatedAlpha:F

.field public mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

.field public mHoveredAlpha:F

.field public mHoveredState:Lmiuix/animation/controller/AnimState;

.field public mNormalAlpha:F

.field public mNormalState:Lmiuix/animation/controller/AnimState;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mPressed:Z

.field public mPressedAlpha:F

.field public mPressedState:Lmiuix/animation/controller/AnimState;

.field public mRadius:I

.field public final mRect:Landroid/graphics/RectF;

.field public mStyle:Lmiuix/animation/IStateStyle;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const v0, 0x10100a7    # @android:attr/state_pressed

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_PRESSED:[I

    .line 9
    const v0, 0x1010369    # @android:attr/state_drag_hovered

    .line 11
    filled-new-array {v0}, [I

    .line 14
    move-result-object v0

    .line 17
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_DRAG_HOVERED:[I

    .line 18
    const v0, 0x10100a1    # @android:attr/state_selected

    .line 20
    filled-new-array {v0}, [I

    .line 23
    move-result-object v0

    .line 26
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_SELECTED:[I

    .line 27
    const v0, 0x1010367    # @android:attr/state_hovered

    .line 29
    const v1, 0x10102fe    # @android:attr/state_activated

    .line 32
    filled-new-array {v0, v1}, [I

    .line 35
    move-result-object v2

    .line 38
    sput-object v2, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED_ACTIVATED:[I

    .line 39
    filled-new-array {v0}, [I

    .line 41
    move-result-object v0

    .line 44
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED:[I

    .line 45
    filled-new-array {v1}, [I

    .line 47
    move-result-object v0

    .line 50
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_ACTIVATED:[I

    .line 51
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    .line 53
    move-result v0

    .line 56
    xor-int/lit8 v0, v0, 0x1

    .line 57
    sput-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 59
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    .line 61
    move-result v1

    .line 64
    xor-int/lit8 v1, v1, 0x1

    .line 65
    sput-boolean v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_SMOOTH_ROUND_RECT:Z

    .line 67
    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 71
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 73
    const/4 v1, 0x2

    .line 76
    new-array v2, v1, [F

    .line 77
    fill-array-data v2, :array_0

    .line 79
    const/4 v3, -0x2

    .line 82
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 83
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 87
    move-result-object v0

    .line 90
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 91
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 93
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 95
    new-array v2, v1, [F

    .line 98
    fill-array-data v2, :array_1

    .line 100
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 103
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 107
    move-result-object v0

    .line 110
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 111
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 113
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 115
    new-array v2, v1, [F

    .line 118
    fill-array-data v2, :array_2

    .line 120
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 123
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 127
    move-result-object v0

    .line 130
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 131
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 133
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 135
    new-array v1, v1, [F

    .line 138
    fill-array-data v1, :array_3

    .line 140
    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 143
    move-result-object v1

    .line 146
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 147
    move-result-object v1

    .line 150
    sput-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 151
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 153
    sput-object v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 155
    goto :goto_0

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 158
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 159
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 161
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 163
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 165
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 167
    sput-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 169
    :goto_0
    return-void

    .line 171
    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3f19999a    # 0.6f
    .end array-data

    .line 172
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

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    .line 5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPath:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    .line 19
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 21
    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_SMOOTH_ROUND_RECT:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPath:Landroid/graphics/Path;

    .line 6
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    .line 14
    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    .line 16
    int-to-float v2, v1

    .line 18
    int-to-float v1, v1

    .line 19
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 22
    :goto_0
    return-void
    .line 25
.end method

.method public getAlphaF()F
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    .line 4
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    const/high16 v0, 0x437f0000    # 255.0f

    .line 9
    div-float/2addr p0, v0

    .line 11
    return p0
    .line 12
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2
    sget-object p2, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable:[I

    .line 5
    const/4 v0, 0x0

    .line 7
    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p4, p3, p2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 15
    move-result-object p1

    .line 18
    :goto_0
    const/4 p2, 0x5

    .line 19
    const/high16 p3, -0x1000000

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 22
    move-result p2

    .line 25
    const/4 p3, 0x6

    .line 26
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 27
    move-result p3

    .line 30
    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    .line 31
    const/4 p3, 0x3

    .line 33
    const/4 p4, 0x0

    .line 34
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 35
    move-result p3

    .line 38
    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    .line 39
    const/4 p3, 0x4

    .line 41
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 42
    move-result p3

    .line 45
    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    .line 46
    const/4 p3, 0x2

    .line 48
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 49
    move-result p3

    .line 52
    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    .line 53
    invoke-virtual {p1, v0, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 55
    move-result p3

    .line 58
    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    .line 59
    const/4 p3, 0x1

    .line 61
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 62
    move-result p3

    .line 65
    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 76
    if-eqz p1, :cond_1

    .line 78
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 80
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 82
    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    .line 85
    float-to-double p2, p2

    .line 87
    const-string p4, "alphaF"

    .line 88
    invoke-virtual {p1, p4, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 90
    move-result-object p1

    .line 93
    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 94
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 96
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 98
    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    .line 101
    float-to-double p2, p2

    .line 103
    invoke-virtual {p1, p4, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 104
    move-result-object p1

    .line 107
    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    .line 108
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 110
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 112
    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    .line 115
    float-to-double p2, p2

    .line 117
    invoke-virtual {p1, p4, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 118
    move-result-object p1

    .line 121
    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 122
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 124
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 126
    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    .line 129
    float-to-double p2, p2

    .line 131
    invoke-virtual {p1, p4, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 132
    move-result-object p1

    .line 135
    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 136
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 138
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 140
    iget p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    .line 143
    float-to-double p2, p2

    .line 145
    invoke-virtual {p1, p4, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 146
    move-result-object p1

    .line 149
    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 150
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 152
    move-result-object p1

    .line 155
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 156
    move-result-object p1

    .line 159
    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 160
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 162
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 164
    goto :goto_1

    .line 167
    :cond_1
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    .line 168
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 170
    :goto_1
    sget-boolean p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_SMOOTH_ROUND_RECT:Z

    .line 173
    if-eqz p0, :cond_2

    .line 175
    invoke-static {}, Lmiuix/smooth/SmoothCornerHelper;->setSmoothCornerEnable()V

    .line 177
    :cond_2
    return-void
    .line 180
.end method

.method public final isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final jumpToCurrentState()V
    .locals 1

    .line 1
    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 6
    invoke-interface {p0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPath:Landroid/graphics/Path;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPath:Landroid/graphics/Path;

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    .line 14
    iget p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    .line 16
    int-to-float p0, p0

    .line 18
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 19
    invoke-virtual {p1, v0, p0, p0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 21
    return-void
    .line 24
.end method

.method public final onStateChange([I)Z
    .locals 4

    .line 1
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_PRESSED:[I

    .line 2
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_1e

    .line 10
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_DRAG_HOVERED:[I

    .line 12
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_1e

    .line 18
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_SELECTED:[I

    .line 20
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    goto/16 :goto_4

    .line 28
    :cond_0
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED_ACTIVATED:[I

    .line 30
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_9

    .line 36
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 38
    if-eqz p1, :cond_2

    .line 40
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 42
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 44
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 46
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 48
    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 54
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 56
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 58
    move-result-object v0

    .line 61
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    .line 66
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 68
    goto :goto_0

    .line 71
    :cond_2
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 72
    if-eqz p1, :cond_3

    .line 74
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 76
    if-eqz v0, :cond_3

    .line 78
    move v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    if-eqz p1, :cond_5

    .line 82
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 84
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 86
    if-eqz p1, :cond_4

    .line 88
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 90
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 92
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 94
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 96
    move-result-object v0

    .line 99
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 100
    goto :goto_0

    .line 103
    :cond_4
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    .line 104
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 106
    goto :goto_0

    .line 109
    :cond_5
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 110
    if-eqz p1, :cond_7

    .line 112
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 114
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 116
    if-eqz p1, :cond_6

    .line 118
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 120
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 122
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 124
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 126
    move-result-object v0

    .line 129
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 130
    goto :goto_0

    .line 133
    :cond_6
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    .line 134
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 136
    goto :goto_0

    .line 139
    :cond_7
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 140
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 142
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 144
    if-eqz p1, :cond_8

    .line 146
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 148
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    .line 150
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 152
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 154
    move-result-object v0

    .line 157
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 158
    goto :goto_0

    .line 161
    :cond_8
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredActivatedAlpha:F

    .line 162
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 164
    :goto_0
    return v1

    .line 167
    :cond_9
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_HOVERED:[I

    .line 168
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 170
    move-result v0

    .line 173
    if-eqz v0, :cond_10

    .line 174
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 176
    if-eqz p1, :cond_b

    .line 178
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 180
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 182
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 184
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 186
    if-eqz p1, :cond_a

    .line 188
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 190
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 192
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 194
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 196
    move-result-object v0

    .line 199
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 200
    goto :goto_1

    .line 203
    :cond_a
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    .line 204
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 206
    goto :goto_1

    .line 209
    :cond_b
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 210
    if-eqz p1, :cond_e

    .line 212
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 214
    if-eqz p1, :cond_d

    .line 216
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 218
    if-eqz p1, :cond_c

    .line 220
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 222
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 224
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 226
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 228
    move-result-object v0

    .line 231
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 232
    goto :goto_1

    .line 235
    :cond_c
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    .line 236
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 238
    goto :goto_1

    .line 241
    :cond_d
    move v1, v2

    .line 242
    goto :goto_1

    .line 243
    :cond_e
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 244
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 246
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 248
    if-eqz p1, :cond_f

    .line 250
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 252
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    .line 254
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 256
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 258
    move-result-object v0

    .line 261
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 262
    goto :goto_1

    .line 265
    :cond_f
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    .line 266
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 268
    :goto_1
    return v1

    .line 271
    :cond_10
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->STATE_ACTIVATED:[I

    .line 272
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 274
    move-result p1

    .line 277
    if-eqz p1, :cond_17

    .line 278
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 280
    if-eqz p1, :cond_12

    .line 282
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 284
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 286
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 288
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 290
    if-eqz p1, :cond_11

    .line 292
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 294
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 296
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 298
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 300
    move-result-object v0

    .line 303
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 304
    goto :goto_2

    .line 307
    :cond_11
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    .line 308
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 310
    goto :goto_2

    .line 313
    :cond_12
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 314
    if-eqz p1, :cond_14

    .line 316
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 318
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 320
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 322
    if-eqz p1, :cond_13

    .line 324
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 326
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 328
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 330
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 332
    move-result-object v0

    .line 335
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 336
    goto :goto_2

    .line 339
    :cond_13
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    .line 340
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 342
    goto :goto_2

    .line 345
    :cond_14
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 346
    if-eqz p1, :cond_15

    .line 348
    move v1, v2

    .line 350
    goto :goto_2

    .line 351
    :cond_15
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 352
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 354
    if-eqz p1, :cond_16

    .line 356
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 358
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    .line 360
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 362
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 364
    move-result-object v0

    .line 367
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 368
    goto :goto_2

    .line 371
    :cond_16
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    .line 372
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 374
    :goto_2
    return v1

    .line 377
    :cond_17
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 378
    if-eqz p1, :cond_19

    .line 380
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 382
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 384
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 386
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 388
    if-eqz p1, :cond_18

    .line 390
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 392
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 394
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 396
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 398
    move-result-object v0

    .line 401
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 402
    goto :goto_3

    .line 405
    :cond_18
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    .line 406
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 408
    goto :goto_3

    .line 411
    :cond_19
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 412
    if-eqz p1, :cond_1b

    .line 414
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 416
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 418
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 420
    if-eqz p1, :cond_1a

    .line 422
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 424
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 426
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 428
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 430
    move-result-object v0

    .line 433
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 434
    goto :goto_3

    .line 437
    :cond_1a
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    .line 438
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 440
    goto :goto_3

    .line 443
    :cond_1b
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 444
    if-eqz p1, :cond_1d

    .line 446
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 448
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 450
    if-eqz p1, :cond_1c

    .line 452
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 454
    iget-object p0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    .line 456
    sget-object v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 458
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 460
    move-result-object v0

    .line 463
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 464
    goto :goto_3

    .line 467
    :cond_1c
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    .line 468
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 470
    goto :goto_3

    .line 473
    :cond_1d
    move v1, v2

    .line 474
    :goto_3
    return v1

    .line 475
    :cond_1e
    :goto_4
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 476
    if-eqz p1, :cond_1f

    .line 478
    move v1, v2

    .line 480
    goto :goto_6

    .line 481
    :cond_1f
    sget-boolean p1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    .line 482
    if-eqz p1, :cond_20

    .line 484
    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    .line 486
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    .line 488
    sget-object v3, Lmiuix/appcompat/app/AlphaBlendingDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 490
    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    .line 492
    move-result-object v3

    .line 495
    invoke-interface {p1, v0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 496
    goto :goto_5

    .line 499
    :cond_20
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    .line 500
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setAlphaF(F)V

    .line 502
    :goto_5
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressed:Z

    .line 505
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHovered:Z

    .line 507
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivated:Z

    .line 509
    :goto_6
    return v1
    .line 511
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setAlphaF(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    const/high16 v1, 0x437f0000    # 255.0f

    .line 4
    mul-float/2addr p1, v1

    .line 6
    float-to-int p1, p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    return-void
    .line 14
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
