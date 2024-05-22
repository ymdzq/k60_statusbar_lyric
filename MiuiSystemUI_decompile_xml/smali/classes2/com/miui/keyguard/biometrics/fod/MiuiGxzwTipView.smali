.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mFontScale:F

.field public mTryAgain:Landroid/widget/TextView;

.field public mdensityDpi:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object p1

    .line 16
    const v0, 0x7f0d01b4    # @layout/miui_keyguard_gxzw_tip_view 'res/layout/miui_keyguard_gxzw_tip_view.xml'

    .line 17
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    const p1, 0x7f0a03db    # @id/gxzw_anim_try_again

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/TextView;

    .line 30
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 32
    const/16 v0, 0x398

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 36
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 39
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 43
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 46
    const/16 p1, 0x11

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    return-void
    .line 53
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->updateFontScale()V

    .line 5
    return-void
    .line 8
.end method

.method public final stopTipAnim()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 2
    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    return-void
    .line 9
.end method

.method public final updateFontScale()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mFontScale:F

    .line 10
    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 12
    cmpl-float v1, v1, v2

    .line 14
    if-nez v1, :cond_0

    .line 16
    iget v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mdensityDpi:F

    .line 18
    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 20
    int-to-float v2, v2

    .line 22
    cmpl-float v1, v1, v2

    .line 23
    if-eqz v1, :cond_2

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 31
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    const v2, 0x7f0703ca    # @dimen/gxzw_tip_font_size_low '40.0px'

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    const v2, 0x7f0703c9    # @dimen/gxzw_tip_font_size '16.0sp'

    .line 41
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v1

    .line 47
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 48
    const/4 v3, 0x0

    .line 50
    int-to-float v1, v1

    .line 51
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 55
    iput v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mFontScale:F

    .line 57
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 59
    int-to-float v0, v0

    .line 61
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mdensityDpi:F

    .line 62
    :cond_2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 70
    return-void
    .line 73
.end method
