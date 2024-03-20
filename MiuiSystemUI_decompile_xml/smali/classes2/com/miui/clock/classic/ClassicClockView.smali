.class public Lcom/miui/clock/classic/ClassicClockView;
.super Lcom/miui/clock/classic/ClassicClockBaseView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final healthType:Ljava/util/HashSet;

.field public mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

.field public mConstructorUserHandle:Ljava/lang/reflect/Constructor;

.field public mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

.field public mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

.field public mCurrentUserId:I

.field public mFirstInit:Z

.field public mGson:Lcom/google/gson/Gson;

.field public mHasPresetData:Z

.field public mHealthBean:Lcom/miui/clock/module/HealthBean;

.field public mHealthQueryTask:Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;

.field public mLine3:Landroidx/constraintlayout/widget/Group;

.field public mLine4:Landroidx/constraintlayout/widget/Group;

.field public mMethodCreateContextAsUser:Ljava/lang/reflect/Method;

.field public mScreenWidth:I

.field public mShowFullTime:Z

.field public mSignatureText:Landroid/widget/TextView;

.field public final mStaticLayoutPaint:Landroid/text/TextPaint;

.field public mTimeView:Lcom/miui/clock/MiuiTextGlassView;

.field public mUserDefineShowLine3:Z

.field public mUserDefineShowLine4:Z

.field public mWeatherBean:Lcom/miui/clock/module/WeatherBean;

.field public mWeatherQueryTask:Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mFirstInit:Z

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 4
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mStaticLayoutPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mFirstInit:Z

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 8
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mStaticLayoutPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mFirstInit:Z

    .line 11
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 12
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mStaticLayoutPaint:Landroid/text/TextPaint;

    return-void
.end method


# virtual methods
.method public final addType(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    const/16 v0, 0x1fb

    .line 8
    if-ne p1, v0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 12
    const/16 v0, 0x1f6

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 23
    const/16 v0, 0x1f4

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 34
    const/16 p1, 0x1fc

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    :goto_0
    return-void
    .line 55
.end method

.method public final clearPassBlur()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 32
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 37
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 42
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 47
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 52
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 54
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 60
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 62
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 65
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 67
    :cond_3
    return-void
    .line 70
.end method

.method public final filterClassicClockInfo(Lcom/miui/clock/module/MiuiClassicClockInfo;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockBean;->getClassicLine1()I

    .line 7
    move-result v0

    .line 10
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 11
    move-result v0

    .line 14
    iget-object v1, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 15
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockBean;->getClassicLine1()I

    .line 17
    move-result v2

    .line 20
    invoke-static {v2}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 21
    move-result v2

    .line 24
    iget-object v3, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/miui/clock/utils/DateFormatUtils;->updateCurrentUserId()I

    .line 27
    move-result v4

    .line 30
    const-string v5, "com.mi.health"

    .line 31
    invoke-static {v3, v5, v4}, Lcom/miui/clock/utils/DataUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 33
    move-result v3

    .line 36
    iget-object v4, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/miui/clock/utils/DateFormatUtils;->updateCurrentUserId()I

    .line 39
    move-result v5

    .line 42
    const-string v6, "com.miui.weather2"

    .line 43
    invoke-static {v4, v6, v5}, Lcom/miui/clock/utils/DataUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 45
    move-result v4

    .line 48
    invoke-static {}, Lcom/miui/clock/utils/DateFormatUtils;->updateCurrentUserId()I

    .line 49
    move-result v5

    .line 52
    if-eqz v0, :cond_1

    .line 53
    if-nez v3, :cond_1

    .line 55
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v0, v5}, Lcom/miui/clock/module/ClockBean;->getClassicDefaultLine1(Landroid/content/Context;I)I

    .line 59
    move-result v0

    .line 62
    iput v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    if-eqz v2, :cond_2

    .line 66
    if-nez v4, :cond_2

    .line 68
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {v0, v5}, Lcom/miui/clock/module/ClockBean;->getClassicDefaultLine1(Landroid/content/Context;I)I

    .line 72
    move-result v0

    .line 75
    iput v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockBean;->getClassicLine1()I

    .line 79
    move-result v0

    .line 82
    iput v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 83
    :goto_0
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockBean;->getClassicLine3()I

    .line 85
    move-result v0

    .line 88
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 89
    move-result v0

    .line 92
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockBean;->getClassicLine3()I

    .line 93
    move-result v2

    .line 96
    invoke-static {v2}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 97
    move-result v2

    .line 100
    const/4 v5, 0x0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    if-nez v3, :cond_3

    .line 104
    iput v5, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 106
    goto :goto_1

    .line 108
    :cond_3
    if-eqz v2, :cond_4

    .line 109
    if-nez v4, :cond_4

    .line 111
    iput v5, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 113
    goto :goto_1

    .line 115
    :cond_4
    iget v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 116
    if-nez v0, :cond_5

    .line 118
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockBean;->getClassicLine3()I

    .line 120
    move-result v0

    .line 123
    iput v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 124
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 126
    invoke-virtual {v2, p1, v0, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->initData(Lcom/miui/clock/module/MiuiClassicClockInfo;IZ)V

    .line 128
    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockBean;->getClassicLine4()I

    .line 131
    move-result v0

    .line 134
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 135
    move-result v0

    .line 138
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockBean;->getClassicLine4()I

    .line 139
    move-result v2

    .line 142
    invoke-static {v2}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 143
    move-result v2

    .line 146
    if-eqz v0, :cond_6

    .line 147
    if-nez v3, :cond_6

    .line 149
    iput v5, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 151
    goto :goto_2

    .line 153
    :cond_6
    if-eqz v2, :cond_7

    .line 154
    if-nez v4, :cond_7

    .line 156
    iput v5, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 158
    goto :goto_2

    .line 160
    :cond_7
    iget v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 161
    if-nez v0, :cond_8

    .line 163
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockBean;->getClassicLine4()I

    .line 165
    move-result v0

    .line 168
    iput v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 169
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 171
    invoke-virtual {p0, p1, v0, v5}, Lcom/miui/clock/classic/ClassicContentAreaView;->initData(Lcom/miui/clock/module/MiuiClassicClockInfo;IZ)V

    .line 173
    :cond_8
    :goto_2
    return-void
    .line 176
.end method

.method public bridge synthetic getGalleryGravity()I
    .locals 0

    .line 1
    const p0, 0x800003

    .line 2
    return p0
    .line 5
.end method

.method public getHealthJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->getHealthJson()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/miui/clock/module/HealthBean;->toJsonString()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public final getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 14
    return-object p0

    .line 16
    :pswitch_2
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 17
    return-object p0

    .line 19
    :pswitch_3
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 20
    return-object p0

    .line 22
    :pswitch_4
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 23
    return-object p0

    .line 25
    :pswitch_5
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 26
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 30
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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    const v1, 0x7f0701a0    # @dimen/classic_area2_margin_top '6.0dp'

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 7
    move-result v1

    .line 10
    const v2, 0x7f0701a3    # @dimen/classic_area_location_height '60.0dp'

    .line 11
    invoke-virtual {v0, v2}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 14
    move-result v2

    .line 17
    const v3, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

    .line 18
    invoke-virtual {v0, v3}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 21
    move-result v3

    .line 24
    const v4, 0x7f0701c8    # @dimen/classic_signature_area_margin_top '14.0dp'

    .line 25
    invoke-virtual {v0, v4}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 28
    move-result v4

    .line 31
    const v5, 0x7f0701c2    # @dimen/classic_gallery_area_margin_top '2.0dp'

    .line 32
    invoke-virtual {v0, v5}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 35
    move-result v5

    .line 38
    iget-object v6, v0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 39
    if-eqz v6, :cond_0

    .line 41
    invoke-virtual {v6}, Lcom/miui/clock/classic/ClassicTextAreaView;->getViewHeight()I

    .line 43
    move-result v6

    .line 46
    int-to-float v6, v6

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const v6, 0x7f0701cd    # @dimen/classic_text_area_target_height '23.0dp'

    .line 49
    invoke-virtual {v0, v6}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 52
    move-result v6

    .line 55
    :goto_0
    iget-object v7, v0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 56
    if-eqz v7, :cond_4

    .line 58
    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    .line 60
    move-result v7

    .line 63
    if-nez v7, :cond_4

    .line 64
    if-nez p1, :cond_4

    .line 66
    iget-object v7, v0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v7}, Landroid/widget/TextView;->getLineHeight()I

    .line 70
    move-result v7

    .line 73
    iget-object v8, v0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 74
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 76
    move-result-object v8

    .line 79
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 80
    move-result-object v10

    .line 83
    iget-object v8, v0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 86
    move-result-object v8

    .line 89
    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 90
    move-result v8

    .line 93
    const v9, 0x7f0701d0    # @dimen/classic_text_signature_max_width '250.0dp'

    .line 94
    invoke-virtual {v0, v9}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 97
    move-result v15

    .line 100
    iget-object v9, v0, Lcom/miui/clock/classic/ClassicClockView;->mStaticLayoutPaint:Landroid/text/TextPaint;

    .line 101
    iget-object v11, v0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 103
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 105
    move-result-object v11

    .line 108
    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 109
    new-instance v17, Landroid/text/StaticLayout;

    .line 112
    iget-object v11, v0, Lcom/miui/clock/classic/ClassicClockView;->mStaticLayoutPaint:Landroid/text/TextPaint;

    .line 114
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 116
    const/high16 v14, 0x3f800000    # 1.0f

    .line 118
    const/16 v16, 0x0

    .line 120
    const/16 v18, 0x1

    .line 122
    move-object/from16 v9, v17

    .line 124
    move v12, v15

    .line 126
    move/from16 v19, v15

    .line 127
    move/from16 v15, v16

    .line 129
    move/from16 v16, v18

    .line 131
    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 133
    move/from16 v9, v19

    .line 136
    int-to-float v9, v9

    .line 138
    cmpl-float v8, v8, v9

    .line 139
    const/4 v9, 0x1

    .line 141
    if-gtz v8, :cond_2

    .line 142
    invoke-virtual/range {v17 .. v17}, Landroid/text/StaticLayout;->getLineCount()I

    .line 144
    move-result v8

    .line 147
    if-le v8, v9, :cond_1

    .line 148
    goto :goto_1

    .line 150
    :cond_1
    const/4 v9, 0x0

    .line 151
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    .line 152
    mul-int/lit8 v7, v7, 0x2

    .line 154
    :cond_3
    add-float/2addr v3, v6

    .line 156
    add-float/2addr v3, v1

    .line 157
    add-float/2addr v3, v2

    .line 158
    add-float/2addr v3, v4

    .line 159
    int-to-float v1, v7

    .line 160
    add-float/2addr v3, v1

    .line 161
    add-float/2addr v3, v5

    .line 162
    goto :goto_2

    .line 163
    :cond_4
    add-float/2addr v3, v6

    .line 164
    add-float/2addr v3, v1

    .line 165
    add-float/2addr v3, v2

    .line 166
    add-float/2addr v3, v4

    .line 167
    :goto_2
    if-nez p1, :cond_6

    .line 168
    iget-object v1, v0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 170
    if-eqz v1, :cond_5

    .line 172
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 174
    move-result v1

    .line 177
    if-nez v1, :cond_5

    .line 178
    add-float/2addr v3, v2

    .line 180
    :cond_5
    iget-object v0, v0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 181
    if-eqz v0, :cond_6

    .line 183
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 185
    move-result v0

    .line 188
    if-nez v0, :cond_6

    .line 189
    add-float/2addr v3, v2

    .line 191
    :cond_6
    const/high16 v0, 0x3f000000    # 0.5f

    .line 192
    add-float/2addr v3, v0

    .line 194
    float-to-int v0, v3

    .line 195
    return v0
    .line 196
.end method

.method public getNotificationRelativePosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    sget-boolean v0, Lcom/miui/clock/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x2

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    return v0

    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    return p0
    .line 21
.end method

.method public final getSpecialContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 7

    .line 1
    iget v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mCurrentUserId:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    const-string v1, "com.android.systemui"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    const-string v1, "com.miui.aod"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    return-object p1

    .line 27
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mMethodCreateContextAsUser:Ljava/lang/reflect/Method;

    .line 28
    const/4 v1, 0x2

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    if-nez v0, :cond_2

    .line 33
    const-class v0, Landroid/content/Context;

    .line 35
    const-string v4, "createContextAsUser"

    .line 37
    new-array v5, v1, [Ljava/lang/Class;

    .line 39
    const-class v6, Landroid/os/UserHandle;

    .line 41
    aput-object v6, v5, v2

    .line 43
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 45
    aput-object v6, v5, v3

    .line 47
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mMethodCreateContextAsUser:Ljava/lang/reflect/Method;

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mConstructorUserHandle:Ljava/lang/reflect/Constructor;

    .line 55
    if-nez v0, :cond_3

    .line 57
    const-class v0, Landroid/os/UserHandle;

    .line 59
    new-array v4, v3, [Ljava/lang/Class;

    .line 61
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 63
    aput-object v5, v4, v2

    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 67
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mConstructorUserHandle:Ljava/lang/reflect/Constructor;

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mConstructorUserHandle:Ljava/lang/reflect/Constructor;

    .line 73
    new-array v4, v3, [Ljava/lang/Object;

    .line 75
    iget v5, p0, Lcom/miui/clock/classic/ClassicClockView;->mCurrentUserId:I

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v5

    .line 82
    aput-object v5, v4, v2

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 88
    check-cast v0, Landroid/os/UserHandle;

    .line 89
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mMethodCreateContextAsUser:Ljava/lang/reflect/Method;

    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    .line 93
    aput-object v0, v1, v2

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v0

    .line 100
    aput-object v0, v1, v3

    .line 101
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 106
    check-cast p0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    move-object p1, p0

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception p0

    .line 111
    const-string v0, "ClassicClockView"

    .line 112
    const-string v1, "get special context fail"

    .line 114
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :goto_0
    return-object p1
    .line 119
.end method

.method public getTopMargin()F
    .locals 1

    .line 1
    const v0, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 5
    move-result p0

    .line 8
    int-to-float p0, p0

    .line 9
    return p0
    .line 10
.end method

.method public getWeatherJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->getWeatherJson()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/miui/clock/module/WeatherBean;->toJsonString()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public final hasWeatherType()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 2
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 4
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 12
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 14
    invoke-static {v0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 22
    iget p0, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 24
    invoke-static {p0}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
    .line 36
.end method

.method public final isPlus()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result p1

    .line 14
    iget v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mScreenWidth:I

    .line 15
    if-eq v0, p1, :cond_0

    .line 17
    iput p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mScreenWidth:I

    .line 19
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->onScreenSizeChange()V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mWeatherQueryTask:Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;

    .line 5
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 11
    iput-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mWeatherQueryTask:Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthQueryTask:Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 20
    iput-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthQueryTask:Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;

    .line 23
    :cond_1
    return-void
    .line 25
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mScreenWidth:I

    .line 15
    const v0, 0x7f0a099a    # @id/time_view

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 24
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 26
    const v0, 0x7f0a0226    # @id/content_area1

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 35
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 37
    const v0, 0x7f0a0227    # @id/content_area2

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 46
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 48
    const v0, 0x7f0a0886    # @id/signature_text

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0a04fa    # @id/line3

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 67
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 68
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mLine3:Landroidx/constraintlayout/widget/Group;

    .line 70
    const v0, 0x7f0a04fb    # @id/line4

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v0

    .line 78
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 79
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mLine4:Landroidx/constraintlayout/widget/Group;

    .line 81
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 83
    const/16 v1, 0x17c

    .line 85
    invoke-static {v1}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 87
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 94
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 96
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->setCalendar(Lmiuix/pickerwidget/date/Calendar;)V

    .line 98
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 101
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 103
    invoke-virtual {v0, p0}, Lcom/miui/clock/classic/ClassicContentAreaView;->setCalendar(Lmiuix/pickerwidget/date/Calendar;)V

    .line 105
    return-void
    .line 108
.end method

.method public final onHighTextContrastEnabledChanged(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->clearPassBlur()V

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mChoosePaletteType:I

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextDark:Z

    .line 10
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mPalette:Ljava/util/Map;

    .line 12
    iget-boolean v2, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mWallpaperSupportDepth:Z

    .line 14
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/clock/classic/ClassicClockView;->setClockPalette(IZLjava/util/Map;Z)V

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method public final onLanguageChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->onLanguageChanged()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 10
    invoke-static {v1, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 12
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->initTextViewStyle(Z)V

    .line 18
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 21
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->initTextViewStyle(Z)V

    .line 23
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 26
    const/16 v2, 0x17c

    .line 28
    invoke-static {v2}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 37
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 39
    const/4 v2, 0x0

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 42
    :pswitch_0
    move v0, v2

    .line 45
    goto :goto_0

    .line 46
    :pswitch_1
    move v0, v1

    .line 47
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 50
    invoke-virtual {v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->initViewVisible()V

    .line 52
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 55
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 57
    invoke-virtual {v3}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 59
    move-result v3

    .line 62
    invoke-virtual {v0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateColor(I)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 66
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 68
    packed-switch v0, :pswitch_data_1

    .line 70
    :pswitch_2
    move v0, v2

    .line 73
    goto :goto_1

    .line 74
    :pswitch_3
    move v0, v1

    .line 75
    :goto_1
    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 78
    invoke-virtual {v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->initViewVisible()V

    .line 80
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 83
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 85
    invoke-virtual {v3}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 87
    move-result v3

    .line 90
    invoke-virtual {v0, v3}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateColor(I)V

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->updateTime()V

    .line 94
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 97
    if-eqz v0, :cond_4

    .line 99
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 101
    const/16 v3, 0x8

    .line 103
    and-int/2addr v0, v3

    .line 105
    if-ne v0, v3, :cond_3

    .line 106
    move v0, v1

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move v0, v2

    .line 110
    :goto_2
    if-eqz v0, :cond_4

    .line 111
    goto :goto_3

    .line 113
    :cond_4
    move v1, v2

    .line 114
    :goto_3
    if-nez v1, :cond_6

    .line 115
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mHasPresetData:Z

    .line 117
    if-eqz v0, :cond_5

    .line 119
    goto :goto_4

    .line 121
    :cond_5
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->queryDataAsync()V

    .line 122
    goto :goto_5

    .line 125
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->queryDataSync()V

    .line 126
    :goto_5
    return-void

    .line 129
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

    .line 130
    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
    .line 150
.end method

.method public final onScreenOn()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 7
    const/16 v2, 0x8

    .line 9
    and-int/2addr v0, v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    move v0, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    move v1, v3

    .line 20
    :cond_1
    if-nez v1, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->queryDataAsync()V

    .line 23
    :cond_2
    return-void
    .line 26
.end method

.method public final onScreenSizeChange()V
    .locals 10

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 7
    const v1, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

    .line 10
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 13
    move-result v1

    .line 16
    const v2, 0x7f0a096f    # @id/text_area

    .line 17
    const/4 v3, 0x3

    .line 20
    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 21
    const v1, 0x7f0701c9    # @dimen/classic_text_area_margin_start_end '27.0dp'

    .line 24
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 27
    move-result v4

    .line 30
    const/4 v5, 0x6

    .line 31
    invoke-virtual {v0, v2, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 35
    move-result v1

    .line 38
    const/4 v4, 0x7

    .line 39
    invoke-virtual {v0, v2, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 40
    const v1, 0x7f0701a0    # @dimen/classic_area2_margin_top '6.0dp'

    .line 43
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 46
    move-result v1

    .line 49
    const v2, 0x7f0a00dd    # @id/area1

    .line 50
    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 53
    const v1, 0x7f0701a2    # @dimen/classic_area_2_3_4_margin_start_end '24.0dp'

    .line 56
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 59
    move-result v6

    .line 62
    const v7, 0x7f0a099a    # @id/time_view

    .line 63
    invoke-virtual {v0, v7, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 69
    move-result v6

    .line 72
    invoke-virtual {v0, v7, v4, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 73
    const v6, 0x7f0701a1    # @dimen/classic_area_2_3_4_content_margin_bottom '1.0dp'

    .line 76
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 79
    move-result v8

    .line 82
    const/4 v9, 0x4

    .line 83
    invoke-virtual {v0, v7, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 87
    move-result v7

    .line 90
    const v8, 0x7f0a0226    # @id/content_area1

    .line 91
    invoke-virtual {v0, v8, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 97
    move-result v7

    .line 100
    invoke-virtual {v0, v8, v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 101
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 104
    move-result v7

    .line 107
    invoke-virtual {v0, v8, v9, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 111
    move-result v7

    .line 114
    const v8, 0x7f0a0227    # @id/content_area2

    .line 115
    invoke-virtual {v0, v8, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 121
    move-result v1

    .line 124
    invoke-virtual {v0, v8, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 125
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 128
    move-result v1

    .line 131
    invoke-virtual {v0, v8, v9, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 132
    const v1, 0x7f0701c8    # @dimen/classic_signature_area_margin_top '14.0dp'

    .line 135
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 138
    move-result v6

    .line 141
    const v7, 0x7f0a0887    # @id/signature_text_container

    .line 142
    invoke-virtual {v0, v7, v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 145
    const v6, 0x7f0701cf    # @dimen/classic_text_signature_margin_start_end '26.0dp'

    .line 148
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 151
    move-result v8

    .line 154
    invoke-virtual {v0, v7, v5, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 155
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 158
    move-result v8

    .line 161
    invoke-virtual {v0, v7, v4, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 162
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 165
    move-result v7

    .line 168
    const v8, 0x7f0a0541    # @id/magazine_info_container

    .line 169
    invoke-virtual {v0, v8, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 172
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 175
    move-result v5

    .line 178
    invoke-virtual {v0, v8, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 179
    const v4, 0x7f0701c2    # @dimen/classic_gallery_area_margin_top '2.0dp'

    .line 182
    invoke-virtual {p0, v4}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 185
    move-result v4

    .line 188
    invoke-virtual {v0, v8, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 189
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 192
    move-result v1

    .line 195
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 196
    move-result-object v3

    .line 199
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 200
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 202
    const v1, 0x7f0701a3    # @dimen/classic_area_location_height '60.0dp'

    .line 204
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 207
    move-result v3

    .line 210
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 211
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 214
    move-result v2

    .line 217
    const v3, 0x7f0a00de    # @id/area2

    .line 218
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 224
    move-result v1

    .line 227
    const v2, 0x7f0a00df    # @id/area3

    .line 228
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 231
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 234
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 237
    invoke-virtual {v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->onScreenSizeChange()V

    .line 239
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 242
    const v1, 0x7f0701d1    # @dimen/classic_text_signature_text_size '15.0dp'

    .line 244
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 247
    move-result v1

    .line 250
    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 252
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 255
    const v1, 0x7f0701d0    # @dimen/classic_text_signature_max_width '250.0dp'

    .line 257
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 260
    move-result v1

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 264
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 267
    if-eqz v0, :cond_0

    .line 269
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 271
    invoke-static {p0, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 273
    :cond_0
    return-void
    .line 276
.end method

.method public final queryDataAsync()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicClockView;->getSpecialContext(Landroid/content/Context;)Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->hasWeatherType()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mWeatherQueryTask:Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 21
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicClockView;->mWeatherQueryTask:Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;

    .line 24
    :cond_0
    new-instance v1, Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;

    .line 26
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicClockView;->mHasPresetData:Z

    .line 28
    invoke-direct {v1, v0, p0, v5}, Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;-><init>(Landroid/content/Context;Lcom/miui/clock/classic/ClassicClockView;Z)V

    .line 30
    iput-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mWeatherQueryTask:Lcom/miui/clock/classic/ClassicClockView$WeatherQueryTask;

    .line 33
    new-array v5, v4, [Ljava/lang/Void;

    .line 35
    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 40
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 42
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 45
    iget v1, v1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 47
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicClockView;->addType(I)V

    .line 49
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 52
    iget v1, v1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 54
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicClockView;->addType(I)V

    .line 56
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 59
    iget v1, v1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 61
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicClockView;->addType(I)V

    .line 63
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 66
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 68
    move-result v1

    .line 71
    if-lez v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthQueryTask:Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;

    .line 74
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 78
    iput-object v2, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthQueryTask:Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;

    .line 81
    :cond_2
    new-instance v1, Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;

    .line 83
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 85
    invoke-direct {v1, v0, p0, v2}, Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;-><init>(Landroid/content/Context;Lcom/miui/clock/classic/ClassicClockView;Ljava/util/HashSet;)V

    .line 87
    iput-object v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mHealthQueryTask:Lcom/miui/clock/classic/ClassicClockView$HealthQueryTask;

    .line 90
    new-array p0, v4, [Ljava/lang/Void;

    .line 92
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    :cond_3
    return-void
    .line 97
.end method

.method public final queryDataSync()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 7
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicClockView;->addType(I)V

    .line 11
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 14
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 16
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicClockView;->addType(I)V

    .line 18
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 21
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicClockView;->addType(I)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v0

    .line 31
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicClockView;->getSpecialContext(Landroid/content/Context;)Landroid/content/Context;

    .line 34
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 38
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 40
    move-result v3

    .line 43
    const/4 v4, 0x0

    .line 44
    if-lez v3, :cond_0

    .line 45
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 47
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 49
    iget-object v5, p0, Lcom/miui/clock/classic/ClassicClockView;->healthType:Ljava/util/HashSet;

    .line 52
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v5

    .line 57
    move-object v6, v4

    .line 58
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v7

    .line 62
    if-eqz v7, :cond_1

    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v7

    .line 68
    check-cast v7, Ljava/lang/Integer;

    .line 69
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 71
    move-result v7

    .line 74
    invoke-static {v3, v7, v6}, Lcom/miui/clock/utils/DataUtils;->getHealthBean(Ljava/lang/ref/WeakReference;ILcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;

    .line 75
    move-result-object v6

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move-object v6, v4

    .line 80
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    const-string v5, "getHealthBeanSync use time = "

    .line 83
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    move-result-wide v7

    .line 91
    sub-long/2addr v7, v0

    .line 92
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 99
    const-string v1, "ClassicClockView"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    move-result-wide v7

    .line 108
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->hasWeatherType()Z

    .line 109
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 115
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 117
    const-string v2, "2"

    .line 120
    invoke-static {v2, v0}, Lcom/miui/clock/utils/DataUtils;->getWeatherBean(Ljava/lang/String;Ljava/lang/ref/WeakReference;)Lcom/miui/clock/module/WeatherBean;

    .line 122
    move-result-object v4

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    const-string v2, "getWeatherBeanSync use time = "

    .line 128
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    move-result-wide v2

    .line 136
    sub-long/2addr v2, v7

    .line 137
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 144
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 148
    iput-object v6, v0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 150
    iput-object v4, v0, Lcom/miui/clock/classic/ClassicTextAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 152
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 154
    iput-object v6, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 156
    iput-object v4, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 158
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 160
    iput-object v6, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 162
    iput-object v4, p0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 164
    return-void
    .line 166
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/classic/ClassicClockBaseView;->setClockPalette(IZLjava/util/Map;Z)V

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
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 14
    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 26
    move-result p1

    .line 29
    if-eqz p1, :cond_5

    .line 30
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 32
    iget p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 34
    invoke-static {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 36
    move-result p1

    .line 39
    const/4 p3, -0x1

    .line 40
    if-nez p1, :cond_3

    .line 41
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 43
    iget p4, p1, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 45
    if-nez p4, :cond_1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    move p3, p4

    .line 50
    :goto_0
    iget-boolean p1, p1, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 51
    if-nez p1, :cond_2

    .line 53
    const p1, 0x7f0707e4    # @dimen/miui_classic_clock_blur_radius '30.0dp'

    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 58
    move-result p1

    .line 61
    invoke-static {p1, p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setContainerPassBlur(ILandroid/view/View;)V

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 65
    invoke-static {p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColor(ILandroid/view/View;Z)V

    .line 67
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 70
    iget-object p4, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 72
    invoke-virtual {p4}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 74
    move-result p4

    .line 77
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 78
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 81
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 83
    move-result p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 89
    invoke-static {p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColor(ILandroid/view/View;Z)V

    .line 91
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 94
    invoke-static {p3, p0, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColor(ILandroid/view/View;Z)V

    .line 96
    goto :goto_2

    .line 99
    :cond_3
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 100
    iget p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 102
    if-nez p1, :cond_4

    .line 104
    goto :goto_1

    .line 106
    :cond_4
    move p3, p1

    .line 107
    :goto_1
    iput p3, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 108
    :cond_5
    :goto_2
    return-void
    .line 110
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 10

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 3
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicClockView;->filterClassicClockInfo(Lcom/miui/clock/module/MiuiClassicClockInfo;)V

    .line 5
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mFirstInit:Z

    .line 10
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iput-boolean v1, p0, Lcom/miui/clock/classic/ClassicClockView;->mFirstInit:Z

    .line 15
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->onScreenSizeChange()V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 20
    iget v2, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine2:I

    .line 22
    const/16 v3, 0x12f

    .line 24
    const/16 v4, 0x12e

    .line 26
    const/4 v5, 0x1

    .line 28
    if-eq v2, v4, :cond_2

    .line 29
    if-ne v2, v3, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    move v2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    move v2, v5

    .line 36
    :goto_1
    if-eqz v2, :cond_3

    .line 37
    goto :goto_6

    .line 39
    :cond_3
    iget v2, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 40
    if-eq v2, v4, :cond_5

    .line 42
    if-ne v2, v3, :cond_4

    .line 44
    goto :goto_2

    .line 46
    :cond_4
    move v2, v1

    .line 47
    goto :goto_3

    .line 48
    :cond_5
    :goto_2
    move v2, v5

    .line 49
    :goto_3
    if-eqz v2, :cond_6

    .line 50
    goto :goto_6

    .line 52
    :cond_6
    iget v2, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 53
    if-eq v2, v4, :cond_8

    .line 55
    if-ne v2, v3, :cond_7

    .line 57
    goto :goto_4

    .line 59
    :cond_7
    move v2, v1

    .line 60
    goto :goto_5

    .line 61
    :cond_8
    :goto_4
    move v2, v5

    .line 62
    :goto_5
    if-eqz v2, :cond_9

    .line 63
    :goto_6
    move v2, v5

    .line 65
    goto :goto_7

    .line 66
    :cond_9
    move v2, v1

    .line 67
    :goto_7
    iget-boolean v3, p0, Lcom/miui/clock/classic/ClassicClockView;->mHasPresetData:Z

    .line 68
    if-nez v3, :cond_f

    .line 70
    iget-boolean v3, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->unablePresetData:Z

    .line 72
    if-nez v3, :cond_f

    .line 74
    iget-object v3, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->weatherJson:Ljava/lang/String;

    .line 76
    iget-object v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfo;->healthJson:Ljava/lang/String;

    .line 78
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v4

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v6

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    .line 88
    const-string v8, "presetData this = "

    .line 90
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string v8, ", weatherEmpty = "

    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    const-string v8, ", healthEmpty = "

    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v7

    .line 117
    const-string v8, "ClassicClockView"

    .line 118
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz v4, :cond_a

    .line 123
    if-eqz v6, :cond_a

    .line 125
    goto :goto_a

    .line 127
    :cond_a
    iget-object v7, p0, Lcom/miui/clock/classic/ClassicClockView;->mGson:Lcom/google/gson/Gson;

    .line 128
    if-nez v7, :cond_b

    .line 130
    new-instance v7, Lcom/google/gson/Gson;

    .line 132
    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 134
    iput-object v7, p0, Lcom/miui/clock/classic/ClassicClockView;->mGson:Lcom/google/gson/Gson;

    .line 137
    :cond_b
    const/4 v7, 0x0

    .line 139
    if-nez v4, :cond_c

    .line 140
    :try_start_0
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicClockView;->mGson:Lcom/google/gson/Gson;

    .line 142
    const-class v9, Lcom/miui/clock/module/WeatherBean;

    .line 144
    invoke-virtual {v4, v9, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    move-result-object v3

    .line 149
    check-cast v3, Lcom/miui/clock/module/WeatherBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_8

    .line 152
    :catch_0
    const-string v3, "presetData weather convert fail"

    .line 153
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_c
    move-object v3, v7

    .line 158
    :goto_8
    if-nez v6, :cond_d

    .line 159
    :try_start_1
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicClockView;->mGson:Lcom/google/gson/Gson;

    .line 161
    const-class v6, Lcom/miui/clock/module/HealthBean;

    .line 163
    invoke-virtual {v4, v6, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    move-result-object v0

    .line 168
    check-cast v0, Lcom/miui/clock/module/HealthBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    move-object v7, v0

    .line 171
    goto :goto_9

    .line 172
    :catch_1
    const-string v0, "presetData health convert fail"

    .line 173
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_d
    :goto_9
    if-nez v7, :cond_e

    .line 178
    if-nez v3, :cond_e

    .line 180
    goto :goto_a

    .line 182
    :cond_e
    iput-boolean v5, p0, Lcom/miui/clock/classic/ClassicClockView;->mHasPresetData:Z

    .line 183
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 185
    iput-object v7, v0, Lcom/miui/clock/classic/ClassicTextAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 187
    iput-object v3, v0, Lcom/miui/clock/classic/ClassicTextAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 189
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 191
    iput-object v7, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 193
    iput-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 195
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 197
    iput-object v7, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mHealthBean:Lcom/miui/clock/module/HealthBean;

    .line 199
    iput-object v3, v0, Lcom/miui/clock/classic/ClassicContentAreaView;->mWeatherBean:Lcom/miui/clock/module/WeatherBean;

    .line 201
    :cond_f
    :goto_a
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 203
    const/16 v3, 0x8

    .line 205
    if-eqz v0, :cond_11

    .line 207
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 209
    and-int/2addr v0, v3

    .line 211
    if-ne v0, v3, :cond_10

    .line 212
    move v0, v5

    .line 214
    goto :goto_b

    .line 215
    :cond_10
    move v0, v1

    .line 216
    :goto_b
    if-eqz v0, :cond_11

    .line 217
    move v0, v5

    .line 219
    goto :goto_c

    .line 220
    :cond_11
    move v0, v1

    .line 221
    :goto_c
    if-eqz v0, :cond_12

    .line 222
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->queryDataSync()V

    .line 224
    goto :goto_d

    .line 227
    :cond_12
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->queryDataAsync()V

    .line 228
    :goto_d
    invoke-super {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 231
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->clearPassBlur()V

    .line 234
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 237
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 239
    iget v0, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine2:I

    .line 241
    invoke-static {v0, v2}, Lcom/miui/clock/module/ClassicContentStyle;->needOpenTextSameWidth(IZ)Z

    .line 243
    move-result v0

    .line 246
    invoke-virtual {p1, v0}, Lcom/miui/clock/MiuiTextGlassView;->setSameNumberWidth(Z)V

    .line 247
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 250
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 252
    invoke-static {p1, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 254
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 257
    iget v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 259
    iget p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 261
    iget-boolean v4, p0, Lcom/miui/clock/classic/ClassicClockView;->mUserDefineShowLine3:Z

    .line 263
    if-nez v4, :cond_14

    .line 265
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicClockView;->mLine3:Landroidx/constraintlayout/widget/Group;

    .line 267
    if-nez v0, :cond_13

    .line 269
    move v6, v3

    .line 271
    goto :goto_e

    .line 272
    :cond_13
    move v6, v1

    .line 273
    :goto_e
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 274
    :cond_14
    iget-boolean v4, p0, Lcom/miui/clock/classic/ClassicClockView;->mUserDefineShowLine4:Z

    .line 277
    if-nez v4, :cond_16

    .line 279
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicClockView;->mLine4:Landroidx/constraintlayout/widget/Group;

    .line 281
    if-nez p1, :cond_15

    .line 283
    move v6, v3

    .line 285
    goto :goto_f

    .line 286
    :cond_15
    move v6, v1

    .line 287
    :goto_f
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 288
    :cond_16
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 291
    iget-object v6, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 293
    invoke-virtual {v4, v6, v0, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->initData(Lcom/miui/clock/module/MiuiClassicClockInfo;IZ)V

    .line 295
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 298
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 300
    invoke-virtual {v0, v4, p1, v2}, Lcom/miui/clock/classic/ClassicContentAreaView;->initData(Lcom/miui/clock/module/MiuiClassicClockInfo;IZ)V

    .line 302
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 305
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getOriginMagazineColor()I

    .line 307
    move-result p1

    .line 310
    if-eqz p1, :cond_17

    .line 311
    const/16 v0, 0x99

    .line 313
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 315
    move-result p1

    .line 318
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 319
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    :cond_17
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 324
    iget v0, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine5:I

    .line 326
    if-eqz v0, :cond_1b

    .line 328
    iget p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 330
    invoke-static {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 332
    move-result p1

    .line 335
    if-eqz p1, :cond_18

    .line 336
    goto :goto_10

    .line 338
    :cond_18
    move v5, v1

    .line 339
    :goto_10
    if-eqz v5, :cond_19

    .line 340
    goto :goto_11

    .line 342
    :cond_19
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 343
    iget-object p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfo;->signature:Ljava/lang/String;

    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 347
    move-result v0

    .line 350
    if-eqz v0, :cond_1a

    .line 351
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 353
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    goto :goto_12

    .line 358
    :cond_1a
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 364
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    goto :goto_12

    .line 369
    :cond_1b
    :goto_11
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 370
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 375
    const-string v0, ""

    .line 377
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    :goto_12
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->updateTime()V

    .line 382
    return-void
    .line 385
.end method

.method public setCurrentUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mCurrentUserId:I

    .line 2
    return-void
    .line 4
.end method

.method public bridge synthetic setInfoTextColorDark(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setLine2ExtraMarginTop(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->showFace:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v0, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x7f0701a0    # @dimen/classic_area2_margin_top '6.0dp'

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 17
    move-result p1

    .line 20
    add-int/2addr p1, v0

    .line 21
    const v0, 0x7f0a00dd    # @id/area1

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setMarginTop(II)V

    .line 25
    return-void
    .line 28
.end method

.method public setLine3ExtraMarginTop(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 2
    move-result p1

    .line 5
    const v0, 0x7f0a00de    # @id/area2

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setMarginTop(II)V

    .line 9
    return-void
    .line 12
.end method

.method public setLine4ExtraMarginTop(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 2
    move-result p1

    .line 5
    const v0, 0x7f0a00df    # @id/area3

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setMarginTop(II)V

    .line 9
    return-void
    .line 12
.end method

.method public setLine5ExtraMarginTop(I)V
    .locals 1

    .line 1
    const v0, 0x7f0701c8    # @dimen/classic_signature_area_margin_top '14.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 5
    move-result v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 9
    move-result p1

    .line 12
    add-int/2addr p1, v0

    .line 13
    const v0, 0x7f0a0887    # @id/signature_text_container

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setMarginTop(II)V

    .line 17
    return-void
    .line 20
.end method

.method public setLineExtraMarginTop(IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 7
    iget-boolean v1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->showFace:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const v1, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    const v1, 0x7f0701a0    # @dimen/classic_area2_margin_top '6.0dp'

    .line 17
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 20
    move-result v1

    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 24
    move-result p1

    .line 27
    add-int/2addr p1, v1

    .line 28
    const v1, 0x7f0a00dd    # @id/area1

    .line 29
    const/4 v2, 0x3

    .line 32
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 33
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 36
    invoke-virtual {p0, p2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 38
    move-result p2

    .line 41
    const v0, 0x7f0a00de    # @id/area2

    .line 42
    invoke-virtual {p1, v0, v2, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 45
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 48
    invoke-virtual {p0, p3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 50
    move-result p2

    .line 53
    const p3, 0x7f0a00df    # @id/area3

    .line 54
    invoke-virtual {p1, p3, v2, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 57
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 60
    const p2, 0x7f0701c8    # @dimen/classic_signature_area_margin_top '14.0dp'

    .line 62
    invoke-virtual {p0, p2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 65
    move-result p2

    .line 68
    invoke-virtual {p0, p4}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 69
    move-result p3

    .line 72
    add-int/2addr p3, p2

    .line 73
    const p2, 0x7f0a0887    # @id/signature_text_container

    .line 74
    invoke-virtual {p1, p2, v2, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 77
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 80
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 82
    return-void
    .line 85
.end method

.method public bridge synthetic setLocalCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setMinuteColor(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setShowFullTime(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setShowFullTime = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "ClassicClockView"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mShowFullTime:Z

    .line 22
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 24
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 26
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 28
    iget-boolean v3, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 30
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 32
    iget p0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine2:I

    .line 34
    invoke-static {v1, v2, v3, p0, p1}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getClassicTime(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;ZIZ)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
    .line 43
.end method

.method public setUserDefineShowLine3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mUserDefineShowLine3:Z

    .line 2
    return-void
    .line 4
.end method

.method public setUserDefineShowLine4(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mUserDefineShowLine4:Z

    .line 2
    return-void
    .line 4
.end method

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateColor(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->updateColor(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    check-cast p1, Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 8
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicClockView;->filterClassicClockInfo(Lcom/miui/clock/module/MiuiClassicClockInfo;)V

    .line 10
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 13
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 15
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 17
    invoke-static {p1, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 19
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 22
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 24
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 26
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateColor(I)V

    .line 30
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 33
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 35
    invoke-virtual {v0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getClassicPlusSecondaryColor()I

    .line 37
    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateColor(I)V

    .line 41
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 44
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getOriginMagazineColor()I

    .line 46
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    const/16 v0, 0x99

    .line 52
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 54
    move-result p1

    .line 57
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mSignatureText:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockView;->updateTime()V

    .line 63
    return-void
    .line 66
.end method

.method public final updateFaceUnlockIconState(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateTime()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicClockView;->filterClassicClockInfo(Lcom/miui/clock/module/MiuiClassicClockInfo;)V

    .line 4
    invoke-super {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->updateTime()V

    .line 7
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 10
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 12
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 14
    iget-boolean v3, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 16
    iget-object v4, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 18
    iget v4, v4, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine2:I

    .line 20
    iget-boolean v5, p0, Lcom/miui/clock/classic/ClassicClockView;->mShowFullTime:Z

    .line 22
    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getClassicTime(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;ZIZ)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea1:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 31
    iget-boolean v1, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 33
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateTime(Z)V

    .line 35
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mContentArea2:Lcom/miui/clock/classic/ClassicContentAreaView;

    .line 38
    iget-boolean v1, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 40
    invoke-virtual {v0, v1}, Lcom/miui/clock/classic/ClassicContentAreaView;->updateTime(Z)V

    .line 42
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mUserDefineShowLine3:Z

    .line 45
    const/16 v1, 0x8

    .line 47
    const/4 v2, 0x0

    .line 49
    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mLine3:Landroidx/constraintlayout/widget/Group;

    .line 52
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 54
    iget v3, v3, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 56
    if-nez v3, :cond_0

    .line 58
    move v3, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v3, v2

    .line 62
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mUserDefineShowLine4:Z

    .line 66
    if-nez v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockView;->mLine4:Landroidx/constraintlayout/widget/Group;

    .line 70
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockView;->mClassicClockInfo:Lcom/miui/clock/module/MiuiClassicClockInfo;

    .line 72
    iget p0, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 74
    if-nez p0, :cond_2

    .line 76
    goto :goto_1

    .line 78
    :cond_2
    move v1, v2

    .line 79
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 80
    :cond_3
    return-void
    .line 83
.end method
