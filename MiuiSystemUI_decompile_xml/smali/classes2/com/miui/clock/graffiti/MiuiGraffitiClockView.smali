.class public Lcom/miui/clock/graffiti/MiuiGraffitiClockView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public clockIsZH:Z

.field public clockSpace:Landroid/widget/Space;

.field public dataDay:Landroid/widget/ImageView;

.field public dataImage:Landroid/widget/ImageView;

.field public dataMonth:Landroid/widget/ImageView;

.field public guidelineV50:Landroidx/constraintlayout/widget/Guideline;

.field public m24HourFormat:Z

.field public mCalendar:Ljava/util/Calendar;

.field public mDateDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

.field public mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

.field public mTimeDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

.field public mWallpaperSupportDepth:Z

.field public mWeekDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

.field public timeDot:Landroid/widget/ImageView;

.field public timeHour:Landroid/widget/ImageView;

.field public timeMinute:Landroid/widget/ImageView;

.field public weekToday:Landroid/widget/ImageView;

.field public weekTodayis:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getDimen(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

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

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 9
    const v0, 0x7f0a03d9    # @id/guideline

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    .line 18
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->guidelineV50:Landroidx/constraintlayout/widget/Guideline;

    .line 20
    const v0, 0x7f0a0202    # @id/clock_space

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/Space;

    .line 29
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 31
    const v0, 0x7f0a0aa3    # @id/week_todayis

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->weekTodayis:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0a0aa2    # @id/week_today

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/ImageView;

    .line 51
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->weekToday:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f0a0992    # @id/time_dot

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeDot:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0a0994    # @id/time_hour

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/ImageView;

    .line 73
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeHour:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f0a0996    # @id/time_minute

    .line 77
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/ImageView;

    .line 84
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeMinute:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f0a0281    # @id/data_day

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/ImageView;

    .line 95
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataDay:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0a0283    # @id/data_month

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/ImageView;

    .line 106
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataMonth:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0a0282    # @id/data_image

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/ImageView;

    .line 117
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataImage:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0a028f    # @id/date_desc

    .line 121
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object v0

    .line 127
    check-cast v0, Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 128
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mDateDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 130
    const v0, 0x7f0a0a9f    # @id/week_desc

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v0

    .line 138
    check-cast v0, Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 139
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mWeekDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 141
    const v0, 0x7f0a0991    # @id/time_desc

    .line 143
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v0

    .line 149
    check-cast v0, Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 150
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mTimeDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 152
    return-void
    .line 154
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 2
    iput-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 4
    iget p1, p1, Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;->mClockStyle:I

    .line 6
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v1, v0

    .line 13
    :goto_0
    iput-boolean v1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 14
    new-instance p1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 16
    invoke-direct {p1, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 18
    new-instance v1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 21
    invoke-direct {v1, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 23
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 26
    invoke-virtual {v2}, Landroid/widget/Space;->getId()I

    .line 28
    move-result v2

    .line 31
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 32
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->guidelineV50:Landroidx/constraintlayout/widget/Guideline;

    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 36
    move-result v2

    .line 39
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 40
    iget-boolean v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 42
    if-eqz v2, :cond_1

    .line 44
    const v2, 0x7f07086d    # @dimen/miui_graffiti_weektodayis_width_zh '90.0dp'

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    const v2, 0x7f07086c    # @dimen/miui_graffiti_weektodayis_width_en '104.0dp'

    .line 50
    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 53
    move-result v2

    .line 56
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 57
    iget-boolean v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 59
    if-eqz v2, :cond_2

    .line 61
    const v2, 0x7f070867    # @dimen/miui_graffiti_weektodayis_height_zh '120.0dp'

    .line 63
    goto :goto_2

    .line 66
    :cond_2
    const v2, 0x7f070866    # @dimen/miui_graffiti_weektodayis_height_en '122.0dp'

    .line 67
    :goto_2
    invoke-virtual {p0, v2}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 70
    move-result v2

    .line 73
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 74
    iget-boolean v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 76
    if-eqz v2, :cond_3

    .line 78
    const v2, 0x7f07086b    # @dimen/miui_graffiti_weektodayis_margin_top_zh '63.0dp'

    .line 80
    goto :goto_3

    .line 83
    :cond_3
    const v2, 0x7f07086a    # @dimen/miui_graffiti_weektodayis_margin_top_en '61.0dp'

    .line 84
    :goto_3
    invoke-virtual {p0, v2}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 87
    move-result v2

    .line 90
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 91
    if-eqz v3, :cond_4

    .line 93
    const v3, 0x7f070869    # @dimen/miui_graffiti_weektodayis_margin_right_zh '107.0dp'

    .line 95
    goto :goto_4

    .line 98
    :cond_4
    const v3, 0x7f070868    # @dimen/miui_graffiti_weektodayis_margin_right_en '102.0dp'

    .line 99
    :goto_4
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 102
    move-result v3

    .line 105
    invoke-virtual {p1, v0, v2, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 106
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 109
    invoke-virtual {v2}, Landroid/widget/Space;->getId()I

    .line 111
    move-result v2

    .line 114
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 115
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->guidelineV50:Landroidx/constraintlayout/widget/Guideline;

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 119
    move-result v2

    .line 122
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 123
    iget-boolean v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 125
    if-eqz v2, :cond_5

    .line 127
    const v2, 0x7f070865    # @dimen/miui_graffiti_weektoday_width_zh '162.0dp'

    .line 129
    goto :goto_5

    .line 132
    :cond_5
    const v2, 0x7f070864    # @dimen/miui_graffiti_weektoday_width_en '174.0dp'

    .line 133
    :goto_5
    invoke-virtual {p0, v2}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 136
    move-result v2

    .line 139
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 140
    iget-boolean v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 142
    if-eqz v2, :cond_6

    .line 144
    const v2, 0x7f07085f    # @dimen/miui_graffiti_weektoday_height_zh '74.0dp'

    .line 146
    goto :goto_6

    .line 149
    :cond_6
    const v2, 0x7f07085e    # @dimen/miui_graffiti_weektoday_height_en '78.0dp'

    .line 150
    :goto_6
    invoke-virtual {p0, v2}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 153
    move-result v2

    .line 156
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 157
    iget-boolean v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 159
    if-eqz v2, :cond_7

    .line 161
    const v2, 0x7f070863    # @dimen/miui_graffiti_weektoday_margin_top_zh '164.0dp'

    .line 163
    goto :goto_7

    .line 166
    :cond_7
    const v2, 0x7f070862    # @dimen/miui_graffiti_weektoday_margin_top_en '163.0dp'

    .line 167
    :goto_7
    invoke-virtual {p0, v2}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 170
    move-result v2

    .line 173
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 174
    if-eqz v3, :cond_8

    .line 176
    const v3, 0x7f070861    # @dimen/miui_graffiti_weektoday_margin_right_zh '32.0dp'

    .line 178
    goto :goto_8

    .line 181
    :cond_8
    const v3, 0x7f070860    # @dimen/miui_graffiti_weektoday_margin_right_en '38.0dp'

    .line 182
    :goto_8
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 185
    move-result v3

    .line 188
    invoke-virtual {v1, v0, v2, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 189
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->weekTodayis:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->weekToday:Landroid/widget/ImageView;

    .line 197
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance p1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 202
    invoke-direct {p1, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 204
    new-instance v1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 207
    invoke-direct {v1, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 209
    new-instance v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 212
    invoke-direct {v2, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 214
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 217
    invoke-virtual {v3}, Landroid/widget/Space;->getId()I

    .line 219
    move-result v3

    .line 222
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 223
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 225
    invoke-virtual {v3}, Landroid/widget/Space;->getId()I

    .line 227
    move-result v3

    .line 230
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 231
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 233
    invoke-virtual {v3}, Landroid/widget/Space;->getId()I

    .line 235
    move-result v3

    .line 238
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 239
    const v3, 0x7f070857    # @dimen/miui_graffiti_timedot_width '20.0dp'

    .line 241
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 244
    move-result v3

    .line 247
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 248
    const v3, 0x7f070855    # @dimen/miui_graffiti_timedot_height '38.0dp'

    .line 250
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 253
    move-result v3

    .line 256
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 257
    const v3, 0x7f070856    # @dimen/miui_graffiti_timedot_margin_top '45.0dp'

    .line 259
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 262
    move-result v3

    .line 265
    invoke-virtual {p1, v0, v3, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 266
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->guidelineV50:Landroidx/constraintlayout/widget/Guideline;

    .line 269
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 271
    move-result v3

    .line 274
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 275
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 277
    invoke-virtual {v3}, Landroid/widget/Space;->getId()I

    .line 279
    move-result v3

    .line 282
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 283
    const v3, 0x7f070859    # @dimen/miui_graffiti_timehour_width '152.0dp'

    .line 285
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 288
    move-result v3

    .line 291
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 292
    const v3, 0x7f070858    # @dimen/miui_graffiti_timehour_height '168.0dp'

    .line 294
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 297
    move-result v3

    .line 300
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 301
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeDot:Landroid/widget/ImageView;

    .line 303
    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    .line 305
    move-result v3

    .line 308
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 309
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 311
    invoke-virtual {v3}, Landroid/widget/Space;->getId()I

    .line 313
    move-result v3

    .line 316
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 317
    const v3, 0x7f07085d    # @dimen/miui_graffiti_timeminute_width '152.0dp'

    .line 319
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 322
    move-result v3

    .line 325
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 326
    const v3, 0x7f07085a    # @dimen/miui_graffiti_timeminute_height '168.0dp'

    .line 328
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 331
    move-result v3

    .line 334
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 335
    const v3, 0x7f07085b    # @dimen/miui_graffiti_timeminute_margin_left '3.0dp'

    .line 337
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 340
    move-result v3

    .line 343
    const v4, 0x7f07085c    # @dimen/miui_graffiti_timeminute_margin_top '63.0dp'

    .line 344
    invoke-virtual {p0, v4}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 347
    move-result v4

    .line 350
    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 351
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeDot:Landroid/widget/ImageView;

    .line 354
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeHour:Landroid/widget/ImageView;

    .line 359
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeMinute:Landroid/widget/ImageView;

    .line 364
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance p1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 369
    invoke-direct {p1, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 371
    new-instance v1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 374
    invoke-direct {v1, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 376
    new-instance v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 379
    invoke-direct {v2, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 381
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataImage:Landroid/widget/ImageView;

    .line 384
    iget-boolean v4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 386
    if-eqz v4, :cond_9

    .line 388
    move v4, v0

    .line 390
    goto :goto_9

    .line 391
    :cond_9
    const/16 v4, 0x8

    .line 392
    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 397
    if-eqz v3, :cond_a

    .line 399
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->guidelineV50:Landroidx/constraintlayout/widget/Guideline;

    .line 401
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 403
    move-result v3

    .line 406
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 407
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 409
    invoke-virtual {v3}, Landroid/widget/Space;->getId()I

    .line 411
    move-result v3

    .line 414
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 415
    const v3, 0x7f070843    # @dimen/miui_graffiti_dateimg_width '70.0dp'

    .line 417
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 420
    move-result v3

    .line 423
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 424
    const v3, 0x7f070840    # @dimen/miui_graffiti_dateimg_height '68.0dp'

    .line 426
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 429
    move-result v3

    .line 432
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 433
    const v3, 0x7f070841    # @dimen/miui_graffiti_dateimg_margin_left '139.0dp'

    .line 435
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 438
    move-result v3

    .line 441
    const v4, 0x7f070842    # @dimen/miui_graffiti_dateimg_margin_top '70.0dp'

    .line 442
    invoke-virtual {p0, v4}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 445
    move-result v4

    .line 448
    invoke-virtual {p1, v3, v4, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 449
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 452
    move-result-object v3

    .line 455
    const v4, 0x7f080d7a    # @drawable/graffiti_dateimg 'res/drawable-nodpi/graffiti_dateimg.webp'

    .line 456
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 459
    move-result-object v3

    .line 462
    iget-object v4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 463
    invoke-virtual {v4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 465
    move-result v4

    .line 468
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 469
    iget-object v4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataImage:Landroid/widget/ImageView;

    .line 472
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    :cond_a
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 477
    invoke-virtual {v3}, Landroid/widget/Space;->getId()I

    .line 479
    move-result v3

    .line 482
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 483
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->guidelineV50:Landroidx/constraintlayout/widget/Guideline;

    .line 485
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 487
    move-result v3

    .line 490
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 491
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 493
    if-eqz v3, :cond_b

    .line 495
    const v3, 0x7f070854    # @dimen/miui_graffiti_month_width_zh '78.0dp'

    .line 497
    goto :goto_a

    .line 500
    :cond_b
    const v3, 0x7f070853    # @dimen/miui_graffiti_month_width_en '172.0dp'

    .line 501
    :goto_a
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 504
    move-result v3

    .line 507
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 508
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 510
    if-eqz v3, :cond_c

    .line 512
    const v3, 0x7f07084e    # @dimen/miui_graffiti_month_height_zh '50.0dp'

    .line 514
    goto :goto_b

    .line 517
    :cond_c
    const v3, 0x7f07084d    # @dimen/miui_graffiti_month_height_en '56.0dp'

    .line 518
    :goto_b
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 521
    move-result v3

    .line 524
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 525
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 527
    if-eqz v3, :cond_d

    .line 529
    const v3, 0x7f070850    # @dimen/miui_graffiti_month_margin_left_zh '24.0dp'

    .line 531
    goto :goto_c

    .line 534
    :cond_d
    const v3, 0x7f07084f    # @dimen/miui_graffiti_month_margin_left_en '22.0dp'

    .line 535
    :goto_c
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 538
    move-result v3

    .line 541
    iget-boolean v4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 542
    if-eqz v4, :cond_e

    .line 544
    const v4, 0x7f070852    # @dimen/miui_graffiti_month_margin_top_zh '15.0dp'

    .line 546
    goto :goto_d

    .line 549
    :cond_e
    const v4, 0x7f070851    # @dimen/miui_graffiti_month_margin_top_en '5.0dp'

    .line 550
    :goto_d
    invoke-virtual {p0, v4}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 553
    move-result v4

    .line 556
    invoke-virtual {v1, v3, v4, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 557
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockSpace:Landroid/widget/Space;

    .line 560
    invoke-virtual {v3}, Landroid/widget/Space;->getId()I

    .line 562
    move-result v3

    .line 565
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 566
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->guidelineV50:Landroidx/constraintlayout/widget/Guideline;

    .line 568
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 570
    move-result v3

    .line 573
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 574
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 576
    if-eqz v3, :cond_f

    .line 578
    const v3, 0x7f07084b    # @dimen/miui_graffiti_day_width_zh '91.0dp'

    .line 580
    goto :goto_e

    .line 583
    :cond_f
    const v3, 0x7f07084a    # @dimen/miui_graffiti_day_width_en '74.0dp'

    .line 584
    :goto_e
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 587
    move-result v3

    .line 590
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 591
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 593
    if-eqz v3, :cond_10

    .line 595
    const v3, 0x7f070845    # @dimen/miui_graffiti_day_height_zh '67.0dp'

    .line 597
    goto :goto_f

    .line 600
    :cond_10
    const v3, 0x7f070844    # @dimen/miui_graffiti_day_height_en '66.0dp'

    .line 601
    :goto_f
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 604
    move-result v3

    .line 607
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 608
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 610
    if-eqz v3, :cond_11

    .line 612
    const v3, 0x7f070847    # @dimen/miui_graffiti_day_margin_left_zh '102.0dp'

    .line 614
    goto :goto_10

    .line 617
    :cond_11
    const v3, 0x7f070846    # @dimen/miui_graffiti_day_margin_left_en '124.0dp'

    .line 618
    :goto_10
    invoke-virtual {p0, v3}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 621
    move-result v3

    .line 624
    iget-boolean v4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 625
    if-eqz v4, :cond_12

    .line 627
    const v4, 0x7f070849    # @dimen/miui_graffiti_day_margin_top_zh '6.0dp'

    .line 629
    goto :goto_11

    .line 632
    :cond_12
    const v4, 0x7f070848    # @dimen/miui_graffiti_day_margin_top_en '61.0dp'

    .line 633
    :goto_11
    invoke-virtual {p0, v4}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->getDimen(I)I

    .line 636
    move-result v4

    .line 639
    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 640
    iget-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataImage:Landroid/widget/ImageView;

    .line 643
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataMonth:Landroid/widget/ImageView;

    .line 648
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataDay:Landroid/widget/ImageView;

    .line 653
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    invoke-virtual {p0}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->updateTime()V

    .line 658
    return-void
    .line 661
.end method

.method public setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mWallpaperSupportDepth:Z

    .line 2
    return-void
    .line 4
.end method

.method public final updateTime()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/miui/clock/utils/DateFormatUtils;->is24HourFormat(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->m24HourFormat:Z

    .line 10
    iget-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    iget-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 21
    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 24
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 30
    const/4 v3, 0x5

    .line 32
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 33
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 37
    const/4 v4, 0x7

    .line 39
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 40
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 44
    const/16 v5, 0xc

    .line 46
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 48
    move-result v4

    .line 51
    iget-boolean v6, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->m24HourFormat:Z

    .line 52
    if-eqz v6, :cond_0

    .line 54
    iget-object v6, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 56
    const/16 v7, 0xb

    .line 58
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    .line 60
    move-result v6

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v6, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 65
    const/16 v7, 0xa

    .line 67
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    .line 69
    move-result v6

    .line 72
    if-nez v6, :cond_1

    .line 73
    iget-object v7, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 75
    const/16 v8, 0x9

    .line 77
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    .line 79
    move-result v7

    .line 82
    if-ne v7, v1, :cond_1

    .line 83
    move v6, v5

    .line 85
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 86
    iget-boolean v8, v7, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 88
    const/4 v9, 0x0

    .line 90
    if-nez v8, :cond_3

    .line 91
    iget-boolean v8, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mWallpaperSupportDepth:Z

    .line 93
    if-nez v8, :cond_2

    .line 95
    goto :goto_1

    .line 97
    :cond_2
    move v1, v9

    .line 98
    :cond_3
    :goto_1
    invoke-virtual {v7}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 99
    move-result v7

    .line 102
    invoke-static {v7}, Lcom/miui/clock/utils/ColorUtils;->blendColor(I)I

    .line 103
    move-result v7

    .line 106
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 107
    move-result-object v8

    .line 110
    iget-boolean v10, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 111
    if-eqz v10, :cond_4

    .line 113
    sget-object v10, Lcom/miui/clock/graffiti/GraffitiStyle;->mWeekResource_ZH:[I

    .line 115
    aget v3, v10, v3

    .line 117
    goto :goto_2

    .line 119
    :cond_4
    sget-object v10, Lcom/miui/clock/graffiti/GraffitiStyle;->mWeekResource_EN:[I

    .line 120
    aget v3, v10, v3

    .line 122
    :goto_2
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 124
    move-result-object v3

    .line 127
    if-eqz v1, :cond_5

    .line 128
    move v8, v7

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    iget-object v8, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 132
    invoke-virtual {v8}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 134
    move-result v8

    .line 137
    :goto_3
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 138
    iget-object v8, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->weekToday:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 146
    move-result-object v3

    .line 149
    sget-object v8, Lcom/miui/clock/graffiti/GraffitiStyle;->mTimeHourResource:[I

    .line 150
    aget v6, v8, v6

    .line 152
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 154
    move-result-object v3

    .line 157
    iget-object v6, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 158
    invoke-virtual {v6}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 160
    move-result v6

    .line 163
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 164
    iget-object v6, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeHour:Landroid/widget/ImageView;

    .line 167
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 172
    move-result-object v3

    .line 175
    sget-object v6, Lcom/miui/clock/graffiti/GraffitiStyle;->mTimeMinuteResource:[I

    .line 176
    aget v4, v6, v4

    .line 178
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 180
    move-result-object v3

    .line 183
    iget-object v4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 184
    invoke-virtual {v4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 186
    move-result v4

    .line 189
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 190
    iget-object v4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeMinute:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 198
    move-result-object v3

    .line 201
    iget-boolean v4, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 202
    if-eqz v4, :cond_6

    .line 204
    sget-object v4, Lcom/miui/clock/graffiti/GraffitiStyle;->mMonthResource_ZH:[I

    .line 206
    aget v0, v4, v0

    .line 208
    goto :goto_4

    .line 210
    :cond_6
    sget-object v4, Lcom/miui/clock/graffiti/GraffitiStyle;->mMonthResource_EN:[I

    .line 211
    aget v0, v4, v0

    .line 213
    :goto_4
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 215
    move-result-object v0

    .line 218
    if-eqz v1, :cond_7

    .line 219
    move v3, v7

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 223
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 225
    move-result v3

    .line 228
    :goto_5
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 229
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataMonth:Landroid/widget/ImageView;

    .line 232
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 237
    move-result-object v0

    .line 240
    iget-boolean v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 241
    if-eqz v3, :cond_8

    .line 243
    sget-object v3, Lcom/miui/clock/graffiti/GraffitiStyle;->mDayResource_ZH:[I

    .line 245
    aget v2, v3, v2

    .line 247
    goto :goto_6

    .line 249
    :cond_8
    sget-object v3, Lcom/miui/clock/graffiti/GraffitiStyle;->mDayResource_EN:[I

    .line 250
    aget v2, v3, v2

    .line 252
    :goto_6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 254
    move-result-object v0

    .line 257
    if-eqz v1, :cond_9

    .line 258
    goto :goto_7

    .line 260
    :cond_9
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 261
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 263
    move-result v7

    .line 266
    :goto_7
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 267
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataDay:Landroid/widget/ImageView;

    .line 270
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 275
    move-result-object v0

    .line 278
    const v2, 0x7f080db9    # @drawable/graffiti_dot 'res/drawable-nodpi/graffiti_dot.webp'

    .line 279
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 282
    move-result-object v0

    .line 285
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 286
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 288
    move-result v2

    .line 291
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 292
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->timeDot:Landroid/widget/ImageView;

    .line 295
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 300
    move-result-object v0

    .line 303
    iget-boolean v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 304
    if-eqz v2, :cond_a

    .line 306
    const v2, 0x7f080e35    # @drawable/graffiti_week_todayis_zh 'res/drawable-nodpi/graffiti_week_todayis_zh.webp'

    .line 308
    goto :goto_8

    .line 311
    :cond_a
    const v2, 0x7f080e34    # @drawable/graffiti_week_todayis_en 'res/drawable-nodpi/graffiti_week_todayis_en.webp'

    .line 312
    :goto_8
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 315
    move-result-object v0

    .line 318
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 319
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 321
    move-result v2

    .line 324
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 325
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->weekTodayis:Landroid/widget/ImageView;

    .line 328
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->weekTodayis:Landroid/widget/ImageView;

    .line 333
    const/4 v2, 0x4

    .line 335
    if-eqz v1, :cond_b

    .line 336
    move v3, v2

    .line 338
    goto :goto_9

    .line 339
    :cond_b
    move v3, v9

    .line 340
    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-boolean v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->clockIsZH:Z

    .line 344
    if-eqz v0, :cond_d

    .line 346
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 348
    move-result-object v0

    .line 351
    const v3, 0x7f080d7a    # @drawable/graffiti_dateimg 'res/drawable-nodpi/graffiti_dateimg.webp'

    .line 352
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 355
    move-result-object v0

    .line 358
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 359
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 361
    move-result v3

    .line 364
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 365
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataImage:Landroid/widget/ImageView;

    .line 368
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->dataImage:Landroid/widget/ImageView;

    .line 373
    if-eqz v1, :cond_c

    .line 375
    move v9, v2

    .line 377
    :cond_c
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 381
    move-result-object v0

    .line 384
    const v1, 0x7f130782    # @string/miui_rhombus_clock_date 'MMMM dd'

    .line 385
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 388
    move-result-object v0

    .line 391
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 392
    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 397
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 399
    move-result-object v0

    .line 402
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 403
    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mDateDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 407
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 409
    iget-boolean v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->m24HourFormat:Z

    .line 412
    if-eqz v0, :cond_e

    .line 414
    const/16 v0, 0x20

    .line 416
    goto :goto_a

    .line 418
    :cond_e
    const/16 v0, 0x10

    .line 419
    :goto_a
    iget-object v1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mTimeDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 421
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 423
    move-result-object v2

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 427
    move-result-wide v3

    .line 430
    or-int/2addr v0, v5

    .line 431
    or-int/lit8 v0, v0, 0x40

    .line 432
    invoke-static {v2, v3, v4, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 434
    move-result-object v0

    .line 437
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 441
    move-result-object v0

    .line 444
    const v1, 0x7f130784    # @string/miui_rhombus_clock_week_full 'EEEE'

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 448
    move-result-object v0

    .line 451
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 452
    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mWeekDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 457
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->mCalendar:Ljava/util/Calendar;

    .line 459
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 461
    move-result-object p0

    .line 464
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 465
    move-result-object p0

    .line 468
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 469
    return-void
    .line 472
.end method
