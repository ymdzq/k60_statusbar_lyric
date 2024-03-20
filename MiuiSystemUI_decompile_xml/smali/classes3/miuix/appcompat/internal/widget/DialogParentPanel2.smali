.class public Lmiuix/appcompat/internal/widget/DialogParentPanel2;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-direct {p3, p1, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    return-void
.end method


# virtual methods
.method public final notifyConfigurationChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 2
    iget-object v1, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 4
    iget-object v0, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 6
    invoke-static {v1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    move-result-object v1

    .line 18
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 19
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 21
    int-to-float v0, v0

    .line 23
    div-float/2addr v0, v1

    .line 24
    float-to-int v0, v0

    .line 25
    iget-object p0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 26
    iget v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 28
    if-eq v1, v0, :cond_0

    .line 30
    const v1, 0x7f0408c6    # @attr/windowFixedWidthMinor

    .line 32
    iget-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 37
    move-result-object v1

    .line 40
    iput-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 41
    const v1, 0x7f0408c3    # @attr/windowFixedHeightMajor

    .line 43
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 46
    move-result-object v1

    .line 49
    iput-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 50
    const v1, 0x7f0408c5    # @attr/windowFixedWidthMajor

    .line 52
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 55
    move-result-object v1

    .line 58
    iput-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 59
    const v1, 0x7f0408c4    # @attr/windowFixedHeightMinor

    .line 61
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 64
    move-result-object v1

    .line 67
    iput-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 68
    const v1, 0x7f0408cc    # @attr/windowMaxWidthMinor

    .line 70
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 73
    move-result-object v1

    .line 76
    iput-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 77
    const v1, 0x7f0408cb    # @attr/windowMaxWidthMajor

    .line 79
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 82
    move-result-object v1

    .line 85
    iput-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 86
    const v1, 0x7f0408ca    # @attr/windowMaxHeightMinor

    .line 88
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 91
    move-result-object v1

    .line 94
    iput-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 95
    const v1, 0x7f0408c9    # @attr/windowMaxHeightMajor

    .line 97
    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 100
    move-result-object v1

    .line 103
    iput-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 104
    invoke-static {v2}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 106
    move-result v1

    .line 109
    iput-boolean v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    .line 110
    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 112
    :cond_0
    return-void
    .line 114
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->notifyConfigurationChanged()V

    .line 5
    return-void
    .line 8
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->notifyConfigurationChanged()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 5
    const/4 v2, 0x1

    .line 7
    iget-object v3, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 8
    iget-object v4, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 10
    iget-object v5, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 12
    iget-object v6, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 14
    move v1, p1

    .line 16
    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 17
    move-result p1

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 21
    const/4 v2, 0x0

    .line 23
    iget-object v3, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 24
    iget-object v4, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 26
    iget-object v5, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 28
    iget-object v6, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 30
    move v1, p2

    .line 32
    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 33
    move-result p2

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 37
    return-void
    .line 40
.end method
