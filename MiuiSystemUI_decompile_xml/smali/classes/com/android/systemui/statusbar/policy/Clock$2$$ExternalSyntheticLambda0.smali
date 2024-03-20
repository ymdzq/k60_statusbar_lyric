.class public final synthetic Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

.field public final synthetic f$1:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/Clock$2;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 14
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 20
    move-result-object p0

    .line 23
    iput-object p0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 24
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 32
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 34
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 38
    :cond_0
    return-void

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    .line 44
    check-cast p0, Ljava/util/Locale;

    .line 46
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 48
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    .line 50
    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 58
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    .line 60
    const-string p0, ""

    .line 62
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormatString:Ljava/lang/String;

    .line 64
    const/4 p0, 0x0

    .line 66
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mDateTimePatternGenerator:Landroid/icu/text/DateTimePatternGenerator;

    .line 67
    :cond_1
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
