.class public Lcom/android/settings/display/PaperModeTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeTimeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isAutoTimeOn()Z
    .locals 2

    .line 66
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeSchedulerType(Landroid/content/Context;)I

    move-result v1

    .line 18
    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 21
    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeStartTime(Landroid/content/Context;)I

    move-result v4

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeTwilightSunsetTime(Landroid/content/Context;)I

    move-result v4

    :goto_0
    if-ne v1, v3, :cond_1

    .line 25
    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeEndTime(Landroid/content/Context;)I

    move-result v3

    goto :goto_1

    .line 26
    :cond_1
    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeTwilightSunriseTime(Landroid/content/Context;)I

    move-result v3

    .line 28
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " paperModeSchedulerType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isPaperModeTimeEnable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PaperModeTimeReceiver"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-boolean v5, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperModeSupported:Z

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    const-string v2, "android.intent.action.TIME_SET"

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 36
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeTimeReceiver;->isAutoTimeOn()Z

    move-result p0

    xor-int/2addr p0, v5

    .line 35
    invoke-static {p1, v1, p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;IZ)V

    goto/16 :goto_3

    :cond_2
    const-string p0, "android.intent.action.TIMEZONE_CHANGED"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "android.intent.action.DATE_CHANGED"

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string/jumbo p0, "miui.intent.action.PAPER_MODE_ON"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 41
    invoke-static {p1, v4, v3}, Landroid/provider/MiuiSettings$ScreenEffect;->isInPaperModeTimeSchedule(Landroid/content/Context;II)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 42
    invoke-static {v5, p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeEnabled(ZLandroid/content/Context;)V

    goto :goto_3

    :cond_4
    const-string/jumbo p0, "miui.intent.action.PAPER_MODE_OFF"

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    .line 45
    invoke-static {p1, v4, v3}, Landroid/provider/MiuiSettings$ScreenEffect;->isInPaperModeTimeSchedule(Landroid/content/Context;II)Z

    move-result p0

    if-nez p0, :cond_5

    .line 46
    invoke-static {v2, p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeEnabled(ZLandroid/content/Context;)V

    .line 48
    :cond_5
    invoke-static {p1, v1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    goto :goto_3

    :cond_6
    const-string/jumbo p0, "miui.intent.action.LOCATION_CHANGED"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " receive intent "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "state"

    .line 51
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sunrise="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sunrise"

    .line 52
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sunset="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sunset"

    .line 53
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x168

    .line 55
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 54
    invoke-static {p1, p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeTwilightSunriseTime(Landroid/content/Context;I)V

    const/16 p0, 0x438

    .line 58
    invoke-virtual {p2, v3, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 57
    invoke-static {p1, p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeTwilightSunsetTime(Landroid/content/Context;I)V

    .line 60
    invoke-static {p1, v1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    goto :goto_3

    .line 39
    :cond_7
    :goto_2
    invoke-static {p1, v1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    :cond_8
    :goto_3
    return-void
.end method
