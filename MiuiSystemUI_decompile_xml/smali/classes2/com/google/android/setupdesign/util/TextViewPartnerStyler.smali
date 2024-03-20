.class public abstract Lcom/google/android/setupdesign/util/TextViewPartnerStyler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 10
    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v2, v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 33
    iget-object v2, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 34
    if-eqz v2, :cond_2

    .line 36
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 38
    move-result-object v3

    .line 41
    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 42
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v3

    .line 51
    :try_start_0
    invoke-static {v3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 52
    move-result-object v4

    .line 55
    invoke-static {v4}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->findLayoutFromActivity(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 56
    move-result-object v4

    .line 59
    instance-of v5, v4, Lcom/google/android/setupdesign/GlifLayout;

    .line 60
    if-eqz v5, :cond_1

    .line 62
    check-cast v4, Lcom/google/android/setupdesign/GlifLayout;

    .line 64
    invoke-virtual {v4}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyDynamicColor()Z

    .line 66
    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    :cond_1
    const v4, 0x7f040746    # @attr/sucFullDynamicColor

    .line 71
    filled-new-array {v4}, [I

    .line 74
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 78
    move-result-object v3

    .line 81
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 82
    move-result v4

    .line 85
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    move v3, v4

    .line 89
    :goto_0
    if-nez v3, :cond_2

    .line 90
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 92
    move-result-object v3

    .line 95
    invoke-virtual {v3, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 96
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 102
    :cond_2
    iget-object v2, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 105
    if-eqz v2, :cond_3

    .line 107
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 109
    move-result-object v3

    .line 112
    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 113
    move-result v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 119
    move-result-object v3

    .line 122
    const/4 v4, 0x0

    .line 123
    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 124
    move-result v2

    .line 127
    cmpl-float v3, v2, v4

    .line 128
    if-lez v3, :cond_3

    .line 130
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    :cond_3
    iget-object v2, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 135
    if-eqz v2, :cond_4

    .line 137
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 139
    move-result-object v3

    .line 142
    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 143
    move-result v3

    .line 146
    if-eqz v3, :cond_4

    .line 147
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 149
    move-result-object v3

    .line 152
    invoke-virtual {v3, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 156
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 157
    move-result-object v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    :cond_4
    instance-of v2, p0, Lcom/google/android/setupdesign/view/RichTextView;

    .line 166
    if-eqz v2, :cond_5

    .line 168
    iget-object v2, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 170
    if-eqz v2, :cond_5

    .line 172
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 174
    move-result-object v3

    .line 177
    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 178
    move-result v3

    .line 181
    if-eqz v3, :cond_5

    .line 182
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 184
    move-result-object v3

    .line 187
    invoke-virtual {v3, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 191
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 192
    move-result-object v0

    .line 195
    if-eqz v0, :cond_5

    .line 196
    move-object v1, p0

    .line 198
    check-cast v1, Lcom/google/android/setupdesign/view/RichTextView;

    .line 199
    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/view/RichTextView;->setSpanTypeface(Landroid/graphics/Typeface;)V

    .line 201
    :cond_5
    invoke-static {p0, p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationVerticalMargins(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    .line 204
    iget p1, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    .line 207
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    return-void
    .line 212
.end method

.method public static applyPartnerCustomizationVerticalMargins(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginTopConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 2
    iget-object p1, p1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginBottomConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 4
    if-nez v0, :cond_0

    .line 6
    if-eqz p1, :cond_3

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v2

    .line 17
    instance-of v3, v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    if-eqz v3, :cond_3

    .line 20
    move-object v3, v2

    .line 22
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    const/4 v4, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 28
    move-result-object v5

    .line 31
    invoke-virtual {v5, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 32
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 38
    move-result-object v5

    .line 41
    invoke-virtual {v5, v1, v0, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 42
    move-result v0

    .line 45
    float-to-int v0, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 48
    :goto_0
    if-eqz p1, :cond_2

    .line 50
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 52
    move-result-object v5

    .line 55
    invoke-virtual {v5, p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 56
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 62
    move-result-object v5

    .line 65
    invoke-virtual {v5, v1, p1, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 66
    move-result p1

    .line 69
    float-to-int p1, p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget p1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 72
    :goto_1
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 74
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 76
    invoke-virtual {v3, v1, v0, v4, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_3
    return-void
    .line 84
.end method
