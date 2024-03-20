.class public final Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field public mCollapseTitleLayout:Landroid/widget/LinearLayout;

.field public mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field public final mContext:Landroid/content/Context;

.field public mDefaultSubtitleSize:F

.field public mIsTitleDirty:Z

.field public mSubtitleSizeable:Z

.field public final mSubtitleStyle:I

.field public mTextColorTransitEnable:Z

.field public mTitleLength:F

.field public final mTitleStyle:I

.field public mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    .line 9
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    .line 12
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    .line 14
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 16
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    .line 18
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 20
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleStyle:I

    .line 22
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleStyle:I

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final getSubtitleAdjustSize()F
    .locals 7

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 12
    move-result v2

    .line 15
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 16
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 18
    move-result v3

    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 23
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    .line 25
    move-result v3

    .line 28
    sub-int/2addr v2, v3

    .line 29
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 30
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 32
    move-result v3

    .line 35
    sub-int/2addr v2, v3

    .line 36
    if-gtz v2, :cond_0

    .line 37
    return v0

    .line 39
    :cond_0
    new-instance v3, Landroid/text/TextPaint;

    .line 40
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 44
    move-result-object p0

    .line 47
    invoke-direct {v3, p0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 48
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 51
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 54
    move-result-object p0

    .line 57
    iget v4, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 58
    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 60
    sub-float/2addr v4, p0

    .line 62
    float-to-double v4, v4

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 64
    move-result-wide v4

    .line 67
    double-to-int p0, v4

    .line 68
    const/high16 v4, 0x40000000    # 2.0f

    .line 69
    div-float v4, v0, v4

    .line 71
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 73
    move-result-object v1

    .line 76
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 77
    :goto_0
    if-le p0, v2, :cond_1

    .line 79
    cmpl-float p0, v0, v4

    .line 81
    if-ltz p0, :cond_1

    .line 83
    sub-float/2addr v0, v1

    .line 85
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 86
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 89
    move-result-object p0

    .line 92
    iget v5, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 93
    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 95
    sub-float/2addr v5, p0

    .line 97
    float-to-double v5, v5

    .line 98
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 99
    move-result-wide v5

    .line 102
    double-to-int p0, v5

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    return v0
    .line 105
.end method

.method public final setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/16 p1, 0x8

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 17
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 19
    move-result v0

    .line 22
    if-eq v0, p1, :cond_1

    .line 23
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    :cond_1
    return-void
    .line 30
.end method
