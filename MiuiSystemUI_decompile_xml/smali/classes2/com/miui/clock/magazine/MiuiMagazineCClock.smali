.class public Lcom/miui/clock/magazine/MiuiMagazineCClock;
.super Lcom/miui/clock/magazine/MiuiMagazineCBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mClockContainerStyle1:Landroid/view/ViewGroup;

.field public mClockContainerStyle2:Landroid/view/ViewGroup;

.field public mDateTextStyle1:Landroid/widget/TextView;

.field public mDateTextStyle2:Landroid/widget/TextView;

.field public final mDeviceScale:F

.field public mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

.field public mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

.field public mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

.field public mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

.field public mSpaceDateStyle1:Lcom/miui/clock/utils/BaseLineSpaceView;

.field public mSpaceTimeEndStyle1:Landroid/widget/Space;

.field public mSpaceTimeStyle1:Landroid/widget/Space;

.field public mSpaceTimeStyle2:Lcom/miui/clock/utils/BaseLineSpaceView;

.field public mSpaceWeekStyle1:Lcom/miui/clock/utils/BaseLineSpaceView;

.field public mStyle1MagazineGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public mTypefaceMisans:Landroid/graphics/Typeface;

.field public mTypefaceNeueMatic:Landroid/graphics/Typeface;

.field public mWeekTextStyle1:Landroid/widget/TextView;

.field public supportAccessibilityScale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineCBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDeviceScale:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->supportAccessibilityScale:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineCBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDeviceScale:F

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->supportAccessibilityScale:Z

    return-void
.end method


# virtual methods
.method public final clearPassBlur()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_b

    .line 13
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    goto/16 :goto_1

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 25
    iget v1, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 27
    const/4 v2, 0x5

    .line 29
    if-ne v1, v2, :cond_5

    .line 30
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 32
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 38
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 46
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 51
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 53
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 59
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 64
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 69
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 74
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 76
    move-result v0

    .line 79
    if-nez v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 82
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 87
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 92
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 94
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 97
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 99
    goto/16 :goto_0

    .line 102
    :cond_5
    const/4 v2, 0x6

    .line 104
    if-ne v1, v2, :cond_7

    .line 105
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 107
    move-result v0

    .line 110
    if-nez v0, :cond_6

    .line 111
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 113
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 118
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 123
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 128
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 133
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 138
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 143
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 145
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 148
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 150
    goto :goto_0

    .line 153
    :cond_7
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 154
    move-result v0

    .line 157
    if-nez v0, :cond_8

    .line 158
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 160
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 162
    move-result v0

    .line 165
    if-nez v0, :cond_8

    .line 166
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 168
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 170
    :cond_8
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 173
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 175
    move-result v0

    .line 178
    if-nez v0, :cond_9

    .line 179
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 181
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 183
    :cond_9
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 186
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 188
    move-result v0

    .line 191
    if-nez v0, :cond_a

    .line 192
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 194
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 196
    :cond_a
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 199
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 204
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 209
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 214
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 216
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 219
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 221
    :goto_0
    return-void

    .line 224
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 225
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 230
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 235
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 240
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 245
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 250
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 255
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 257
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 260
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 262
    return-void
    .line 265
.end method

.method public getGalleryGravity()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 2
    const v0, 0x800003

    .line 4
    if-eqz p0, :cond_1

    .line 7
    iget p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 9
    const/4 v1, 0x5

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    return v0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_1
    return v0
    .line 17
.end method

.method public bridge synthetic getHealthJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    const/4 v2, 0x5

    .line 8
    if-eq v0, v1, :cond_4

    .line 9
    const/4 v1, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 15
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 20
    iget p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 22
    if-ne p1, v2, :cond_0

    .line 24
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 26
    return-object p0

    .line 28
    :cond_0
    return-object v1

    .line 29
    :pswitch_1
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 30
    iget p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 32
    if-ne p1, v2, :cond_1

    .line 34
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 36
    return-object p0

    .line 38
    :cond_1
    return-object v1

    .line 39
    :pswitch_2
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 40
    iget p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 42
    if-ne p1, v2, :cond_2

    .line 44
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 46
    return-object p0

    .line 48
    :cond_2
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 49
    return-object p0

    .line 51
    :pswitch_3
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 52
    iget p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 54
    if-ne p1, v2, :cond_3

    .line 56
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 58
    return-object p0

    .line 60
    :cond_3
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 61
    return-object p0

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 64
    iget p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 66
    if-ne p1, v2, :cond_5

    .line 68
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 70
    return-object p0

    .line 72
    :cond_5
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 73
    return-object p0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 76
.end method

.method public bridge synthetic getLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getMagazinePositionY(Z)I
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->getMagazineCNotificationMagazineY()I

    .line 4
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 9
    if-eqz p1, :cond_2

    .line 11
    iget v0, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 13
    const/4 v1, 0x5

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    if-eqz v0, :cond_6

    .line 22
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 24
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 26
    const v1, 0x7f130760    # @string/miui_magazine_c_clock_style1_week 'EEEE'

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 38
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 47
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    const v0, 0x7f070944    # @dimen/miui_magazine_c_clock_style1_margin_top_j18 '109.0dp'

    .line 53
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 56
    move-result v0

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const v0, 0x7f070943    # @dimen/miui_magazine_c_clock_style1_margin_top '76.0dp'

    .line 61
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 64
    move-result v0

    .line 67
    :goto_2
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->isTypefaceSupport(Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->isCharHasChinese(Ljava/lang/String;)Z

    .line 74
    move-result v1

    .line 77
    if-nez v1, :cond_4

    .line 78
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->isCharHasSoundmark(Ljava/lang/String;)Z

    .line 80
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    const p1, 0x7f07093e    # @dimen/miui_magazine_c_clock_style1_date_soundmark_margin_top '355.0dp'

    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 89
    move-result p1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const p1, 0x7f07093c    # @dimen/miui_magazine_c_clock_style1_date_margin_top '332.0dp'

    .line 94
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 97
    move-result p1

    .line 100
    goto :goto_3

    .line 101
    :cond_5
    const p1, 0x7f07093d    # @dimen/miui_magazine_c_clock_style1_date_notsupport_margin_top '279.0dp'

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 105
    move-result p1

    .line 108
    :goto_3
    int-to-float p1, p1

    .line 109
    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    mul-float/2addr p1, v1

    .line 112
    float-to-int p1, p1

    .line 113
    const v1, 0x7f07093f    # @dimen/miui_magazine_c_clock_style1_gallery_margin_top '11.0dp'

    .line 114
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 117
    move-result p0

    .line 120
    add-int/2addr v0, p1

    .line 121
    add-int/2addr v0, p0

    .line 122
    return v0

    .line 123
    :cond_6
    iget-boolean p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->enableDiffusion:Z

    .line 124
    const p1, 0x7f070952    # @dimen/miui_magazine_c_clock_style2_gallery_margin_phone_top '374.0dp'

    .line 126
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 129
    move-result p0

    .line 132
    return p0
    .line 133
.end method

.method public bridge synthetic getWeatherJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final ignoreAccessibilityScale()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->supportAccessibilityScale:Z

    .line 3
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCClock;->updateViewsLayoutParams()V

    .line 5
    return-void
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiGalleryBaseClock;->onFinishInflate()V

    .line 2
    const-string v0, "miclock-neue-matic-compressed-black"

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mTypefaceNeueMatic:Landroid/graphics/Typeface;

    .line 12
    invoke-static {}, Lcom/miui/clock/utils/FontUtils;->getMiSansGlobal()Landroid/graphics/Typeface;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mTypefaceMisans:Landroid/graphics/Typeface;

    .line 18
    const v0, 0x7f0a0200    # @id/clock_container_style1

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 29
    const v0, 0x7f0a08f9    # @id/style1_magazine_top_line

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    .line 38
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mStyle1MagazineGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 40
    const v0, 0x7f0a0265    # @id/current_date_style1

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0a0274    # @id/current_week_style1

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a026a    # @id/current_time_hour_style1

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 70
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 71
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 73
    const v0, 0x7f0a0998    # @id/time_space_style1

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/Space;

    .line 82
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceTimeStyle1:Landroid/widget/Space;

    .line 84
    const v0, 0x7f0a0993    # @id/time_end_space_style1

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/Space;

    .line 93
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceTimeEndStyle1:Landroid/widget/Space;

    .line 95
    const v0, 0x7f0a0aa1    # @id/week_space_style1

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 103
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 104
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceWeekStyle1:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 106
    const v0, 0x7f0a0292    # @id/date_space_style1

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v0

    .line 114
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 115
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceDateStyle1:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 117
    const v0, 0x7f0a026f    # @id/current_time_minute_style1

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v0

    .line 125
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 126
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 128
    const v0, 0x7f0a0201    # @id/clock_container_style2

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object v0

    .line 136
    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 139
    const v0, 0x7f0a026b    # @id/current_time_hour_style2

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object v0

    .line 147
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 148
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 150
    const v0, 0x7f0a0270    # @id/current_time_minute_style2

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v0

    .line 158
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 159
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 161
    const v0, 0x7f0a0999    # @id/time_space_style2

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object v0

    .line 169
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 170
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceTimeStyle2:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 172
    const v0, 0x7f0a0266    # @id/current_date_style2

    .line 174
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 177
    move-result-object v0

    .line 180
    check-cast v0, Landroid/widget/TextView;

    .line 181
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 183
    new-instance v0, Lcom/miui/clock/module/FontNeueMatic;

    .line 185
    invoke-direct {v0}, Lcom/miui/clock/module/FontNeueMatic;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 190
    iput-object v0, v1, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 192
    invoke-virtual {v1}, Lcom/miui/clock/MiuiTextGlassView;->updateBoxWidth()V

    .line 194
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 197
    iput-object v0, v1, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 199
    invoke-virtual {v1}, Lcom/miui/clock/MiuiTextGlassView;->updateBoxWidth()V

    .line 201
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 204
    iput-object v0, v1, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 206
    invoke-virtual {v1}, Lcom/miui/clock/MiuiTextGlassView;->updateBoxWidth()V

    .line 208
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCClock;->updateViewsLayoutParams()V

    .line 211
    return-void
    .line 214
.end method

.method public final onHighTextContrastEnabledChanged(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCClock;->clearPassBlur()V

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mChoosePaletteType:I

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mTextDark:Z

    .line 10
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mPalette:Ljava/util/Map;

    .line 12
    iget-boolean v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mWallpaperSupportDepth:Z

    .line 14
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/clock/magazine/MiuiMagazineCClock;->setClockPalette(IZLjava/util/Map;Z)V

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method public final onLanguageChanged()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/clock/utils/FontUtils;->getMiSansGlobal()Landroid/graphics/Typeface;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mTypefaceMisans:Landroid/graphics/Typeface;

    .line 6
    return-void
    .line 8
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockPalette(IZLjava/util/Map;Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 14
    if-eqz p1, :cond_11

    .line 16
    iget p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->displayType:I

    .line 18
    invoke-static {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 20
    move-result p1

    .line 23
    if-nez p1, :cond_11

    .line 24
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_11

    .line 32
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 34
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 36
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 42
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_11

    .line 48
    :cond_1
    const p1, 0x7f070932    # @dimen/miui_magazine_c_clock_blur_radius '100.0dp'

    .line 50
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 53
    move-result p1

    .line 56
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 57
    iget p4, p3, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 59
    const/4 v0, 0x5

    .line 61
    const/4 v1, -0x1

    .line 62
    if-ne p4, v0, :cond_8

    .line 63
    iget-boolean p3, p3, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 65
    if-nez p3, :cond_2

    .line 67
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 69
    invoke-static {p1, p3}, Lcom/miui/clock/utils/MiuiBlurUtils;->setContainerPassBlur(ILandroid/view/View;)V

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 74
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 76
    move-result p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 82
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 84
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 86
    if-nez p4, :cond_3

    .line 88
    move p4, v1

    .line 90
    :cond_3
    invoke-virtual {p3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 91
    move-result p3

    .line 94
    invoke-static {p4, p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 95
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 98
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 100
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 102
    if-nez p4, :cond_4

    .line 104
    move p4, v1

    .line 106
    :cond_4
    invoke-virtual {p3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 107
    move-result p3

    .line 110
    invoke-static {p4, p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 111
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 114
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 116
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 118
    if-nez p4, :cond_5

    .line 120
    move p4, v1

    .line 122
    :cond_5
    invoke-virtual {p3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 123
    move-result p3

    .line 126
    invoke-static {p4, p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 127
    :cond_6
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 130
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 132
    move-result p1

    .line 135
    if-eqz p1, :cond_11

    .line 136
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 138
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 140
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 142
    if-nez p4, :cond_7

    .line 144
    goto :goto_0

    .line 146
    :cond_7
    move v1, p4

    .line 147
    :goto_0
    invoke-virtual {p3}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 148
    move-result p3

    .line 151
    invoke-static {v1, p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 152
    goto/16 :goto_3

    .line 155
    :cond_8
    const/4 v0, 0x6

    .line 157
    if-ne p4, v0, :cond_c

    .line 158
    iget-boolean p3, p3, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 160
    if-nez p3, :cond_9

    .line 162
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 164
    invoke-static {p1, p3}, Lcom/miui/clock/utils/MiuiBlurUtils;->setContainerPassBlur(ILandroid/view/View;)V

    .line 166
    :cond_9
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 169
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 171
    move-result p1

    .line 174
    if-eqz p1, :cond_11

    .line 175
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 177
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 179
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 181
    if-nez p4, :cond_a

    .line 183
    move p4, v1

    .line 185
    :cond_a
    invoke-virtual {p3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 186
    move-result p3

    .line 189
    invoke-static {p4, p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 190
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 193
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 195
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 197
    if-nez p4, :cond_b

    .line 199
    goto :goto_1

    .line 201
    :cond_b
    move v1, p4

    .line 202
    :goto_1
    invoke-virtual {p3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 203
    move-result p3

    .line 206
    invoke-static {v1, p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 207
    goto :goto_3

    .line 210
    :cond_c
    iget-boolean p3, p3, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 211
    if-nez p3, :cond_d

    .line 213
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 215
    invoke-static {p1, p3}, Lcom/miui/clock/utils/MiuiBlurUtils;->setContainerPassBlur(ILandroid/view/View;)V

    .line 217
    :cond_d
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 220
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 222
    move-result p1

    .line 225
    if-eqz p1, :cond_f

    .line 226
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 228
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 230
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 232
    if-nez p4, :cond_e

    .line 234
    move p4, v1

    .line 236
    :cond_e
    invoke-virtual {p3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 237
    move-result p3

    .line 240
    invoke-static {p4, p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 241
    :cond_f
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 244
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 246
    move-result p1

    .line 249
    if-eqz p1, :cond_11

    .line 250
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 252
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 254
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 256
    if-nez p4, :cond_10

    .line 258
    goto :goto_2

    .line 260
    :cond_10
    move v1, p4

    .line 261
    :goto_2
    invoke-virtual {p3}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 262
    move-result p3

    .line 265
    invoke-static {v1, p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 266
    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCClock;->updateTime()V

    .line 269
    return-void
    .line 272
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCClock;->clearPassBlur()V

    .line 5
    return-void
    .line 8
.end method

.method public bridge synthetic setCurrentUserId(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setInfoTextColorDark(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setLocalCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setMagazineInfoVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 6
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->setMagazineInfoVisible(Z)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public bridge synthetic setMinuteColor(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setSuperSaveOpen(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setSuperSaveOpen(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateTime()V
    .locals 14

    .line 1
    invoke-super {p0}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->updateTime()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget v1, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 10
    const/4 v2, 0x5

    .line 12
    const/16 v3, 0x20

    .line 13
    const/4 v4, 0x3

    .line 15
    const/4 v5, 0x2

    .line 16
    const/16 v6, 0x8

    .line 17
    const/4 v7, 0x1

    .line 19
    const/16 v8, 0x10

    .line 20
    const-string v9, "%d%d"

    .line 22
    const/4 v10, 0x0

    .line 24
    const/high16 v11, 0x3f800000    # 1.0f

    .line 25
    if-ne v1, v2, :cond_5

    .line 27
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 41
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 43
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 52
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 54
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 61
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 63
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 65
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 72
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 74
    invoke-virtual {v1}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 76
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 85
    const v2, 0x7f130763    # @string/miui_magazine_clock_date 'M/d'

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 93
    invoke-static {v1}, Lcom/miui/clock/utils/DateFormatUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 107
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 109
    const v6, 0x7f130764    # @string/miui_magazine_clock_date_content_description 'MM/dd'

    .line 111
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 117
    invoke-virtual {v1, v2, v6}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 125
    if-eqz v0, :cond_1

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    move v3, v8

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 131
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    move-result-wide v12

    .line 138
    or-int/lit8 v2, v3, 0xc

    .line 139
    or-int/lit8 v2, v2, 0x40

    .line 141
    invoke-static {v1, v12, v13, v2}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 150
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 152
    const v2, 0x7f130760    # @string/miui_magazine_c_clock_style1_week 'EEEE'

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 160
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 165
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 172
    move-result-object v2

    .line 175
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceWeekStyle1:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 181
    move-result-object v1

    .line 184
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 185
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceDateStyle1:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 187
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 189
    move-result-object v2

    .line 192
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 193
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 195
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 197
    move-result-object v3

    .line 200
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 201
    iget-object v6, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceTimeStyle1:Landroid/widget/Space;

    .line 203
    invoke-virtual {v6}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    move-result-object v6

    .line 208
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 209
    iget-object v8, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceTimeEndStyle1:Landroid/widget/Space;

    .line 211
    invoke-virtual {v8}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 213
    move-result-object v8

    .line 216
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 217
    invoke-static {v0}, Lcom/miui/clock/utils/FontUtils;->isTypefaceSupport(Ljava/lang/String;)Z

    .line 219
    move-result v12

    .line 222
    const/4 v13, -0x1

    .line 223
    if-eqz v12, :cond_3

    .line 224
    iget-object v8, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 226
    const v12, 0x7f070946    # @dimen/miui_magazine_c_clock_style1_text_size '136.0dp'

    .line 228
    invoke-virtual {p0, v12}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 231
    move-result v12

    .line 234
    int-to-float v12, v12

    .line 235
    mul-float/2addr v12, v11

    .line 236
    invoke-virtual {v8, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 237
    iget-object v8, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 240
    iget-object v12, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mTypefaceNeueMatic:Landroid/graphics/Typeface;

    .line 242
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 244
    invoke-static {v0}, Lcom/miui/clock/utils/FontUtils;->isCharHasChinese(Ljava/lang/String;)Z

    .line 247
    move-result v8

    .line 250
    if-nez v8, :cond_2

    .line 251
    invoke-static {v0}, Lcom/miui/clock/utils/FontUtils;->isCharHasSoundmark(Ljava/lang/String;)Z

    .line 253
    move-result v0

    .line 256
    if-eqz v0, :cond_2

    .line 257
    const v0, 0x7f07094c    # @dimen/miui_magazine_c_clock_style1_week_soundmark_margin_top '230.0dp'

    .line 259
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 262
    move-result v0

    .line 265
    int-to-float v0, v0

    .line 266
    mul-float/2addr v0, v11

    .line 267
    float-to-int v0, v0

    .line 268
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 269
    const v0, 0x7f07093e    # @dimen/miui_magazine_c_clock_style1_date_soundmark_margin_top '355.0dp'

    .line 271
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 274
    move-result v0

    .line 277
    int-to-float v0, v0

    .line 278
    mul-float/2addr v0, v11

    .line 279
    float-to-int v0, v0

    .line 280
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 281
    goto :goto_1

    .line 283
    :cond_2
    const v0, 0x7f07094a    # @dimen/miui_magazine_c_clock_style1_week_margin_top '219.0dp'

    .line 284
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 287
    move-result v0

    .line 290
    int-to-float v0, v0

    .line 291
    mul-float/2addr v0, v11

    .line 292
    float-to-int v0, v0

    .line 293
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 294
    const v0, 0x7f07093c    # @dimen/miui_magazine_c_clock_style1_date_margin_top '332.0dp'

    .line 296
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 299
    move-result v0

    .line 302
    int-to-float v0, v0

    .line 303
    mul-float/2addr v0, v11

    .line 304
    float-to-int v0, v0

    .line 305
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 306
    :goto_1
    const v0, 0x7f0a0aa1    # @id/week_space_style1

    .line 308
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 311
    iput v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 313
    goto :goto_3

    .line 315
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 316
    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 320
    move-result-object v0

    .line 323
    const-string v1, "bo"

    .line 324
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    move-result v0

    .line 329
    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 332
    const v1, 0x7f07093b    # @dimen/miui_magazine_c_clock_style1_bo_text_size '32.0dp'

    .line 334
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 337
    move-result v1

    .line 340
    int-to-float v1, v1

    .line 341
    mul-float/2addr v1, v11

    .line 342
    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 343
    const v0, 0x7f070949    # @dimen/miui_magazine_c_clock_style1_week_bo_margin_top '113.0dp'

    .line 346
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 349
    move-result v0

    .line 352
    int-to-float v0, v0

    .line 353
    mul-float/2addr v0, v11

    .line 354
    float-to-int v0, v0

    .line 355
    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 356
    goto :goto_2

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 359
    const v1, 0x7f070945    # @dimen/miui_magazine_c_clock_style1_notsupport_text_size '46.0dp'

    .line 361
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 364
    move-result v1

    .line 367
    int-to-float v1, v1

    .line 368
    mul-float/2addr v1, v11

    .line 369
    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 370
    const v0, 0x7f07094b    # @dimen/miui_magazine_c_clock_style1_week_notsupport_margin_top '108.0dp'

    .line 373
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 376
    move-result v0

    .line 379
    int-to-float v0, v0

    .line 380
    mul-float/2addr v0, v11

    .line 381
    float-to-int v0, v0

    .line 382
    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 383
    :goto_2
    iput v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 385
    const v0, 0x7f0a0993    # @id/time_end_space_style1

    .line 387
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 390
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mWeekTextStyle1:Landroid/widget/TextView;

    .line 392
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mTypefaceMisans:Landroid/graphics/Typeface;

    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 396
    const v0, 0x7f07093d    # @dimen/miui_magazine_c_clock_style1_date_notsupport_margin_top '279.0dp'

    .line 399
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 402
    move-result v0

    .line 405
    int-to-float v0, v0

    .line 406
    mul-float/2addr v0, v11

    .line 407
    float-to-int v0, v0

    .line 408
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 409
    :goto_3
    const v0, 0x7f070947    # @dimen/miui_magazine_c_clock_style1_time_margin_bottom '21.0dp'

    .line 411
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 414
    move-result v0

    .line 417
    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 418
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mStyle1MagazineGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 420
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 422
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 424
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 426
    move-result-object v2

    .line 429
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 430
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 432
    add-int/2addr v1, v2

    .line 434
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 435
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 438
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 440
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 442
    aget v2, v2, v10

    .line 444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    move-result-object v2

    .line 449
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 450
    aget v3, v3, v7

    .line 452
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    move-result-object v3

    .line 457
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 458
    move-result-object v2

    .line 461
    invoke-static {v1, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    move-result-object v2

    .line 465
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 469
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 471
    aget v2, v2, v5

    .line 473
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    move-result-object v2

    .line 478
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 479
    aget v3, v3, v4

    .line 481
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    move-result-object v3

    .line 486
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 487
    move-result-object v2

    .line 490
    invoke-static {v1, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 491
    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 498
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 500
    iget-boolean v1, v1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->enableDiffusion:Z

    .line 502
    invoke-virtual {v0, v1}, Lcom/miui/clock/MiuiTextGlassView;->setEnableDiffusion(Z)V

    .line 504
    iget-object v0, p0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 507
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 509
    move-result-object v0

    .line 512
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 513
    const v1, 0x7f0a08f9    # @id/style1_magazine_top_line

    .line 515
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 518
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 520
    iput v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 522
    const v1, 0x7f07093f    # @dimen/miui_magazine_c_clock_style1_gallery_margin_top '11.0dp'

    .line 524
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 527
    move-result v1

    .line 530
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 531
    const v1, 0x7f070941    # @dimen/miui_magazine_c_clock_style1_margin_start '15.0dp'

    .line 533
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 536
    move-result p0

    .line 539
    int-to-float p0, p0

    .line 540
    mul-float/2addr p0, v11

    .line 541
    float-to-int p0, p0

    .line 542
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 543
    goto/16 :goto_9

    .line 546
    :cond_5
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 548
    if-eqz v0, :cond_6

    .line 550
    iget v0, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->displayType:I

    .line 552
    if-ne v8, v0, :cond_6

    .line 554
    move v0, v7

    .line 556
    goto :goto_4

    .line 557
    :cond_6
    move v0, v10

    .line 558
    :goto_4
    if-eqz v0, :cond_7

    .line 559
    move v0, v10

    .line 561
    goto :goto_5

    .line 562
    :cond_7
    move v0, v6

    .line 563
    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 567
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 572
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 577
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 579
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 581
    move-result v1

    .line 584
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 585
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 588
    iget v1, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 590
    const/4 v2, 0x6

    .line 592
    if-ne v1, v2, :cond_8

    .line 593
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 595
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 597
    move-result v0

    .line 600
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 601
    goto :goto_6

    .line 604
    :cond_8
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 605
    invoke-virtual {v0}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 607
    move-result v0

    .line 610
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    :goto_6
    const v0, 0x7f070957    # @dimen/miui_magazine_c_clock_style2_time_text_size '318.0dp'

    .line 614
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 617
    move-result v0

    .line 620
    int-to-float v0, v0

    .line 621
    mul-float/2addr v0, v11

    .line 622
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 623
    invoke-virtual {v1, v10, v0}, Lcom/miui/clock/MiuiTextGlassView;->setTextSize(IF)V

    .line 625
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 628
    invoke-virtual {v1, v10, v0}, Lcom/miui/clock/MiuiTextGlassView;->setTextSize(IF)V

    .line 630
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mSpaceTimeStyle2:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 633
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 635
    move-result-object v0

    .line 638
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 639
    const v1, 0x7f070956    # @dimen/miui_magazine_c_clock_style2_time_margin_top '254.5dp'

    .line 641
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 644
    move-result v1

    .line 647
    int-to-float v1, v1

    .line 648
    mul-float/2addr v1, v11

    .line 649
    float-to-int v1, v1

    .line 650
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 651
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 653
    iget v0, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 655
    if-ne v0, v2, :cond_9

    .line 657
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    .line 661
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->ssTags:[Ljava/lang/String;

    .line 666
    iget-object v6, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 668
    aget v6, v6, v5

    .line 670
    aget-object v2, v2, v6

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v2, ","

    .line 677
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->ssTags:[Ljava/lang/String;

    .line 682
    iget-object v6, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 684
    aget v6, v6, v4

    .line 686
    aget-object v2, v2, v6

    .line 688
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    move-result-object v1

    .line 696
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 697
    goto :goto_7

    .line 700
    :cond_9
    const/4 v1, 0x7

    .line 701
    if-ne v0, v1, :cond_a

    .line 702
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 704
    const-string v1, ""

    .line 706
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 708
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 711
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 713
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 715
    aget v2, v2, v10

    .line 717
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 719
    move-result-object v2

    .line 722
    iget-object v6, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 723
    aget v6, v6, v7

    .line 725
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 727
    move-result-object v6

    .line 730
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    .line 731
    move-result-object v2

    .line 734
    invoke-static {v1, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 735
    move-result-object v2

    .line 738
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 742
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 744
    aget v2, v2, v5

    .line 746
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 748
    move-result-object v2

    .line 751
    iget-object v5, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 752
    aget v4, v5, v4

    .line 754
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 756
    move-result-object v4

    .line 759
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 760
    move-result-object v2

    .line 763
    invoke-static {v1, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 764
    move-result-object v1

    .line 767
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 771
    if-eqz v0, :cond_b

    .line 773
    goto :goto_8

    .line 775
    :cond_b
    move v3, v8

    .line 776
    :goto_8
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 777
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 781
    move-result-wide v4

    .line 784
    or-int/lit8 v2, v3, 0xc

    .line 785
    or-int/lit8 v2, v2, 0x40

    .line 787
    invoke-static {v1, v4, v5, v2}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 789
    move-result-object v1

    .line 792
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 796
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 798
    iget-boolean v1, v1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->enableDiffusion:Z

    .line 800
    invoke-virtual {v0, v1}, Lcom/miui/clock/MiuiTextGlassView;->setEnableDiffusion(Z)V

    .line 802
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle2:Lcom/miui/clock/MiuiTextGlassView;

    .line 805
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 807
    iget-boolean v1, v1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->enableDiffusion:Z

    .line 809
    invoke-virtual {v0, v1}, Lcom/miui/clock/MiuiTextGlassView;->setEnableDiffusion(Z)V

    .line 811
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 814
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 816
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 818
    move-result v1

    .line 821
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 825
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 827
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 829
    const v3, 0x7f130761    # @string/miui_magazine_c_clock_style2_date 'M/d EE'

    .line 831
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 834
    move-result-object v3

    .line 837
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 838
    move-result-object v1

    .line 841
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 845
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 847
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 849
    const v2, 0x7f130762    # @string/miui_magazine_c_clock_style2_date_content_description 'EEEE, MMM dd'

    .line 851
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 854
    move-result-object v2

    .line 857
    invoke-virtual {v1, p0, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 858
    move-result-object p0

    .line 861
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 862
    :goto_9
    return-void
    .line 865
.end method

.method public final updateViewsLayoutParams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const v0, 0x7f07094d    # @dimen/miui_magazine_c_clock_style1_width '362.0dp'

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 12
    move-result v0

    .line 15
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v3

    .line 21
    int-to-float v0, v0

    .line 22
    mul-float/2addr v0, v2

    .line 23
    float-to-int v0, v0

    .line 24
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    const v0, 0x7f070946    # @dimen/miui_magazine_c_clock_style1_text_size '136.0dp'

    .line 27
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 30
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    mul-float/2addr v0, v2

    .line 35
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle1:Landroid/widget/TextView;

    .line 36
    invoke-virtual {v3, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 38
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mHourTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 41
    invoke-virtual {v3, v1, v0}, Lcom/miui/clock/MiuiTextGlassView;->setTextSize(IF)V

    .line 43
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mMinuteTextStyle1:Lcom/miui/clock/MiuiTextGlassView;

    .line 46
    invoke-virtual {v3, v1, v0}, Lcom/miui/clock/MiuiTextGlassView;->setTextSize(IF)V

    .line 48
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 57
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 59
    move-result v3

    .line 62
    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {v3}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 67
    move-result v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    const v3, 0x7f070942    # @dimen/miui_magazine_c_clock_style1_margin_start_j18 '10.0dp'

    .line 73
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 76
    move-result v3

    .line 79
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 80
    const v3, 0x7f070944    # @dimen/miui_magazine_c_clock_style1_margin_top_j18 '109.0dp'

    .line 83
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 86
    move-result v3

    .line 89
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 90
    goto :goto_0

    .line 92
    :cond_0
    const v3, 0x7f070941    # @dimen/miui_magazine_c_clock_style1_margin_start '15.0dp'

    .line 93
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 96
    move-result v3

    .line 99
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 100
    const v3, 0x7f070943    # @dimen/miui_magazine_c_clock_style1_margin_top '76.0dp'

    .line 103
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 106
    move-result v3

    .line 109
    int-to-float v3, v3

    .line 110
    mul-float/2addr v3, v2

    .line 111
    float-to-int v3, v3

    .line 112
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 113
    :goto_0
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 120
    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 124
    const v3, 0x7f070951    # @dimen/miui_magazine_c_clock_style2_date_text_size '14.0dp'

    .line 126
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 129
    move-result v3

    .line 132
    int-to-float v3, v3

    .line 133
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    const v0, 0x7f070958    # @dimen/miui_magazine_c_clock_style2_width '382.0dp'

    .line 137
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 140
    move-result v0

    .line 143
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 144
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 146
    move-result-object v1

    .line 149
    int-to-float v0, v0

    .line 150
    mul-float/2addr v0, v2

    .line 151
    float-to-int v0, v0

    .line 152
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 155
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 157
    move-result-object v0

    .line 160
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 161
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 163
    move-result v1

    .line 166
    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 171
    move-result v1

    .line 174
    if-nez v1, :cond_2

    .line 175
    const v1, 0x7f070955    # @dimen/miui_magazine_c_clock_style2_margin_top_j18 '105.0dp'

    .line 177
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 180
    move-result v1

    .line 183
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 184
    goto :goto_1

    .line 186
    :cond_2
    const v1, 0x7f070954    # @dimen/miui_magazine_c_clock_style2_margin_top '69.5dp'

    .line 187
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 190
    move-result v1

    .line 193
    int-to-float v1, v1

    .line 194
    mul-float/2addr v1, v2

    .line 195
    float-to-int v1, v1

    .line 196
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 197
    :goto_1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 199
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    move-result-object v0

    .line 204
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 205
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 207
    move-result v1

    .line 210
    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 215
    move-result v1

    .line 218
    if-nez v1, :cond_3

    .line 219
    const v1, 0x7f070950    # @dimen/miui_magazine_c_clock_style2_date_margin_top_j18 '25.5dp'

    .line 221
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 224
    move-result p0

    .line 227
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 228
    goto :goto_2

    .line 230
    :cond_3
    const v1, 0x7f07094f    # @dimen/miui_magazine_c_clock_style2_date_margin_top '19.5dp'

    .line 231
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 234
    move-result p0

    .line 237
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 238
    :cond_4
    :goto_2
    return-void
    .line 240
.end method
