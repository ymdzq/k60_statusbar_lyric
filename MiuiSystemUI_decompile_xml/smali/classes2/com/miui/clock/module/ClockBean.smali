.class public Lcom/miui/clock/module/ClockBean;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private classicLine1:I

.field private classicLine2:I

.field private classicLine3:I

.field private classicLine4:I

.field private classicLine5:I

.field private classicSignature:Ljava/lang/String;

.field private disableContainerPassBlur:Z

.field private dualClockLocalCity:Ljava/lang/String;

.field private enableDiffusion:Z

.field private infoAreaColor:I

.field private isAutoPrimaryColor:Z

.field private isAutoSecondaryColor:Z

.field private isDiffHourMinuteColor:Z

.field private presetHealthJson:Ljava/lang/String;

.field private presetWeatherJson:Ljava/lang/String;

.field private primaryColor:I

.field private secondaryColor:I

.field private style:I

.field private templateId:Ljava/lang/String;

.field private unablePresetData:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/clock/module/ClockBean;->templateId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/clock/module/ClockBean;->templateId:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/miui/clock/module/ClockBean;->style:I

    return-void
.end method

.method public static getClassicDefaultBean(Landroid/content/Context;)Lcom/miui/clock/module/ClockBean;
    .locals 12

    .line 1
    invoke-static {}, Lcom/miui/clock/utils/DateFormatUtils;->updateCurrentUserId()I

    .line 2
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/miui/clock/utils/DateFormatUtils;->isCrossUser(Landroid/content/Context;)Z

    .line 6
    move-result v1

    .line 9
    const-string v2, "miui_15_default_lockscreen_info"

    .line 10
    const-string v3, "ClockBean"

    .line 12
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    :try_start_0
    const-class v1, Landroid/provider/Settings$Secure;

    .line 19
    const-string v7, "getStringForUser"

    .line 21
    const/4 v8, 0x3

    .line 23
    new-array v9, v8, [Ljava/lang/Class;

    .line 24
    const-class v10, Landroid/content/ContentResolver;

    .line 26
    aput-object v10, v9, v4

    .line 28
    const-class v10, Ljava/lang/String;

    .line 30
    aput-object v10, v9, v5

    .line 32
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 34
    const/4 v11, 0x2

    .line 36
    aput-object v10, v9, v11

    .line 37
    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    move-result-object v1

    .line 42
    new-array v7, v8, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object v8

    .line 48
    aput-object v8, v7, v4

    .line 49
    aput-object v2, v7, v5

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v2

    .line 56
    aput-object v2, v7, v11

    .line 57
    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    const-string v2, "getStringForUser fail"

    .line 67
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const-string v1, ""

    .line 72
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    move-result-object v1

    .line 78
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 82
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    move-result v2

    .line 86
    if-nez v2, :cond_1

    .line 87
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 89
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v1, "clockInfo"

    .line 94
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 99
    new-instance v2, Lcom/google/gson/Gson;

    .line 100
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 102
    const-class v7, Lcom/miui/clock/module/ClockBean;

    .line 105
    invoke-virtual {v2, v7, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 110
    check-cast v1, Lcom/miui/clock/module/ClockBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    move-object v6, v1

    .line 113
    goto :goto_1

    .line 114
    :catch_1
    move-exception v1

    .line 115
    const-string v2, "getIntForUser fail"

    .line 116
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 121
    invoke-virtual {v6}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    move-result v1

    .line 130
    if-eqz v1, :cond_b

    .line 131
    :cond_2
    const-string v1, "getClassicDefaultBean"

    .line 133
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v6, Lcom/miui/clock/module/ClockBean;

    .line 138
    const-string v1, "classic"

    .line 140
    invoke-direct {v6, v1}, Lcom/miui/clock/module/ClockBean;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {p0, v0}, Lcom/miui/clock/module/ClockBean;->getShowCarrier(Landroid/content/Context;I)I

    .line 145
    move-result v1

    .line 148
    if-ne v1, v5, :cond_3

    .line 149
    move v1, v5

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    move v1, v4

    .line 153
    :goto_2
    invoke-static {p0, v0}, Lcom/miui/clock/module/ClockBean;->getShowLunarCalendar(Landroid/content/Context;I)I

    .line 154
    move-result v2

    .line 157
    if-ne v2, v5, :cond_4

    .line 158
    move v2, v5

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    move v2, v4

    .line 162
    :goto_3
    const-string v3, "com.miui.weather2"

    .line 163
    invoke-static {p0, v3, v0}, Lcom/miui/clock/utils/DataUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 165
    move-result v0

    .line 168
    if-nez v1, :cond_5

    .line 169
    if-eqz v2, :cond_5

    .line 171
    const/16 p0, 0x65

    .line 173
    invoke-virtual {v6, p0}, Lcom/miui/clock/module/ClockBean;->setClassicLine1(I)V

    .line 175
    goto :goto_4

    .line 178
    :cond_5
    invoke-static {p0}, Lcom/miui/clock/module/ClockBean;->isDataCapable(Landroid/content/Context;)Z

    .line 179
    move-result p0

    .line 182
    if-eqz p0, :cond_6

    .line 183
    if-eqz v1, :cond_6

    .line 185
    const/16 p0, 0xb

    .line 187
    invoke-virtual {v6, p0}, Lcom/miui/clock/module/ClockBean;->setClassicLine1(I)V

    .line 189
    goto :goto_4

    .line 192
    :cond_6
    invoke-virtual {v6, v4}, Lcom/miui/clock/module/ClockBean;->setClassicLine1(I)V

    .line 193
    :goto_4
    const/16 p0, 0x12c

    .line 196
    invoke-virtual {v6, p0}, Lcom/miui/clock/module/ClockBean;->setClassicLine2(I)V

    .line 198
    if-eqz v0, :cond_8

    .line 201
    if-eqz v2, :cond_7

    .line 203
    if-eqz v1, :cond_7

    .line 205
    const/16 p0, 0xd2

    .line 207
    invoke-virtual {v6, p0}, Lcom/miui/clock/module/ClockBean;->setClassicLine3(I)V

    .line 209
    goto :goto_5

    .line 212
    :cond_7
    const/16 p0, 0xca

    .line 213
    invoke-virtual {v6, p0}, Lcom/miui/clock/module/ClockBean;->setClassicLine3(I)V

    .line 215
    goto :goto_5

    .line 218
    :cond_8
    const/16 p0, 0xce

    .line 219
    invoke-virtual {v6, p0}, Lcom/miui/clock/module/ClockBean;->setClassicLine3(I)V

    .line 221
    :goto_5
    if-eqz v0, :cond_9

    .line 224
    const/16 p0, 0x190

    .line 226
    invoke-virtual {v6, p0}, Lcom/miui/clock/module/ClockBean;->setClassicLine4(I)V

    .line 228
    goto :goto_6

    .line 231
    :cond_9
    if-eqz v2, :cond_a

    .line 232
    if-eqz v1, :cond_a

    .line 234
    const/16 p0, 0xd1

    .line 236
    invoke-virtual {v6, p0}, Lcom/miui/clock/module/ClockBean;->setClassicLine4(I)V

    .line 238
    goto :goto_6

    .line 241
    :cond_a
    const/16 p0, 0xc8

    .line 242
    invoke-virtual {v6, p0}, Lcom/miui/clock/module/ClockBean;->setClassicLine4(I)V

    .line 244
    :goto_6
    invoke-virtual {v6, v4}, Lcom/miui/clock/module/ClockBean;->setClassicLine5(I)V

    .line 247
    invoke-virtual {v6, v5}, Lcom/miui/clock/module/ClockBean;->setAutoPrimaryColor(Z)V

    .line 250
    invoke-virtual {v6, v5}, Lcom/miui/clock/module/ClockBean;->setAutoSecondaryColor(Z)V

    .line 253
    :cond_b
    return-object v6
    .line 256
.end method

.method public static getClassicDefaultLine1(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/clock/module/ClockBean;->getShowCarrier(Landroid/content/Context;I)I

    .line 2
    move-result p0

    .line 5
    const/4 p1, 0x1

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    const/16 p0, 0xb

    .line 9
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
    .line 13
.end method

.method public static getShowCarrier(Landroid/content/Context;I)I
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/miui/clock/utils/DateFormatUtils;->isCrossUser(Landroid/content/Context;)Z

    .line 2
    move-result v0

    .line 5
    const-string/jumbo v1, "status_bar_show_carrier_under_keyguard"

    .line 6
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    :try_start_0
    const-class v0, Landroid/provider/Settings$System;

    .line 12
    const-string v3, "getIntForUser"

    .line 14
    const/4 v4, 0x4

    .line 16
    new-array v5, v4, [Ljava/lang/Class;

    .line 17
    const-class v6, Landroid/content/ContentResolver;

    .line 19
    const/4 v7, 0x0

    .line 21
    aput-object v6, v5, v7

    .line 22
    const-class v6, Ljava/lang/String;

    .line 24
    aput-object v6, v5, v2

    .line 26
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 28
    const/4 v8, 0x2

    .line 30
    aput-object v6, v5, v8

    .line 31
    const/4 v9, 0x3

    .line 33
    aput-object v6, v5, v9

    .line 34
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v0

    .line 39
    new-array v3, v4, [Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    move-result-object p0

    .line 45
    aput-object p0, v3, v7

    .line 46
    aput-object v1, v3, v2

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p0

    .line 53
    aput-object p0, v3, v8

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p0

    .line 59
    aput-object p0, v3, v9

    .line 60
    const/4 p0, 0x0

    .line 62
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    check-cast p0, Ljava/lang/Integer;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    const-string p1, "ClockBean"

    .line 75
    const-string v0, "getIntForUser fail"

    .line 77
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    move-result-object p0

    .line 86
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 87
    move-result v2

    .line 90
    :goto_0
    return v2
    .line 91
.end method

.method public static getShowLunarCalendar(Landroid/content/Context;I)I
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/miui/clock/utils/DateFormatUtils;->isCrossUser(Landroid/content/Context;)Z

    .line 2
    move-result v0

    .line 5
    const-string/jumbo v1, "show_lunar_calendar"

    .line 6
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    :try_start_0
    const-class v0, Landroid/provider/Settings$System;

    .line 12
    const-string v3, "getIntForUser"

    .line 14
    const/4 v4, 0x4

    .line 16
    new-array v5, v4, [Ljava/lang/Class;

    .line 17
    const-class v6, Landroid/content/ContentResolver;

    .line 19
    aput-object v6, v5, v2

    .line 21
    const-class v6, Ljava/lang/String;

    .line 23
    const/4 v7, 0x1

    .line 25
    aput-object v6, v5, v7

    .line 26
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 28
    const/4 v8, 0x2

    .line 30
    aput-object v6, v5, v8

    .line 31
    const/4 v9, 0x3

    .line 33
    aput-object v6, v5, v9

    .line 34
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v0

    .line 39
    new-array v3, v4, [Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    move-result-object p0

    .line 45
    aput-object p0, v3, v2

    .line 46
    aput-object v1, v3, v7

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p0

    .line 53
    aput-object p0, v3, v8

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p0

    .line 59
    aput-object p0, v3, v9

    .line 60
    const/4 p0, 0x0

    .line 62
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    check-cast p0, Ljava/lang/Integer;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    const-string p1, "ClockBean"

    .line 75
    const-string v0, "getIntForUser fail"

    .line 77
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    move-result-object p0

    .line 86
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 87
    move-result v2

    .line 90
    :goto_0
    return v2
    .line 91
.end method

.method public static isDataCapable(Landroid/content/Context;)Z
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "phone"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ClockBean"

    .line 16
    const-string v1, "isDataCapable: "

    .line 18
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    const/4 p0, 0x1

    .line 23
    return p0
    .line 24
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lcom/miui/clock/module/ClockBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 10
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lcom/miui/clock/module/ClockBean;

    .line 20
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->infoAreaColor:I

    .line 22
    iget v3, p1, Lcom/miui/clock/module/ClockBean;->infoAreaColor:I

    .line 24
    if-ne v2, v3, :cond_2

    .line 26
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->primaryColor:I

    .line 28
    iget v3, p1, Lcom/miui/clock/module/ClockBean;->primaryColor:I

    .line 30
    if-ne v2, v3, :cond_2

    .line 32
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->secondaryColor:I

    .line 34
    iget v3, p1, Lcom/miui/clock/module/ClockBean;->secondaryColor:I

    .line 36
    if-ne v2, v3, :cond_2

    .line 38
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->style:I

    .line 40
    iget v3, p1, Lcom/miui/clock/module/ClockBean;->style:I

    .line 42
    if-ne v2, v3, :cond_2

    .line 44
    iget-boolean v2, p0, Lcom/miui/clock/module/ClockBean;->enableDiffusion:Z

    .line 46
    iget-boolean v3, p1, Lcom/miui/clock/module/ClockBean;->enableDiffusion:Z

    .line 48
    if-ne v2, v3, :cond_2

    .line 50
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->classicLine1:I

    .line 52
    iget v3, p1, Lcom/miui/clock/module/ClockBean;->classicLine1:I

    .line 54
    if-ne v2, v3, :cond_2

    .line 56
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->classicLine2:I

    .line 58
    iget v3, p1, Lcom/miui/clock/module/ClockBean;->classicLine2:I

    .line 60
    if-ne v2, v3, :cond_2

    .line 62
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->classicLine3:I

    .line 64
    iget v3, p1, Lcom/miui/clock/module/ClockBean;->classicLine3:I

    .line 66
    if-ne v2, v3, :cond_2

    .line 68
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->classicLine4:I

    .line 70
    iget v3, p1, Lcom/miui/clock/module/ClockBean;->classicLine4:I

    .line 72
    if-ne v2, v3, :cond_2

    .line 74
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->classicLine5:I

    .line 76
    iget v3, p1, Lcom/miui/clock/module/ClockBean;->classicLine5:I

    .line 78
    if-ne v2, v3, :cond_2

    .line 80
    iget-boolean v2, p0, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor:Z

    .line 82
    iget-boolean v3, p1, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor:Z

    .line 84
    if-ne v2, v3, :cond_2

    .line 86
    iget-boolean v2, p0, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor:Z

    .line 88
    iget-boolean v3, p1, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor:Z

    .line 90
    if-ne v2, v3, :cond_2

    .line 92
    iget-boolean v2, p0, Lcom/miui/clock/module/ClockBean;->isDiffHourMinuteColor:Z

    .line 94
    iget-boolean v3, p1, Lcom/miui/clock/module/ClockBean;->isDiffHourMinuteColor:Z

    .line 96
    if-ne v2, v3, :cond_2

    .line 98
    iget-object v2, p0, Lcom/miui/clock/module/ClockBean;->templateId:Ljava/lang/String;

    .line 100
    iget-object v3, p1, Lcom/miui/clock/module/ClockBean;->templateId:Ljava/lang/String;

    .line 102
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 104
    move-result v2

    .line 107
    if-eqz v2, :cond_2

    .line 108
    iget-object p0, p0, Lcom/miui/clock/module/ClockBean;->classicSignature:Ljava/lang/String;

    .line 110
    iget-object p1, p1, Lcom/miui/clock/module/ClockBean;->classicSignature:Ljava/lang/String;

    .line 112
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 114
    move-result p0

    .line 117
    if-eqz p0, :cond_2

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    move v0, v1

    .line 121
    :goto_0
    return v0

    .line 122
    :cond_3
    :goto_1
    return v1
    .line 123
.end method

.method public getClassicLine1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockBean;->classicLine1:I

    .line 2
    return p0
    .line 4
.end method

.method public getClassicLine2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockBean;->classicLine2:I

    .line 2
    return p0
    .line 4
.end method

.method public getClassicLine3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockBean;->classicLine3:I

    .line 2
    return p0
    .line 4
.end method

.method public getClassicLine4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockBean;->classicLine4:I

    .line 2
    return p0
    .line 4
.end method

.method public getClassicLine5()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockBean;->classicLine5:I

    .line 2
    return p0
    .line 4
.end method

.method public getClassicSignature()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/ClockBean;->classicSignature:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDualClockLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/ClockBean;->dualClockLocalCity:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getInfoAreaColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockBean;->infoAreaColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getPresetHealthJson()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/ClockBean;->presetHealthJson:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getPresetWeatherJson()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/ClockBean;->presetWeatherJson:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getPrimaryColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockBean;->primaryColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getSecondaryColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockBean;->secondaryColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getStyle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/ClockBean;->style:I

    .line 2
    return p0
    .line 4
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/ClockBean;->templateId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/miui/clock/module/ClockBean;->templateId:Ljava/lang/String;

    .line 2
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->infoAreaColor:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/miui/clock/module/ClockBean;->primaryColor:I

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 15
    iget v3, p0, Lcom/miui/clock/module/ClockBean;->secondaryColor:I

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 21
    iget v4, p0, Lcom/miui/clock/module/ClockBean;->style:I

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 27
    iget-boolean v5, p0, Lcom/miui/clock/module/ClockBean;->enableDiffusion:Z

    .line 28
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v5

    .line 33
    iget v6, p0, Lcom/miui/clock/module/ClockBean;->classicLine1:I

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v6

    .line 39
    iget v7, p0, Lcom/miui/clock/module/ClockBean;->classicLine2:I

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v7

    .line 45
    iget v8, p0, Lcom/miui/clock/module/ClockBean;->classicLine3:I

    .line 46
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v8

    .line 51
    iget v9, p0, Lcom/miui/clock/module/ClockBean;->classicLine4:I

    .line 52
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v9

    .line 57
    iget v10, p0, Lcom/miui/clock/module/ClockBean;->classicLine5:I

    .line 58
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v10

    .line 63
    iget-object v11, p0, Lcom/miui/clock/module/ClockBean;->classicSignature:Ljava/lang/String;

    .line 64
    iget-boolean v12, p0, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor:Z

    .line 66
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    move-result-object v12

    .line 71
    iget-boolean v13, p0, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor:Z

    .line 72
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    move-result-object v13

    .line 77
    iget-boolean p0, p0, Lcom/miui/clock/module/ClockBean;->isDiffHourMinuteColor:Z

    .line 78
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object v14

    .line 83
    filled-new-array/range {v0 .. v14}, [Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 87
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 88
    move-result p0

    .line 91
    return p0
    .line 92
.end method

.method public isAutoPrimaryColor()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor:Z

    .line 2
    return p0
    .line 4
.end method

.method public isAutoSecondaryColor()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor:Z

    .line 2
    return p0
    .line 4
.end method

.method public isDiffHourMinuteColor()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/clock/module/ClockBean;->isDiffHourMinuteColor:Z

    .line 2
    return p0
    .line 4
.end method

.method public isDisableContainerPassBlur()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/clock/module/ClockBean;->disableContainerPassBlur:Z

    .line 2
    return p0
    .line 4
.end method

.method public isEnableDiffusion()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/clock/module/ClockBean;->enableDiffusion:Z

    .line 2
    return p0
    .line 4
.end method

.method public isUnablePresetData()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/clock/module/ClockBean;->unablePresetData:Z

    .line 2
    return p0
    .line 4
.end method

.method public setAutoPrimaryColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor:Z

    .line 2
    return-void
    .line 4
.end method

.method public setAutoSecondaryColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor:Z

    .line 2
    return-void
    .line 4
.end method

.method public setClassicLine1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/ClockBean;->classicLine1:I

    .line 2
    return-void
    .line 4
.end method

.method public setClassicLine2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/ClockBean;->classicLine2:I

    .line 2
    return-void
    .line 4
.end method

.method public setClassicLine3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/ClockBean;->classicLine3:I

    .line 2
    return-void
    .line 4
.end method

.method public setClassicLine4(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/ClockBean;->classicLine4:I

    .line 2
    return-void
    .line 4
.end method

.method public setClassicLine5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/ClockBean;->classicLine5:I

    .line 2
    return-void
    .line 4
.end method

.method public setClassicSignature(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/module/ClockBean;->classicSignature:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setDiffHourMinuteColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockBean;->isDiffHourMinuteColor:Z

    .line 2
    return-void
    .line 4
.end method

.method public setDisableContainerPassBlur(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockBean;->disableContainerPassBlur:Z

    .line 2
    return-void
    .line 4
.end method

.method public setDualClockLocalCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/module/ClockBean;->dualClockLocalCity:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setEnableDiffusion(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockBean;->enableDiffusion:Z

    .line 2
    return-void
    .line 4
.end method

.method public setInfoAreaColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/ClockBean;->infoAreaColor:I

    .line 2
    return-void
    .line 4
.end method

.method public setPresetHealthJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/module/ClockBean;->presetHealthJson:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setPresetWeatherJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/module/ClockBean;->presetWeatherJson:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setPrimaryColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/ClockBean;->primaryColor:I

    .line 2
    return-void
    .line 4
.end method

.method public setSecondaryColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/ClockBean;->secondaryColor:I

    .line 2
    return-void
    .line 4
.end method

.method public setStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/ClockBean;->style:I

    .line 2
    return-void
    .line 4
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/module/ClockBean;->templateId:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setUnablePresetData(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockBean;->unablePresetData:Z

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ClockBean{templateId=\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/miui/clock/module/ClockBean;->templateId:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\', infoAreaColor="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->infoAreaColor:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", primaryColor="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->primaryColor:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", secondaryColor="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->secondaryColor:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", style="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->style:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", enableDiffusion="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-boolean v1, p0, Lcom/miui/clock/module/ClockBean;->enableDiffusion:Z

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", classicLine1="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->classicLine1:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", classicLine2="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->classicLine2:I

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", classicLine3="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->classicLine3:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", classicLine4="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->classicLine4:I

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", classicLine5="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/miui/clock/module/ClockBean;->classicLine5:I

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", classicSignature=\'"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/miui/clock/module/ClockBean;->classicSignature:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "\', isAutoPrimaryColor="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-boolean v1, p0, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor:Z

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", isAutoSecondaryColor="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-boolean v1, p0, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor:Z

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", isDiffHourMinuteColor="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-boolean v1, p0, Lcom/miui/clock/module/ClockBean;->isDiffHourMinuteColor:Z

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", presetHealthJson=\'"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/miui/clock/module/ClockBean;->presetHealthJson:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "\', presetWeatherJson=\'"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object p0, p0, Lcom/miui/clock/module/ClockBean;->presetWeatherJson:Ljava/lang/String;

    .line 169
    const-string v1, "\'}"

    .line 171
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 176
    return-object p0
    .line 177
.end method
