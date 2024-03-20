.class public final Lmiuix/pickerwidget/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/DatePicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/DatePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 5

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 4
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 6
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 8
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 12
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 15
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x5

    .line 18
    const/16 v3, 0x9

    .line 19
    if-ne p1, v0, :cond_1

    .line 21
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 23
    iget-boolean v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 25
    if-eqz v4, :cond_0

    .line 27
    const/16 v4, 0xa

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    move v4, v3

    .line 32
    :goto_0
    sub-int/2addr p3, p2

    .line 33
    invoke-virtual {v0, v4, p3}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    .line 34
    goto :goto_3

    .line 37
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 38
    if-ne p1, v0, :cond_3

    .line 40
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 42
    iget-boolean v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 44
    if-eqz v4, :cond_2

    .line 46
    const/4 v4, 0x6

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v4, v2

    .line 50
    :goto_1
    sub-int/2addr p3, p2

    .line 51
    invoke-virtual {v0, v4, p3}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    .line 52
    goto :goto_3

    .line 55
    :cond_3
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 56
    if-ne p1, p2, :cond_6

    .line 58
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 60
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 62
    if-eqz v0, :cond_4

    .line 64
    const/4 v0, 0x2

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move v0, v1

    .line 68
    :goto_2
    invoke-virtual {p2, v0, p3}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 69
    :goto_3
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 72
    invoke-virtual {p2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 74
    move-result p2

    .line 77
    iget-object p3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 78
    invoke-virtual {p3, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 80
    move-result p3

    .line 83
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 84
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 86
    move-result v0

    .line 89
    invoke-virtual {p0, p2, p3, v0}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 90
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 93
    if-ne p1, p2, :cond_5

    .line 95
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 97
    :cond_5
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 100
    const/4 p1, 0x4

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 104
    return-void

    .line 107
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 108
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 110
    throw p0
    .line 113
.end method
