.class public final Lcom/google/android/setupcompat/template/FooterBarMixin;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field final applyDynamicColor:Z

.field final applyPartnerResources:Z

.field public buttonContainer:Landroid/widget/LinearLayout;

.field public final context:Landroid/content/Context;

.field defaultPadding:I

.field public footerBarPaddingBottom:I

.field footerBarPaddingEnd:I

.field footerBarPaddingStart:I

.field public footerBarPaddingTop:I

.field public final footerBarPrimaryBackgroundColor:I

.field public final footerBarSecondaryBackgroundColor:I

.field final footerButtonAlignEnd:Z

.field public final footerStub:Landroid/view/ViewStub;

.field public isSecondaryButtonInPrimaryStyle:Z

.field public final metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

.field public primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public primaryButtonId:I

.field public primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

.field public secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public secondaryButtonId:I

.field public secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

.field final useFullDynamicColor:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    .line 6
    new-instance v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 8
    invoke-direct {v1}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 13
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 18
    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 19
    const v3, 0x7f0a0903    # @id/suc_layout_footer

    .line 21
    invoke-virtual {p1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 24
    move-result-object v3

    .line 27
    check-cast v3, Landroid/view/ViewStub;

    .line 28
    iput-object v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    .line 30
    sget-object v3, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    .line 32
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 34
    instance-of v3, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 37
    const/4 v4, 0x1

    .line 39
    if-eqz v3, :cond_0

    .line 40
    move-object v5, p1

    .line 42
    check-cast v5, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 43
    invoke-virtual {v5}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 45
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    move v5, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v5, v0

    .line 53
    :goto_0
    iput-boolean v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    .line 54
    if-eqz v3, :cond_1

    .line 56
    move-object v5, p1

    .line 58
    check-cast v5, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 59
    invoke-virtual {v5}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyDynamicColor()Z

    .line 61
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    move v5, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v5, v0

    .line 69
    :goto_1
    iput-boolean v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    .line 70
    if-eqz v3, :cond_2

    .line 72
    check-cast p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColor()Z

    .line 76
    move-result p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    goto :goto_2

    .line 82
    :cond_2
    move v4, v0

    .line 83
    :goto_2
    iput-boolean v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->useFullDynamicColor:Z

    .line 84
    sget-object p1, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin:[I

    .line 86
    invoke-virtual {v2, p2, p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 88
    move-result-object p1

    .line 91
    const/16 p2, 0xc

    .line 92
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 94
    move-result p2

    .line 97
    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 98
    const/16 p3, 0xb

    .line 100
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 102
    move-result p2

    .line 105
    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 106
    const/16 p2, 0x8

    .line 108
    iget p3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 110
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 112
    move-result p2

    .line 115
    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 116
    const/16 p2, 0xa

    .line 118
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 120
    move-result p2

    .line 123
    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    .line 124
    const/16 p2, 0x9

    .line 126
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 128
    move-result p2

    .line 131
    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    .line 132
    const/16 p2, 0xd

    .line 134
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 136
    move-result p2

    .line 139
    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    .line 140
    const/16 p2, 0xf

    .line 142
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 144
    move-result p2

    .line 147
    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    .line 148
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 150
    move-result p2

    .line 153
    iput-boolean p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerButtonAlignEnd:Z

    .line 154
    const/16 p2, 0xe

    .line 156
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 158
    move-result p2

    .line 161
    const/16 p3, 0x10

    .line 162
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 164
    move-result p3

    .line 167
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButtonInflater;

    .line 171
    invoke-direct {p1, v2}, Lcom/google/android/setupcompat/template/FooterButtonInflater;-><init>(Landroid/content/Context;)V

    .line 173
    const-string v0, "VisibleUsingXml"

    .line 176
    const-string v3, "Unknown"

    .line 178
    if-eqz p3, :cond_4

    .line 180
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 182
    move-result-object v4

    .line 185
    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 186
    move-result-object p3

    .line 189
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/setupcompat/template/FooterButton;

    .line 190
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 194
    invoke-virtual {p0, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 197
    iget-object p3, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 200
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result p3

    .line 205
    if-eqz p3, :cond_3

    .line 206
    move-object p3, v0

    .line 208
    goto :goto_3

    .line 209
    :cond_3
    iget-object p3, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 210
    :goto_3
    iput-object p3, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 212
    goto :goto_4

    .line 214
    :catchall_0
    move-exception p0

    .line 215
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 216
    throw p0

    .line 219
    :cond_4
    :goto_4
    if-eqz p2, :cond_6

    .line 220
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 222
    move-result-object p3

    .line 225
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 226
    move-result-object p2

    .line 229
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/setupcompat/template/FooterButton;

    .line 230
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 234
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 237
    iget-object p0, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 240
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result p0

    .line 245
    if-eqz p0, :cond_5

    .line 246
    goto :goto_5

    .line 248
    :cond_5
    iget-object v0, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 249
    :goto_5
    iput-object v0, v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 251
    goto :goto_6

    .line 253
    :catchall_1
    move-exception p0

    .line 254
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 255
    throw p0

    .line 258
    :cond_6
    :goto_6
    return-void
    .line 259
.end method

.method public static getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    const/4 p0, 0x0

    .line 5
    goto :goto_0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_STOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 7
    goto :goto_0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_SKIP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 10
    goto :goto_0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_OPT_IN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 13
    goto :goto_0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_NEXT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 16
    goto :goto_0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_DONE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 19
    goto :goto_0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CLEAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 22
    goto :goto_0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CANCEL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 25
    goto :goto_0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 28
    :goto_0
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addSpace()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/view/View;

    .line 6
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 8
    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    const/4 v2, 0x0

    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    invoke-direct {p0, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 18
    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    const/4 p0, 0x4

    .line 24
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    return-void
    .line 31
.end method

.method public final ensureFooterInflated()Landroid/widget/LinearLayout;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 2
    if-nez v0, :cond_a

    .line 4
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    .line 6
    if-eqz v0, :cond_9

    .line 8
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 10
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 12
    const v3, 0x7f1402e4    # @style/SucPartnerCustomizationButtonBar.Stackable

    .line 14
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 17
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 24
    const v1, 0x7f0d0363    # @layout/suc_footer_button_bar 'res/layout/suc_footer_button_bar.xml'

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 30
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 39
    if-nez v0, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 44
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 48
    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    .line 51
    iget v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 53
    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    .line 55
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 57
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonAlignedEnd()Z

    .line 62
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    const v1, 0x800015

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 71
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 74
    if-nez v0, :cond_2

    .line 76
    goto/16 :goto_1

    .line 78
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    .line 80
    if-nez v1, :cond_3

    .line 82
    goto/16 :goto_1

    .line 84
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->useFullDynamicColor:Z

    .line 86
    if-nez v1, :cond_4

    .line 88
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 90
    move-result-object v1

    .line 93
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 96
    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 100
    :cond_4
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 103
    move-result-object v1

    .line 106
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 107
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 109
    move-result v1

    .line 112
    const/4 v4, 0x0

    .line 113
    if-eqz v1, :cond_5

    .line 114
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 116
    move-result-object v1

    .line 119
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 120
    move-result v1

    .line 123
    float-to-int v1, v1

    .line 124
    iput v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 125
    :cond_5
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 127
    move-result-object v1

    .line 130
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 131
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 133
    move-result v1

    .line 136
    if-eqz v1, :cond_6

    .line 137
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 139
    move-result-object v1

    .line 142
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 143
    move-result v1

    .line 146
    float-to-int v1, v1

    .line 147
    iput v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 148
    :cond_6
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 150
    move-result-object v1

    .line 153
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_PADDING_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 154
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 156
    move-result v1

    .line 159
    if-eqz v1, :cond_7

    .line 160
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 162
    move-result-object v1

    .line 165
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 166
    move-result v1

    .line 169
    float-to-int v1, v1

    .line 170
    iput v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    .line 171
    :cond_7
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 173
    move-result-object v1

    .line 176
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_PADDING_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 177
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 179
    move-result v1

    .line 182
    if-eqz v1, :cond_8

    .line 183
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 185
    move-result-object v1

    .line 188
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 189
    move-result v1

    .line 192
    float-to-int v1, v1

    .line 193
    iput v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    .line 194
    :cond_8
    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    .line 196
    iget v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 198
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    .line 200
    iget v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 202
    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 204
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 207
    move-result-object v1

    .line 210
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 211
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 213
    move-result v1

    .line 216
    if-eqz v1, :cond_a

    .line 217
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 219
    move-result-object v1

    .line 222
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 223
    move-result v1

    .line 226
    float-to-int v1, v1

    .line 227
    if-lez v1, :cond_a

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 230
    goto :goto_1

    .line 233
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 234
    const-string v0, "Footer stub is not found in this template"

    .line 236
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 238
    throw p0

    .line 241
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 242
    return-object p0
    .line 244
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewStub;->getPaddingBottom()I

    .line 13
    move-result p0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public getPaddingTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewStub;->getPaddingTop()I

    .line 13
    move-result p0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I
    .locals 1

    .line 1
    iget p1, p1, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    move p2, p1

    .line 11
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    .line 12
    if-eqz p1, :cond_3

    .line 14
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 16
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0, p3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 22
    move-result p0

    .line 25
    if-nez p0, :cond_2

    .line 26
    const p2, 0x7f1402e2    # @style/SucPartnerCustomizationButton.Secondary

    .line 28
    goto :goto_1

    .line 31
    :cond_2
    const p2, 0x7f1402e1    # @style/SucPartnerCustomizationButton.Primary

    .line 32
    :cond_3
    :goto_1
    return p2
    .line 35
.end method

.method public getPrimaryButtonView()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Landroid/widget/Button;

    .line 14
    :goto_0
    return-object p0
    .line 16
.end method

.method public getSecondaryButtonView()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Landroid/widget/Button;

    .line 14
    :goto_0
    return-object p0
    .line 16
.end method

.method public getVisibility()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 4
    iget p2, p2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->partnerTheme:I

    .line 6
    invoke-direct {v0, v1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p2

    .line 14
    const v0, 0x7f0d0362    # @layout/suc_button 'res/layout/suc_button.xml'

    .line 15
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 23
    check-cast p2, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 24
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 26
    move-result v0

    .line 29
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setId(I)V

    .line 30
    iget-object v0, p1, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-boolean v0, p1, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 46
    iput-object p1, p2, Lcom/google/android/setupcompat/template/FooterActionButton;->footerButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 49
    invoke-virtual {p2}, Landroid/widget/Button;->getId()I

    .line 51
    move-result v0

    .line 54
    new-instance v1, Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    .line 55
    invoke-direct {v1, p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin$1;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;I)V

    .line 57
    iput-object v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    .line 60
    return-object p2
    .line 62
.end method

.method public final isFooterButtonAlignedEnd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 4
    move-result-object v1

    .line 7
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ALIGNED_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 16
    move-result-object p0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    .line 21
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerButtonAlignEnd:Z

    .line 26
    return p0
    .line 28
.end method

.method public isPrimaryButtonVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    .line 12
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public isSecondaryButtonVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    .line 12
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public final onFooterButtonApplyPartnerResource(Lcom/google/android/setupcompat/template/FooterActionButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    iget-boolean v3, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    .line 8
    if-nez v3, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-boolean v3, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getId()I

    .line 15
    move-result v4

    .line 18
    iget v5, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    .line 19
    const/4 v6, 0x0

    .line 21
    if-ne v4, v5, :cond_1

    .line 22
    const/4 v4, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v4, v6

    .line 26
    :goto_0
    sget-object v5, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getId()I

    .line 29
    move-result v7

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v7

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    .line 37
    move-result-object v8

    .line 40
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/high16 v5, 0x437f0000    # 255.0f

    .line 44
    iget-object v7, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 46
    iget-object v8, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 48
    iget-object v9, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 50
    const/4 v10, 0x0

    .line 52
    if-nez v3, :cond_6

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->isEnabled()Z

    .line 55
    move-result v11

    .line 58
    if-eqz v11, :cond_2

    .line 59
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 61
    move-result-object v11

    .line 64
    invoke-virtual {v11, v7, v9}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 65
    move-result v11

    .line 68
    if-eqz v11, :cond_3

    .line 69
    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 71
    move-result-object v11

    .line 74
    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 75
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v7, v1, v8}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 79
    :cond_3
    :goto_1
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 82
    move-result-object v11

    .line 85
    iget-object v12, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 86
    invoke-virtual {v11, v7, v12}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 88
    move-result v11

    .line 91
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 92
    move-result-object v12

    .line 95
    iget-object v13, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 96
    invoke-virtual {v12, v7, v13}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    .line 98
    move-result v12

    .line 101
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 102
    move-result-object v13

    .line 105
    iget-object v14, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 106
    invoke-virtual {v13, v7, v14}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 108
    move-result v13

    .line 111
    const v14, -0x101009e

    .line 112
    filled-new-array {v14}, [I

    .line 115
    move-result-object v14

    .line 118
    new-array v15, v6, [I

    .line 119
    if-eqz v11, :cond_6

    .line 121
    cmpg-float v16, v12, v10

    .line 123
    if-gtz v16, :cond_4

    .line 125
    const v12, 0x1010033    # @android:attr/disabledAlpha

    .line 127
    filled-new-array {v12}, [I

    .line 130
    move-result-object v12

    .line 133
    invoke-virtual {v7, v12}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 134
    move-result-object v12

    .line 137
    const v10, 0x3e851eb8    # 0.26f

    .line 138
    invoke-virtual {v12, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 141
    move-result v10

    .line 144
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    move v12, v10

    .line 148
    :cond_4
    if-nez v13, :cond_5

    .line 149
    move v13, v11

    .line 151
    :cond_5
    new-instance v10, Landroid/content/res/ColorStateList;

    .line 152
    filled-new-array {v14, v15}, [[I

    .line 154
    move-result-object v14

    .line 157
    mul-float/2addr v12, v5

    .line 158
    float-to-int v12, v12

    .line 159
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    .line 160
    move-result v15

    .line 163
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    .line 164
    move-result v5

    .line 167
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    .line 168
    move-result v13

    .line 171
    invoke-static {v12, v15, v5, v13}, Landroid/graphics/Color;->argb(IIII)I

    .line 172
    move-result v5

    .line 175
    filled-new-array {v5, v11}, [I

    .line 176
    move-result-object v5

    .line 179
    invoke-direct {v10, v14, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 183
    move-result-object v5

    .line 186
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 187
    move-result-object v5

    .line 190
    new-array v11, v6, [I

    .line 191
    invoke-virtual {v5, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->refreshDrawableState()V

    .line 196
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 199
    :cond_6
    if-eqz v3, :cond_7

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    .line 204
    move-result-object v3

    .line 207
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 208
    move-result v3

    .line 211
    goto :goto_2

    .line 212
    :cond_7
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 213
    move-result-object v3

    .line 216
    invoke-virtual {v3, v7, v9}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 217
    move-result v3

    .line 220
    :goto_2
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 221
    move-result-object v5

    .line 224
    iget-object v10, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 225
    invoke-virtual {v5, v7, v10}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    .line 227
    move-result v5

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 231
    move-result-object v10

    .line 234
    instance-of v11, v10, Landroid/graphics/drawable/InsetDrawable;

    .line 235
    const/4 v12, 0x0

    .line 237
    if-eqz v11, :cond_8

    .line 238
    check-cast v10, Landroid/graphics/drawable/InsetDrawable;

    .line 240
    invoke-virtual {v10}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 242
    move-result-object v10

    .line 245
    check-cast v10, Landroid/graphics/drawable/RippleDrawable;

    .line 246
    goto :goto_3

    .line 248
    :cond_8
    instance-of v11, v10, Landroid/graphics/drawable/RippleDrawable;

    .line 249
    if-eqz v11, :cond_9

    .line 251
    check-cast v10, Landroid/graphics/drawable/RippleDrawable;

    .line 253
    goto :goto_3

    .line 255
    :cond_9
    move-object v10, v12

    .line 256
    :goto_3
    if-nez v10, :cond_a

    .line 257
    goto :goto_4

    .line 259
    :cond_a
    const v11, 0x10100a7    # @android:attr/state_pressed

    .line 260
    filled-new-array {v11}, [I

    .line 263
    move-result-object v11

    .line 266
    const v13, 0x101009c    # @android:attr/state_focused

    .line 267
    filled-new-array {v13}, [I

    .line 270
    move-result-object v13

    .line 273
    const/high16 v14, 0x437f0000    # 255.0f

    .line 274
    mul-float/2addr v5, v14

    .line 276
    float-to-int v5, v5

    .line 277
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    .line 278
    move-result v14

    .line 281
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 282
    move-result v15

    .line 285
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 286
    move-result v3

    .line 289
    invoke-static {v5, v14, v15, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 290
    move-result v3

    .line 293
    new-instance v5, Landroid/content/res/ColorStateList;

    .line 294
    sget-object v14, Landroid/util/StateSet;->NOTHING:[I

    .line 296
    filled-new-array {v11, v13, v14}, [[I

    .line 298
    move-result-object v11

    .line 301
    filled-new-array {v3, v3, v6}, [I

    .line 302
    move-result-object v3

    .line 305
    invoke-direct {v5, v11, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 306
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 309
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 312
    move-result-object v3

    .line 315
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 316
    move-result-object v5

    .line 319
    iget-object v10, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMarginStartConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 320
    invoke-virtual {v5, v10}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 322
    move-result v5

    .line 325
    if-eqz v5, :cond_b

    .line 326
    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 328
    if-eqz v5, :cond_b

    .line 330
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 332
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 334
    move-result-object v5

    .line 337
    const/4 v11, 0x0

    .line 338
    invoke-virtual {v5, v7, v10, v11}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 339
    move-result v5

    .line 342
    float-to-int v5, v5

    .line 343
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 344
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 346
    iget v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 348
    invoke-virtual {v3, v5, v10, v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 350
    goto :goto_5

    .line 353
    :cond_b
    const/4 v11, 0x0

    .line 354
    :goto_5
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 355
    move-result-object v3

    .line 358
    iget-object v5, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 359
    invoke-virtual {v3, v7, v5, v11}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 361
    move-result v3

    .line 364
    cmpl-float v5, v3, v11

    .line 365
    if-lez v5, :cond_c

    .line 367
    invoke-virtual {v1, v6, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 369
    :cond_c
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 372
    move-result-object v3

    .line 375
    iget-object v5, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 376
    invoke-virtual {v3, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 378
    move-result v3

    .line 381
    if-eqz v3, :cond_d

    .line 382
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 384
    move-result-object v3

    .line 387
    invoke-virtual {v3, v7, v5, v11}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 388
    move-result v3

    .line 391
    cmpl-float v5, v3, v11

    .line 392
    if-lez v5, :cond_d

    .line 394
    float-to-int v3, v3

    .line 396
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setMinHeight(I)V

    .line 397
    :cond_d
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 400
    move-result-object v3

    .line 403
    iget-object v5, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 404
    invoke-virtual {v3, v7, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    .line 406
    move-result-object v3

    .line 409
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 410
    move-result-object v5

    .line 413
    iget-object v10, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 414
    invoke-virtual {v5, v10}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 416
    move-result v5

    .line 419
    if-eqz v5, :cond_e

    .line 420
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 422
    move-result-object v5

    .line 425
    invoke-virtual {v5, v7, v10}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 426
    move-result v5

    .line 429
    goto :goto_6

    .line 430
    :cond_e
    move v5, v6

    .line 431
    :goto_6
    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 432
    move-result-object v3

    .line 435
    if-eqz v3, :cond_f

    .line 436
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 438
    :cond_f
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 441
    move-result-object v3

    .line 444
    iget-object v5, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 445
    const/4 v10, 0x0

    .line 447
    invoke-virtual {v3, v7, v5, v10}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 448
    move-result v3

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 452
    move-result-object v5

    .line 455
    instance-of v10, v5, Landroid/graphics/drawable/InsetDrawable;

    .line 456
    if-eqz v10, :cond_10

    .line 458
    check-cast v5, Landroid/graphics/drawable/InsetDrawable;

    .line 460
    invoke-virtual {v5}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 462
    move-result-object v5

    .line 465
    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 466
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 468
    move-result-object v5

    .line 471
    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 472
    goto :goto_7

    .line 474
    :cond_10
    instance-of v10, v5, Landroid/graphics/drawable/RippleDrawable;

    .line 475
    if-eqz v10, :cond_12

    .line 477
    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    .line 479
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 481
    move-result-object v10

    .line 484
    instance-of v10, v10, Landroid/graphics/drawable/GradientDrawable;

    .line 485
    if-eqz v10, :cond_11

    .line 487
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 489
    move-result-object v5

    .line 492
    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 493
    goto :goto_7

    .line 495
    :cond_11
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 496
    move-result-object v5

    .line 499
    check-cast v5, Landroid/graphics/drawable/InsetDrawable;

    .line 500
    invoke-virtual {v5}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 502
    move-result-object v5

    .line 505
    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 506
    goto :goto_7

    .line 508
    :cond_12
    move-object v5, v12

    .line 509
    :goto_7
    if-eqz v5, :cond_13

    .line 510
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 512
    :cond_13
    iget-object v2, v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 515
    if-eqz v2, :cond_14

    .line 517
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 519
    move-result-object v3

    .line 522
    invoke-virtual {v3, v7, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;

    .line 523
    move-result-object v2

    .line 526
    goto :goto_8

    .line 527
    :cond_14
    move-object v2, v12

    .line 528
    :goto_8
    if-eqz v2, :cond_15

    .line 529
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 531
    move-result v3

    .line 534
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 535
    move-result v5

    .line 538
    invoke-virtual {v2, v6, v6, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 539
    :cond_15
    if-eqz v4, :cond_16

    .line 542
    move-object v3, v2

    .line 544
    move-object v2, v12

    .line 545
    goto :goto_9

    .line 546
    :cond_16
    move-object v3, v12

    .line 547
    :goto_9
    invoke-virtual {v1, v2, v12, v3, v12}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 548
    iget-boolean v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    .line 551
    if-nez v0, :cond_18

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->isEnabled()Z

    .line 555
    move-result v0

    .line 558
    if-eqz v0, :cond_17

    .line 559
    invoke-static {v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 561
    move-result-object v0

    .line 564
    invoke-virtual {v0, v7, v9}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 565
    move-result v0

    .line 568
    if-eqz v0, :cond_18

    .line 569
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 571
    move-result-object v0

    .line 574
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 575
    goto :goto_a

    .line 578
    :cond_17
    invoke-static {v7, v1, v8}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 579
    :cond_18
    :goto_a
    return-void
    .line 582
.end method

.method public final onFooterButtonInflated(Lcom/google/android/setupcompat/template/FooterActionButton;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    if-eqz p2, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    .line 8
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 18
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 23
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    .line 32
    move-result-object p2

    .line 35
    const/4 v0, 0x1

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    .line 40
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    move p1, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move p1, v1

    .line 48
    :goto_0
    if-eqz p2, :cond_2

    .line 49
    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    .line 51
    move-result p2

    .line 54
    if-nez p2, :cond_2

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    move v0, v1

    .line 58
    :goto_1
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 59
    if-eqz p0, :cond_5

    .line 61
    if-nez p1, :cond_4

    .line 63
    if-eqz v0, :cond_3

    .line 65
    goto :goto_2

    .line 67
    :cond_3
    const/16 v1, 0x8

    .line 68
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    :cond_5
    return-void
    .line 73
.end method

.method public final repopulateButtons()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    .line 10
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 14
    iget-boolean v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    .line 17
    const/4 v4, 0x1

    .line 19
    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 20
    const/4 v6, 0x0

    .line 22
    if-nez v3, :cond_1

    .line 23
    :cond_0
    :goto_0
    move v3, v6

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-static {v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 27
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    .line 30
    const-string v7, "isNeutralButtonStyleEnabled"

    .line 32
    if-nez v3, :cond_2

    .line 34
    const/4 v3, 0x0

    .line 36
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v8

    .line 40
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    .line 41
    move-result-object v9

    .line 44
    invoke-virtual {v8, v9, v7, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 45
    move-result-object v8

    .line 48
    sput-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    .line 51
    :catch_0
    const-string v7, "PartnerConfigHelper"

    .line 52
    const-string v8, "Neutral button style supporting status unknown; return as false."

    .line 54
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    .line 62
    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 66
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    move v3, v4

    .line 72
    :goto_2
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 77
    move-result-object v5

    .line 80
    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 81
    const/4 v7, 0x2

    .line 83
    if-ne v5, v7, :cond_3

    .line 84
    goto :goto_3

    .line 86
    :cond_3
    move v4, v6

    .line 87
    :goto_3
    if-eqz v4, :cond_4

    .line 88
    if-eqz v3, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonAlignedEnd()Z

    .line 92
    move-result v4

    .line 95
    if-eqz v4, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->addSpace()V

    .line 98
    :cond_4
    if-eqz v2, :cond_6

    .line 101
    iget-boolean v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    .line 103
    if-eqz v4, :cond_5

    .line 105
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 107
    move-result v4

    .line 110
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 111
    move-result v5

    .line 114
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 115
    move-result v7

    .line 118
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 119
    move-result v8

    .line 122
    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 123
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonAlignedEnd()Z

    .line 129
    move-result v4

    .line 132
    if-nez v4, :cond_7

    .line 133
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->addSpace()V

    .line 135
    :cond_7
    if-eqz v1, :cond_8

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    :cond_8
    if-eqz v1, :cond_9

    .line 143
    if-eqz v2, :cond_9

    .line 145
    if-eqz v3, :cond_9

    .line 147
    invoke-virtual {v1, v6, v6}, Landroid/widget/Button;->measure(II)V

    .line 149
    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 152
    move-result p0

    .line 155
    invoke-virtual {v2, v6, v6}, Landroid/widget/Button;->measure(II)V

    .line 156
    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 159
    move-result v0

    .line 162
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 163
    move-result p0

    .line 166
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    move-result-object v0

    .line 170
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 173
    move-result-object v0

    .line 176
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    goto :goto_4

    .line 179
    :cond_9
    const/4 p0, 0x0

    .line 180
    const/4 v0, -0x2

    .line 181
    if-eqz v1, :cond_a

    .line 182
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 184
    move-result-object v3

    .line 187
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    if-eqz v3, :cond_a

    .line 190
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 192
    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 194
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    :cond_a
    if-eqz v2, :cond_b

    .line 199
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    move-result-object v1

    .line 204
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    if-eqz v1, :cond_b

    .line 207
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 209
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 211
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :cond_b
    :goto_4
    return-void
    .line 216
.end method

.method public final setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    const-string/jumbo v2, "setPrimaryButton"

    .line 6
    invoke-static {v2}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 12
    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 15
    const v2, 0x7f1402e1    # @style/SucPartnerCustomizationButton.Primary

    .line 17
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 20
    move-result v4

    .line 23
    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 24
    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 26
    sget-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 28
    iget v2, v1, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    .line 30
    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 32
    move-result-object v9

    .line 35
    sget-object v16, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 36
    sget-object v17, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 38
    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 40
    sget-object v11, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 42
    sget-object v12, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 44
    sget-object v13, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 46
    sget-object v14, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 48
    sget-object v15, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_STYLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 50
    new-instance v2, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 52
    move-object v3, v2

    .line 54
    invoke-direct/range {v3 .. v17}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;-><init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 58
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    .line 62
    move-result v4

    .line 65
    iput v4, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    .line 66
    const/4 v4, 0x1

    .line 68
    iput-boolean v4, v3, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    .line 69
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 71
    iput-object v2, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 73
    iget v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    .line 75
    invoke-virtual {v0, v3, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Lcom/google/android/setupcompat/template/FooterActionButton;I)V

    .line 77
    invoke-virtual {v0, v3, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Lcom/google/android/setupcompat/template/FooterActionButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    .line 83
    return-void
    .line 86
.end method

.method public final setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    const-string/jumbo v2, "setSecondaryButton"

    .line 6
    invoke-static {v2}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    .line 9
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 15
    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 18
    const v3, 0x7f1402e2    # @style/SucPartnerCustomizationButton.Secondary

    .line 20
    invoke-virtual {v0, v1, v3, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 23
    move-result v4

    .line 26
    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 27
    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 29
    sget-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 31
    iget v3, v1, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    .line 33
    invoke-static {v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 35
    move-result-object v9

    .line 38
    sget-object v16, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 39
    sget-object v17, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 41
    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 43
    sget-object v11, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 45
    sget-object v12, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 47
    sget-object v13, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 49
    sget-object v14, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 51
    sget-object v15, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_STYLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 53
    new-instance v3, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 55
    move-object/from16 v18, v3

    .line 57
    invoke-direct/range {v3 .. v17}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;-><init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 59
    invoke-virtual {v0, v1, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 62
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Landroid/widget/Button;->getId()I

    .line 66
    move-result v5

    .line 69
    iput v5, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    .line 70
    iput-boolean v2, v4, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    .line 72
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 74
    iput-object v3, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 76
    iget v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    .line 78
    invoke-virtual {v0, v4, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Lcom/google/android/setupcompat/template/FooterActionButton;I)V

    .line 80
    invoke-virtual {v0, v4, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Lcom/google/android/setupcompat/template/FooterActionButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    .line 86
    return-void
    .line 89
.end method
