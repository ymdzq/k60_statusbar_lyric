.class public Lmiuix/appcompat/internal/widget/DialogButtonPanel;
.super Landroid/widget/LinearLayout;
.source "DialogButtonPanel.java"


# instance fields
.field private mButtonHeight:I

.field private mButtonMarginHorizontal:I

.field private mButtonMarginVertical:I

.field private mButtonTextSize:F

.field private mCurrentDensityDpi:I

.field private mForceVertical:Z

.field private mLastDensityDpi:I

.field private mPanelPaddingHorizontal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41880000    # 17.0f

    .line 31
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonTextSize:F

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 44
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_button_panel_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 45
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_btn_margin_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 46
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_btn_margin_vertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    .line 47
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_button_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 48
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mLastDensityDpi:I

    return-void
.end method

.method private handleButtonLayout(I)V
    .locals 8

    .line 58
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isVerticalNeeded(I)Z

    move-result p1

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    iget p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 63
    invoke-virtual {p0, p1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move p1, v2

    move v3, p1

    :goto_0
    if-ge p1, v0, :cond_8

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v2

    .line 69
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    .line 70
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 71
    iget v6, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, 0x0

    .line 72
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz v5, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    move v6, v2

    .line 73
    :goto_2
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 74
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-eqz v5, :cond_2

    .line 75
    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    iget p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 81
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 80
    invoke-virtual {p0, p1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 82
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    move v3, v2

    move v4, v3

    :goto_3
    if-ge v3, v0, :cond_8

    .line 85
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v2

    .line 87
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 89
    iget v7, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v7, 0x3f800000    # 1.0f

    .line 90
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 91
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v6, :cond_6

    if-eqz p1, :cond_5

    .line 94
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    .line 96
    :cond_5
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    .line 99
    :cond_6
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_5
    if-eqz v6, :cond_7

    .line 101
    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private isEllipsized(Landroid/widget/TextView;I)Z
    .locals 0

    .line 131
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p0

    sub-int/2addr p2, p0

    .line 132
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    if-le p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVerticalNeeded(I)Z
    .locals 6

    .line 107
    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mForceVertical:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 113
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    const/4 v4, 0x0

    if-ge v3, v2, :cond_3

    return v4

    :cond_3
    const/4 v5, 0x3

    if-lt v3, v5, :cond_4

    return v1

    .line 119
    :cond_4
    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v2

    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_6

    .line 121
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 122
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    check-cast v3, Landroid/widget/TextView;

    .line 123
    invoke-direct {p0, v3, p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isEllipsized(Landroid/widget/TextView;I)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v4
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 142
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mLastDensityDpi:I

    .line 144
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_1

    .line 145
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 147
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 148
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 149
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    .line 150
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 154
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 155
    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonTextSize:F

    invoke-static {v1, v2}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->handleButtonLayout(I)V

    .line 54
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setForceVertical(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mForceVertical:Z

    return-void
.end method
