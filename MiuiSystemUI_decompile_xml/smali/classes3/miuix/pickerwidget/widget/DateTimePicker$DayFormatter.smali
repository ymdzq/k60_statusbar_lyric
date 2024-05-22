.class public Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->mContext:Landroid/content/Context;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public formatDay(III)Ljava/lang/String;
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
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    sget-object p2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 41
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 50
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;->mContext:Landroid/content/Context;

    .line 51
    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 55
    move-result-wide p1

    .line 58
    const/16 p3, 0x1180

    .line 59
    invoke-static {p0, p1, p2, p3}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 64
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 65
    move-result-wide p2

    .line 68
    const/16 v0, 0x2400

    .line 69
    invoke-static {p0, p2, p3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string p3, " "

    .line 80
    const-string v0, ""

    .line 82
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_1
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 102
    move-result-wide p1

    .line 105
    const/16 p3, 0x3580

    .line 106
    invoke-static {p0, p1, p2, p3}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 111
    return-object p0
    .line 112
.end method
