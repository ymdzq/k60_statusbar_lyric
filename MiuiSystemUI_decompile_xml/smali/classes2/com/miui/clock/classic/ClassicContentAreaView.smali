.class public Lcom/miui/clock/classic/ClassicContentAreaView;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public big_msg_view_stub:Landroid/view/ViewStub;

.field public hasHealthMsgChartViewInit:Z

.field public hasHealthMsgSleepChartViewInit:Z

.field public hasHealthMsgTextViewInit:Z

.field public hasHumidityIconViewInit:Z

.field public hasRightBottomMsgInit:Z

.field public hasRightTopMsgInit:Z

.field public hasRightTopMsgWeatherInit:Z

.field public hasRightTopRainMsgInit:Z

.field public hasSomatosensoryMsgInit:Z

.field public hasSunMoveViewInit:Z

.field public health_msg_chart_view_stub:Landroid/view/ViewStub;

.field public health_msg_sleep_chart_view_stub:Landroid/view/ViewStub;

.field public health_msg_text_view_stub:Landroid/view/ViewStub;

.field public humidity_icon_view_stub:Landroid/view/ViewStub;

.field public mBigMsgView:Landroid/widget/TextView;

.field public mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

.field public mContext:Landroid/content/Context;

.field public mFirstInit:Z

.field public mHasNumberHourMin:Z

.field public mHealthBean:Lcom/miui/clock/module/HealthBean;

.field public mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

.field public mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

.field public mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

.field public mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

.field public mPlaceholderText:Ljava/lang/String;

.field public mPressureIcon:Landroid/widget/ImageView;

.field public mRainIcon:Landroid/widget/ImageView;

.field public mResources:Landroid/content/res/Resources;

.field public mRightBottomMsg:Landroid/widget/TextView;

.field public mRightTopMsg:Landroid/widget/TextView;

.field public mRightTopMsgWeather:Landroid/widget/TextView;

.field public mRightTopRainMsg:Landroid/widget/TextView;

.field public mScreenWidth:I

.field public mSomatosensoryIcon:Landroid/widget/ImageView;

.field public mSomatosensoryMsg:Landroid/widget/TextView;

.field public mStyle:I

.field public mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

.field public mTextSlash:Ljava/lang/String;

.field public mTimeView:Lcom/miui/clock/MiuiTextGlassView;

.field public mTopHealthIcon:Landroid/widget/ImageView;

.field public mType:I

.field public mWeatherBean:Lcom/miui/clock/module/WeatherBean;

.field public mWeatherIcon:Landroid/widget/ImageView;

.field public mWindIcon:Landroid/widget/ImageView;

.field public pressure_icon_view_stub:Landroid/view/ViewStub;

.field public rain_icon_view_stub:Landroid/view/ViewStub;

.field public right_bottom_msg_view_stub:Landroid/view/ViewStub;

.field public right_top_msg_view_stub:Landroid/view/ViewStub;

.field public right_top_msg_weather_view_stub:Landroid/view/ViewStub;

.field public right_top_rain_msg_view_stub:Landroid/view/ViewStub;

.field public somatosensory_icon_view_stub:Landroid/view/ViewStub;

.field public somatosensory_msg_view_stub:Landroid/view/ViewStub;

.field public sun_move_view_stub:Landroid/view/ViewStub;

.field public time_view_stub:Landroid/view/ViewStub;

.field public top_health_icon_stub:Landroid/view/ViewStub;

.field public weather_icon_view_stub:Landroid/view/ViewStub;

.field public wind_icon_view_stub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mFirstInit:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgInit:Z

    .line 4
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopRainMsgInit:Z

    .line 5
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightBottomMsgInit:Z

    .line 6
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSomatosensoryMsgInit:Z

    .line 7
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgTextViewInit:Z

    .line 8
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHumidityIconViewInit:Z

    .line 9
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgChartViewInit:Z

    .line 10
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgSleepChartViewInit:Z

    .line 11
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSunMoveViewInit:Z

    .line 12
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgWeatherInit:Z

    .line 13
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mFirstInit:Z

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgInit:Z

    .line 17
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopRainMsgInit:Z

    .line 18
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightBottomMsgInit:Z

    .line 19
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSomatosensoryMsgInit:Z

    .line 20
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgTextViewInit:Z

    .line 21
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHumidityIconViewInit:Z

    .line 22
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgChartViewInit:Z

    .line 23
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgSleepChartViewInit:Z

    .line 24
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSunMoveViewInit:Z

    .line 25
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgWeatherInit:Z

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mFirstInit:Z

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgInit:Z

    .line 30
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopRainMsgInit:Z

    .line 31
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightBottomMsgInit:Z

    .line 32
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSomatosensoryMsgInit:Z

    .line 33
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgTextViewInit:Z

    .line 34
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHumidityIconViewInit:Z

    .line 35
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgChartViewInit:Z

    .line 36
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgSleepChartViewInit:Z

    .line 37
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSunMoveViewInit:Z

    .line 38
    iput-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgWeatherInit:Z

    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static initHealthMsgChartData(Lcom/miui/clock/classic/HealthMsgChartView;III)V
    .locals 2

    .line 1
    if-eqz p0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

    .line 4
    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

    .line 14
    const v1, 0x7f13085b    # @string/no_data_placeholder_string '--'

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPlaceholderText:Ljava/lang/String;

    .line 23
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mainColor:I

    .line 25
    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

    .line 29
    const v1, 0x7f060097    # @color/classic_color_white '#ffffff'

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 34
    move-result v0

    .line 37
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mainColor:I

    .line 38
    :cond_0
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->minorColor:I

    .line 40
    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

    .line 44
    const v1, 0x7f06009a    # @color/classic_color_white_60 '#99ffffff'

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 49
    move-result v0

    .line 52
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->minorColor:I

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/miui/clock/classic/HealthMsgChartView;->readSize()V

    .line 55
    :cond_2
    const/16 v0, 0x1f5

    .line 58
    if-eq p1, v0, :cond_4

    .line 60
    const/16 v0, 0x1f7

    .line 62
    if-eq p1, v0, :cond_3

    .line 64
    const-string p1, ""

    .line 66
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIconDesc:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mContext:Landroid/content/Context;

    .line 70
    sget-object v0, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 72
    const v0, 0x7f080ec7    # @drawable/health_icon_sport_time_25 'res/drawable/health_icon_sport_time_25.xml'

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 81
    goto :goto_0

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

    .line 84
    const v0, 0x7f130506    # @string/health_chart_calories_unit 'Calories'

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 92
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIconDesc:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mContext:Landroid/content/Context;

    .line 95
    sget-object v0, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 97
    const v0, 0x7f080ec5    # @drawable/health_icon_calories_25 'res/drawable/health_icon_calories_25.xml'

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 102
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    goto :goto_0

    .line 108
    :cond_4
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

    .line 109
    const v0, 0x7f13050f    # @string/health_chart_step_count_unit 'Steps'

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIconDesc:Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mContext:Landroid/content/Context;

    .line 120
    sget-object v0, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 122
    const v0, 0x7f080ec9    # @drawable/health_icon_step_count_25 'res/drawable/health_icon_step_count_25.xml'

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 127
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 131
    :goto_0
    const p1, 0x7f130484    # @string/format_count_denominator_2 '/%s'

    .line 133
    if-gez p2, :cond_5

    .line 136
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPlaceholderText:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->now:Ljava/lang/String;

    .line 140
    iget-object p3, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

    .line 142
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 144
    move-result-object p2

    .line 147
    invoke-virtual {p3, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 151
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->denominatorTarget:Ljava/lang/String;

    .line 152
    goto :goto_1

    .line 154
    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 155
    move-result-object p2

    .line 158
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->now:Ljava/lang/String;

    .line 159
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

    .line 161
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 163
    move-result-object p3

    .line 166
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 167
    move-result-object p3

    .line 170
    invoke-virtual {p2, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->denominatorTarget:Ljava/lang/String;

    .line 175
    :goto_1
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->dataList:Ljava/util/List;

    .line 177
    check-cast p1, Ljava/util/ArrayList;

    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 181
    const/4 p1, 0x0

    .line 184
    iput p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->max:I

    .line 185
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->dataList:Ljava/util/List;

    .line 187
    check-cast p2, Ljava/util/ArrayList;

    .line 189
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    move-result-object p2

    .line 194
    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    move-result p3

    .line 198
    if-eqz p3, :cond_7

    .line 199
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    move-result-object p3

    .line 204
    check-cast p3, Ljava/lang/Integer;

    .line 205
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 207
    move-result v0

    .line 210
    iget v1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->max:I

    .line 211
    if-le v0, v1, :cond_6

    .line 213
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 215
    move-result p3

    .line 218
    iput p3, p0, Lcom/miui/clock/classic/HealthMsgChartView;->max:I

    .line 219
    goto :goto_2

    .line 221
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->dataList:Ljava/util/List;

    .line 222
    check-cast p2, Ljava/util/ArrayList;

    .line 224
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 226
    move-result p2

    .line 229
    const/16 p3, 0x18

    .line 230
    if-ge p2, p3, :cond_8

    .line 232
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->dataList:Ljava/util/List;

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object p3

    .line 239
    check-cast p2, Ljava/util/ArrayList;

    .line 240
    invoke-virtual {p2, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 242
    goto :goto_3

    .line 245
    :cond_8
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 246
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 248
    move-result p3

    .line 251
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 254
    move-result v0

    .line 257
    invoke-virtual {p2, p1, p1, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 261
    iget p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mainColor:I

    .line 263
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 265
    invoke-virtual {p0}, Lcom/miui/clock/classic/HealthMsgChartView;->measureTextWidth()V

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 274
    :cond_9
    return-void
    .line 277
.end method

.method public static initHealthMsgTextData(Lcom/miui/clock/classic/HealthMsgTextView;IIIIII)V
    .locals 4

    .line 1
    if-eqz p0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 14
    const v1, 0x7f060097    # @color/classic_color_white '#ffffff'

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 19
    move-result v0

    .line 22
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mainColor:I

    .line 23
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 25
    const v1, 0x7f06009a    # @color/classic_color_white_60 '#99ffffff'

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 30
    move-result v0

    .line 33
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->minorColor:I

    .line 34
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 36
    const v1, 0x7f13085b    # @string/no_data_placeholder_string '--'

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPlaceText:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mContext:Landroid/content/Context;

    .line 47
    sget-object v1, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 49
    const v1, 0x7f080ec5    # @drawable/health_icon_calories_25 'res/drawable/health_icon_calories_25.xml'

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mContext:Landroid/content/Context;

    .line 60
    const v1, 0x7f080ec9    # @drawable/health_icon_step_count_25 'res/drawable/health_icon_step_count_25.xml'

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mContext:Landroid/content/Context;

    .line 71
    const v1, 0x7f080ec7    # @drawable/health_icon_sport_time_25 'res/drawable/health_icon_sport_time_25.xml'

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 76
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->sportTimeIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 84
    move-result v1

    .line 87
    iget-object v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesIcon:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 90
    move-result v2

    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountIcon:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 100
    move-result v1

    .line 103
    iget-object v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 106
    move-result v2

    .line 109
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->sportTimeIcon:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 115
    move-result v1

    .line 118
    iget-object v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->sportTimeIcon:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 121
    move-result v2

    .line 124
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    invoke-virtual {p0}, Lcom/miui/clock/classic/HealthMsgTextView;->readSize()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesIcon:Landroid/graphics/drawable/Drawable;

    .line 131
    iget v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mainColor:I

    .line 133
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 135
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    iget v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mainColor:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 142
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->sportTimeIcon:Landroid/graphics/drawable/Drawable;

    .line 145
    iget v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mainColor:I

    .line 147
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 149
    if-gez p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPlaceText:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->calories:Ljava/lang/String;

    .line 156
    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 162
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->calories:Ljava/lang/String;

    .line 163
    :goto_0
    const p1, 0x7f130484    # @string/format_count_denominator_2 '/%s'

    .line 165
    if-gez p2, :cond_2

    .line 168
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 170
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPlaceText:Ljava/lang/String;

    .line 172
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 174
    move-result-object v0

    .line 177
    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    move-result-object p2

    .line 181
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesTarget:Ljava/lang/String;

    .line 182
    goto :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 185
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 187
    move-result-object p2

    .line 190
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 191
    move-result-object p2

    .line 194
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    move-result-object p2

    .line 198
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesTarget:Ljava/lang/String;

    .line 199
    :goto_1
    if-gez p3, :cond_3

    .line 201
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPlaceText:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCount:Ljava/lang/String;

    .line 205
    goto :goto_2

    .line 207
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 208
    move-result-object p2

    .line 211
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCount:Ljava/lang/String;

    .line 212
    :goto_2
    if-gez p4, :cond_4

    .line 214
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 216
    iget-object p3, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPlaceText:Ljava/lang/String;

    .line 218
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 220
    move-result-object p3

    .line 223
    invoke-virtual {p2, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    move-result-object p2

    .line 227
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountTarget:Ljava/lang/String;

    .line 228
    goto :goto_3

    .line 230
    :cond_4
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 231
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 233
    move-result-object p3

    .line 236
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 237
    move-result-object p3

    .line 240
    invoke-virtual {p2, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    move-result-object p2

    .line 244
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountTarget:Ljava/lang/String;

    .line 245
    :goto_3
    if-gez p5, :cond_5

    .line 247
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPlaceText:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCount:Ljava/lang/String;

    .line 251
    goto :goto_4

    .line 253
    :cond_5
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 254
    move-result-object p2

    .line 257
    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCount:Ljava/lang/String;

    .line 258
    :goto_4
    if-gez p6, :cond_6

    .line 260
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 262
    iget-object p3, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPlaceText:Ljava/lang/String;

    .line 264
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 266
    move-result-object p3

    .line 269
    invoke-virtual {p2, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    move-result-object p1

    .line 273
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountTarget:Ljava/lang/String;

    .line 274
    goto :goto_5

    .line 276
    :cond_6
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 277
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 279
    move-result-object p3

    .line 282
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 283
    move-result-object p3

    .line 286
    invoke-virtual {p2, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    move-result-object p1

    .line 290
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountTarget:Ljava/lang/String;

    .line 291
    :goto_5
    invoke-virtual {p0}, Lcom/miui/clock/classic/HealthMsgTextView;->measureTextWidth()V

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 299
    :cond_7
    return-void
    .line 302
.end method

.method public static needSwitchTypeLanguage()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 22
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0
    .line 45
.end method

.method public static setImageResource(Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method public static setMargins(Landroid/view/View;III)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    return-void
    .line 15
.end method

.method public static setMarginsAndSize(Landroid/view/View;IIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 9
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 12
    iput p5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    return-void
    .line 19
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method public static setViewVisibility(ILandroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method public static updateDrawableColor(Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 13
    :cond_1
    return-void
    .line 16
.end method


# virtual methods
.method public final checkBigMsgView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->big_msg_view_stub:Landroid/view/ViewStub;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 14
    :cond_0
    return-void
    .line 16
.end method

.method public final checkRightBottomMsg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_bottom_msg_view_stub:Landroid/view/ViewStub;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 14
    :cond_0
    return-void
    .line 16
.end method

.method public final checkRightTopMsg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_top_msg_view_stub:Landroid/view/ViewStub;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 14
    :cond_0
    return-void
    .line 16
.end method

.method public final getDimen(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

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

.method public final init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 8
    const v0, 0x7f13085b    # @string/no_data_placeholder_string '--'

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 19
    const v0, 0x7f130b70    # @string/text_slash '/'

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTextSlash:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 32
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 36
    move-result p1

    .line 39
    iput p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mScreenWidth:I

    .line 40
    return-void
    .line 42
.end method

.method public final initData(Lcom/miui/clock/module/MiuiClassicClockInfo;IZ)V
    .locals 8

    .line 1
    iput-boolean p3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHasNumberHourMin:Z

    .line 2
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 4
    iget p3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 6
    if-eq p3, p2, :cond_0

    .line 8
    iput p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 10
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->initViewVisible()V

    .line 12
    :cond_0
    iget-object p3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 15
    invoke-virtual {p3}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getStyle()I

    .line 17
    move-result p3

    .line 20
    iget v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 21
    const/4 v1, 0x0

    .line 23
    if-eq v0, p3, :cond_1

    .line 24
    const/4 p3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move p3, v1

    .line 28
    :goto_0
    invoke-static {p2}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isTimeType(I)Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 35
    if-eqz v2, :cond_2

    .line 37
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 39
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 41
    move-result v3

    .line 44
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 45
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getStyle()I

    .line 47
    move-result v4

    .line 50
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 51
    iget-boolean v6, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->enableDiffusion:Z

    .line 53
    const/4 v7, 0x0

    .line 55
    move v5, p2

    .line 56
    invoke-static/range {v2 .. v7}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;IIIZZ)V

    .line 57
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->initTextViewStyle(Z)V

    .line 61
    :goto_1
    if-nez p3, :cond_3

    .line 64
    iget-boolean p2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mFirstInit:Z

    .line 66
    if-eqz p2, :cond_4

    .line 68
    :cond_3
    iput-boolean v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mFirstInit:Z

    .line 70
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->onScreenSizeChange()V

    .line 72
    :cond_4
    invoke-virtual {p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 75
    move-result p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateColor(I)V

    .line 79
    return-void
    .line 82
.end method

.method public final initTextViewStyle(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 2
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getStyle()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 12
    invoke-static {v1, v0, v2}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setBigMsgTextStyle(Landroid/widget/TextView;II)V

    .line 14
    :cond_0
    iget v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 17
    const/4 v2, 0x1

    .line 19
    if-ne v1, v0, :cond_2

    .line 20
    if-eqz p1, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    iput v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 27
    move p1, v2

    .line 29
    :goto_1
    const/16 v1, 0x14a

    .line 30
    const/16 v3, 0x16

    .line 32
    if-eq v0, v3, :cond_3

    .line 34
    const/16 v4, 0x17c

    .line 36
    invoke-static {v4}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 38
    move-result-object v4

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    invoke-static {v1}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 43
    move-result-object v4

    .line 46
    :goto_2
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgInit:Z

    .line 47
    if-eqz v5, :cond_4

    .line 49
    if-eqz p1, :cond_5

    .line 51
    :cond_4
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 53
    if-eqz v5, :cond_5

    .line 55
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgInit:Z

    .line 57
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    :cond_5
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopRainMsgInit:Z

    .line 62
    if-eqz v5, :cond_6

    .line 64
    if-eqz p1, :cond_7

    .line 66
    :cond_6
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopRainMsg:Landroid/widget/TextView;

    .line 68
    if-eqz v5, :cond_7

    .line 70
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopRainMsgInit:Z

    .line 72
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    :cond_7
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightBottomMsgInit:Z

    .line 77
    if-eqz v5, :cond_8

    .line 79
    if-eqz p1, :cond_9

    .line 81
    :cond_8
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 83
    if-eqz v5, :cond_9

    .line 85
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightBottomMsgInit:Z

    .line 87
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    :cond_9
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSomatosensoryMsgInit:Z

    .line 92
    if-eqz v5, :cond_a

    .line 94
    if-eqz p1, :cond_b

    .line 96
    :cond_a
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 98
    if-eqz v5, :cond_b

    .line 100
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSomatosensoryMsgInit:Z

    .line 102
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    :cond_b
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgTextViewInit:Z

    .line 107
    if-eqz v5, :cond_c

    .line 109
    if-eqz p1, :cond_d

    .line 111
    :cond_c
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 113
    if-eqz v5, :cond_d

    .line 115
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgTextViewInit:Z

    .line 117
    invoke-virtual {v5, v4}, Lcom/miui/clock/classic/HealthMsgTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    :cond_d
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHumidityIconViewInit:Z

    .line 122
    if-eqz v5, :cond_e

    .line 124
    if-eqz p1, :cond_f

    .line 126
    :cond_e
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 128
    if-eqz v5, :cond_f

    .line 130
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHumidityIconViewInit:Z

    .line 132
    invoke-virtual {v5, v4}, Lcom/miui/clock/classic/HumidityIconView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    :cond_f
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgChartViewInit:Z

    .line 137
    if-eqz v5, :cond_10

    .line 139
    if-eqz p1, :cond_11

    .line 141
    :cond_10
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 143
    if-eqz v5, :cond_11

    .line 145
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgChartViewInit:Z

    .line 147
    invoke-virtual {v5, v4}, Lcom/miui/clock/classic/HealthMsgChartView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    :cond_11
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgSleepChartViewInit:Z

    .line 152
    if-eqz v5, :cond_12

    .line 154
    if-eqz p1, :cond_13

    .line 156
    :cond_12
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 158
    if-eqz v5, :cond_13

    .line 160
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasHealthMsgSleepChartViewInit:Z

    .line 162
    invoke-virtual {v5, v4}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    :cond_13
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSunMoveViewInit:Z

    .line 167
    if-eqz v5, :cond_14

    .line 169
    if-eqz p1, :cond_15

    .line 171
    :cond_14
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 173
    if-eqz v5, :cond_15

    .line 175
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasSunMoveViewInit:Z

    .line 177
    invoke-virtual {v5, v4}, Lcom/miui/clock/classic/SunMoveView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 179
    :cond_15
    iget-boolean v4, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgWeatherInit:Z

    .line 182
    if-eqz v4, :cond_16

    .line 184
    if-eqz p1, :cond_18

    .line 186
    :cond_16
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsgWeather:Landroid/widget/TextView;

    .line 188
    if-eqz p1, :cond_18

    .line 190
    iput-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->hasRightTopMsgWeatherInit:Z

    .line 192
    if-eq v0, v3, :cond_17

    .line 194
    const/16 p0, 0x208

    .line 196
    invoke-static {p0}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 198
    move-result-object p0

    .line 201
    goto :goto_3

    .line 202
    :cond_17
    invoke-static {v1}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 203
    move-result-object p0

    .line 206
    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 207
    :cond_18
    return-void
    .line 210
.end method

.method public final initViewVisible()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 2
    const/16 v1, 0x8

    .line 4
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 9
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 14
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopRainMsg:Landroid/widget/TextView;

    .line 19
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 21
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsgWeather:Landroid/widget/TextView;

    .line 24
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 26
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 29
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 34
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 39
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 44
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRainIcon:Landroid/widget/ImageView;

    .line 49
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 54
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 59
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 64
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 69
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTopHealthIcon:Landroid/widget/ImageView;

    .line 74
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 79
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 84
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 89
    invoke-static {v1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 94
    const-string v1, ""

    .line 96
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 101
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 106
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 111
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isTimeType(I)Z

    .line 113
    move-result v2

    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 120
    if-nez v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->time_view_stub:Landroid/view/ViewStub;

    .line 124
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 126
    move-result-object v2

    .line 129
    check-cast v2, Lcom/miui/clock/MiuiTextGlassView;

    .line 130
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 134
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 136
    goto/16 :goto_5

    .line 139
    :cond_1
    iget v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 141
    const/16 v4, 0xc8

    .line 143
    const/4 v5, 0x1

    .line 145
    if-lt v2, v4, :cond_2

    .line 146
    const/16 v4, 0xd4

    .line 148
    if-gt v2, v4, :cond_2

    .line 150
    move v4, v5

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    move v4, v3

    .line 154
    :goto_0
    if-eqz v4, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkBigMsgView()V

    .line 157
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 160
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 162
    invoke-static {}, Lcom/miui/clock/classic/ClassicContentAreaView;->needSwitchTypeLanguage()Z

    .line 165
    move-result v2

    .line 168
    if-eqz v2, :cond_3

    .line 169
    iget v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 171
    packed-switch v0, :pswitch_data_0

    .line 173
    :pswitch_0
    goto :goto_1

    .line 176
    :pswitch_1
    const/16 v0, 0xca

    .line 177
    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 179
    :pswitch_2
    goto/16 :goto_5

    .line 182
    :pswitch_3
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 184
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 186
    invoke-static {v2, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getSolarTerms(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;)Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    move-result v2

    .line 195
    if-nez v2, :cond_16

    .line 196
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 198
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 201
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 203
    goto/16 :goto_5

    .line 206
    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 208
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 211
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 213
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightBottomMsg()V

    .line 216
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 219
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 221
    goto/16 :goto_5

    .line 224
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 226
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 229
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 231
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 234
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 236
    invoke-static {v2, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getSolarTerms(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;)Ljava/lang/String;

    .line 238
    move-result-object v2

    .line 241
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 242
    move-result v2

    .line 245
    if-nez v2, :cond_16

    .line 246
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightBottomMsg()V

    .line 248
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 251
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 253
    goto/16 :goto_5

    .line 256
    :pswitch_6
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 258
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 260
    move-result-object v2

    .line 263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 264
    move-result-object v4

    .line 267
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 268
    move-result-object v4

    .line 271
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    move-result v2

    .line 275
    if-nez v2, :cond_16

    .line 276
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 278
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 281
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 283
    goto/16 :goto_5

    .line 286
    :pswitch_7
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 288
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 291
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 293
    goto/16 :goto_5

    .line 296
    :cond_4
    invoke-static {v2}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 298
    move-result v2

    .line 301
    const-string v4, ", parent = "

    .line 302
    const-string v6, "ClassicContentAreaView"

    .line 304
    if-eqz v2, :cond_10

    .line 306
    iget v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 308
    packed-switch v2, :pswitch_data_2

    .line 310
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkBigMsgView()V

    .line 313
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 316
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 318
    goto/16 :goto_2

    .line 321
    :pswitch_8
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkBigMsgView()V

    .line 323
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 326
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 328
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 331
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 334
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 336
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 339
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 341
    const v8, 0x7f130152    # @string/atmosphere_pressure_unit 'hPa'

    .line 343
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 346
    move-result-object v7

    .line 349
    invoke-static {v2, v7}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 353
    if-nez v2, :cond_5

    .line 355
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->pressure_icon_view_stub:Landroid/view/ViewStub;

    .line 357
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 359
    move-result-object v2

    .line 362
    check-cast v2, Landroid/widget/ImageView;

    .line 363
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 365
    :cond_5
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 367
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 369
    goto/16 :goto_3

    .line 372
    :pswitch_9
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 374
    if-nez v2, :cond_6

    .line 376
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->humidity_icon_view_stub:Landroid/view/ViewStub;

    .line 378
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 380
    move-result-object v2

    .line 383
    check-cast v2, Lcom/miui/clock/classic/HumidityIconView;

    .line 384
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 386
    :cond_6
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 388
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 390
    goto/16 :goto_3

    .line 393
    :pswitch_a
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkBigMsgView()V

    .line 395
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 398
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 400
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 403
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 406
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 408
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 411
    if-nez v2, :cond_7

    .line 413
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->wind_icon_view_stub:Landroid/view/ViewStub;

    .line 415
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 417
    move-result-object v2

    .line 420
    check-cast v2, Landroid/widget/ImageView;

    .line 421
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 423
    :cond_7
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 425
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 427
    goto/16 :goto_3

    .line 430
    :pswitch_b
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 432
    if-nez v2, :cond_8

    .line 434
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->somatosensory_icon_view_stub:Landroid/view/ViewStub;

    .line 436
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 438
    move-result-object v2

    .line 441
    check-cast v2, Landroid/widget/ImageView;

    .line 442
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 444
    :cond_8
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 446
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 448
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 451
    if-nez v2, :cond_9

    .line 453
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->somatosensory_msg_view_stub:Landroid/view/ViewStub;

    .line 455
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 457
    move-result-object v2

    .line 460
    check-cast v2, Landroid/widget/TextView;

    .line 461
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 463
    :cond_9
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 465
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 467
    goto/16 :goto_3

    .line 470
    :pswitch_c
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkBigMsgView()V

    .line 472
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 475
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 477
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 480
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 483
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 485
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 488
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 490
    const v8, 0x7f130bf6    # @string/ultraviolet_rays_abbreviation 'UVI'

    .line 492
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 495
    move-result-object v7

    .line 498
    invoke-static {v2, v7}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightBottomMsg()V

    .line 502
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 505
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 507
    goto/16 :goto_3

    .line 510
    :pswitch_d
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 512
    if-nez v2, :cond_a

    .line 514
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->sun_move_view_stub:Landroid/view/ViewStub;

    .line 516
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 518
    move-result-object v2

    .line 521
    check-cast v2, Lcom/miui/clock/classic/SunMoveView;

    .line 522
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 524
    :cond_a
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 526
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 528
    invoke-virtual {v7}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getStyle()I

    .line 530
    move-result v7

    .line 533
    invoke-virtual {v2, v7}, Lcom/miui/clock/classic/SunMoveView;->setStyle(I)V

    .line 534
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 537
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 539
    goto/16 :goto_3

    .line 542
    :pswitch_e
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkBigMsgView()V

    .line 544
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 547
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 549
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopRainMsg:Landroid/widget/TextView;

    .line 552
    if-nez v2, :cond_b

    .line 554
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_top_rain_msg_view_stub:Landroid/view/ViewStub;

    .line 556
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 558
    move-result-object v2

    .line 561
    check-cast v2, Landroid/widget/TextView;

    .line 562
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopRainMsg:Landroid/widget/TextView;

    .line 564
    :cond_b
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopRainMsg:Landroid/widget/TextView;

    .line 566
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 568
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopRainMsg:Landroid/widget/TextView;

    .line 571
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 573
    const v8, 0x7f1308ce    # @string/percent_sign '%'

    .line 575
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 578
    move-result-object v7

    .line 581
    invoke-static {v2, v7}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRainIcon:Landroid/widget/ImageView;

    .line 585
    if-nez v2, :cond_c

    .line 587
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->rain_icon_view_stub:Landroid/view/ViewStub;

    .line 589
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 591
    move-result-object v2

    .line 594
    check-cast v2, Landroid/widget/ImageView;

    .line 595
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRainIcon:Landroid/widget/ImageView;

    .line 597
    :cond_c
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRainIcon:Landroid/widget/ImageView;

    .line 599
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 601
    goto :goto_3

    .line 604
    :pswitch_f
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkBigMsgView()V

    .line 605
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 608
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 610
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 613
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 616
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 618
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 621
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 623
    const v8, 0x7f130133    # @string/air_quality_index_abbreviation 'AQI'

    .line 625
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 628
    move-result-object v7

    .line 631
    invoke-static {v2, v7}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 632
    goto :goto_3

    .line 635
    :goto_2
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsgWeather:Landroid/widget/TextView;

    .line 636
    if-nez v2, :cond_d

    .line 638
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_top_msg_weather_view_stub:Landroid/view/ViewStub;

    .line 640
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 642
    move-result-object v2

    .line 645
    check-cast v2, Landroid/widget/TextView;

    .line 646
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsgWeather:Landroid/widget/TextView;

    .line 648
    :cond_d
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsgWeather:Landroid/widget/TextView;

    .line 650
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 652
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 655
    if-nez v2, :cond_e

    .line 657
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->weather_icon_view_stub:Landroid/view/ViewStub;

    .line 659
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 661
    move-result-object v2

    .line 664
    check-cast v2, Landroid/widget/ImageView;

    .line 665
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 667
    :cond_e
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 669
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 671
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 674
    const-string v7, "initViewVisible updateWeather data null ? "

    .line 676
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 681
    if-nez v7, :cond_f

    .line 683
    move v3, v5

    .line 685
    :cond_f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    .line 692
    move-result-object v3

    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 699
    move-result-object v2

    .line 702
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 706
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateWeather(Lcom/miui/clock/module/WeatherBean;)V

    .line 708
    goto/16 :goto_5

    .line 711
    :cond_10
    iget v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 713
    invoke-static {v2}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 715
    move-result v2

    .line 718
    if-eqz v2, :cond_16

    .line 719
    iget v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 721
    packed-switch v2, :pswitch_data_3

    .line 723
    goto :goto_4

    .line 726
    :pswitch_10
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 727
    if-nez v2, :cond_11

    .line 729
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->health_msg_text_view_stub:Landroid/view/ViewStub;

    .line 731
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 733
    move-result-object v2

    .line 736
    check-cast v2, Lcom/miui/clock/classic/HealthMsgTextView;

    .line 737
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 739
    :cond_11
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 741
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 743
    goto :goto_4

    .line 746
    :pswitch_11
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 747
    if-nez v2, :cond_12

    .line 749
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->health_msg_sleep_chart_view_stub:Landroid/view/ViewStub;

    .line 751
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 753
    move-result-object v2

    .line 756
    check-cast v2, Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 757
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 759
    :cond_12
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 761
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 763
    goto :goto_4

    .line 766
    :pswitch_12
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 767
    if-nez v2, :cond_13

    .line 769
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->health_msg_chart_view_stub:Landroid/view/ViewStub;

    .line 771
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 773
    move-result-object v2

    .line 776
    check-cast v2, Lcom/miui/clock/classic/HealthMsgChartView;

    .line 777
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 779
    :cond_13
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 781
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 783
    goto :goto_4

    .line 786
    :pswitch_13
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkBigMsgView()V

    .line 787
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 790
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 792
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTopHealthIcon:Landroid/widget/ImageView;

    .line 795
    if-nez v2, :cond_14

    .line 797
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->top_health_icon_stub:Landroid/view/ViewStub;

    .line 799
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 801
    move-result-object v2

    .line 804
    check-cast v2, Landroid/widget/ImageView;

    .line 805
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTopHealthIcon:Landroid/widget/ImageView;

    .line 807
    :cond_14
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTopHealthIcon:Landroid/widget/ImageView;

    .line 809
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 811
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTopHealthIcon:Landroid/widget/ImageView;

    .line 814
    iget v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 816
    invoke-static {v7}, Lcom/miui/clock/module/HealthBean;->getHealthIconByType(I)I

    .line 818
    move-result v7

    .line 821
    invoke-static {v2, v7}, Lcom/miui/clock/classic/ClassicContentAreaView;->setImageResource(Landroid/widget/ImageView;I)V

    .line 822
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightBottomMsg()V

    .line 825
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 828
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 830
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 833
    const-string v7, "initViewVisible updateHealth data = null ? "

    .line 835
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 837
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 840
    if-nez v7, :cond_15

    .line 842
    move v3, v5

    .line 844
    :cond_15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    .line 851
    move-result-object v3

    .line 854
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    move-result-object v2

    .line 861
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 865
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateHealth(Lcom/miui/clock/module/HealthBean;)V

    .line 867
    :cond_16
    :goto_5
    iget-boolean v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHasNumberHourMin:Z

    .line 870
    invoke-static {v0, v2}, Lcom/miui/clock/module/ClassicContentStyle;->needOpenTextSameWidth(IZ)Z

    .line 872
    move-result v0

    .line 875
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 876
    const-string/jumbo v3, "tnum"

    .line 878
    if-eqz v2, :cond_18

    .line 881
    if-eqz v0, :cond_17

    .line 883
    move-object v4, v3

    .line 885
    goto :goto_6

    .line 886
    :cond_17
    move-object v4, v1

    .line 887
    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 888
    :cond_18
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 891
    if-eqz p0, :cond_1a

    .line 893
    if-eqz v0, :cond_19

    .line 895
    move-object v1, v3

    .line 897
    :cond_19
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 898
    :cond_1a
    return-void

    .line 901
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 902
    :pswitch_data_1
    .packed-switch 0xca
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 922
    :pswitch_data_2
    .packed-switch 0x191
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 946
    :pswitch_data_3
    .packed-switch 0x1f4
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
    .end packed-switch
    .line 968
.end method

.method public final noHealthData(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 8
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->hasSportTimeData()Z

    .line 11
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 17
    invoke-virtual {p1}, Lcom/miui/clock/module/HealthBean;->hasCaloriesData()Z

    .line 19
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 25
    invoke-virtual {p0}, Lcom/miui/clock/module/HealthBean;->hasStepCountData()Z

    .line 27
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->hasSleepDurationData()Z

    .line 34
    move-result p0

    .line 37
    xor-int/2addr p0, v1

    .line 38
    return p0

    .line 39
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->hasSportTimeData()Z

    .line 40
    move-result p0

    .line 43
    xor-int/2addr p0, v1

    .line 44
    return p0

    .line 45
    :pswitch_3
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->hasStandCountData()Z

    .line 46
    move-result p0

    .line 49
    xor-int/2addr p0, v1

    .line 50
    return p0

    .line 51
    :pswitch_4
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->hasCaloriesData()Z

    .line 52
    move-result p0

    .line 55
    xor-int/2addr p0, v1

    .line 56
    return p0

    .line 57
    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->hasStepCountData()Z

    .line 58
    move-result p0

    .line 61
    xor-int/2addr p0, v1

    .line 62
    return p0

    .line 63
    :cond_1
    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
    .line 66
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result p1

    .line 14
    iget v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mScreenWidth:I

    .line 15
    if-eq v0, p1, :cond_0

    .line 17
    iput p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mScreenWidth:I

    .line 19
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->onScreenSizeChange()V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a099c    # @id/time_view_stub

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewStub;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->time_view_stub:Landroid/view/ViewStub;

    .line 14
    const v0, 0x7f0a0132    # @id/big_msg_view_stub

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewStub;

    .line 23
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->big_msg_view_stub:Landroid/view/ViewStub;

    .line 25
    const v0, 0x7f0a07bc    # @id/right_top_msg_view_stub

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewStub;

    .line 34
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_top_msg_view_stub:Landroid/view/ViewStub;

    .line 36
    const v0, 0x7f0a07c0    # @id/right_top_rain_msg_view_stub

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/ViewStub;

    .line 45
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_top_rain_msg_view_stub:Landroid/view/ViewStub;

    .line 47
    const v0, 0x7f0a07be    # @id/right_top_msg_weather_view_stub

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Landroid/view/ViewStub;

    .line 56
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_top_msg_weather_view_stub:Landroid/view/ViewStub;

    .line 58
    const v0, 0x7f0a07ac    # @id/right_bottom_msg_view_stub

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Landroid/view/ViewStub;

    .line 67
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_bottom_msg_view_stub:Landroid/view/ViewStub;

    .line 69
    const v0, 0x7f0a0a9e    # @id/weather_icon_view_stub

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Landroid/view/ViewStub;

    .line 78
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->weather_icon_view_stub:Landroid/view/ViewStub;

    .line 80
    const v0, 0x7f0a0ac2    # @id/wind_icon_view_stub

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 88
    check-cast v0, Landroid/view/ViewStub;

    .line 89
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->wind_icon_view_stub:Landroid/view/ViewStub;

    .line 91
    const v0, 0x7f0a0725    # @id/pressure_icon_view_stub

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 99
    check-cast v0, Landroid/view/ViewStub;

    .line 100
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->pressure_icon_view_stub:Landroid/view/ViewStub;

    .line 102
    const v0, 0x7f0a0774    # @id/rain_icon_view_stub

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v0

    .line 110
    check-cast v0, Landroid/view/ViewStub;

    .line 111
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->rain_icon_view_stub:Landroid/view/ViewStub;

    .line 113
    const v0, 0x7f0a08a7    # @id/somatosensory_icon_view_stub

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 121
    check-cast v0, Landroid/view/ViewStub;

    .line 122
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->somatosensory_icon_view_stub:Landroid/view/ViewStub;

    .line 124
    const v0, 0x7f0a08a9    # @id/somatosensory_msg_view_stub

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v0

    .line 132
    check-cast v0, Landroid/view/ViewStub;

    .line 133
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->somatosensory_msg_view_stub:Landroid/view/ViewStub;

    .line 135
    const v0, 0x7f0a0411    # @id/humidity_icon_view_stub

    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 143
    check-cast v0, Landroid/view/ViewStub;

    .line 144
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->humidity_icon_view_stub:Landroid/view/ViewStub;

    .line 146
    const v0, 0x7f0a0932    # @id/sun_move_view_stub

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v0

    .line 154
    check-cast v0, Landroid/view/ViewStub;

    .line 155
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->sun_move_view_stub:Landroid/view/ViewStub;

    .line 157
    const v0, 0x7f0a09b7    # @id/top_health_icon_stub

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v0

    .line 165
    check-cast v0, Landroid/view/ViewStub;

    .line 166
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->top_health_icon_stub:Landroid/view/ViewStub;

    .line 168
    const v0, 0x7f0a03f4    # @id/health_msg_text_view_stub

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v0

    .line 176
    check-cast v0, Landroid/view/ViewStub;

    .line 177
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->health_msg_text_view_stub:Landroid/view/ViewStub;

    .line 179
    const v0, 0x7f0a03f0    # @id/health_msg_chart_view_stub

    .line 181
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object v0

    .line 187
    check-cast v0, Landroid/view/ViewStub;

    .line 188
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->health_msg_chart_view_stub:Landroid/view/ViewStub;

    .line 190
    const v0, 0x7f0a03f2    # @id/health_msg_sleep_chart_view_stub

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 195
    move-result-object v0

    .line 198
    check-cast v0, Landroid/view/ViewStub;

    .line 199
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->health_msg_sleep_chart_view_stub:Landroid/view/ViewStub;

    .line 201
    return-void
    .line 203
.end method

.method public final onScreenSizeChange()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string p0, "ClassicContentAreaView"

    .line 6
    const-string v0, "onSizeChanged mClockStyleInfo is null"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 18
    move-result v2

    .line 21
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 22
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getStyle()I

    .line 24
    move-result v3

    .line 27
    iget v4, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 28
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 30
    iget-boolean v5, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->enableDiffusion:Z

    .line 32
    const/4 v6, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;IIIZZ)V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 38
    if-eqz v0, :cond_2

    .line 40
    iget v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 42
    iget v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 44
    invoke-static {v0, v1, v2}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setBigMsgTextStyle(Landroid/widget/TextView;II)V

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0701b5    # @dimen/classic_content_area_right_top_msg_font_e_margin_top '10.0dp'

    .line 51
    const v2, 0x7f0701b8    # @dimen/classic_content_area_right_top_msg_margin_top '14.0dp'

    .line 54
    const/16 v3, 0x19

    .line 57
    const/4 v4, 0x0

    .line 59
    const v5, 0x7f0701b6    # @dimen/classic_content_area_right_top_msg_margin_start '4.0dp'

    .line 60
    const v6, 0x7f0701b9    # @dimen/classic_content_area_right_top_msg_text_size '20.0dp'

    .line 63
    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {p0, v6}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 68
    move-result v7

    .line 71
    int-to-float v7, v7

    .line 72
    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 78
    move-result v5

    .line 81
    iget v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 82
    if-ne v7, v3, :cond_3

    .line 84
    move v7, v1

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move v7, v2

    .line 88
    :goto_0
    invoke-virtual {p0, v7}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 89
    move-result v7

    .line 92
    invoke-static {v0, v5, v7, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 93
    goto :goto_2

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_top_msg_view_stub:Landroid/view/ViewStub;

    .line 97
    invoke-virtual {p0, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 99
    move-result v5

    .line 102
    iget v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 103
    if-ne v7, v3, :cond_5

    .line 105
    move v7, v1

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    move v7, v2

    .line 109
    :goto_1
    invoke-virtual {p0, v7}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 110
    move-result v7

    .line 113
    invoke-static {v0, v5, v7, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 114
    :goto_2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopRainMsg:Landroid/widget/TextView;

    .line 117
    const v5, 0x7f0701b7    # @dimen/classic_content_area_right_top_msg_margin_start_small '2.0dp'

    .line 119
    if-eqz v0, :cond_7

    .line 122
    invoke-virtual {p0, v6}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 124
    move-result v7

    .line 127
    int-to-float v7, v7

    .line 128
    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 129
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopRainMsg:Landroid/widget/TextView;

    .line 132
    invoke-virtual {p0, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 134
    move-result v5

    .line 137
    iget v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 138
    if-ne v7, v3, :cond_6

    .line 140
    goto :goto_3

    .line 142
    :cond_6
    move v1, v2

    .line 143
    :goto_3
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 144
    move-result v1

    .line 147
    invoke-static {v0, v5, v1, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 148
    goto :goto_5

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_top_rain_msg_view_stub:Landroid/view/ViewStub;

    .line 152
    invoke-virtual {p0, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 154
    move-result v5

    .line 157
    iget v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 158
    if-ne v7, v3, :cond_8

    .line 160
    goto :goto_4

    .line 162
    :cond_8
    move v1, v2

    .line 163
    :goto_4
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 164
    move-result v1

    .line 167
    invoke-static {v0, v5, v1, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 168
    :goto_5
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsgWeather:Landroid/widget/TextView;

    .line 171
    const v1, 0x7f0701bc    # @dimen/classic_content_area_right_top_msg_weather_margin_top '9.0dp'

    .line 173
    const v2, 0x7f0701bb    # @dimen/classic_content_area_right_top_msg_weather_margin_start '1.0dp'

    .line 176
    if-eqz v0, :cond_a

    .line 179
    const v5, 0x7f0701bd    # @dimen/classic_content_area_right_top_msg_weather_text_size '36.0dp'

    .line 181
    invoke-virtual {p0, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 184
    move-result v5

    .line 187
    int-to-float v5, v5

    .line 188
    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsgWeather:Landroid/widget/TextView;

    .line 192
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 194
    move-result v2

    .line 197
    iget v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 198
    if-ne v5, v3, :cond_9

    .line 200
    const v1, 0x7f0701ba    # @dimen/classic_content_area_right_top_msg_weather_font_e_margin_top '5.0dp'

    .line 202
    :cond_9
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 205
    move-result v1

    .line 208
    invoke-static {v0, v2, v1, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 209
    goto :goto_6

    .line 212
    :cond_a
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_top_msg_weather_view_stub:Landroid/view/ViewStub;

    .line 213
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 215
    move-result v2

    .line 218
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 219
    move-result v1

    .line 222
    invoke-static {v0, v2, v1, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 223
    :goto_6
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 226
    const v1, 0x7f0701b0    # @dimen/classic_content_area_right_bottom_msg_margin_bottom '15.0dp'

    .line 228
    const v2, 0x7f0701b1    # @dimen/classic_content_area_right_bottom_msg_margin_start '4.0dp'

    .line 231
    if-eqz v0, :cond_b

    .line 234
    const v3, 0x7f0701b2    # @dimen/classic_content_area_right_bottom_msg_text_size '20.0dp'

    .line 236
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 239
    move-result v3

    .line 242
    int-to-float v3, v3

    .line 243
    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 244
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 247
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 249
    move-result v2

    .line 252
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 253
    move-result v1

    .line 256
    invoke-static {v0, v2, v4, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 257
    goto :goto_7

    .line 260
    :cond_b
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->right_bottom_msg_view_stub:Landroid/view/ViewStub;

    .line 261
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 263
    move-result v2

    .line 266
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 267
    move-result v1

    .line 270
    invoke-static {v0, v2, v4, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 271
    :goto_7
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 274
    const v1, 0x7f071273    # @dimen/weather_small_icon_w_h '25.0dp'

    .line 276
    const v2, 0x7f0701af    # @dimen/classic_content_area_right_bottom_icon_margin_start '11.0dp'

    .line 279
    const v3, 0x7f0701ae    # @dimen/classic_content_area_right_bottom_icon_margin_bottom '14.0dp'

    .line 282
    if-eqz v0, :cond_c

    .line 285
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 287
    move-result v12

    .line 290
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 291
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 293
    move-result v8

    .line 296
    const/4 v9, 0x0

    .line 297
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 298
    move-result v10

    .line 301
    move v11, v12

    .line 302
    invoke-static/range {v7 .. v12}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMarginsAndSize(Landroid/view/View;IIIII)V

    .line 303
    goto :goto_8

    .line 306
    :cond_c
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->weather_icon_view_stub:Landroid/view/ViewStub;

    .line 307
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 309
    move-result v2

    .line 312
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 313
    move-result v5

    .line 316
    invoke-static {v0, v2, v4, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 317
    :goto_8
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 320
    const v2, 0x7f07126d    # @dimen/weather_icon_gone_margin_start '4.0dp'

    .line 322
    if-eqz v0, :cond_d

    .line 325
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 327
    move-result v12

    .line 330
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 331
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 333
    move-result v8

    .line 336
    const/4 v9, 0x0

    .line 337
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 338
    move-result v10

    .line 341
    move v11, v12

    .line 342
    invoke-static/range {v7 .. v12}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMarginsAndSize(Landroid/view/View;IIIII)V

    .line 343
    goto :goto_9

    .line 346
    :cond_d
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->wind_icon_view_stub:Landroid/view/ViewStub;

    .line 347
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 349
    move-result v1

    .line 352
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 353
    move-result v2

    .line 356
    invoke-static {v0, v1, v4, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 357
    :goto_9
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 360
    const v1, 0x7f07126e    # @dimen/weather_pressure_icon_margin_bottom '13.0dp'

    .line 362
    const v2, 0x7f07126f    # @dimen/weather_pressure_icon_margin_start '4.0dp'

    .line 365
    if-eqz v0, :cond_e

    .line 368
    const v0, 0x7f071270    # @dimen/weather_pressure_icon_w_h '20.0dp'

    .line 370
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 373
    move-result v12

    .line 376
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 377
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 379
    move-result v8

    .line 382
    const/4 v9, 0x0

    .line 383
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 384
    move-result v10

    .line 387
    move v11, v12

    .line 388
    invoke-static/range {v7 .. v12}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMarginsAndSize(Landroid/view/View;IIIII)V

    .line 389
    goto :goto_a

    .line 392
    :cond_e
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->pressure_icon_view_stub:Landroid/view/ViewStub;

    .line 393
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 395
    move-result v2

    .line 398
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 399
    move-result v1

    .line 402
    invoke-static {v0, v2, v4, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 403
    :goto_a
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRainIcon:Landroid/widget/ImageView;

    .line 406
    const v0, 0x7f0701b4    # @dimen/classic_content_area_right_bottom_rain_icon_margin_start '11.0dp'

    .line 408
    if-eqz v7, :cond_f

    .line 411
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 413
    move-result v8

    .line 416
    const/4 v9, 0x0

    .line 417
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 418
    move-result v10

    .line 421
    const v0, 0x7f071272    # @dimen/weather_rain_icon_w '20.0dp'

    .line 422
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 425
    move-result v11

    .line 428
    const v0, 0x7f071271    # @dimen/weather_rain_icon_h '25.0dp'

    .line 429
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 432
    move-result v12

    .line 435
    invoke-static/range {v7 .. v12}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMarginsAndSize(Landroid/view/View;IIIII)V

    .line 436
    goto :goto_b

    .line 439
    :cond_f
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->rain_icon_view_stub:Landroid/view/ViewStub;

    .line 440
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 442
    move-result v0

    .line 445
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 446
    move-result v2

    .line 449
    invoke-static {v1, v0, v4, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 450
    :goto_b
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 453
    const v1, 0x7f071275    # @dimen/weather_somatosensory_icon_margin_start '4.0dp'

    .line 455
    if-eqz v0, :cond_10

    .line 458
    const v2, 0x7f071277    # @dimen/weather_somatosensory_icon_padding_top '6.0dp'

    .line 460
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 463
    move-result v2

    .line 466
    const v3, 0x7f071276    # @dimen/weather_somatosensory_icon_padding_bottom '7.0dp'

    .line 467
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 470
    move-result v3

    .line 473
    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 474
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 477
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 479
    move-result v8

    .line 482
    const/4 v9, 0x0

    .line 483
    const/4 v10, 0x0

    .line 484
    const v0, 0x7f071278    # @dimen/weather_somatosensory_icon_w '155.0dp'

    .line 485
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 488
    move-result v11

    .line 491
    const v0, 0x7f071274    # @dimen/weather_somatosensory_icon_h '60.0dp'

    .line 492
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 495
    move-result v12

    .line 498
    invoke-static/range {v7 .. v12}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMarginsAndSize(Landroid/view/View;IIIII)V

    .line 499
    goto :goto_c

    .line 502
    :cond_10
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->somatosensory_icon_view_stub:Landroid/view/ViewStub;

    .line 503
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 505
    move-result v1

    .line 508
    invoke-static {v0, v1, v4, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 509
    :goto_c
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 512
    const v1, 0x7f0701c1    # @dimen/classic_content_area_somatosensory_msg_margin_top '1.0dp'

    .line 514
    const v2, 0x7f0701c0    # @dimen/classic_content_area_somatosensory_msg_margin_start '10.0dp'

    .line 517
    if-eqz v0, :cond_11

    .line 520
    invoke-virtual {p0, v6}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 522
    move-result v3

    .line 525
    int-to-float v3, v3

    .line 526
    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 527
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 530
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 532
    move-result v2

    .line 535
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 536
    move-result v1

    .line 539
    invoke-static {v0, v2, v1, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 540
    goto :goto_d

    .line 543
    :cond_11
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->somatosensory_msg_view_stub:Landroid/view/ViewStub;

    .line 544
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 546
    move-result v2

    .line 549
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 550
    move-result v1

    .line 553
    invoke-static {v0, v2, v1, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 554
    :goto_d
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 557
    if-eqz v0, :cond_12

    .line 559
    invoke-virtual {v0}, Lcom/miui/clock/classic/HumidityIconView;->readSize()V

    .line 561
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 564
    const v1, 0x7f07041c    # @dimen/humidity_view_height '60.0dp'

    .line 566
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 569
    move-result v1

    .line 572
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 573
    move-result-object v2

    .line 576
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 577
    const/4 v3, -0x2

    .line 579
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 580
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 582
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 587
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 589
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 592
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 594
    :cond_12
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 597
    if-eqz v0, :cond_13

    .line 599
    invoke-virtual {v0}, Lcom/miui/clock/classic/SunMoveView;->readSize()V

    .line 601
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 604
    const v1, 0x7f0711e9    # @dimen/sun_move_width '178.0dp'

    .line 606
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 609
    move-result v1

    .line 612
    const v2, 0x7f0711d2    # @dimen/sun_move_height '60.0dp'

    .line 613
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 616
    move-result v2

    .line 619
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 620
    move-result-object v3

    .line 623
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 624
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 626
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 628
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 633
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 635
    invoke-virtual {v1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getStyle()I

    .line 637
    move-result v1

    .line 640
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/SunMoveView;->setStyle(I)V

    .line 641
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 644
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 646
    const/16 v2, 0x12

    .line 648
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 650
    move-result v1

    .line 653
    mul-int/lit8 v1, v1, 0x3c

    .line 654
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 656
    const/16 v3, 0x14

    .line 658
    invoke-virtual {v2, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 660
    move-result v2

    .line 663
    add-int/2addr v2, v1

    .line 664
    iget v1, v0, Lcom/miui/clock/classic/SunMoveView;->sunriseTime:I

    .line 665
    iget v3, v0, Lcom/miui/clock/classic/SunMoveView;->sunriseTomorrowTime:I

    .line 667
    iget v5, v0, Lcom/miui/clock/classic/SunMoveView;->sunsetTime:I

    .line 669
    invoke-virtual {v0, v1, v3, v5, v2}, Lcom/miui/clock/classic/SunMoveView;->initData(IIII)V

    .line 671
    :cond_13
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTopHealthIcon:Landroid/widget/ImageView;

    .line 674
    const v1, 0x7f0703ee    # @dimen/health_top_icon_margin_top '14.5dp'

    .line 676
    const v2, 0x7f0703ed    # @dimen/health_top_icon_margin_start '4.0dp'

    .line 679
    if-eqz v0, :cond_14

    .line 682
    const v0, 0x7f0703ec    # @dimen/health_icon_w_h '27.0dp'

    .line 684
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 687
    move-result v8

    .line 690
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTopHealthIcon:Landroid/widget/ImageView;

    .line 691
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 693
    move-result v4

    .line 696
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 697
    move-result v5

    .line 700
    const/4 v6, 0x0

    .line 701
    move v7, v8

    .line 702
    invoke-static/range {v3 .. v8}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMarginsAndSize(Landroid/view/View;IIIII)V

    .line 703
    goto :goto_e

    .line 706
    :cond_14
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->top_health_icon_stub:Landroid/view/ViewStub;

    .line 707
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 709
    move-result v2

    .line 712
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->getDimen(I)I

    .line 713
    move-result v1

    .line 716
    invoke-static {v0, v2, v1, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setMargins(Landroid/view/View;III)V

    .line 717
    :goto_e
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 720
    if-eqz v0, :cond_15

    .line 722
    invoke-virtual {v0}, Lcom/miui/clock/classic/HealthMsgTextView;->readSize()V

    .line 724
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 727
    invoke-virtual {v0}, Lcom/miui/clock/classic/HealthMsgTextView;->measureTextWidth()V

    .line 729
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 732
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 734
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 737
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 739
    :cond_15
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 742
    if-eqz v0, :cond_16

    .line 744
    invoke-virtual {v0}, Lcom/miui/clock/classic/HealthMsgChartView;->readSize()V

    .line 746
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 749
    invoke-virtual {v0}, Lcom/miui/clock/classic/HealthMsgChartView;->measureTextWidth()V

    .line 751
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 754
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 756
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 759
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 761
    :cond_16
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 764
    if-eqz v0, :cond_18

    .line 766
    invoke-virtual {v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->readSize()V

    .line 768
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 771
    iget v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 773
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 775
    move-result v1

    .line 778
    if-eqz v1, :cond_17

    .line 779
    const/4 p0, -0x1

    .line 781
    goto :goto_f

    .line 782
    :cond_17
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 783
    invoke-virtual {p0}, Lcom/miui/clock/module/HealthBean;->getSleepDurationMinute()I

    .line 785
    move-result p0

    .line 788
    :goto_f
    invoke-virtual {v0, p0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->initData(I)V

    .line 789
    :cond_18
    return-void
    .line 792
.end method

.method public final setBigMsgText(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTextSlash:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTextSlash:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 26
    new-instance v1, Landroid/text/SpannableString;

    .line 27
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 34
    move-result p1

    .line 37
    const/16 v2, 0x99

    .line 38
    if-eqz p1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 42
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 50
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 58
    iget p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 60
    invoke-static {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 62
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 68
    invoke-virtual {p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 70
    move-result p1

    .line 73
    invoke-static {p1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 74
    move-result p1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string p1, "#FF999999"

    .line 79
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 81
    move-result p1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 86
    invoke-virtual {p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 88
    move-result p1

    .line 91
    invoke-static {p1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 92
    move-result p1

    .line 95
    :goto_0
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 96
    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 98
    add-int/lit8 p1, v0, 0x1

    .line 101
    const/16 v3, 0x11

    .line 103
    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    goto :goto_1

    .line 113
    :cond_3
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_1
    return-void
    .line 119
.end method

.method public setCalendar(Lmiuix/pickerwidget/date/Calendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    return-void
    .line 4
.end method

.method public final updateColor(I)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 13
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 21
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 29
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 31
    invoke-static {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 33
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    const/16 v1, 0x4d

    .line 42
    const/16 v2, 0x99

    .line 44
    if-eqz v0, :cond_3

    .line 46
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 48
    iget v3, v3, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 50
    invoke-static {v3}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 52
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    invoke-static {p1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 58
    move-result v2

    .line 61
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 62
    move-result v1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string v1, "#FF999999"

    .line 67
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 69
    move-result v2

    .line 72
    const-string v1, "#4D4D4D"

    .line 73
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 75
    move-result v1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-static {p1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 80
    move-result v2

    .line 83
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 84
    move-result v1

    .line 87
    :goto_1
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 88
    invoke-static {v3, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 90
    iget v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 93
    invoke-static {v3}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 95
    move-result v3

    .line 98
    if-eqz v3, :cond_a

    .line 99
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 101
    if-nez v3, :cond_4

    .line 103
    move v4, v2

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move v4, p1

    .line 107
    :goto_2
    iget v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 108
    const/16 v6, 0x190

    .line 110
    if-ne v5, v6, :cond_6

    .line 112
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 114
    if-nez v3, :cond_5

    .line 116
    move v3, v1

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    move v3, p1

    .line 120
    :goto_3
    invoke-static {v5, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 121
    goto :goto_4

    .line 124
    :cond_6
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 125
    invoke-static {v3, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 127
    :goto_4
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRainIcon:Landroid/widget/ImageView;

    .line 130
    invoke-static {v3, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 132
    if-nez v0, :cond_7

    .line 135
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 137
    invoke-static {v0, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 139
    goto :goto_5

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 143
    if-nez v0, :cond_8

    .line 145
    goto :goto_5

    .line 147
    :cond_8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 148
    move-result-object v0

    .line 151
    if-eqz v0, :cond_9

    .line 152
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 154
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 157
    invoke-static {v0, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 159
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 162
    invoke-static {v0, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 164
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 167
    invoke-static {v0, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 169
    goto :goto_7

    .line 172
    :cond_a
    iget v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 173
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 175
    move-result v0

    .line 178
    if-eqz v0, :cond_c

    .line 179
    iget v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 181
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 183
    move-result v0

    .line 186
    if-eqz v0, :cond_b

    .line 187
    move v0, v2

    .line 189
    goto :goto_6

    .line 190
    :cond_b
    move v0, p1

    .line 191
    :goto_6
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTopHealthIcon:Landroid/widget/ImageView;

    .line 192
    invoke-static {v3, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 194
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 197
    invoke-static {v3, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 199
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 202
    invoke-static {v0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 204
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 207
    invoke-static {v0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 209
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 212
    invoke-static {v0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 214
    goto :goto_7

    .line 217
    :cond_c
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 218
    invoke-static {v0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 220
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 223
    invoke-static {v0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 225
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 228
    invoke-static {v0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 230
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 233
    invoke-static {v0, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 235
    :goto_7
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 238
    invoke-static {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 240
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopRainMsg:Landroid/widget/TextView;

    .line 243
    invoke-static {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 245
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsgWeather:Landroid/widget/TextView;

    .line 248
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 250
    if-nez v3, :cond_d

    .line 252
    goto :goto_8

    .line 254
    :cond_d
    move v1, v2

    .line 255
    :goto_8
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 256
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 259
    invoke-static {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 261
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 264
    invoke-static {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setTextColor(Landroid/widget/TextView;I)V

    .line 266
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 269
    if-eqz v0, :cond_13

    .line 271
    if-eqz p1, :cond_e

    .line 273
    iput p1, v0, Lcom/miui/clock/classic/HealthMsgTextView;->mainColor:I

    .line 275
    :cond_e
    if-eqz v2, :cond_f

    .line 277
    iput v2, v0, Lcom/miui/clock/classic/HealthMsgTextView;->minorColor:I

    .line 279
    :cond_f
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesIcon:Landroid/graphics/drawable/Drawable;

    .line 281
    if-eqz v1, :cond_10

    .line 283
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 285
    :cond_10
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountIcon:Landroid/graphics/drawable/Drawable;

    .line 288
    if-eqz v1, :cond_11

    .line 290
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 292
    :cond_11
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgTextView;->sportTimeIcon:Landroid/graphics/drawable/Drawable;

    .line 295
    if-eqz v1, :cond_12

    .line 297
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 299
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 302
    :cond_13
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 305
    if-eqz v0, :cond_16

    .line 307
    if-eqz p1, :cond_14

    .line 309
    iput p1, v0, Lcom/miui/clock/classic/HumidityIconView;->mainColor:I

    .line 311
    :cond_14
    if-eqz v2, :cond_15

    .line 313
    iput v2, v0, Lcom/miui/clock/classic/HumidityIconView;->minorColor:I

    .line 315
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 317
    :cond_16
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 320
    if-eqz v0, :cond_1a

    .line 322
    if-eqz p1, :cond_17

    .line 324
    iput p1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mainColor:I

    .line 326
    :cond_17
    if-eqz v2, :cond_18

    .line 328
    iput v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->minorColor:I

    .line 330
    :cond_18
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 332
    if-eqz v1, :cond_19

    .line 334
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 336
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 339
    :cond_1a
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 342
    if-eqz v0, :cond_1f

    .line 344
    if-eqz p1, :cond_1b

    .line 346
    iput p1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mainColor:I

    .line 348
    :cond_1b
    if-eqz v2, :cond_1c

    .line 350
    iput v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->minorColor:I

    .line 352
    :cond_1c
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 354
    if-eqz v1, :cond_1d

    .line 356
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 358
    :cond_1d
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 361
    if-eqz v1, :cond_1e

    .line 363
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 365
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 368
    :cond_1f
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 371
    if-eqz p0, :cond_24

    .line 373
    if-eqz p1, :cond_20

    .line 375
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->mainColor:I

    .line 377
    :cond_20
    if-eqz v2, :cond_21

    .line 379
    iput v2, p0, Lcom/miui/clock/classic/SunMoveView;->minorColor:I

    .line 381
    :cond_21
    iget-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 383
    if-eqz p1, :cond_22

    .line 385
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 387
    :cond_22
    iget-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowUp:Landroid/graphics/drawable/Drawable;

    .line 390
    if-eqz p1, :cond_23

    .line 392
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 394
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 397
    :cond_24
    return-void
    .line 400
.end method

.method public final updateHealth(Lcom/miui/clock/module/HealthBean;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iput-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 6
    iget v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 8
    const/4 v3, -0x1

    .line 10
    const v4, 0x7f13050c    # @string/health_chart_sport_time_schedule_format_desc '%1$s, %2$s'

    .line 11
    const v5, 0x7f110012    # @plurals/health_chart_sport_time_goal_schedule_format_desc

    .line 14
    const v6, 0x7f110011    # @plurals/health_chart_sport_time_current_schedule_format_desc

    .line 17
    const v7, 0x7f130505    # @string/health_chart_calories_schedule_format_desc '%1$s, %2$s'

    .line 20
    const v8, 0x7f11000f    # @plurals/health_chart_calories_goal_schedule_format_desc

    .line 23
    const v9, 0x7f11000e    # @plurals/health_chart_calories_burned_schedule_format_desc

    .line 26
    const v10, 0x7f13050e    # @string/health_chart_step_count_schedule_format_desc '%1$s, %2$s'

    .line 29
    const v11, 0x7f110018    # @plurals/health_chart_step_count_goal_schedule_format_desc

    .line 32
    const v12, 0x7f110017    # @plurals/health_chart_step_count_current_schedule_format_desc

    .line 35
    const v13, 0x7f130483    # @string/format_count_denominator '/ %s'

    .line 38
    packed-switch v2, :pswitch_data_0

    .line 41
    goto/16 :goto_0

    .line 44
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 46
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getSportTimeNowString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 57
    invoke-static {v2, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 58
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 61
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getSportTimeTargetString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 72
    invoke-virtual {v3, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 76
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 84
    invoke-virtual {v2}, Lcom/miui/clock/module/HealthBean;->getSportTimeNow()I

    .line 86
    move-result v2

    .line 89
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 90
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getSportTimeNowString()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 95
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 99
    invoke-virtual {v1, v6, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 104
    move-result-object v2

    .line 107
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 108
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getSportTimeTarget()I

    .line 110
    move-result v3

    .line 113
    iget-object v6, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 114
    invoke-virtual {v6}, Lcom/miui/clock/module/HealthBean;->getSportTimeTargetString()Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 119
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 120
    move-result-object v6

    .line 123
    invoke-virtual {v2, v5, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object v3

    .line 131
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 132
    move-result-object v1

    .line 135
    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 139
    goto/16 :goto_1

    .line 140
    :cond_0
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 142
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 144
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 146
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 149
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 151
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 153
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 155
    move-result-object v3

    .line 158
    invoke-virtual {v2, v13, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 162
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 163
    goto/16 :goto_0

    .line 166
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 168
    move-result v2

    .line 171
    if-nez v2, :cond_1

    .line 172
    iget-object v13, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getCaloriesNow()I

    .line 176
    move-result v14

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getCaloriesTarget()I

    .line 180
    move-result v15

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getStepCountNow()I

    .line 184
    move-result v16

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getStepCountTarget()I

    .line 188
    move-result v17

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getSportTimeNow()I

    .line 192
    move-result v18

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getSportTimeTarget()I

    .line 196
    move-result v19

    .line 199
    invoke-static/range {v13 .. v19}, Lcom/miui/clock/classic/ClassicContentAreaView;->initHealthMsgTextData(Lcom/miui/clock/classic/HealthMsgTextView;IIIIII)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 203
    move-result-object v1

    .line 206
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 207
    invoke-virtual {v2}, Lcom/miui/clock/module/HealthBean;->getStepCountNow()I

    .line 209
    move-result v2

    .line 212
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 213
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getStepCountNowString()Ljava/lang/String;

    .line 215
    move-result-object v3

    .line 218
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 219
    move-result-object v3

    .line 222
    invoke-virtual {v1, v12, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 227
    move-result-object v2

    .line 230
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 231
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getStepCountTarget()I

    .line 233
    move-result v3

    .line 236
    iget-object v12, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 237
    invoke-virtual {v12}, Lcom/miui/clock/module/HealthBean;->getStepCountTargetString()Ljava/lang/String;

    .line 239
    move-result-object v12

    .line 242
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 243
    move-result-object v12

    .line 246
    invoke-virtual {v2, v11, v3, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 251
    move-result-object v3

    .line 254
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 255
    move-result-object v1

    .line 258
    invoke-virtual {v3, v10, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    move-result-object v1

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 263
    move-result-object v2

    .line 266
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 267
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getCaloriesNow()I

    .line 269
    move-result v3

    .line 272
    iget-object v10, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 273
    invoke-virtual {v10}, Lcom/miui/clock/module/HealthBean;->getCaloriesNowString()Ljava/lang/String;

    .line 275
    move-result-object v10

    .line 278
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 279
    move-result-object v10

    .line 282
    invoke-virtual {v2, v9, v3, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    move-result-object v2

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 287
    move-result-object v3

    .line 290
    iget-object v9, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 291
    invoke-virtual {v9}, Lcom/miui/clock/module/HealthBean;->getCaloriesTarget()I

    .line 293
    move-result v9

    .line 296
    iget-object v10, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 297
    invoke-virtual {v10}, Lcom/miui/clock/module/HealthBean;->getCaloriesTargetString()Ljava/lang/String;

    .line 299
    move-result-object v10

    .line 302
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 303
    move-result-object v10

    .line 306
    invoke-virtual {v3, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    move-result-object v3

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 311
    move-result-object v8

    .line 314
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 315
    move-result-object v2

    .line 318
    invoke-virtual {v8, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    move-result-object v2

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 323
    move-result-object v3

    .line 326
    iget-object v7, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 327
    invoke-virtual {v7}, Lcom/miui/clock/module/HealthBean;->getSportTimeNow()I

    .line 329
    move-result v7

    .line 332
    iget-object v8, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 333
    invoke-virtual {v8}, Lcom/miui/clock/module/HealthBean;->getSportTimeNowString()Ljava/lang/String;

    .line 335
    move-result-object v8

    .line 338
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 339
    move-result-object v8

    .line 342
    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    move-result-object v3

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 347
    move-result-object v6

    .line 350
    iget-object v7, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 351
    invoke-virtual {v7}, Lcom/miui/clock/module/HealthBean;->getSportTimeTarget()I

    .line 353
    move-result v7

    .line 356
    iget-object v8, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 357
    invoke-virtual {v8}, Lcom/miui/clock/module/HealthBean;->getSportTimeTargetString()Ljava/lang/String;

    .line 359
    move-result-object v8

    .line 362
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 363
    move-result-object v8

    .line 366
    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 367
    move-result-object v5

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 371
    move-result-object v6

    .line 374
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 375
    move-result-object v3

    .line 378
    invoke-virtual {v6, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 379
    move-result-object v3

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v2, ","

    .line 391
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v1

    .line 408
    goto/16 :goto_1

    .line 409
    :cond_1
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgTextView:Lcom/miui/clock/classic/HealthMsgTextView;

    .line 411
    const/4 v3, -0x1

    .line 413
    const/4 v4, -0x1

    .line 414
    const/4 v5, -0x1

    .line 415
    const/4 v6, -0x1

    .line 416
    const/4 v7, -0x1

    .line 417
    const/4 v8, -0x1

    .line 418
    invoke-static/range {v2 .. v8}, Lcom/miui/clock/classic/ClassicContentAreaView;->initHealthMsgTextData(Lcom/miui/clock/classic/HealthMsgTextView;IIIIII)V

    .line 419
    goto/16 :goto_0

    .line 422
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 424
    move-result v2

    .line 427
    if-nez v2, :cond_3

    .line 428
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getSleepDurationMinute()I

    .line 432
    move-result v1

    .line 435
    if-eqz v2, :cond_2

    .line 436
    invoke-virtual {v2, v1}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->initData(I)V

    .line 438
    :cond_2
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 441
    if-eqz v1, :cond_a

    .line 443
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 445
    move-result-object v1

    .line 448
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 449
    invoke-virtual {v2}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getSleepMinute()Ljava/lang/String;

    .line 451
    move-result-object v2

    .line 454
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 455
    invoke-virtual {v3}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getSleepDesc()Ljava/lang/String;

    .line 457
    move-result-object v3

    .line 460
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 461
    move-result-object v2

    .line 464
    const v3, 0x7f130511    # @string/health_sleep_desc 'Sleep duration %1$s, sleep quality: %2$s'

    .line 465
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 468
    move-result-object v1

    .line 471
    goto/16 :goto_1

    .line 472
    :cond_3
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgSleepChartView:Lcom/miui/clock/classic/HealthMsgSleepChartView;

    .line 474
    if-eqz v1, :cond_a

    .line 476
    invoke-virtual {v1, v3}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->initData(I)V

    .line 478
    goto/16 :goto_0

    .line 481
    :pswitch_3
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 483
    move-result v2

    .line 486
    if-nez v2, :cond_4

    .line 487
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 489
    iget v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getSportTimeNow()I

    .line 493
    move-result v7

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getSportTimeTarget()I

    .line 497
    move-result v1

    .line 500
    invoke-static {v2, v3, v7, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->initHealthMsgChartData(Lcom/miui/clock/classic/HealthMsgChartView;III)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 504
    move-result-object v1

    .line 507
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 508
    invoke-virtual {v2}, Lcom/miui/clock/module/HealthBean;->getSportTimeNow()I

    .line 510
    move-result v2

    .line 513
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 514
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getSportTimeNowString()Ljava/lang/String;

    .line 516
    move-result-object v3

    .line 519
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 520
    move-result-object v3

    .line 523
    invoke-virtual {v1, v6, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 524
    move-result-object v1

    .line 527
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 528
    move-result-object v2

    .line 531
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 532
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getSportTimeTarget()I

    .line 534
    move-result v3

    .line 537
    iget-object v6, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 538
    invoke-virtual {v6}, Lcom/miui/clock/module/HealthBean;->getSportTimeTargetString()Ljava/lang/String;

    .line 540
    move-result-object v6

    .line 543
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 544
    move-result-object v6

    .line 547
    invoke-virtual {v2, v5, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 548
    move-result-object v2

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 552
    move-result-object v3

    .line 555
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 556
    move-result-object v1

    .line 559
    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 560
    move-result-object v1

    .line 563
    goto/16 :goto_1

    .line 564
    :cond_4
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 566
    iget v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 568
    invoke-static {v1, v2, v3, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->initHealthMsgChartData(Lcom/miui/clock/classic/HealthMsgChartView;III)V

    .line 570
    goto/16 :goto_0

    .line 573
    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 575
    move-result v2

    .line 578
    if-nez v2, :cond_5

    .line 579
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getStandCountNowString()Ljava/lang/String;

    .line 583
    move-result-object v3

    .line 586
    invoke-static {v2, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 587
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 590
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getStandCountTargetString()Ljava/lang/String;

    .line 594
    move-result-object v1

    .line 597
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 598
    move-result-object v1

    .line 601
    invoke-virtual {v3, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 602
    move-result-object v1

    .line 605
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 609
    move-result-object v1

    .line 612
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 613
    invoke-virtual {v2}, Lcom/miui/clock/module/HealthBean;->getStandCountNow()I

    .line 615
    move-result v2

    .line 618
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 619
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getStandCountNowString()Ljava/lang/String;

    .line 621
    move-result-object v3

    .line 624
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 625
    move-result-object v3

    .line 628
    const v4, 0x7f110014    # @plurals/health_chart_stand_count_schedule_format_desc

    .line 629
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 632
    move-result-object v1

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 636
    move-result-object v2

    .line 639
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 640
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getStandCountTarget()I

    .line 642
    move-result v3

    .line 645
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 646
    invoke-virtual {v4}, Lcom/miui/clock/module/HealthBean;->getStandCountTargetString()Ljava/lang/String;

    .line 648
    move-result-object v4

    .line 651
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 652
    move-result-object v4

    .line 655
    const v5, 0x7f110015    # @plurals/health_chart_stand_goal_schedule_format_desc

    .line 656
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 659
    move-result-object v2

    .line 662
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 663
    move-result-object v3

    .line 666
    const v4, 0x7f13050d    # @string/health_chart_stand_schedule_format_desc '%1$s, %2$s'

    .line 667
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 670
    move-result-object v1

    .line 673
    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 674
    move-result-object v1

    .line 677
    goto/16 :goto_1

    .line 678
    :cond_5
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 680
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 682
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 684
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 687
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 689
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 691
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 693
    move-result-object v3

    .line 696
    invoke-virtual {v2, v13, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 697
    move-result-object v2

    .line 700
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 701
    goto/16 :goto_0

    .line 704
    :pswitch_5
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 706
    move-result v2

    .line 709
    if-nez v2, :cond_6

    .line 710
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 712
    iget v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getCaloriesNow()I

    .line 716
    move-result v4

    .line 719
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getCaloriesTarget()I

    .line 720
    move-result v1

    .line 723
    invoke-static {v2, v3, v4, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->initHealthMsgChartData(Lcom/miui/clock/classic/HealthMsgChartView;III)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 727
    move-result-object v1

    .line 730
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 731
    invoke-virtual {v2}, Lcom/miui/clock/module/HealthBean;->getCaloriesNow()I

    .line 733
    move-result v2

    .line 736
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 737
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getCaloriesNowString()Ljava/lang/String;

    .line 739
    move-result-object v3

    .line 742
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 743
    move-result-object v3

    .line 746
    invoke-virtual {v1, v9, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 747
    move-result-object v1

    .line 750
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 751
    move-result-object v2

    .line 754
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 755
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getCaloriesTarget()I

    .line 757
    move-result v3

    .line 760
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 761
    invoke-virtual {v4}, Lcom/miui/clock/module/HealthBean;->getCaloriesTargetString()Ljava/lang/String;

    .line 763
    move-result-object v4

    .line 766
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 767
    move-result-object v4

    .line 770
    invoke-virtual {v2, v8, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 771
    move-result-object v2

    .line 774
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 775
    move-result-object v3

    .line 778
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 779
    move-result-object v1

    .line 782
    invoke-virtual {v3, v7, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 783
    move-result-object v1

    .line 786
    goto/16 :goto_1

    .line 787
    :cond_6
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 789
    iget v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 791
    invoke-static {v1, v2, v3, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->initHealthMsgChartData(Lcom/miui/clock/classic/HealthMsgChartView;III)V

    .line 793
    goto/16 :goto_0

    .line 796
    :pswitch_6
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 798
    move-result v2

    .line 801
    if-nez v2, :cond_7

    .line 802
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 804
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getCaloriesNowString()Ljava/lang/String;

    .line 806
    move-result-object v3

    .line 809
    invoke-static {v2, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 810
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 813
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 815
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getCaloriesTargetString()Ljava/lang/String;

    .line 817
    move-result-object v1

    .line 820
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 821
    move-result-object v1

    .line 824
    invoke-virtual {v3, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 825
    move-result-object v1

    .line 828
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 832
    move-result-object v1

    .line 835
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 836
    invoke-virtual {v2}, Lcom/miui/clock/module/HealthBean;->getCaloriesNow()I

    .line 838
    move-result v2

    .line 841
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 842
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getCaloriesNowString()Ljava/lang/String;

    .line 844
    move-result-object v3

    .line 847
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 848
    move-result-object v3

    .line 851
    invoke-virtual {v1, v9, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 852
    move-result-object v1

    .line 855
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 856
    move-result-object v2

    .line 859
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 860
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getCaloriesTarget()I

    .line 862
    move-result v3

    .line 865
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 866
    invoke-virtual {v4}, Lcom/miui/clock/module/HealthBean;->getCaloriesTargetString()Ljava/lang/String;

    .line 868
    move-result-object v4

    .line 871
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 872
    move-result-object v4

    .line 875
    invoke-virtual {v2, v8, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 876
    move-result-object v2

    .line 879
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 880
    move-result-object v3

    .line 883
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 884
    move-result-object v1

    .line 887
    invoke-virtual {v3, v7, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 888
    move-result-object v1

    .line 891
    goto/16 :goto_1

    .line 892
    :cond_7
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 894
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 896
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 898
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 901
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 903
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 905
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 907
    move-result-object v3

    .line 910
    invoke-virtual {v2, v13, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 911
    move-result-object v2

    .line 914
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 915
    goto/16 :goto_0

    .line 918
    :pswitch_7
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 920
    move-result v2

    .line 923
    if-nez v2, :cond_8

    .line 924
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 926
    iget v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 928
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getStepCountNow()I

    .line 930
    move-result v4

    .line 933
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getStepCountTarget()I

    .line 934
    move-result v1

    .line 937
    invoke-static {v2, v3, v4, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->initHealthMsgChartData(Lcom/miui/clock/classic/HealthMsgChartView;III)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 941
    move-result-object v1

    .line 944
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 945
    invoke-virtual {v2}, Lcom/miui/clock/module/HealthBean;->getStepCountNow()I

    .line 947
    move-result v2

    .line 950
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 951
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getStepCountNowString()Ljava/lang/String;

    .line 953
    move-result-object v3

    .line 956
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 957
    move-result-object v3

    .line 960
    invoke-virtual {v1, v12, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 961
    move-result-object v1

    .line 964
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 965
    move-result-object v2

    .line 968
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 969
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getStepCountTarget()I

    .line 971
    move-result v3

    .line 974
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 975
    invoke-virtual {v4}, Lcom/miui/clock/module/HealthBean;->getStepCountTargetString()Ljava/lang/String;

    .line 977
    move-result-object v4

    .line 980
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 981
    move-result-object v4

    .line 984
    invoke-virtual {v2, v11, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 985
    move-result-object v2

    .line 988
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 989
    move-result-object v3

    .line 992
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 993
    move-result-object v1

    .line 996
    invoke-virtual {v3, v10, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 997
    move-result-object v1

    .line 1000
    goto/16 :goto_1

    .line 1001
    :cond_8
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthMsgChartView:Lcom/miui/clock/classic/HealthMsgChartView;

    .line 1003
    iget v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 1005
    invoke-static {v1, v2, v3, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->initHealthMsgChartData(Lcom/miui/clock/classic/HealthMsgChartView;III)V

    .line 1007
    goto :goto_0

    .line 1010
    :pswitch_8
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->noHealthData(I)Z

    .line 1011
    move-result v2

    .line 1014
    if-nez v2, :cond_9

    .line 1015
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 1017
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getStepCountNowString()Ljava/lang/String;

    .line 1019
    move-result-object v3

    .line 1022
    invoke-static {v2, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1023
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 1026
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 1028
    invoke-virtual/range {p1 .. p1}, Lcom/miui/clock/module/HealthBean;->getStepCountTargetString()Ljava/lang/String;

    .line 1030
    move-result-object v1

    .line 1033
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1034
    move-result-object v1

    .line 1037
    invoke-virtual {v3, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1038
    move-result-object v1

    .line 1041
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1045
    move-result-object v1

    .line 1048
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 1049
    invoke-virtual {v2}, Lcom/miui/clock/module/HealthBean;->getStepCountNow()I

    .line 1051
    move-result v2

    .line 1054
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 1055
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getStepCountNowString()Ljava/lang/String;

    .line 1057
    move-result-object v3

    .line 1060
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1061
    move-result-object v3

    .line 1064
    invoke-virtual {v1, v12, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 1065
    move-result-object v1

    .line 1068
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1069
    move-result-object v2

    .line 1072
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 1073
    invoke-virtual {v3}, Lcom/miui/clock/module/HealthBean;->getStepCountTarget()I

    .line 1075
    move-result v3

    .line 1078
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 1079
    invoke-virtual {v4}, Lcom/miui/clock/module/HealthBean;->getStepCountTargetString()Ljava/lang/String;

    .line 1081
    move-result-object v4

    .line 1084
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 1085
    move-result-object v4

    .line 1088
    invoke-virtual {v2, v11, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 1089
    move-result-object v2

    .line 1092
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1093
    move-result-object v3

    .line 1096
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 1097
    move-result-object v1

    .line 1100
    invoke-virtual {v3, v10, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1101
    move-result-object v1

    .line 1104
    goto :goto_1

    .line 1105
    :cond_9
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 1106
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 1108
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1110
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 1113
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 1115
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 1117
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1119
    move-result-object v3

    .line 1122
    invoke-virtual {v2, v13, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1123
    move-result-object v2

    .line 1126
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1127
    :cond_a
    :goto_0
    const/4 v1, 0x0

    .line 1130
    :goto_1
    if-nez v1, :cond_b

    .line 1131
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1133
    move-result-object v1

    .line 1136
    const v2, 0x7f130510    # @string/health_no_data 'No health data'

    .line 1137
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1140
    move-result-object v1

    .line 1143
    :cond_b
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1144
    return-void

    .line 1147
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 1148
.end method

.method public final updateTime(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 6
    if-nez v2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 11
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 28
    iget v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 29
    invoke-static {v3}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isTimeType(I)Z

    .line 31
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v3, :cond_4

    .line 37
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 39
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 41
    iget v6, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 43
    invoke-static {v2, v3, v1, v6, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getClassicTime(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;ZIZ)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 48
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 49
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 51
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 54
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 56
    iget v6, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 58
    invoke-static {v6}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isTimeType(I)Z

    .line 60
    move-result v7

    .line 63
    if-nez v7, :cond_1

    .line 64
    const/16 v6, 0x12c

    .line 66
    :cond_1
    invoke-static {v3, v1}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getHourInt(Lmiuix/pickerwidget/date/Calendar;Z)I

    .line 68
    move-result v1

    .line 71
    invoke-static {v1, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getTimeString(IZ)Ljava/lang/String;

    .line 72
    move-result-object v7

    .line 75
    const/16 v8, 0x14

    .line 76
    invoke-virtual {v3, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 78
    move-result v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    move v8, v5

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v8, v4

    .line 86
    :goto_0
    invoke-static {v3, v8}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getTimeString(IZ)Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 90
    packed-switch v6, :pswitch_data_0

    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v1

    .line 97
    const v2, 0x7f130489    # @string/format_hour_minute '%1$s:%2$s'

    .line 98
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 101
    move-result-object v3

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 108
    goto/16 :goto_1

    .line 109
    :pswitch_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v1

    .line 114
    const v2, 0x7f130480    # @string/format_chs_minute '%s分'

    .line 115
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 125
    goto :goto_1

    .line 126
    :pswitch_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    move-result-object v1

    .line 130
    const v2, 0x7f13047f    # @string/format_chs_hour '%s时'

    .line 131
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 134
    move-result-object v3

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 141
    goto :goto_1

    .line 142
    :pswitch_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    move-result-object v1

    .line 146
    const v2, 0x7f13048d    # @string/format_minute_desc '%s'

    .line 147
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 150
    move-result-object v3

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 157
    goto :goto_1

    .line 158
    :pswitch_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    move-result-object v1

    .line 162
    const v2, 0x7f130497    # @string/format_number_hour_desc '%s'

    .line 163
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 166
    move-result-object v3

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 173
    goto :goto_1

    .line 174
    :pswitch_4
    if-nez v3, :cond_3

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-static {v1, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getChsNumber(IZ)Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v1, "\u65f6\u6574"

    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v1

    .line 198
    goto :goto_1

    .line 199
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-static {v1, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getChsNumber(IZ)Ljava/lang/String;

    .line 205
    move-result-object v1

    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string/jumbo v1, "\u65f6"

    .line 212
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {v3, v5}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getChsNumber(IZ)Ljava/lang/String;

    .line 218
    move-result-object v1

    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string/jumbo v1, "\u5206"

    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v1

    .line 234
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    goto/16 :goto_c

    .line 238
    :cond_4
    iget v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 240
    const/16 v3, 0xc8

    .line 242
    if-lt v1, v3, :cond_5

    .line 244
    const/16 v3, 0xd4

    .line 246
    if-gt v1, v3, :cond_5

    .line 248
    move v1, v5

    .line 250
    goto :goto_2

    .line 251
    :cond_5
    move v1, v4

    .line 252
    :goto_2
    if-eqz v1, :cond_11

    .line 253
    invoke-static {}, Lcom/miui/clock/classic/ClassicContentAreaView;->needSwitchTypeLanguage()Z

    .line 255
    move-result v1

    .line 258
    if-eqz v1, :cond_6

    .line 259
    iget v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 261
    packed-switch v1, :pswitch_data_1

    .line 263
    :pswitch_5
    goto :goto_3

    .line 266
    :pswitch_6
    const/16 v1, 0xca

    .line 267
    goto :goto_3

    .line 269
    :cond_6
    iget v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 270
    :goto_3
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 272
    iget-object v6, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 274
    invoke-static {v3, v6}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getSolarTerms(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;)Ljava/lang/String;

    .line 276
    move-result-object v3

    .line 279
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    move-result v6

    .line 283
    xor-int/2addr v6, v5

    .line 284
    const/4 v7, 0x5

    .line 285
    const-string v8, "N\u6708e"

    .line 286
    const-string v9, ""

    .line 288
    const/16 v10, 0x8

    .line 290
    const v11, 0x7f130481    # @string/format_chs_month_day '%1$d月%2$d日'

    .line 292
    const v12, 0x7f130491    # @string/format_month_day_style1 'MMM/d'

    .line 295
    const v15, 0x7f130492    # @string/format_month_day_style2 'M/d'

    .line 298
    const v14, 0x7f130487    # @string/format_full_day_of_week 'EEEE'

    .line 301
    const v13, 0x7f130488    # @string/format_full_month_of_year 'MMMM'

    .line 304
    packed-switch v1, :pswitch_data_2

    .line 307
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 310
    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 312
    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/miui/clock/utils/DateFormatUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setBigMsgText(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 323
    move-result-object v1

    .line 326
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 327
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 331
    move-result-object v4

    .line 334
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 335
    move-result-object v4

    .line 338
    invoke-virtual {v2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 339
    move-result-object v2

    .line 342
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 343
    invoke-static {v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 345
    move-result v3

    .line 348
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 349
    move-result-object v3

    .line 352
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 353
    move-result-object v2

    .line 356
    const v3, 0x7f13048f    # @string/format_month_day_desc '%1$s %2$s'

    .line 357
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 360
    move-result-object v1

    .line 363
    goto/16 :goto_b

    .line 364
    :pswitch_7
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 366
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 368
    const-string v3, "YY\u5e74"

    .line 370
    invoke-virtual {v2, v1, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 372
    move-result-object v1

    .line 375
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 376
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 378
    goto/16 :goto_b

    .line 381
    :pswitch_8
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 383
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 385
    invoke-virtual {v2, v1, v8}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 387
    move-result-object v1

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightTopMsg()V

    .line 391
    if-eqz v6, :cond_7

    .line 394
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 396
    invoke-static {v4, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 398
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 401
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 403
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 406
    invoke-static {v2, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 408
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 411
    const v4, 0x7f130498    # @string/format_solar_lunar_calendar_month_day_desc 'Holiday: %1$s, date according to the traditional Chinese calendar: %2$s'

    .line 413
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 416
    move-result-object v1

    .line 419
    invoke-virtual {v2, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 420
    move-result-object v1

    .line 423
    goto/16 :goto_b

    .line 424
    :cond_7
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 426
    invoke-static {v10, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 428
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 431
    invoke-static {v2, v9}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 433
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 436
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 438
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 441
    const v3, 0x7f13048b    # @string/format_lunar_calendar_month_day_desc 'Date according to the traditional Chinese calendar: %s'

    .line 443
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 446
    move-result-object v1

    .line 449
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 450
    move-result-object v1

    .line 453
    goto/16 :goto_b

    .line 454
    :pswitch_9
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 456
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 458
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 460
    invoke-static {v2, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfWeekString(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;)Ljava/lang/String;

    .line 462
    move-result-object v2

    .line 465
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 466
    if-eqz v6, :cond_8

    .line 469
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 471
    invoke-static {v1, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 473
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 476
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 478
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 480
    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 482
    move-result-object v5

    .line 485
    invoke-virtual {v2, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 486
    move-result-object v2

    .line 489
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 490
    invoke-static {v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 492
    move-result v4

    .line 495
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 496
    move-result-object v4

    .line 499
    iget-object v5, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 500
    iget-object v6, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 504
    move-result-object v7

    .line 507
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 508
    move-result-object v7

    .line 511
    invoke-virtual {v5, v6, v7}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 512
    move-result-object v5

    .line 515
    filled-new-array {v2, v4, v5, v3}, [Ljava/lang/Object;

    .line 516
    move-result-object v2

    .line 519
    const v3, 0x7f130496    # @string/format_month_day_week_solar_desc '%1$s %2$s, %3$s, holiday: %4$s'

    .line 520
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 523
    move-result-object v1

    .line 526
    goto :goto_4

    .line 527
    :cond_8
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 528
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 530
    invoke-virtual {v2, v1, v8}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 532
    move-result-object v1

    .line 535
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 536
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 538
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 541
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 543
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 545
    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 547
    move-result-object v5

    .line 550
    invoke-virtual {v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 551
    move-result-object v3

    .line 554
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 555
    invoke-static {v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 557
    move-result v4

    .line 560
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 561
    move-result-object v4

    .line 564
    iget-object v5, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 565
    iget-object v6, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 569
    move-result-object v7

    .line 572
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 573
    move-result-object v7

    .line 576
    invoke-virtual {v5, v6, v7}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 577
    move-result-object v5

    .line 580
    filled-new-array {v3, v4, v5, v1}, [Ljava/lang/Object;

    .line 581
    move-result-object v1

    .line 584
    const v3, 0x7f130495    # @string/format_month_day_week_lunar_calendar_month_day_desc '%1$s %2$s, %3$s, date according to the traditional Chinese calendar: %4$s'

    .line 585
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 588
    move-result-object v1

    .line 591
    :goto_4
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 592
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 594
    move-result-object v2

    .line 597
    invoke-static {v2}, Lcom/miui/clock/utils/DateFormatUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    .line 598
    move-result-object v2

    .line 601
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 602
    move-result-object v2

    .line 605
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setBigMsgText(Ljava/lang/String;)V

    .line 606
    goto/16 :goto_b

    .line 609
    :pswitch_a
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 611
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 613
    invoke-virtual {v2, v1, v8}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 615
    move-result-object v1

    .line 618
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 619
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->checkRightBottomMsg()V

    .line 624
    if-eqz v6, :cond_9

    .line 627
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 629
    invoke-static {v4, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 631
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 634
    invoke-static {v2, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 636
    goto :goto_5

    .line 639
    :cond_9
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 640
    invoke-static {v10, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 642
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 645
    invoke-static {v2, v9}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 647
    :goto_5
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 650
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 652
    move-result-object v2

    .line 655
    invoke-static {v2}, Lcom/miui/clock/utils/DateFormatUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    .line 656
    move-result-object v2

    .line 659
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 660
    move-result-object v2

    .line 663
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setBigMsgText(Ljava/lang/String;)V

    .line 664
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 667
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 669
    iget-object v5, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 671
    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 673
    move-result-object v6

    .line 676
    invoke-virtual {v4, v5, v6}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 677
    move-result-object v4

    .line 680
    iget-object v5, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 681
    invoke-static {v5}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 683
    move-result v5

    .line 686
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 687
    move-result-object v5

    .line 690
    filled-new-array {v4, v5, v1, v3}, [Ljava/lang/Object;

    .line 691
    move-result-object v1

    .line 694
    const v3, 0x7f130490    # @string/format_month_day_lunar_calendar_month_day_desc '%1$s %2$s, date according to the traditional Chinese calendar: %3$s, holiday: %4$s'

    .line 695
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 698
    move-result-object v1

    .line 701
    goto/16 :goto_b

    .line 702
    :pswitch_b
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 704
    invoke-static {v1}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 706
    move-result v1

    .line 709
    if-eqz v2, :cond_a

    .line 710
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 712
    invoke-static {v1, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getChsNumber(IZ)Ljava/lang/String;

    .line 714
    move-result-object v3

    .line 717
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 718
    move-result-object v3

    .line 721
    const v4, 0x7f13047e    # @string/format_chs_day '%s日'

    .line 722
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 725
    move-result-object v2

    .line 728
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 729
    invoke-static {v3, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 731
    goto :goto_7

    .line 734
    :cond_a
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 735
    rem-int/lit8 v3, v1, 0xa

    .line 737
    if-eq v3, v5, :cond_d

    .line 739
    const/4 v4, 0x2

    .line 741
    if-eq v3, v4, :cond_c

    .line 742
    const/4 v4, 0x3

    .line 744
    if-eq v3, v4, :cond_b

    .line 745
    const-string v3, "TH"

    .line 747
    goto :goto_6

    .line 749
    :cond_b
    const-string v3, "RD"

    .line 750
    goto :goto_6

    .line 752
    :cond_c
    const-string v3, "ND"

    .line 753
    goto :goto_6

    .line 755
    :cond_d
    const-string v3, "ST"

    .line 756
    :goto_6
    invoke-static {v2, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 758
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 761
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 763
    move-result-object v3

    .line 766
    invoke-static {v2, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 767
    :goto_7
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 770
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 772
    move-result-object v1

    .line 775
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 776
    move-result-object v1

    .line 779
    const v3, 0x7f130485    # @string/format_day_desc 'Day of the month: %s'

    .line 780
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 783
    move-result-object v1

    .line 786
    goto/16 :goto_b

    .line 787
    :pswitch_c
    if-eqz v2, :cond_e

    .line 789
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 791
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 793
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 795
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 797
    move-result-object v3

    .line 800
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 801
    move-result-object v1

    .line 804
    goto :goto_8

    .line 805
    :cond_e
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 806
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 808
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 810
    const v4, 0x7f1302a2    # @string/classic_calendar_month_of_year_format 'MMM'

    .line 812
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 815
    move-result-object v3

    .line 818
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 819
    move-result-object v1

    .line 822
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 823
    move-result-object v1

    .line 826
    :goto_8
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 827
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 829
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 832
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 834
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 836
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 838
    move-result-object v3

    .line 841
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 842
    move-result-object v1

    .line 845
    goto/16 :goto_b

    .line 846
    :pswitch_d
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 848
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 850
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 852
    invoke-static {v2, v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfWeekString(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;)Ljava/lang/String;

    .line 854
    move-result-object v2

    .line 857
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 858
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 861
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 863
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 865
    const v4, 0x7f1302a1    # @string/classic_calendar_day_of_week_format 'EE'

    .line 867
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 870
    move-result-object v3

    .line 873
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 874
    move-result-object v1

    .line 877
    goto/16 :goto_b

    .line 878
    :pswitch_e
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 880
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 882
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 884
    invoke-static {v2, v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfWeekString(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;)Ljava/lang/String;

    .line 886
    move-result-object v2

    .line 889
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 890
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 893
    invoke-static {v1}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 895
    move-result v1

    .line 898
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 899
    move-result-object v1

    .line 902
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 903
    invoke-static {v2, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 905
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 908
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 910
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 912
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 914
    move-result-object v5

    .line 917
    invoke-virtual {v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 918
    move-result-object v3

    .line 921
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 922
    move-result-object v1

    .line 925
    const v3, 0x7f130486    # @string/format_day_week_desc 'Day of the month: %1$s, %2$s'

    .line 926
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 929
    move-result-object v1

    .line 932
    goto/16 :goto_b

    .line 933
    :pswitch_f
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 935
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 937
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 939
    const v4, 0x7f130499    # @string/format_week_day_style1 'EE d'

    .line 941
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 944
    move-result-object v3

    .line 947
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 948
    move-result-object v1

    .line 951
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 952
    move-result-object v1

    .line 955
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setBigMsgText(Ljava/lang/String;)V

    .line 956
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 959
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 961
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 963
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 965
    move-result-object v4

    .line 968
    invoke-virtual {v2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 969
    move-result-object v2

    .line 972
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 973
    invoke-static {v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 975
    move-result v3

    .line 978
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 979
    move-result-object v3

    .line 982
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 983
    move-result-object v2

    .line 986
    const v3, 0x7f13049a    # @string/format_week_day_style1_desc '%1$s, day of the month: %2$s'

    .line 987
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 990
    move-result-object v1

    .line 993
    goto/16 :goto_b

    .line 994
    :pswitch_10
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 996
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 998
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1000
    invoke-static {v3, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfWeekString(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;)Ljava/lang/String;

    .line 1002
    move-result-object v3

    .line 1005
    invoke-static {v1, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1006
    if-eqz v2, :cond_f

    .line 1009
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 1011
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1013
    invoke-virtual {v2, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 1015
    move-result v2

    .line 1018
    add-int/2addr v2, v5

    .line 1019
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1020
    move-result-object v2

    .line 1023
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1024
    invoke-static {v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 1026
    move-result v3

    .line 1029
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1030
    move-result-object v3

    .line 1033
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 1034
    move-result-object v2

    .line 1037
    invoke-virtual {v1, v11, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1038
    move-result-object v1

    .line 1041
    goto :goto_9

    .line 1042
    :cond_f
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1043
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 1045
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 1047
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1049
    move-result-object v3

    .line 1052
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1053
    move-result-object v1

    .line 1056
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1057
    move-result-object v1

    .line 1060
    :goto_9
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setBigMsgText(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1064
    move-result-object v1

    .line 1067
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1068
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 1070
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1072
    move-result-object v4

    .line 1075
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1076
    move-result-object v4

    .line 1079
    invoke-virtual {v2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1080
    move-result-object v2

    .line 1083
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1084
    invoke-static {v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 1086
    move-result v3

    .line 1089
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1090
    move-result-object v3

    .line 1093
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1094
    iget-object v5, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 1096
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1098
    move-result-object v6

    .line 1101
    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1102
    move-result-object v6

    .line 1105
    invoke-virtual {v4, v5, v6}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1106
    move-result-object v4

    .line 1109
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 1110
    move-result-object v2

    .line 1113
    const v3, 0x7f130494    # @string/format_month_day_week_desc '%1$s %2$s, %3$s'

    .line 1114
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1117
    move-result-object v1

    .line 1120
    goto/16 :goto_b

    .line 1121
    :pswitch_11
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 1123
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 1125
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1127
    invoke-static {v2, v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfWeekString(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;)Ljava/lang/String;

    .line 1129
    move-result-object v2

    .line 1132
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1133
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 1136
    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1138
    move-result-object v1

    .line 1141
    invoke-static {v1}, Lcom/miui/clock/utils/DateFormatUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    .line 1142
    move-result-object v1

    .line 1145
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1146
    move-result-object v1

    .line 1149
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setBigMsgText(Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1153
    move-result-object v1

    .line 1156
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1157
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 1159
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1161
    move-result-object v4

    .line 1164
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1165
    move-result-object v4

    .line 1168
    invoke-virtual {v2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1169
    move-result-object v2

    .line 1172
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1173
    invoke-static {v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 1175
    move-result v3

    .line 1178
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1179
    move-result-object v3

    .line 1182
    iget-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1183
    iget-object v5, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1187
    move-result-object v6

    .line 1190
    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1191
    move-result-object v6

    .line 1194
    invoke-virtual {v4, v5, v6}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1195
    move-result-object v4

    .line 1198
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 1199
    move-result-object v2

    .line 1202
    const v3, 0x7f130494    # @string/format_month_day_week_desc '%1$s %2$s, %3$s'

    .line 1203
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1206
    move-result-object v1

    .line 1209
    goto :goto_b

    .line 1210
    :pswitch_12
    if-eqz v2, :cond_10

    .line 1211
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 1213
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1215
    invoke-virtual {v2, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 1217
    move-result v2

    .line 1220
    add-int/2addr v2, v5

    .line 1221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1222
    move-result-object v2

    .line 1225
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1226
    invoke-static {v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 1228
    move-result v3

    .line 1231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1232
    move-result-object v3

    .line 1235
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 1236
    move-result-object v2

    .line 1239
    invoke-virtual {v1, v11, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1240
    move-result-object v1

    .line 1243
    goto :goto_a

    .line 1244
    :cond_10
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1245
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 1247
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 1249
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1251
    move-result-object v3

    .line 1254
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1255
    move-result-object v1

    .line 1258
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1259
    move-result-object v1

    .line 1262
    :goto_a
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setBigMsgText(Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1266
    move-result-object v1

    .line 1269
    iget-object v2, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1270
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 1272
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 1274
    move-result-object v4

    .line 1277
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1278
    move-result-object v4

    .line 1281
    invoke-virtual {v2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1282
    move-result-object v2

    .line 1285
    iget-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 1286
    invoke-static {v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getDayOfMonthInt(Lmiuix/pickerwidget/date/Calendar;)I

    .line 1288
    move-result v3

    .line 1291
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1292
    move-result-object v3

    .line 1295
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 1296
    move-result-object v2

    .line 1299
    const v3, 0x7f13048f    # @string/format_month_day_desc '%1$s %2$s'

    .line 1300
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1303
    move-result-object v1

    .line 1306
    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1307
    :cond_11
    :goto_c
    return-void

    .line 1310
    nop

    .line 1311
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1312
    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1326
    :pswitch_data_2
    .packed-switch 0xc9
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
    .line 1346
.end method

.method public final updateWeather(Lcom/miui/clock/module/WeatherBean;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 10
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 13
    const/16 v1, 0x12

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 17
    move-result v0

    .line 20
    mul-int/lit8 v0, v0, 0x3c

    .line 21
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 23
    const/16 v2, 0x14

    .line 25
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 27
    move-result v1

    .line 30
    add-int/2addr v1, v0

    .line 31
    iget v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mType:I

    .line 32
    const/4 v2, -0x1

    .line 34
    const-string v3, ""

    .line 35
    const/high16 v4, 0x42c80000    # 100.0f

    .line 37
    const v5, 0x7f080bea    # @drawable/classic_placeholder_icon 'res/drawable/classic_placeholder_icon.xml'

    .line 39
    const/4 v6, 0x0

    .line 42
    packed-switch v0, :pswitch_data_0

    .line 43
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 48
    move-result v0

    .line 51
    const/4 v2, 0x1

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v0, :cond_a

    .line 54
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 56
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_a

    .line 62
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 64
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 66
    move-result v0

    .line 69
    if-eqz v0, :cond_a

    .line 70
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 72
    goto/16 :goto_0

    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->weatherNeedPlaceMsg()Z

    .line 76
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 84
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 89
    invoke-static {p1, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->setImageResource(Landroid/widget/ImageView;I)V

    .line 91
    goto/16 :goto_4

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getPressureString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getPressureIconResId()I

    .line 107
    move-result v1

    .line 110
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setImageResource(Landroid/widget/ImageView;I)V

    .line 111
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPressureIcon:Landroid/widget/ImageView;

    .line 114
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 116
    invoke-virtual {v1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 118
    move-result v1

    .line 121
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 122
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getPressure()I

    .line 129
    move-result v1

    .line 132
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getPressureString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 136
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 140
    const v2, 0x7f11000c    # @plurals/atmospheric_pressure_desc

    .line 141
    invoke-virtual {v0, v2, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    move-result-object v6

    .line 147
    goto/16 :goto_4

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->weatherNeedPlaceMsg()Z

    .line 150
    move-result v0

    .line 153
    if-eqz v0, :cond_1

    .line 154
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 156
    if-eqz p1, :cond_10

    .line 158
    int-to-float v0, v2

    .line 160
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/HumidityIconView;->setHumidity(F)V

    .line 161
    goto/16 :goto_4

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHumidityIconView:Lcom/miui/clock/classic/HumidityIconView;

    .line 166
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getHumidity()I

    .line 168
    move-result v1

    .line 171
    if-eqz v0, :cond_2

    .line 172
    int-to-float v1, v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/HumidityIconView;->setHumidity(F)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 178
    move-result-object v0

    .line 181
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 182
    move-result-object v1

    .line 185
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getHumidity()I

    .line 186
    move-result p1

    .line 189
    int-to-float p1, p1

    .line 190
    div-float/2addr p1, v4

    .line 191
    float-to-double v2, p1

    .line 192
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 196
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 197
    move-result-object p1

    .line 200
    const v1, 0x7f130535    # @string/humidity_format 'Humidity %s'

    .line 201
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    move-result-object v6

    .line 207
    goto/16 :goto_4

    .line 208
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->weatherNeedPlaceMsg()Z

    .line 210
    move-result v0

    .line 213
    if-eqz v0, :cond_3

    .line 214
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 218
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 223
    invoke-static {p1, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 228
    invoke-static {p1, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->setImageResource(Landroid/widget/ImageView;I)V

    .line 230
    goto/16 :goto_4

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 235
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getWindStrength()Ljava/lang/String;

    .line 237
    move-result-object v1

    .line 240
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightTopMsg:Landroid/widget/TextView;

    .line 244
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 246
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getWindDescResId()I

    .line 248
    move-result v2

    .line 251
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 259
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getWindIconResId()I

    .line 261
    move-result v1

    .line 264
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setImageResource(Landroid/widget/ImageView;I)V

    .line 265
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 268
    move-result-object v0

    .line 271
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 272
    move-result-object v1

    .line 275
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getWindDescResIdFull()I

    .line 276
    move-result v2

    .line 279
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 280
    move-result-object v1

    .line 283
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getWindStrength()Ljava/lang/String;

    .line 284
    move-result-object p1

    .line 287
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 288
    move-result-object p1

    .line 291
    const v1, 0x7f130d1d    # @string/wind_format '%1$s | Level %2$s'

    .line 292
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    move-result-object v6

    .line 298
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWindIcon:Landroid/widget/ImageView;

    .line 299
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 301
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 303
    move-result v0

    .line 306
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 307
    goto/16 :goto_4

    .line 310
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->weatherNeedPlaceMsg()Z

    .line 312
    move-result v0

    .line 315
    if-eqz v0, :cond_4

    .line 316
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 318
    iget v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mStyle:I

    .line 320
    invoke-static {v0}, Lcom/miui/clock/module/WeatherBean;->getSomatosensoryEmptyResId(I)I

    .line 322
    move-result v0

    .line 325
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setImageResource(Landroid/widget/ImageView;I)V

    .line 326
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 329
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 331
    move-result-object v0

    .line 334
    const v1, 0x7f13085d    # @string/no_data_placeholder_string_with_temperature_unit '--°'

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 341
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 342
    goto/16 :goto_4

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 347
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 349
    invoke-virtual {v1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getStyle()I

    .line 351
    move-result v1

    .line 354
    invoke-virtual {p1, v1}, Lcom/miui/clock/module/WeatherBean;->getSomatosensoryResId(I)I

    .line 355
    move-result v1

    .line 358
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setImageResource(Landroid/widget/ImageView;I)V

    .line 359
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryMsg:Landroid/widget/TextView;

    .line 362
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSomatosensoryTemperatureWithUnit()Ljava/lang/String;

    .line 364
    move-result-object v1

    .line 367
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 371
    move-result-object v0

    .line 374
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSomatosensoryTemperature()I

    .line 375
    move-result p1

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 379
    move-result-object p1

    .line 382
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 383
    move-result-object p1

    .line 386
    const v1, 0x7f130b0e    # @string/somatosensory_temperature_format 'Feels like %s°'

    .line 387
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 390
    move-result-object v6

    .line 393
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSomatosensoryIcon:Landroid/widget/ImageView;

    .line 394
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 396
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 398
    move-result v0

    .line 401
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 402
    goto/16 :goto_4

    .line 405
    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->weatherNeedPlaceMsg()Z

    .line 407
    move-result v0

    .line 410
    if-eqz v0, :cond_5

    .line 411
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 413
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 415
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 420
    invoke-static {p1, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 422
    goto/16 :goto_4

    .line 425
    :cond_5
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 427
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getUVILevel()Ljava/lang/String;

    .line 429
    move-result-object v1

    .line 432
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mRightBottomMsg:Landroid/widget/TextView;

    .line 436
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mResources:Landroid/content/res/Resources;

    .line 438
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getUVILevelDescResID()I

    .line 440
    move-result v2

    .line 443
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 444
    move-result-object v1

    .line 447
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 451
    move-result-object v0

    .line 454
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getUVILevel()Ljava/lang/String;

    .line 455
    move-result-object v1

    .line 458
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 459
    move-result-object v2

    .line 462
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getUVILevelDescResID()I

    .line 463
    move-result p1

    .line 466
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 467
    move-result-object p1

    .line 470
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 471
    move-result-object p1

    .line 474
    const v1, 0x7f130c3f    # @string/uvi_format_desc 'Ultraviolet index: %1$s, %2$s'

    .line 475
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 478
    move-result-object v6

    .line 481
    goto/16 :goto_4

    .line 482
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->weatherNeedPlaceMsg()Z

    .line 484
    move-result v0

    .line 487
    if-eqz v0, :cond_6

    .line 488
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 490
    if-eqz p1, :cond_10

    .line 492
    invoke-virtual {p1, v2, v2, v2, v2}, Lcom/miui/clock/classic/SunMoveView;->initData(IIII)V

    .line 494
    goto/16 :goto_4

    .line 497
    :cond_6
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 499
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunriseMinuteTime()I

    .line 501
    move-result v2

    .line 504
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunriseTomorrowMinuteTime()I

    .line 505
    move-result v3

    .line 508
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunsetMinuteTime()I

    .line 509
    move-result p1

    .line 512
    if-eqz v0, :cond_7

    .line 513
    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/miui/clock/classic/SunMoveView;->initData(IIII)V

    .line 515
    :cond_7
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mSunMoveView:Lcom/miui/clock/classic/SunMoveView;

    .line 518
    if-eqz p1, :cond_10

    .line 520
    invoke-virtual {p1}, Lcom/miui/clock/classic/SunMoveView;->getDesc()Ljava/lang/String;

    .line 522
    move-result-object v6

    .line 525
    goto/16 :goto_4

    .line 526
    :pswitch_6
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->weatherNeedPlaceMsg()Z

    .line 528
    move-result v0

    .line 531
    if-eqz v0, :cond_8

    .line 532
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 534
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 536
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 538
    goto/16 :goto_4

    .line 541
    :cond_8
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 543
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getRainProbability()Ljava/lang/String;

    .line 545
    move-result-object v1

    .line 548
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 552
    move-result-object v0

    .line 555
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 556
    move-result-object v1

    .line 559
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getRainProbabilityInt()I

    .line 560
    move-result p1

    .line 563
    int-to-float p1, p1

    .line 564
    div-float/2addr p1, v4

    .line 565
    float-to-double v2, p1

    .line 566
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 567
    move-result-object p1

    .line 570
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 571
    move-result-object p1

    .line 574
    const v1, 0x7f130a20    # @string/rain_probability_desc 'Chance of precipitation: %s'

    .line 575
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 578
    move-result-object v6

    .line 581
    goto/16 :goto_4

    .line 582
    :pswitch_7
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->weatherNeedPlaceMsg()Z

    .line 584
    move-result v0

    .line 587
    if-eqz v0, :cond_9

    .line 588
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 590
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mPlaceholderText:Ljava/lang/String;

    .line 592
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 594
    goto/16 :goto_4

    .line 597
    :cond_9
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 599
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getAQILevel()Ljava/lang/String;

    .line 601
    move-result-object v1

    .line 604
    invoke-static {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 608
    move-result-object v0

    .line 611
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getAQILevel()Ljava/lang/String;

    .line 612
    move-result-object p1

    .line 615
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 616
    move-result-object p1

    .line 619
    const v1, 0x7f130150    # @string/aqi_format_desc 'Air quality index: %s'

    .line 620
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 623
    move-result-object v6

    .line 626
    goto/16 :goto_4

    .line 627
    :goto_0
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 629
    invoke-static {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 631
    move-result v0

    .line 634
    if-nez v0, :cond_a

    .line 635
    move v0, v2

    .line 637
    goto :goto_1

    .line 638
    :cond_a
    move v0, v3

    .line 639
    :goto_1
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->weatherNeedPlaceMsg()Z

    .line 640
    move-result v4

    .line 643
    if-eqz v4, :cond_b

    .line 644
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 646
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 648
    move-result-object v1

    .line 651
    const v2, 0x7f13085a    # @string/no_data_placeholder_single_line_string '-'

    .line 652
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 655
    move-result-object v1

    .line 658
    invoke-static {p1, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 659
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 662
    invoke-static {p1, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->setImageResource(Landroid/widget/ImageView;I)V

    .line 664
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 667
    const/16 v1, 0x8

    .line 669
    invoke-static {v1, p1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 671
    goto :goto_3

    .line 674
    :cond_b
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 677
    move-result-wide v5

    .line 680
    invoke-virtual {v4, v5, v6}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 681
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunriseMinuteTime()I

    .line 684
    move-result v4

    .line 687
    if-lt v1, v4, :cond_d

    .line 688
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getSunsetMinuteTime()I

    .line 690
    move-result v4

    .line 693
    if-le v1, v4, :cond_c

    .line 694
    goto :goto_2

    .line 696
    :cond_c
    move v2, v3

    .line 697
    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mBigMsgView:Landroid/widget/TextView;

    .line 698
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getTemperatureWithoutUnit()Ljava/lang/String;

    .line 700
    move-result-object v4

    .line 703
    invoke-static {v1, v4}, Lcom/miui/clock/classic/ClassicContentAreaView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 707
    invoke-virtual {p1, v2, v0}, Lcom/miui/clock/module/WeatherBean;->getIconResId(ZZ)I

    .line 709
    move-result v2

    .line 712
    invoke-static {v1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->setImageResource(Landroid/widget/ImageView;I)V

    .line 713
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 716
    invoke-static {v3, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setViewVisibility(ILandroid/view/View;)V

    .line 718
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 721
    move-result-object v1

    .line 724
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getTemperature()I

    .line 725
    move-result v2

    .line 728
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getTemperatureWithoutUnit()Ljava/lang/String;

    .line 729
    move-result-object v3

    .line 732
    invoke-virtual {p1}, Lcom/miui/clock/module/WeatherBean;->getDescription()Ljava/lang/String;

    .line 733
    move-result-object p1

    .line 736
    filled-new-array {v3, p1}, [Ljava/lang/Object;

    .line 737
    move-result-object p1

    .line 740
    const v3, 0x7f110032    # @plurals/weather_temperature_desc

    .line 741
    invoke-virtual {v1, v3, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 744
    move-result-object p1

    .line 747
    move-object v6, p1

    .line 748
    :goto_3
    if-nez v0, :cond_e

    .line 749
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 751
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 753
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 755
    move-result v0

    .line 758
    invoke-static {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateDrawableColor(Landroid/widget/ImageView;I)V

    .line 759
    goto :goto_4

    .line 762
    :cond_e
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherIcon:Landroid/widget/ImageView;

    .line 763
    if-nez p1, :cond_f

    .line 765
    goto :goto_4

    .line 767
    :cond_f
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 768
    move-result-object p1

    .line 771
    if-eqz p1, :cond_10

    .line 772
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 774
    :cond_10
    :goto_4
    if-nez v6, :cond_11

    .line 777
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 779
    move-result-object p1

    .line 782
    const v0, 0x7f130c6a    # @string/weather_no_data 'No weather data'

    .line 783
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 786
    move-result-object v6

    .line 789
    :cond_11
    invoke-virtual {p0, v6}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 790
    return-void

    .line 793
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 794
.end method

.method public final weatherNeedPlaceMsg()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method
