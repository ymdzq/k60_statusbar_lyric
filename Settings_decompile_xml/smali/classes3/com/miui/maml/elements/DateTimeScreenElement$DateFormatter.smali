.class Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;
.super Ljava/lang/Object;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/DateTimeScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateFormatter"
.end annotation


# instance fields
.field private mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field private mCurDay:I

.field private mLunarDate:Ljava/lang/String;

.field private mOldFormat:Ljava/lang/String;

.field private mPreValue:J

.field private mText:Ljava/lang/String;

.field private mTextFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mTimeZoneExp:Lcom/miui/maml/data/Expression;

.field private mValueExp:Lcom/miui/maml/data/Expression;

.field final synthetic this$0:Lcom/miui/maml/elements/DateTimeScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lcom/miui/maml/elements/DateTimeScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    .line 45
    iput-object p2, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 46
    iput-object p3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lcom/miui/maml/data/Expression;

    .line 47
    iput-object p4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 11

    .line 51
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lcom/miui/maml/util/TextFormatter;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lcom/miui/maml/elements/DateTimeScreenElement;

    invoke-virtual {v3, v2}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide v2

    double-to-long v2, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 60
    :goto_0
    iget-object v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    sub-long v4, v2, v4

    .line 61
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 63
    iget-object p0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    return-object p0

    .line 66
    :cond_3
    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    .line 67
    iget-object v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v4, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 68
    iget-object v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    if-eqz v4, :cond_4

    .line 69
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 71
    iget-object v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v5, v4}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    .line 74
    :cond_4
    iget-object v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lcom/miui/maml/elements/DateTimeScreenElement;

    invoke-virtual {v4}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "NNNN"

    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_9

    .line 78
    iget-object v7, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    iget v9, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    if-eq v7, v9, :cond_6

    .line 79
    iget-object v7, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const-string v9, "N\u6708e"

    invoke-virtual {v7, v4, v9}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    .line 80
    iget-object v7, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const-string/jumbo v9, "t"

    invoke-virtual {v7, v4, v9}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    .line 84
    :cond_5
    iget-object v7, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get lunar date:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DateTimeScreenElement"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-lez v6, :cond_7

    .line 89
    iget-object v7, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_7
    move-object v7, v1

    .line 92
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 93
    iget-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    goto :goto_2

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v4, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    .line 99
    :goto_2
    iput-wide v2, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    .line 100
    iget-object p0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public resetCalendar()V
    .locals 1

    .line 104
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    return-void
.end method
