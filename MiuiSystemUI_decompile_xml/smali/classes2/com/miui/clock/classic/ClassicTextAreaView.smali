.class public Lcom/miui/clock/classic/ClassicTextAreaView;
.super Landroid/widget/TextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

.field public mContext:Landroid/content/Context;

.field public mHasRegisterListener:Z

.field public mHealthBean:Lcom/miui/clock/module/HealthBean;

.field public mHealthIcon:Landroid/graphics/drawable/Drawable;

.field public mIconWH:F

.field public mNeedIcon:Z

.field public mPercentSignPlaceholderText:Ljava/lang/String;

.field public mPlaceholderText:Ljava/lang/String;

.field public mRectPaint:Landroid/graphics/Paint;

.field public mServiceProviderContentObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

.field public mServiceProviderName:Ljava/lang/String;

.field public mServiceProviderStatus:I

.field public mServiceProviderStatusObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

.field public mTextSlash:Ljava/lang/String;

.field public mWeatherBean:Lcom/miui/clock/module/WeatherBean;

.field public needDrawRect:Z

.field public rectHeight:I

.field public rectPadding:I

.field public rectRadius:I

.field public rectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicTextAreaView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicTextAreaView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicTextAreaView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getDimen(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 15
    move-result p0

    .line 18
    mul-float/2addr p0, p1

    .line 19
    float-to-int p0, p0

    .line 20
    return p0
    .line 21
.end method

.method public final getDimenFloat(I)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 6
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 14
    move-result p0

    .line 17
    mul-float/2addr p0, p1

    .line 18
    return p0
    .line 19
.end method

.method public final getHeatherSpannableString(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    filled-new-array {p1, p4}, [Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {v0, p2, p3, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mTextSlash:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 16
    move-result p2

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    move-result p3

    .line 23
    new-instance p4, Landroid/text/SpannableString;

    .line 24
    invoke-direct {p4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 37
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 39
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 45
    invoke-virtual {p0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 47
    move-result p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 52
    invoke-virtual {p0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 54
    move-result p0

    .line 57
    const/16 p1, 0x99

    .line 58
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 60
    move-result p0

    .line 63
    :goto_0
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 64
    invoke-direct {p1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 66
    const/16 p0, 0x11

    .line 69
    invoke-virtual {p4, p1, p2, p3, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 71
    return-object p4
    .line 74
.end method

.method public getViewHeight()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 15
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 23
    move-result v0

    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 35
    move-result v1

    .line 38
    const v2, 0x7f0701c9    # @dimen/classic_text_area_margin_start_end '27.0dp'

    .line 39
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicTextAreaView;->getDimenFloat(I)F

    .line 42
    move-result v2

    .line 45
    int-to-float v1, v1

    .line 46
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    .line 47
    move-result v3

    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    .line 51
    move-result v4

    .line 54
    add-int/2addr v4, v3

    .line 55
    int-to-float v3, v4

    .line 56
    add-float/2addr v3, v0

    .line 57
    const/high16 v0, 0x40000000    # 2.0f

    .line 58
    mul-float/2addr v2, v0

    .line 60
    add-float/2addr v2, v3

    .line 61
    cmpg-float v0, v1, v2

    .line 62
    if-gez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    .line 66
    move-result p0

    .line 69
    mul-int/lit8 p0, p0, 0x2

    .line 70
    return p0

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    .line 73
    move-result p0

    .line 76
    return p0
    .line 77
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 10
    const/4 p1, 0x5

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 14
    const/16 p1, 0x17c

    .line 17
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    const-string/jumbo p1, "ss01"

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    .line 32
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mRectPaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    .line 43
    move-result v0

    .line 46
    const/16 v1, 0x99

    .line 47
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 49
    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mRectPaint:Landroid/graphics/Paint;

    .line 56
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p1

    .line 66
    const v0, 0x7f130b70    # @string/text_slash '/'

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mTextSlash:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object p1

    .line 79
    const v0, 0x7f13085b    # @string/no_data_placeholder_string '--'

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object p1

    .line 92
    const v0, 0x7f13085c    # @string/no_data_placeholder_string_with_percent_sign '--%'

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mPercentSignPlaceholderText:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->initSetting()V

    .line 102
    return-void
    .line 105
.end method

.method public final initData(Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 2
    iget v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 4
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 6
    move-result v1

    .line 9
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 10
    move-result v2

    .line 13
    iput-boolean v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mNeedIcon:Z

    .line 14
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    const v4, 0x7f0701d5    # @dimen/classic_time_area_text_has_icon_padding_start_end '20.0dp'

    .line 19
    invoke-virtual {p0, v4}, Lcom/miui/clock/classic/ClassicTextAreaView;->getDimen(I)I

    .line 22
    move-result v4

    .line 25
    invoke-virtual {p0, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 26
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {v0}, Lcom/miui/clock/module/HealthBean;->getHealthIconByType(I)I

    .line 31
    move-result v5

    .line 34
    sget-object v6, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 35
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object v4

    .line 40
    iput-object v4, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 45
    move-result v5

    .line 48
    iget-object v6, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthIcon:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 51
    move-result v6

    .line 54
    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    goto :goto_0

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 59
    iput-object v4, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthIcon:Landroid/graphics/drawable/Drawable;

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 62
    move-result p1

    .line 65
    if-eqz p1, :cond_5

    .line 66
    const/16 v4, 0xb

    .line 68
    if-ne v0, v4, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->setCarrierTextColor()V

    .line 72
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 81
    move-result v0

    .line 84
    const/16 v4, 0x99

    .line 85
    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 89
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 91
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 97
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 99
    invoke-static {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 101
    move-result v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mRectPaint:Landroid/graphics/Paint;

    .line 107
    invoke-static {p1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 109
    move-result v4

    .line 112
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    goto :goto_2

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mRectPaint:Landroid/graphics/Paint;

    .line 117
    const-string v4, "#FF999999"

    .line 119
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 121
    move-result v4

    .line 124
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    goto :goto_2

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mRectPaint:Landroid/graphics/Paint;

    .line 129
    invoke-static {p1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 131
    move-result v4

    .line 134
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    :goto_2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    if-eqz v0, :cond_5

    .line 140
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 142
    :cond_5
    if-eqz v2, :cond_6

    .line 145
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 147
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicTextAreaView;->updateWeather(Lcom/miui/clock/module/WeatherBean;)V

    .line 149
    goto :goto_3

    .line 152
    :cond_6
    iput-boolean v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->needDrawRect:Z

    .line 153
    :goto_3
    if-eqz v1, :cond_7

    .line 155
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 157
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicTextAreaView;->updateHealth(Lcom/miui/clock/module/HealthBean;)V

    .line 159
    :cond_7
    if-nez v2, :cond_8

    .line 162
    if-nez v1, :cond_8

    .line 164
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    :cond_8
    return-void
    .line 169
.end method

.method public final initSetting()V
    .locals 2

    .line 1
    const v0, 0x7f0701ce    # @dimen/classic_text_area_text_size '17.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->getDimenFloat(I)F

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    const v0, 0x7f0703eb    # @dimen/health_icon_18 '18.0dp'

    .line 13
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->getDimenFloat(I)F

    .line 16
    move-result v0

    .line 19
    iput v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mIconWH:F

    .line 20
    const v0, 0x7f0711f5    # @dimen/text_placeholder_width_small '40.0dp'

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->getDimen(I)I

    .line 25
    move-result v0

    .line 28
    iput v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectWidth:I

    .line 29
    const v0, 0x7f0711f1    # @dimen/text_placeholder_height_small '21.0dp'

    .line 31
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->getDimen(I)I

    .line 34
    move-result v0

    .line 37
    iput v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectHeight:I

    .line 38
    const v0, 0x7f0711f2    # @dimen/text_placeholder_padding '2.0dp'

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->getDimen(I)I

    .line 43
    move-result v0

    .line 46
    iput v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectPadding:I

    .line 47
    const v0, 0x7f0711f3    # @dimen/text_placeholder_radius '4.0dp'

    .line 49
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->getDimen(I)I

    .line 52
    move-result v0

    .line 55
    iput v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectRadius:I

    .line 56
    return-void
    .line 58
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHasRegisterListener:Z

    .line 5
    const-string v1, "ClassicTextAreaView"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v2, "registerServiceProviderListener has register, this = "

    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "registerServiceProviderListener this = "

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderContentObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 46
    const/4 v1, 0x0

    .line 48
    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 51
    invoke-direct {v0, p0, v1}, Lcom/miui/clock/classic/ClassicTextAreaView$1;-><init>(Lcom/miui/clock/classic/ClassicTextAreaView;I)V

    .line 53
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderContentObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderStatusObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 58
    const/4 v2, 0x1

    .line 60
    if-nez v0, :cond_2

    .line 61
    new-instance v0, Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 63
    invoke-direct {v0, p0, v2}, Lcom/miui/clock/classic/ClassicTextAreaView$1;-><init>(Lcom/miui/clock/classic/ClassicTextAreaView;I)V

    .line 65
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderStatusObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 68
    :cond_2
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHasRegisterListener:Z

    .line 70
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    move-result-object v0

    .line 77
    const-string v2, "constant_carrier_info"

    .line 78
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderContentObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 84
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 91
    move-result-object v0

    .line 94
    const-string v2, "constant_carrier_status"

    .line 95
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderStatusObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 101
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->updateServiceProviderName()V

    .line 106
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->updateServiceProviderColor()V

    .line 109
    :goto_0
    return-void
    .line 112
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHasRegisterListener:Z

    .line 5
    const-string v1, "ClassicTextAreaView"

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "unRegisterServiceProviderListener un register, this = "

    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v2, "unRegisterServiceProviderListener this = "

    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHasRegisterListener:Z

    .line 49
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderContentObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 59
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderStatusObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 70
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderContentObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 74
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderStatusObserver:Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 76
    :goto_0
    return-void
    .line 78
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 5
    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mNeedIcon:Z

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthIcon:Landroid/graphics/drawable/Drawable;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 19
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    iget v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mIconWH:F

    .line 24
    sub-float/2addr v1, v3

    .line 26
    div-float/2addr v1, v2

    .line 27
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 28
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    int-to-float v3, v0

    .line 34
    iget v4, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mIconWH:F

    .line 35
    sub-float/2addr v3, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 43
    iget v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mIconWH:F

    .line 46
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthIcon:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 50
    move-result v3

    .line 53
    int-to-float v3, v3

    .line 54
    div-float/2addr v1, v3

    .line 55
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 56
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthIcon:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 64
    :cond_1
    iget-boolean v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->needDrawRect:Z

    .line 67
    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    .line 71
    move-result v1

    .line 74
    iget v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectHeight:I

    .line 75
    sub-int/2addr v1, v3

    .line 77
    iget v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectPadding:I

    .line 78
    mul-int/lit8 v3, v3, 0x2

    .line 80
    add-int/2addr v3, v1

    .line 82
    int-to-float v1, v3

    .line 83
    div-float v5, v1, v2

    .line 84
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 86
    move-result-object v1

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 90
    move-result-object v2

    .line 93
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 98
    move-result v1

    .line 101
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 102
    move-result v2

    .line 105
    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    .line 108
    move-result v2

    .line 111
    sub-int/2addr v0, v2

    .line 112
    int-to-float v0, v0

    .line 113
    sub-float/2addr v0, v1

    .line 114
    iget v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectWidth:I

    .line 115
    int-to-float v1, v1

    .line 117
    sub-float/2addr v0, v1

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    .line 120
    move-result v0

    .line 123
    int-to-float v0, v0

    .line 124
    add-float/2addr v0, v1

    .line 125
    :goto_1
    iget v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectPadding:I

    .line 126
    int-to-float v2, v1

    .line 128
    add-float v4, v0, v2

    .line 129
    iget v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectWidth:I

    .line 131
    int-to-float v2, v2

    .line 133
    add-float/2addr v0, v2

    .line 134
    int-to-float v2, v1

    .line 135
    sub-float v6, v0, v2

    .line 136
    iget v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectHeight:I

    .line 138
    int-to-float v0, v0

    .line 140
    add-float/2addr v0, v5

    .line 141
    mul-int/lit8 v1, v1, 0x2

    .line 142
    int-to-float v1, v1

    .line 144
    sub-float v7, v0, v1

    .line 145
    iget v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectRadius:I

    .line 147
    int-to-float v8, v0

    .line 149
    int-to-float v9, v0

    .line 150
    iget-object v10, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mRectPaint:Landroid/graphics/Paint;

    .line 151
    move-object v3, p1

    .line 153
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 154
    :cond_3
    return-void
    .line 157
.end method

.method public final onScreenSizeChange()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->initSetting()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mNeedIcon:Z

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const v0, 0x7f0701d5    # @dimen/classic_time_area_text_has_icon_padding_start_end '20.0dp'

    .line 10
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->getDimen(I)I

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->needDrawRect:Z

    .line 21
    if-eqz v0, :cond_2

    .line 23
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    iget v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectWidth:I

    .line 31
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iget v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectWidth:I

    .line 37
    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 39
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    :goto_0
    return-void
    .line 46
.end method

.method public setCalendar(Lmiuix/pickerwidget/date/Calendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    return-void
    .line 4
.end method

.method public final setCarrierTextColor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 7
    move-result v0

    .line 10
    iget v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderStatus:I

    .line 11
    const/4 v2, 0x1

    .line 13
    if-eq v1, v2, :cond_3

    .line 14
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 18
    move-result v1

    .line 21
    const/16 v2, 0x4d

    .line 22
    if-eqz v1, :cond_2

    .line 24
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 26
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 34
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 36
    invoke-static {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 44
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 46
    move-result v0

    .line 49
    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 50
    move-result v0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "#4D4D4D"

    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 57
    move-result v0

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 62
    move-result v0

    .line 65
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    :goto_1
    return-void
    .line 73
.end method

.method public final updateHealth(Lcom/miui/clock/module/HealthBean;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 6
    iget v1, v1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 8
    const/16 v2, 0x1f4

    .line 10
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eq v1, v2, :cond_8

    .line 15
    const/16 v2, 0x1f6

    .line 17
    if-eq v1, v2, :cond_5

    .line 19
    const/16 v2, 0x1f8

    .line 21
    if-eq v1, v2, :cond_2

    .line 23
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->hasSportTimeData()Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    move v3, v4

    .line 34
    :goto_0
    if-eqz v3, :cond_1

    .line 35
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 37
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->getSportTimeNow()I

    .line 39
    move-result v4

    .line 42
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 43
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->getSportTimeTarget()I

    .line 45
    move-result p1

    .line 48
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 49
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->getSportTimeNowString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 55
    invoke-virtual {v1}, Lcom/miui/clock/module/HealthBean;->getSportTimeTargetString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v2

    .line 64
    const v3, 0x7f110011    # @plurals/health_chart_sport_time_current_schedule_format_desc

    .line 65
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 68
    move-result-object v5

    .line 71
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 75
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v3

    .line 79
    const v5, 0x7f110012    # @plurals/health_chart_sport_time_goal_schedule_format_desc

    .line 80
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 83
    move-result-object v6

    .line 86
    invoke-virtual {v3, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v3

    .line 94
    const v5, 0x7f13050c    # @string/health_chart_sport_time_schedule_format_desc '%1$s, %2$s'

    .line 95
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 101
    invoke-virtual {v3, v5, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    move-object v1, v0

    .line 107
    :goto_1
    const p1, 0x7f110013    # @plurals/health_chart_sport_time_schedule_format

    .line 108
    invoke-virtual {p0, v0, p1, v4, v1}, Lcom/miui/clock/classic/ClassicTextAreaView;->getHeatherSpannableString(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 111
    move-result-object p1

    .line 114
    goto/16 :goto_8

    .line 115
    :cond_2
    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->hasStandCountData()Z

    .line 119
    move-result p1

    .line 122
    if-eqz p1, :cond_3

    .line 123
    goto :goto_2

    .line 125
    :cond_3
    move v3, v4

    .line 126
    :goto_2
    if-eqz v3, :cond_4

    .line 127
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 129
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->getStandCountNow()I

    .line 131
    move-result v4

    .line 134
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 135
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->getStandCountTarget()I

    .line 137
    move-result p1

    .line 140
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 141
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->getStandCountNowString()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 147
    invoke-virtual {v1}, Lcom/miui/clock/module/HealthBean;->getStandCountTargetString()Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 152
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 153
    move-result-object v2

    .line 156
    const v3, 0x7f110014    # @plurals/health_chart_stand_count_schedule_format_desc

    .line 157
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 160
    move-result-object v5

    .line 163
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 167
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 168
    move-result-object v3

    .line 171
    const v5, 0x7f110015    # @plurals/health_chart_stand_goal_schedule_format_desc

    .line 172
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 175
    move-result-object v6

    .line 178
    invoke-virtual {v3, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    move-result-object p1

    .line 182
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 183
    move-result-object v3

    .line 186
    const v5, 0x7f13050d    # @string/health_chart_stand_schedule_format_desc '%1$s, %2$s'

    .line 187
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 190
    move-result-object p1

    .line 193
    invoke-virtual {v3, v5, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    move-result-object v5

    .line 197
    goto :goto_3

    .line 198
    :cond_4
    move-object v1, v0

    .line 199
    :goto_3
    const p1, 0x7f110016    # @plurals/health_chart_stand_schedule_format

    .line 200
    invoke-virtual {p0, v0, p1, v4, v1}, Lcom/miui/clock/classic/ClassicTextAreaView;->getHeatherSpannableString(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 203
    move-result-object p1

    .line 206
    goto/16 :goto_8

    .line 207
    :cond_5
    if-eqz p1, :cond_6

    .line 209
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->hasCaloriesData()Z

    .line 211
    move-result p1

    .line 214
    if-eqz p1, :cond_6

    .line 215
    goto :goto_4

    .line 217
    :cond_6
    move v3, v4

    .line 218
    :goto_4
    if-eqz v3, :cond_7

    .line 219
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 221
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->getCaloriesNow()I

    .line 223
    move-result v4

    .line 226
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 227
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->getCaloriesTarget()I

    .line 229
    move-result p1

    .line 232
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 233
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->getCaloriesNowString()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 239
    invoke-virtual {v1}, Lcom/miui/clock/module/HealthBean;->getCaloriesTargetString()Ljava/lang/String;

    .line 241
    move-result-object v1

    .line 244
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 245
    move-result-object v2

    .line 248
    const v3, 0x7f11000e    # @plurals/health_chart_calories_burned_schedule_format_desc

    .line 249
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 252
    move-result-object v5

    .line 255
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    move-result-object v2

    .line 259
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 260
    move-result-object v3

    .line 263
    const v5, 0x7f11000f    # @plurals/health_chart_calories_goal_schedule_format_desc

    .line 264
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 267
    move-result-object v6

    .line 270
    invoke-virtual {v3, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    move-result-object p1

    .line 274
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 275
    move-result-object v3

    .line 278
    const v5, 0x7f130505    # @string/health_chart_calories_schedule_format_desc '%1$s, %2$s'

    .line 279
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 282
    move-result-object p1

    .line 285
    invoke-virtual {v3, v5, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    move-result-object v5

    .line 289
    goto :goto_5

    .line 290
    :cond_7
    move-object v1, v0

    .line 291
    :goto_5
    const p1, 0x7f110010    # @plurals/health_chart_calories_schedule_format

    .line 292
    invoke-virtual {p0, v0, p1, v4, v1}, Lcom/miui/clock/classic/ClassicTextAreaView;->getHeatherSpannableString(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 295
    move-result-object p1

    .line 298
    goto :goto_8

    .line 299
    :cond_8
    if-eqz p1, :cond_9

    .line 300
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->hasStepCountData()Z

    .line 302
    move-result p1

    .line 305
    if-eqz p1, :cond_9

    .line 306
    goto :goto_6

    .line 308
    :cond_9
    move v3, v4

    .line 309
    :goto_6
    if-eqz v3, :cond_a

    .line 310
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 312
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->getStepCountNow()I

    .line 314
    move-result v4

    .line 317
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 318
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->getStepCountTarget()I

    .line 320
    move-result p1

    .line 323
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 324
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->getStepCountNowString()Ljava/lang/String;

    .line 326
    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 330
    invoke-virtual {v1}, Lcom/miui/clock/module/HealthBean;->getStepCountTargetString()Ljava/lang/String;

    .line 332
    move-result-object v1

    .line 335
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 336
    move-result-object v2

    .line 339
    const v3, 0x7f110017    # @plurals/health_chart_step_count_current_schedule_format_desc

    .line 340
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 343
    move-result-object v5

    .line 346
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    move-result-object v2

    .line 350
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 351
    move-result-object v3

    .line 354
    const v5, 0x7f110018    # @plurals/health_chart_step_count_goal_schedule_format_desc

    .line 355
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 358
    move-result-object v6

    .line 361
    invoke-virtual {v3, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    move-result-object p1

    .line 365
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 366
    move-result-object v3

    .line 369
    const v5, 0x7f13050e    # @string/health_chart_step_count_schedule_format_desc '%1$s, %2$s'

    .line 370
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 373
    move-result-object p1

    .line 376
    invoke-virtual {v3, v5, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    move-result-object v5

    .line 380
    goto :goto_7

    .line 381
    :cond_a
    move-object v1, v0

    .line 382
    :goto_7
    const p1, 0x7f110019    # @plurals/health_chart_step_count_schedule_format

    .line 383
    invoke-virtual {p0, v0, p1, v4, v1}, Lcom/miui/clock/classic/ClassicTextAreaView;->getHeatherSpannableString(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 386
    move-result-object p1

    .line 389
    :goto_8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    if-nez v5, :cond_b

    .line 393
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 395
    move-result-object p1

    .line 398
    const v0, 0x7f130510    # @string/health_no_data 'No health data'

    .line 399
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 402
    move-result-object v5

    .line 405
    :cond_b
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 406
    return-void
    .line 409
.end method

.method public final updateServiceProviderColor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "constant_carrier_status"

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderStatus:I

    .line 15
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 21
    const/16 v1, 0xb

    .line 23
    if-ne v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->setCarrierTextColor()V

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v1, "updateServiceProviderStatus = "

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget p0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderStatus:I

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    const-string v0, "ClassicTextAreaView"

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
    .line 52
.end method

.method public final updateServiceProviderName()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "constant_carrier_info"

    .line 8
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderName:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget v1, v1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 20
    const/16 v2, 0xb

    .line 22
    if-ne v1, v2, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v1, "updateServiceProviderName = "

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mServiceProviderName:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    const-string v0, "ClassicTextAreaView"

    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
    .line 51
.end method

.method public final updateWeather(Lcom/miui/clock/module/WeatherBean;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->needDrawRect:Z

    .line 5
    const/4 v1, 0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v0

    .line 12
    :goto_0
    const v3, 0x7f130535    # @string/humidity_format 'Humidity %s'

    .line 13
    const v4, 0x7f130b0e    # @string/somatosensory_temperature_format 'Feels like %s°'

    .line 16
    const v5, 0x7f130c3e    # @string/uvi_format 'UVI %1$s %2$s'

    .line 19
    const v6, 0x7f13014f    # @string/aqi_format 'AQI %s'

    .line 22
    const v7, 0x7f130862    # @string/normal_temperature_format '%1$s° %2$s'

    .line 25
    const v8, 0x7f130b54    # @string/sunrise_time_format 'Sunrise %s'

    .line 28
    const-string v9, ""

    .line 31
    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p1

    .line 38
    const v2, 0x7f130c6a    # @string/weather_no_data 'No weather data'

    .line 39
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 46
    iget v2, v2, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 48
    packed-switch v2, :pswitch_data_0

    .line 50
    :pswitch_0
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    goto/16 :goto_2

    .line 56
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mPercentSignPlaceholderText:Ljava/lang/String;

    .line 62
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 67
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    goto :goto_1

    .line 75
    :pswitch_2
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iput-boolean v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->needDrawRect:Z

    .line 79
    goto :goto_1

    .line 81
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 86
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 91
    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 95
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    goto :goto_1

    .line 99
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 104
    filled-new-array {v3, v9}, [Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 109
    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 113
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iput-boolean v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->needDrawRect:Z

    .line 117
    goto :goto_1

    .line 119
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 120
    move-result-object v1

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 128
    filled-new-array {v3, v3}, [Ljava/lang/Object;

    .line 130
    move-result-object v3

    .line 133
    const v4, 0x7f130489    # @string/format_hour_minute '%1$s:%2$s'

    .line 134
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 140
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 141
    move-result-object v2

    .line 144
    invoke-virtual {v1, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 148
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    goto :goto_1

    .line 152
    :pswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 153
    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 157
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 159
    move-result-object v2

    .line 162
    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 166
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    goto :goto_1

    .line 170
    :pswitch_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 171
    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 175
    filled-new-array {v3, v9}, [Ljava/lang/Object;

    .line 177
    move-result-object v3

    .line 180
    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 184
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iput-boolean v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->needDrawRect:Z

    .line 188
    :goto_1
    move-object v9, p1

    .line 190
    :goto_2
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    goto/16 :goto_3

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 196
    iget v1, v1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 198
    packed-switch v1, :pswitch_data_1

    .line 200
    :pswitch_8
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    goto/16 :goto_3

    .line 209
    :pswitch_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 211
    move-result-object v1

    .line 214
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 215
    move-result-object v2

    .line 218
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getHumidity()I

    .line 219
    move-result p1

    .line 222
    int-to-float p1, p1

    .line 223
    const/high16 v4, 0x42c80000    # 100.0f

    .line 224
    div-float/2addr p1, v4

    .line 226
    float-to-double v4, p1

    .line 227
    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 228
    move-result-object p1

    .line 231
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 232
    move-result-object p1

    .line 235
    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    move-result-object p1

    .line 239
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 243
    goto/16 :goto_3

    .line 246
    :pswitch_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 248
    move-result-object v1

    .line 251
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 252
    move-result-object v2

    .line 255
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getWindDescResIdFull()I

    .line 256
    move-result v3

    .line 259
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 260
    move-result-object v2

    .line 263
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getWindStrength()Ljava/lang/String;

    .line 264
    move-result-object p1

    .line 267
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 268
    move-result-object p1

    .line 271
    const v2, 0x7f130d1d    # @string/wind_format '%1$s | Level %2$s'

    .line 272
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    move-result-object p1

    .line 278
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 282
    goto/16 :goto_3

    .line 285
    :pswitch_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 287
    move-result-object v1

    .line 290
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSomatosensoryTemperature()I

    .line 291
    move-result p1

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 295
    move-result-object p1

    .line 298
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 299
    move-result-object p1

    .line 302
    invoke-virtual {v1, v4, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 303
    move-result-object p1

    .line 306
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    goto/16 :goto_3

    .line 313
    :pswitch_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 315
    move-result-object v1

    .line 318
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getUVILevel()Ljava/lang/String;

    .line 319
    move-result-object v2

    .line 322
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 323
    move-result-object v3

    .line 326
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getUVILevelDescResID()I

    .line 327
    move-result v4

    .line 330
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 331
    move-result-object v3

    .line 334
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 335
    move-result-object v2

    .line 338
    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 342
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 346
    move-result-object v1

    .line 349
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getUVILevel()Ljava/lang/String;

    .line 350
    move-result-object v2

    .line 353
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 354
    move-result-object v3

    .line 357
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getUVILevelDescResID()I

    .line 358
    move-result p1

    .line 361
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 362
    move-result-object p1

    .line 365
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 366
    move-result-object p1

    .line 369
    const v2, 0x7f130c3f    # @string/uvi_format_desc 'Ultraviolet index: %1$s, %2$s'

    .line 370
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 373
    move-result-object p1

    .line 376
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 377
    goto/16 :goto_3

    .line 380
    :pswitch_d
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 382
    const/16 v2, 0x12

    .line 384
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 386
    move-result v1

    .line 389
    mul-int/lit8 v1, v1, 0x3c

    .line 390
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 392
    const/16 v3, 0x14

    .line 394
    invoke-virtual {v2, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 396
    move-result v2

    .line 399
    add-int/2addr v2, v1

    .line 400
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunriseMinuteTime()I

    .line 401
    move-result v1

    .line 404
    if-ge v2, v1, :cond_2

    .line 405
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 407
    move-result-object v1

    .line 410
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunriseTimeString()Ljava/lang/String;

    .line 411
    move-result-object v2

    .line 414
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 415
    move-result-object v2

    .line 418
    invoke-virtual {v1, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 419
    move-result-object v1

    .line 422
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 426
    move-result-object v1

    .line 429
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunriseTimeString()Ljava/lang/String;

    .line 430
    move-result-object p1

    .line 433
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 434
    move-result-object p1

    .line 437
    const v2, 0x7f130b55    # @string/sunrise_time_format_desc 'Sunrise time: %s'

    .line 438
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 441
    move-result-object p1

    .line 444
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 445
    goto/16 :goto_3

    .line 448
    :cond_2
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunsetMinuteTime()I

    .line 450
    move-result v1

    .line 453
    if-ge v2, v1, :cond_3

    .line 454
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 456
    move-result-object v1

    .line 459
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunsetTimeString()Ljava/lang/String;

    .line 460
    move-result-object v2

    .line 463
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 464
    move-result-object v2

    .line 467
    const v3, 0x7f130b57    # @string/sunset_time_format 'Sunset %s'

    .line 468
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 471
    move-result-object v1

    .line 474
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 478
    move-result-object v1

    .line 481
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunsetTimeString()Ljava/lang/String;

    .line 482
    move-result-object p1

    .line 485
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 486
    move-result-object p1

    .line 489
    const v2, 0x7f130b58    # @string/sunset_time_format_desc 'Sunset time: %s'

    .line 490
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 493
    move-result-object p1

    .line 496
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 497
    goto :goto_3

    .line 500
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 501
    move-result-object v1

    .line 504
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunriseTomorrowTimeString()Ljava/lang/String;

    .line 505
    move-result-object v2

    .line 508
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 509
    move-result-object v2

    .line 512
    invoke-virtual {v1, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 513
    move-result-object v1

    .line 516
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 520
    move-result-object v1

    .line 523
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunriseTomorrowTimeString()Ljava/lang/String;

    .line 524
    move-result-object p1

    .line 527
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 528
    move-result-object p1

    .line 531
    const v2, 0x7f130b56    # @string/sunrise_time_format_tomorrow_desc 'Tomorrow's sunrise: %s'

    .line 532
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 535
    move-result-object p1

    .line 538
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 539
    goto :goto_3

    .line 542
    :pswitch_e
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 543
    move-result-object v1

    .line 546
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getAQILevel()Ljava/lang/String;

    .line 547
    move-result-object v2

    .line 550
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 551
    move-result-object v2

    .line 554
    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 555
    move-result-object v1

    .line 558
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 562
    move-result-object v1

    .line 565
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getAQILevel()Ljava/lang/String;

    .line 566
    move-result-object p1

    .line 569
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 570
    move-result-object p1

    .line 573
    const v2, 0x7f130150    # @string/aqi_format_desc 'Air quality index: %s'

    .line 574
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 577
    move-result-object p1

    .line 580
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 581
    goto :goto_3

    .line 584
    :pswitch_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 585
    move-result-object v1

    .line 588
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getTemperatureWithoutUnit()Ljava/lang/String;

    .line 589
    move-result-object v2

    .line 592
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getDescription()Ljava/lang/String;

    .line 593
    move-result-object p1

    .line 596
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 597
    move-result-object p1

    .line 600
    invoke-virtual {v1, v7, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 601
    move-result-object p1

    .line 604
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 608
    :goto_3
    iget-boolean p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->needDrawRect:Z

    .line 611
    if-eqz p1, :cond_5

    .line 613
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 615
    move-result p1

    .line 618
    if-eqz p1, :cond_4

    .line 619
    iget p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectWidth:I

    .line 621
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 623
    goto :goto_4

    .line 626
    :cond_4
    iget p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView;->rectWidth:I

    .line 627
    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 629
    goto :goto_4

    .line 632
    :cond_5
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 633
    :goto_4
    return-void

    .line 636
    nop

    .line 637
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 638
    :pswitch_data_1
    .packed-switch 0x190
        :pswitch_f
        :pswitch_e
        :pswitch_8
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
    .line 660
.end method
