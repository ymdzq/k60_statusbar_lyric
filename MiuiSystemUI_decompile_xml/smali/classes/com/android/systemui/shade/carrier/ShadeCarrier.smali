.class public Lcom/android/systemui/shade/carrier/ShadeCarrier;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCarrierText:Landroid/widget/TextView;

.field public mIsSingleCarrier:Z

.field public mLastSignalState:Lcom/android/systemui/shade/carrier/CellSignalState;

.field public mMobileGroup:Landroid/view/View;

.field public mMobileRoaming:Landroid/widget/ImageView;

.field public mMobileSignal:Landroid/widget/ImageView;

.field public mMobileSignalInitialized:Z

.field public mSpacer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignalInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignalInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignalInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignalInitialized:Z

    return-void
.end method


# virtual methods
.method public getRSSIView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileGroup:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/ShadeCarrier;->updateResources()V

    .line 5
    return-void
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a05f1    # @id/mobile_combo

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileGroup:Landroid/view/View;

    .line 12
    const v0, 0x7f0a05fa    # @id/mobile_roaming

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    .line 23
    const v0, 0x7f0a05fc    # @id/mobile_signal

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignal:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f0a086f    # @id/shade_carrier_text

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0a08ae    # @id/spacer

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mSpacer:Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/ShadeCarrier;->updateResources()V

    .line 56
    return-void
    .line 59
.end method

.method public setCarrierText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateResources()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Landroid/widget/TextView;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const p0, 0x7fffffff

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 21
    const v0, 0x7f0b00ff    # @integer/shade_carrier_max_em '7'

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 25
    move-result p0

    .line 28
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 29
    return-void
    .line 32
.end method

.method public final updateState(Lcom/android/systemui/shade/carrier/CellSignalState;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mLastSignalState:Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mIsSingleCarrier:Z

    .line 10
    if-ne p2, v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mLastSignalState:Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 15
    iput-boolean p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mIsSingleCarrier:Z

    .line 17
    iget-boolean v0, p1, Lcom/android/systemui/shade/carrier/CellSignalState;->visible:Z

    .line 19
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_1

    .line 23
    if-nez p2, :cond_1

    .line 25
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, v1

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileGroup:Landroid/view/View;

    .line 30
    const/16 v4, 0x8

    .line 32
    if-eqz v0, :cond_2

    .line 34
    move v5, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v5, v4

    .line 38
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mSpacer:Landroid/view/View;

    .line 42
    if-eqz p2, :cond_3

    .line 44
    move p2, v1

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move p2, v4

    .line 48
    :goto_2
    invoke-virtual {v3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    if-eqz v0, :cond_b

    .line 52
    iget-object p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    .line 54
    iget-boolean v0, p1, Lcom/android/systemui/shade/carrier/CellSignalState;->roaming:Z

    .line 56
    if-eqz v0, :cond_4

    .line 58
    move v4, v1

    .line 60
    :cond_4
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 64
    const v3, 0x1010036    # @android:attr/textColorPrimary

    .line 66
    invoke-static {v3, p2}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 69
    move-result-object p2

    .line 72
    iget-object v3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 75
    iget-object v3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignal:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    iget-boolean p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignalInitialized:Z

    .line 83
    if-nez p2, :cond_5

    .line 85
    iput-boolean v2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignalInitialized:Z

    .line 87
    iget-object p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignal:Landroid/widget/ImageView;

    .line 89
    new-instance v3, Lcom/android/settingslib/graph/SignalDrawable;

    .line 91
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 93
    invoke-direct {v3, v4}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignal:Landroid/widget/ImageView;

    .line 101
    iget v3, p1, Lcom/android/systemui/shade/carrier/CellSignalState;->mobileSignalIconId:I

    .line 103
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v3, ", "

    .line 113
    iget-object v4, p1, Lcom/android/systemui/shade/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    .line 115
    if-eqz v4, :cond_6

    .line 117
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_6
    if-eqz v0, :cond_7

    .line 125
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 127
    const v4, 0x7f130359    # @string/data_connection_roaming 'Roaming'

    .line 129
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 135
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_7
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 142
    const v3, 0x7f130358    # @string/data_connection_no_internet 'No internet'

    .line 144
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 150
    iget-object p1, p1, Lcom/android/systemui/shade/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    .line 151
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 153
    move-result v0

    .line 156
    if-nez v0, :cond_8

    .line 157
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 159
    const v3, 0x7f130256    # @string/cell_data_off_content_description 'Mobile data off'

    .line 161
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 167
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 168
    move-result v0

    .line 171
    if-nez v0, :cond_8

    .line 172
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 174
    const v3, 0x7f130863    # @string/not_default_data_content_description 'Not set to use data'

    .line 176
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 182
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 183
    move-result v0

    .line 186
    if-eqz v0, :cond_9

    .line 187
    :cond_8
    move v1, v2

    .line 189
    :cond_9
    if-eqz v1, :cond_a

    .line 190
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileSignal:Landroid/widget/ImageView;

    .line 195
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    :cond_b
    return-void
    .line 200
.end method
