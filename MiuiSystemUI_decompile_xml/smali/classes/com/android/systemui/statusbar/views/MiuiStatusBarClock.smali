.class public Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;
.super Lcom/android/systemui/statusbar/views/MiuiClock;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/views/MiuiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/views/MiuiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final updateTime()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mIs24:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-super {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateTime()V

    .line 13
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    .line 21
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 23
    if-nez v1, :cond_2

    .line 25
    const-string v0, ""

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 30
    move-result-wide v1

    .line 33
    const/16 v3, 0x5c

    .line 34
    invoke-static {v0, v1, v2, v3}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v2, "updateTime: "

    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 54
    const-string v2, "MiuiStatusBarClock"

    .line 55
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_1
    return-void
    .line 66
.end method
