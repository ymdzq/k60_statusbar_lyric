.class public Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ColorGameLedStartTimeController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/colorgameled/ColorGameLedStartTimeController$TimePreferenceHost;
    }
.end annotation


# static fields
.field private static ONE_HOUR:J = 0x0L

.field private static ONE_MINUTE:J = 0xea60L


# instance fields
.field private colorLightManager:Landroid/app/ColorLightManager;

.field private final mHost:Lcom/android/settings/colorgameled/ColorGameLedStartTimeController$TimePreferenceHost;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    .line 42
    sput-wide v0, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->ONE_HOUR:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/colorgameled/ColorGameLedStartTimeController$TimePreferenceHost;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/app/ColorLightManager;

    invoke-direct {v0, p1}, Landroid/app/ColorLightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->colorLightManager:Landroid/app/ColorLightManager;

    .line 48
    iput-object p2, p0, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->mHost:Lcom/android/settings/colorgameled/ColorGameLedStartTimeController$TimePreferenceHost;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public buildTimePicker(Landroid/app/Activity;)Lmiuix/appcompat/app/TimePickerDialog;
    .locals 9

    .line 96
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->mResolver:Landroid/content/ContentResolver;

    const-wide/16 v1, 0x7

    sget-wide v3, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->ONE_HOUR:J

    mul-long/2addr v3, v1

    const/4 v1, -0x2

    const-string v2, "light_turn_on_startTime"

    invoke-static {v0, v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    .line 98
    new-instance v8, Lmiuix/appcompat/app/TimePickerDialog;

    sget-wide v2, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->ONE_HOUR:J

    div-long v4, v0, v2

    long-to-int v5, v4

    rem-long/2addr v0, v2

    sget-wide v2, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->ONE_MINUTE:J

    div-long/2addr v0, v2

    long-to-int v6, v0

    .line 103
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v8
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "color_led_start_time"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "color_led_start_time"

    .line 75
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->mHost:Lcom/android/settings/colorgameled/ColorGameLedStartTimeController$TimePreferenceHost;

    invoke-interface {p0}, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController$TimePreferenceHost;->showTimePicker()V

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    const-string/jumbo p0, "support_led_colorful"

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->colorLightManager:Landroid/app/ColorLightManager;

    int-to-long v0, p2

    int-to-long p2, p3

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/app/ColorLightManager;->setColorfulLightStartEnableTime(JJ)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->mHost:Lcom/android/settings/colorgameled/ColorGameLedStartTimeController$TimePreferenceHost;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 59
    instance-of v0, p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->mResolver:Landroid/content/ContentResolver;

    const-wide/16 v1, 0x7

    sget-wide v3, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->ONE_HOUR:J

    mul-long/2addr v3, v1

    const/4 v1, -0x2

    const-string v2, "light_turn_on_startTime"

    invoke-static {v0, v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 67
    sget-wide v3, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->ONE_HOUR:J

    div-long v3, v0, v3

    long-to-int v3, v3

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 68
    sget-wide v3, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->ONE_HOUR:J

    rem-long/2addr v0, v3

    sget-wide v3, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->ONE_MINUTE:J

    div-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0xc

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 69
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    return-void
.end method
