.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ClockEvents;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onColorPaletteChanged(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    .line 11
    return-void
    .line 14
.end method

.method public final onLocaleChanged(Ljava/util/Locale;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    .line 2
    move-result-object p1

    .line 5
    const-wide/32 v0, 0x499602d2

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->burmeseNumerals:Ljava/lang/String;

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 39
    iget v2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->burmeseLineSpacing:F

    .line 41
    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setLineSpacingScale(F)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 50
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 61
    iget v2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->defaultLineSpacing:F

    .line 63
    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setLineSpacingScale(F)V

    .line 65
    goto :goto_1

    .line 68
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p0

    .line 72
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 82
    check-cast p1, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 83
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 89
    move-result v0

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    .line 93
    goto :goto_2

    .line 96
    :cond_2
    return-void
    .line 97
.end method

.method public final onSeedColorChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    .line 4
    iput-object p1, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->seedColor:Ljava/lang/Integer;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 8
    iput-object p1, v1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->seedColor:Ljava/lang/Integer;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    .line 17
    return-void
    .line 20
.end method

.method public final onTimeFormatChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method public final onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 20
    iget-object v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 31
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    .line 35
    iget-object v0, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 38
    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 42
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 44
    sget-object v3, Lcom/android/systemui/shared/clocks/AnimatableClockView$onTimeZoneChanged$2;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$onTimeZoneChanged$2;

    .line 46
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 49
    move-result-object v1

    .line 52
    invoke-virtual {p1}, Ljava/util/TimeZone;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 56
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    return-void
    .line 64
.end method

.method public final onWeatherDataChanged(Lcom/android/systemui/plugins/WeatherData;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
