.class public final Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;
.super Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final formatDay(III)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lmiuix/pickerwidget/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lmiuix/pickerwidget/date/Calendar;

    .line 8
    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lmiuix/pickerwidget/date/Calendar;

    .line 12
    invoke-direct {v1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 20
    invoke-virtual {v1, v0, p1}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 21
    const/4 p1, 0x5

    .line 24
    invoke-virtual {v1, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 25
    const/16 p1, 0x9

    .line 28
    invoke-virtual {v1, p1, p3}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 30
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->mContext:Landroid/content/Context;

    .line 33
    const p1, 0x7f13043b    # @string/fmt_chinese_date 'N月e'

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    invoke-virtual {v1, p0, p1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    return-object p0
    .line 46
.end method
