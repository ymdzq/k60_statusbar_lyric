.class public Lcom/android/settings/notification/SilentModeSeekBarPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "SilentModeSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SilentModeSeekBarPreference$H;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/settings/notification/SilentModeSeekBarPreference$H;

.field private mRemainTime:Landroid/widget/TextView;

.field private mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

.field private mSelectedText:Landroid/widget/TextView;

.field private mTimeLabel:Landroid/widget/RelativeLayout;

.field private mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mupdateRemainTimeSeekbar(Lcom/android/settings/notification/SilentModeSeekBarPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->updateRemainTimeSeekbar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/SilentModeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/SilentModeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getProgressLevel(I)I
    .locals 1

    const/16 p0, 0xc

    if-gt p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x19

    .line 137
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, -0x32

    .line 139
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x4b

    .line 141
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, p0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method private getXPosition(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    .line 151
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    .line 152
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float/2addr p1, p0

    add-float/2addr p1, v0

    return p1
.end method

.method private progressToMinute(I)I
    .locals 0

    const/16 p0, 0x32

    if-gt p1, p0, :cond_0

    .line 123
    div-int/lit8 p1, p1, 0x19

    mul-int/lit8 p1, p1, 0x1e

    goto :goto_0

    :cond_0
    const/16 p0, 0x4b

    if-gt p1, p0, :cond_1

    const/16 p1, 0x78

    goto :goto_0

    :cond_1
    const/16 p0, 0x64

    if-gt p1, p0, :cond_2

    const/16 p1, 0x1e0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setInitStatus()V
    .locals 7

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 90
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    const-wide/16 v1, 0x3e8

    div-long/2addr v3, v1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->timeToProgress(J)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method

.method private timeToProgress(J)I
    .locals 4

    const-wide/16 v0, 0xe10

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const-wide/16 v0, 0x48

    .line 109
    div-long/2addr p1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x1c20

    cmp-long p0, p1, v2

    if-gtz p0, :cond_1

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x90

    .line 112
    div-long/2addr p1, v0

    const-wide/16 v0, 0x32

    :goto_0
    add-long/2addr p1, v0

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x7080

    cmp-long p0, p1, v2

    if-gtz p0, :cond_2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x360

    .line 115
    div-long/2addr p1, v0

    const-wide/16 v0, 0x4b

    goto :goto_0

    :cond_2
    const-wide/16 p1, 0x0

    :goto_1
    long-to-int p0, p1

    return p0
.end method

.method private turnMillSecondsToHour(J)Ljava/lang/String;
    .locals 4

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v0, 0x36ee80

    .line 158
    div-long v2, p1, v0

    long-to-int v2, v2

    .line 159
    rem-long/2addr p1, v0

    long-to-int p1, p1

    const p2, 0xea60

    .line 160
    div-int v0, p1, p2

    .line 161
    rem-int/2addr p1, p2

    .line 162
    div-int/lit16 p1, p1, 0x3e8

    const-string p2, ":"

    const-string v1, "0"

    const/16 v3, 0xa

    if-lez v2, :cond_1

    if-ge v2, v3, :cond_0

    .line 165
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-ge v0, v3, :cond_2

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p1, v3, :cond_3

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateRemainTimeSeekbar()V
    .locals 7

    .line 214
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 216
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    const-wide/16 v1, 0x3e8

    div-long v5, v3, v1

    invoke-direct {p0, v5, v6}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->timeToProgress(J)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->turnMillSecondsToHour(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 229
    iget-object v3, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0, v3}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->getXPosition(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 230
    iget-object v3, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mHandler:Lcom/android/settings/notification/SilentModeSeekBarPreference$H;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mHandler:Lcom/android/settings/notification/SilentModeSeekBarPreference$H;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mContext:Landroid/content/Context;

    .line 67
    sget v0, Lcom/android/settings/R$id;->time_count_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 68
    sget v0, Lcom/android/settings/R$id;->time_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeLabel:Landroid/widget/RelativeLayout;

    .line 69
    sget v0, Lcom/android/settings/R$id;->remain_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeList:Ljava/util/List;

    .line 71
    sget v1, Lcom/android/settings/R$id;->always:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeList:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->onehour:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeList:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->twohours:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeList:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->fourhours:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeList:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->eighthours:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSelectedText:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->time_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSelectedText:Landroid/widget/TextView;

    const/4 v0, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->setInitStatus()V

    .line 82
    new-instance p1, Lcom/android/settings/notification/SilentModeSeekBarPreference$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/SilentModeSeekBarPreference$H;-><init>(Lcom/android/settings/notification/SilentModeSeekBarPreference;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mHandler:Lcom/android/settings/notification/SilentModeSeekBarPreference$H;

    .line 83
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mHandler:Lcom/android/settings/notification/SilentModeSeekBarPreference$H;

    const/4 p1, 0x1

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 59
    sget v0, Lcom/android/settings/R$layout;->silent_mode_count_down_bar:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 244
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 245
    invoke-direct {p0, p2}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->getProgressLevel(I)I

    move-result p1

    .line 246
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSelectedText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 247
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSelectedText:Landroid/widget/TextView;

    const/high16 p3, 0x41200000    # 10.0f

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 248
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSelectedText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/settings/R$color;->time_not_selected:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSelectedText:Landroid/widget/TextView;

    const/high16 p2, 0x41400000    # 12.0f

    .line 251
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 252
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mSelectedText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->time_selected:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 259
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mTimeLabel:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mRemainTime:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mHandler:Lcom/android/settings/notification/SilentModeSeekBarPreference$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 267
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->getProgressLevel(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x19

    .line 268
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 269
    invoke-direct {p0, v0}, Lcom/android/settings/notification/SilentModeSeekBarPreference;->progressToMinute(I)I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    .line 271
    iget-object v2, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mHandler:Lcom/android/settings/notification/SilentModeSeekBarPreference$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object v2, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/app/ExtraNotificationManager;->startCountDownSilenceMode(Landroid/content/Context;II)V

    .line 273
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    .line 274
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSeekBarPreference;->mHandler:Lcom/android/settings/notification/SilentModeSeekBarPreference$H;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
