.class public Lmiuix/appcompat/internal/widget/DialogButtonPanel;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mButtonHeight:I

.field public mButtonMarginHorizontal:I

.field public mButtonMarginVertical:I

.field public final mButtonTextSize:F

.field public mCurrentDensityDpi:I

.field public mForceVertical:Z

.field public mPanelPaddingHorizontal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41880000    # 17.0f

    .line 4
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonTextSize:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a61    # @dimen/miuix_appcompat_dialog_button_panel_horizontal_margin '28.0dp'

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    const p2, 0x7f070a5d    # @dimen/miuix_appcompat_dialog_btn_margin_horizontal '12.0dp'

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    const p2, 0x7f070a5e    # @dimen/miuix_appcompat_dialog_btn_margin_vertical '12.0dp'

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    const p2, 0x7f070a43    # @dimen/miuix_appcompat_button_height '50.0dp'

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    .line 5
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 7
    if-eq v0, p1, :cond_1

    .line 9
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    .line 11
    int-to-float p1, p1

    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    mul-float/2addr p1, v1

    .line 16
    int-to-float v0, v0

    .line 17
    div-float/2addr p1, v0

    .line 18
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 19
    int-to-float v0, v0

    .line 21
    mul-float/2addr v0, p1

    .line 22
    float-to-int v0, v0

    .line 23
    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 24
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 26
    int-to-float v0, v0

    .line 28
    mul-float/2addr v0, p1

    .line 29
    float-to-int v0, v0

    .line 30
    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 31
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    .line 33
    int-to-float v0, v0

    .line 35
    mul-float/2addr v0, p1

    .line 36
    float-to-int v0, v0

    .line 37
    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    .line 38
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 40
    int-to-float v0, v0

    .line 42
    mul-float/2addr v0, p1

    .line 43
    float-to-int p1, v0

    .line 44
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 47
    move-result p1

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-ge v0, p1, :cond_1

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 57
    instance-of v2, v1, Landroid/widget/TextView;

    .line 58
    if-eqz v2, :cond_0

    .line 60
    check-cast v1, Landroid/widget/TextView;

    .line 62
    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonTextSize:F

    .line 64
    const/4 v3, 0x2

    .line 66
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    return-void
    .line 73
.end method

.method public final onMeasure(II)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 6
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 11
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-boolean v1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mForceVertical:Z

    .line 16
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    goto :goto_3

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 23
    move-result v1

    .line 26
    add-int/lit8 v4, v1, -0x1

    .line 27
    move v5, v1

    .line 29
    :goto_0
    if-ltz v4, :cond_2

    .line 30
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v6

    .line 35
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 36
    move-result v6

    .line 39
    const/16 v7, 0x8

    .line 40
    if-ne v6, v7, :cond_1

    .line 42
    add-int/lit8 v5, v5, -0x1

    .line 44
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    const/4 v4, 0x2

    .line 49
    if-ge v5, v4, :cond_3

    .line 50
    goto :goto_4

    .line 52
    :cond_3
    const/4 v6, 0x3

    .line 53
    if-lt v5, v6, :cond_4

    .line 54
    goto :goto_3

    .line 56
    :cond_4
    iget v5, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 57
    sub-int/2addr v0, v5

    .line 59
    div-int/2addr v0, v4

    .line 60
    move v4, v3

    .line 61
    :goto_1
    if-ge v4, v1, :cond_7

    .line 62
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object v5

    .line 67
    instance-of v6, v5, Landroid/widget/TextView;

    .line 68
    if-eqz v6, :cond_6

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 72
    move-result v6

    .line 75
    if-nez v6, :cond_6

    .line 76
    check-cast v5, Landroid/widget/TextView;

    .line 78
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingStart()I

    .line 80
    move-result v6

    .line 83
    sub-int v6, v0, v6

    .line 84
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingEnd()I

    .line 86
    move-result v7

    .line 89
    sub-int/2addr v6, v7

    .line 90
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 91
    move-result-object v7

    .line 94
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 95
    move-result-object v5

    .line 98
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 99
    move-result-object v5

    .line 102
    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 103
    move-result v5

    .line 106
    float-to-int v5, v5

    .line 107
    if-le v5, v6, :cond_5

    .line 108
    move v5, v2

    .line 110
    goto :goto_2

    .line 111
    :cond_5
    move v5, v3

    .line 112
    :goto_2
    if-eqz v5, :cond_6

    .line 113
    :goto_3
    move v0, v2

    .line 115
    goto :goto_5

    .line 116
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 117
    goto :goto_1

    .line 119
    :cond_7
    :goto_4
    move v0, v3

    .line 120
    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 121
    move-result v1

    .line 124
    if-eqz v0, :cond_b

    .line 125
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 130
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 132
    move-result v4

    .line 135
    iget v5, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 136
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 138
    move-result v6

    .line 141
    invoke-virtual {p0, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 142
    move v0, v3

    .line 145
    move v4, v0

    .line 146
    :goto_6
    if-ge v0, v1, :cond_11

    .line 147
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 149
    move-result-object v5

    .line 152
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 153
    move-result v6

    .line 156
    if-nez v6, :cond_8

    .line 157
    move v6, v2

    .line 159
    goto :goto_7

    .line 160
    :cond_8
    move v6, v3

    .line 161
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    move-result-object v5

    .line 165
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    const/4 v7, -0x1

    .line 168
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 169
    iget v7, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 171
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 173
    const/4 v7, 0x0

    .line 175
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 176
    if-eqz v6, :cond_9

    .line 178
    move v7, v4

    .line 180
    goto :goto_8

    .line 181
    :cond_9
    move v7, v3

    .line 182
    :goto_8
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 183
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 185
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 187
    if-eqz v6, :cond_a

    .line 189
    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    .line 191
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 193
    goto :goto_6

    .line 195
    :cond_b
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 196
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 201
    move-result v4

    .line 204
    iget v5, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    .line 205
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 207
    move-result v6

    .line 210
    invoke-virtual {p0, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 214
    move-result v0

    .line 217
    if-ne v0, v2, :cond_c

    .line 218
    move v0, v2

    .line 220
    goto :goto_9

    .line 221
    :cond_c
    move v0, v3

    .line 222
    :goto_9
    move v4, v3

    .line 223
    move v5, v4

    .line 224
    :goto_a
    if-ge v4, v1, :cond_11

    .line 225
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 227
    move-result-object v6

    .line 230
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 231
    move-result v7

    .line 234
    if-nez v7, :cond_d

    .line 235
    move v7, v2

    .line 237
    goto :goto_b

    .line 238
    :cond_d
    move v7, v3

    .line 239
    :goto_b
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 240
    move-result-object v6

    .line 243
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 246
    iget v8, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonHeight:I

    .line 248
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 250
    const/high16 v8, 0x3f800000    # 1.0f

    .line 252
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 254
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 256
    if-eqz v7, :cond_f

    .line 258
    if-eqz v0, :cond_e

    .line 260
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 262
    goto :goto_c

    .line 264
    :cond_e
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 265
    goto :goto_c

    .line 267
    :cond_f
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 268
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 270
    :goto_c
    if-eqz v7, :cond_10

    .line 272
    iget v5, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    .line 274
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 276
    goto :goto_a

    .line 278
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 279
    return-void
    .line 282
.end method

.method public setForceVertical(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mForceVertical:Z

    .line 2
    return-void
    .line 4
.end method
