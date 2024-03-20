.class public final Lcom/android/settings/dndmode/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 276
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    return-void
.end method

.method private isSet(I)Z
    .locals 1

    .line 355
    iget p0, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAlarmType()I
    .locals 1

    .line 342
    iget p0, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    const/16 v0, 0x30

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public getBooleanArray()[Z
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 387
    invoke-direct {p0, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCoded()I
    .locals 0

    .line 380
    iget p0, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    return p0
.end method

.method public isAlarmDay()Z
    .locals 7

    .line 458
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    .line 460
    iget v4, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    const/4 v5, 0x1

    shl-int v6, v5, v2

    and-int/2addr v4, v6

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    .line 462
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    return v5

    .line 466
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v4, v2, 0x2

    if-ne v3, v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public set(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 360
    iget p2, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    goto :goto_0

    .line 362
    :cond_0
    iget p2, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    :goto_0
    return-void
.end method

.method public set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V
    .locals 0

    .line 367
    iget p1, p1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    iput p1, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    iget v1, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 300
    sget p0, Lcom/android/settings/R$string;->repeat_never:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_1
    const/16 p2, 0x7f

    if-ne v1, p2, :cond_2

    .line 305
    sget p0, Lcom/android/settings/R$string;->every_day:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p2, 0x80

    if-ne v1, p2, :cond_4

    .line 310
    sget p0, Lcom/android/settings/R$string;->legal_workday:I

    .line 311
    invoke-static {p1}, Lcom/android/settings/dndmode/HolidayHelper;->isHolidayDataInvalid(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 312
    sget p0, Lcom/android/settings/R$string;->legal_workday_invalidate:I

    .line 314
    :cond_3
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p1, 0x0

    move p2, p1

    :goto_1
    const/4 v2, 0x1

    if-lez v1, :cond_6

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v2, :cond_5

    add-int/lit8 p2, p2, 0x1

    :cond_5
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    :cond_6
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    if-le p2, v2, :cond_7

    .line 327
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 328
    :cond_7
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v3, 0x7

    if-ge p1, v3, :cond_9

    .line 332
    iget v3, p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->mDays:I

    shl-int v4, v2, p1

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 333
    sget-object v3, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v3, v3, p1

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_8

    const-string v3, " "

    .line 335
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 338
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
