.class public Lcom/miui/maml/data/DateTimeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"

.field private static final fields:[I

.field private static sCalendar:Lmiuix/pickerwidget/date/Calendar;


# instance fields
.field private mAmPm:Lcom/miui/maml/data/IndexedVariable;

.field protected mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field private mCurrentTime:J

.field private mDate:Lcom/miui/maml/data/IndexedVariable;

.field private mDateLunar:Lcom/miui/maml/data/IndexedVariable;

.field private mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

.field private volatile mFinished:Z

.field private mHour12:Lcom/miui/maml/data/IndexedVariable;

.field private mHour24:Lcom/miui/maml/data/IndexedVariable;

.field private mLastUpdatedTime:J

.field private final mLock:Ljava/lang/Object;

.field private mMinute:Lcom/miui/maml/data/IndexedVariable;

.field private mMonth:Lcom/miui/maml/data/IndexedVariable;

.field private mMonth1:Lcom/miui/maml/data/IndexedVariable;

.field private mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

.field private mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

.field private mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lcom/miui/maml/data/IndexedVariable;

.field private mTime:Lcom/miui/maml/data/IndexedVariable;

.field private mTimeAccuracy:J

.field private mTimeAccuracyField:I

.field private mTimeFormat:I

.field private mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTimeSys:Lcom/miui/maml/data/IndexedVariable;

.field private mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lcom/miui/maml/data/IndexedVariable;

.field private mYearLunar:Lcom/miui/maml/data/IndexedVariable;

.field private mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x12

    .line 2
    const/16 v1, 0x9

    .line 4
    const/16 v2, 0x16

    .line 6
    const/16 v3, 0x15

    .line 8
    const/16 v4, 0x14

    .line 10
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->fields:[I

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 26
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 27
    invoke-direct {p0, p2}, Lcom/miui/maml/data/DateTimeVariableUpdater;->initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 5

    .line 2
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 6
    new-instance p1, Lcom/miui/maml/data/TimeUpdater;

    invoke-direct {p1, p0}, Lcom/miui/maml/data/TimeUpdater;-><init>(Lcom/miui/maml/data/DateTimeVariableUpdater;)V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 8
    invoke-static {}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 9
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 10
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    const-string p1, "invalid accuracy tag:"

    const-string v1, "DateTimeVariableUpdater"

    .line 11
    invoke-static {p1, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public static formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 6
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 8
    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 11
    :cond_0
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 13
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 15
    sget-object p1, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    invoke-static {}, Lcom/miui/maml/util/Utils;->getAppContext()Landroid/content/Context;

    .line 20
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2, p0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    return-object p0
    .line 28
.end method

.method private initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "init with accuracy:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    const-string v1, "DateTimeVariableUpdater"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$1;->$SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result p1

    .line 30
    aget p1, v0, p1

    .line 31
    const/4 v0, 0x1

    .line 33
    if-eq p1, v0, :cond_3

    .line 34
    const/4 v1, 0x2

    .line 36
    if-eq p1, v1, :cond_2

    .line 37
    const/4 v1, 0x3

    .line 39
    const/16 v2, 0x14

    .line 40
    const-wide/32 v3, 0xea60

    .line 42
    if-eq p1, v1, :cond_1

    .line 45
    const/4 v1, 0x4

    .line 47
    if-eq p1, v1, :cond_0

    .line 48
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 50
    iput v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    const-wide/16 v1, 0x3e8

    .line 55
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 57
    const/16 p1, 0x15

    .line 59
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 64
    iput v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    const-wide/32 v1, 0x36ee80

    .line 69
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 72
    const/16 p1, 0x12

    .line 74
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 76
    goto :goto_0

    .line 78
    :cond_3
    const-wide/32 v1, 0x5265c00

    .line 79
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 82
    const/16 p1, 0x9

    .line 84
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 88
    move-result-object p1

    .line 91
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 92
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 94
    const-string/jumbo v2, "year"

    .line 96
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 99
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYear:Lcom/miui/maml/data/IndexedVariable;

    .line 102
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 104
    const-string v2, "month"

    .line 106
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 108
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth:Lcom/miui/maml/data/IndexedVariable;

    .line 111
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 113
    const-string v2, "month1"

    .line 115
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 117
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth1:Lcom/miui/maml/data/IndexedVariable;

    .line 120
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 122
    const-string v2, "date"

    .line 124
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 126
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDate:Lcom/miui/maml/data/IndexedVariable;

    .line 129
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 131
    const-string/jumbo v2, "year_lunar"

    .line 133
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 136
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 139
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 141
    const-string/jumbo v2, "year_lunar1864"

    .line 143
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 146
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;

    .line 149
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 151
    const-string v2, "month_lunar"

    .line 153
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 155
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 158
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 160
    const-string v2, "month_lunar_leap"

    .line 162
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 164
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

    .line 167
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 169
    const-string v2, "date_lunar"

    .line 171
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 173
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 176
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 178
    const-string v2, "day_of_week"

    .line 180
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 182
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

    .line 185
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 187
    const-string v2, "ampm"

    .line 189
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 191
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mAmPm:Lcom/miui/maml/data/IndexedVariable;

    .line 194
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 196
    const-string v2, "hour12"

    .line 198
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 200
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour12:Lcom/miui/maml/data/IndexedVariable;

    .line 203
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 205
    const-string v2, "hour24"

    .line 207
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 209
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour24:Lcom/miui/maml/data/IndexedVariable;

    .line 212
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 214
    const-string v2, "minute"

    .line 216
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 218
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMinute:Lcom/miui/maml/data/IndexedVariable;

    .line 221
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 223
    const-string v2, "second"

    .line 225
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 227
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mSecond:Lcom/miui/maml/data/IndexedVariable;

    .line 230
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 232
    const-string/jumbo v2, "time"

    .line 234
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 237
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTime:Lcom/miui/maml/data/IndexedVariable;

    .line 240
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 242
    const-string/jumbo v2, "time_sys"

    .line 244
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 247
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 252
    move-result-wide v2

    .line 255
    long-to-double v2, v2

    .line 256
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 257
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 260
    const-string v2, "next_alarm_time"

    .line 262
    const/4 v3, 0x0

    .line 264
    invoke-direct {v1, v2, p1, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 265
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

    .line 268
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 270
    const-string/jumbo v2, "time_format"

    .line 272
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 275
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

    .line 278
    return-void
    .line 280
.end method

.method private refreshAlarm()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 11
    const-string v1, "next_alarm_formatted"

    .line 12
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

    .line 18
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 20
    return-void
    .line 23
.end method

.method private updateTime()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    long-to-double v3, v0

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 9
    const-wide/16 v2, 0x3e8

    .line 12
    div-long v2, v0, v2

    .line 14
    iget-wide v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 16
    cmp-long v4, v2, v4

    .line 18
    if-eqz v4, :cond_1

    .line 20
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 22
    invoke-virtual {v4, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 24
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 27
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 30
    move-result v0

    .line 33
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 34
    const/4 v5, 0x5

    .line 36
    invoke-virtual {v4, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 37
    move-result v4

    .line 40
    iget-object v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 41
    const/16 v6, 0x9

    .line 43
    invoke-virtual {v5, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 45
    move-result v5

    .line 48
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mAmPm:Lcom/miui/maml/data/IndexedVariable;

    .line 49
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 51
    const/16 v8, 0x11

    .line 53
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 55
    move-result v7

    .line 58
    int-to-double v7, v7

    .line 59
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 60
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour24:Lcom/miui/maml/data/IndexedVariable;

    .line 63
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 65
    const/16 v8, 0x12

    .line 67
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 69
    move-result v7

    .line 72
    int-to-double v9, v7

    .line 73
    invoke-virtual {v6, v9, v10}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 74
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 77
    invoke-virtual {v6, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 79
    move-result v6

    .line 82
    rem-int/lit8 v6, v6, 0xc

    .line 83
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour12:Lcom/miui/maml/data/IndexedVariable;

    .line 85
    if-nez v6, :cond_0

    .line 87
    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    .line 89
    goto :goto_0

    .line 91
    :cond_0
    int-to-double v8, v6

    .line 92
    :goto_0
    invoke-virtual {v7, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 93
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMinute:Lcom/miui/maml/data/IndexedVariable;

    .line 96
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 98
    const/16 v8, 0x14

    .line 100
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 102
    move-result v7

    .line 105
    int-to-double v7, v7

    .line 106
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 107
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYear:Lcom/miui/maml/data/IndexedVariable;

    .line 110
    int-to-double v7, v0

    .line 112
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 113
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth:Lcom/miui/maml/data/IndexedVariable;

    .line 116
    int-to-double v6, v4

    .line 118
    invoke-virtual {v0, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 119
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth1:Lcom/miui/maml/data/IndexedVariable;

    .line 122
    add-int/2addr v4, v1

    .line 124
    int-to-double v6, v4

    .line 125
    invoke-virtual {v0, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 126
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDate:Lcom/miui/maml/data/IndexedVariable;

    .line 129
    int-to-double v4, v5

    .line 131
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 132
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

    .line 135
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 137
    const/16 v4, 0xe

    .line 139
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 141
    move-result v1

    .line 144
    int-to-double v4, v1

    .line 145
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 146
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mSecond:Lcom/miui/maml/data/IndexedVariable;

    .line 149
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 151
    const/16 v4, 0x15

    .line 153
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 155
    move-result v1

    .line 158
    int-to-double v4, v1

    .line 159
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 160
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 163
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 165
    const/4 v4, 0x2

    .line 167
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 168
    move-result v1

    .line 171
    int-to-double v4, v1

    .line 172
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 173
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 176
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 178
    const/4 v4, 0x6

    .line 180
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 181
    move-result v1

    .line 184
    int-to-double v4, v1

    .line 185
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 186
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 189
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 191
    const/16 v4, 0xa

    .line 193
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 195
    move-result v1

    .line 198
    int-to-double v4, v1

    .line 199
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 200
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;

    .line 203
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 205
    const/4 v4, 0x4

    .line 207
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 208
    move-result v1

    .line 211
    int-to-double v4, v1

    .line 212
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 213
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

    .line 216
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 218
    const/16 v4, 0x8

    .line 220
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 222
    move-result v1

    .line 225
    int-to-double v4, v1

    .line 226
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 227
    iput-wide v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 230
    :cond_1
    return-void
    .line 232
.end method


# virtual methods
.method public checkUpdateTime()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    .line 2
    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 19
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v1

    .line 31
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 32
    invoke-virtual {v3, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 34
    sget-object v3, Lcom/miui/maml/data/DateTimeVariableUpdater;->fields:[I

    .line 37
    array-length v4, v3

    .line 39
    const/4 v5, 0x0

    .line 40
    move v6, v5

    .line 41
    :goto_0
    if-ge v6, v4, :cond_2

    .line 42
    aget v7, v3, v6

    .line 44
    iget v8, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 46
    if-ne v7, v8, :cond_1

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    iget-object v8, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 51
    invoke-virtual {v8, v7, v5}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 59
    move-result-object v3

    .line 62
    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 65
    move-result v3

    .line 68
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 69
    invoke-virtual {v4}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 71
    move-result-wide v4

    .line 74
    iget-wide v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 75
    cmp-long v6, v6, v4

    .line 77
    if-nez v6, :cond_3

    .line 79
    iget v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 81
    if-eq v6, v3, :cond_4

    .line 83
    :cond_3
    iput-wide v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 85
    iget-wide v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 87
    add-long/2addr v4, v6

    .line 89
    iput-wide v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 90
    iput v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 92
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

    .line 94
    int-to-double v5, v3

    .line 96
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 97
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 100
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 107
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 111
    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 115
    iget-wide v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 117
    sub-long/2addr v5, v1

    .line 119
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    monitor-exit v0

    .line 123
    goto :goto_2

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0

    .line 127
    :cond_5
    :goto_2
    return-void
    .line 128
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->finish()V

    .line 5
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 13
    const/4 v1, 0x0

    .line 15
    sput-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 22
    move-result-object v1

    .line 25
    iget-object p0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 26
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
    .line 35
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->init()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 11
    return-void
    .line 14
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 5
    return-void
    .line 8
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->pause()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 9
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    return-void
    .line 18
.end method

.method public resetCalendar()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 2
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 7
    sget-object p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    new-instance p0, Lmiuix/pickerwidget/date/Calendar;

    .line 13
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 15
    sput-object p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    :cond_0
    return-void
    .line 20
.end method

.method public resume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->resume()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 11
    return-void
    .line 14
.end method

.method public tick(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/VariableUpdater;->tick(J)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTime:Lcom/miui/maml/data/IndexedVariable;

    .line 5
    long-to-double p1, p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 11
    return-void
    .line 14
.end method
