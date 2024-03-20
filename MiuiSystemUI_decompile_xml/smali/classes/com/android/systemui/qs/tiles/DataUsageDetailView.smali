.class public Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p0, Ljava/text/DecimalFormat;

    .line 5
    const-string p1, "#.##"

    .line 7
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    const p1, 0x1020016    # @android:id/title

    .line 5
    const v0, 0x7f070f5b    # @dimen/qs_data_usage_text_size '14.0sp'

    .line 8
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 11
    const p1, 0x7f0a0a3c    # @id/usage_text

    .line 14
    const v1, 0x7f070f5c    # @dimen/qs_data_usage_usage_text_size '36.0sp'

    .line 17
    invoke-static {p0, p1, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 20
    const p1, 0x7f0a0a36    # @id/usage_carrier_text

    .line 23
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 26
    const p1, 0x7f0a0a39    # @id/usage_info_top_text

    .line 29
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 32
    const p1, 0x7f0a0a3a    # @id/usage_period_text

    .line 35
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 38
    const p1, 0x7f0a0a38    # @id/usage_info_bottom_text

    .line 41
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 44
    return-void
    .line 47
.end method
