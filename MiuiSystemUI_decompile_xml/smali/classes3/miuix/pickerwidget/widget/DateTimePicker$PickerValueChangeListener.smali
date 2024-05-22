.class public final Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 2
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 4
    if-ne p1, p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 8
    move-result p2

    .line 11
    iget p3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 12
    sub-int/2addr p2, p3

    .line 14
    add-int/lit8 p2, p2, 0x5

    .line 15
    rem-int/lit8 p2, p2, 0x5

    .line 17
    const/4 p3, 0x1

    .line 19
    if-ne p2, p3, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 p3, -0x1

    .line 23
    :goto_0
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 24
    const/16 v0, 0xc

    .line 26
    invoke-virtual {p2, v0, p3}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    .line 28
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 31
    move-result p1

    .line 34
    iput p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I

    .line 35
    goto :goto_1

    .line 37
    :cond_1
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 38
    if-ne p1, p2, :cond_2

    .line 40
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 42
    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 44
    move-result p2

    .line 47
    const/16 p3, 0x12

    .line 48
    invoke-virtual {p1, p3, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 50
    goto :goto_1

    .line 53
    :cond_2
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 54
    if-ne p1, p2, :cond_3

    .line 56
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 58
    iget p3, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I

    .line 60
    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 62
    move-result p2

    .line 65
    mul-int/2addr p2, p3

    .line 66
    const/16 p3, 0x14

    .line 67
    invoke-virtual {p1, p3, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 69
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V

    .line 72
    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 76
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V

    .line 79
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V

    .line 82
    const/4 p1, 0x4

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 86
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker;->mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 89
    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 93
    move-result-wide p2

    .line 96
    invoke-interface {p1, p2, p3}, Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;->onDateTimeChanged(J)V

    .line 97
    :cond_4
    return-void
    .line 100
.end method
