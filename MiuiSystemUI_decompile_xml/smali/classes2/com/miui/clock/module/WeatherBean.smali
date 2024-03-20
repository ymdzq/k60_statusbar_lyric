.class public Lcom/miui/clock/module/WeatherBean;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherBean"

.field private static final TEMPERATURE_UNIT_DEGREE_CELSIUS:I = 0x1

.field private static final TEMPERATURE_UNIT_FAHRENHEIT_SCALE:I


# instance fields
.field private UVILevel:I

.field private aqiLevel:I

.field private description:Ljava/lang/String;

.field private humidity:I

.field private pressure:I

.field private rainProbability:Ljava/lang/String;

.field private rainProbabilityInt:I

.field private somatosensoryTemperature:I

.field private sunriseHour:I

.field private sunriseHourTomorrow:I

.field private sunriseMin:I

.field private sunriseMinTomorrow:I

.field private sunsetHour:I

.field private sunsetMin:I

.field private temperature:I

.field private temperatureUnit:I

.field private updateTime:J

.field private weatherType:I

.field private windAngel:F

.field private windStrength:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "0"

    .line 5
    iput-object v0, p0, Lcom/miui/clock/module/WeatherBean;->rainProbability:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method

.method private static convertSpeedToLevelDesc(F)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    if-gez v0, :cond_0

    .line 5
    const-string p0, ""

    .line 7
    return-object p0

    .line 9
    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    .line 10
    cmpg-float v0, p0, v0

    .line 12
    if-gez v0, :cond_1

    .line 14
    const-string p0, "1"

    .line 16
    return-object p0

    .line 18
    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    .line 19
    cmpg-float v0, p0, v0

    .line 21
    if-gez v0, :cond_2

    .line 23
    const-string p0, "2"

    .line 25
    return-object p0

    .line 27
    :cond_2
    const/high16 v0, 0x41a00000    # 20.0f

    .line 28
    cmpg-float v0, p0, v0

    .line 30
    if-gez v0, :cond_3

    .line 32
    const-string p0, "3"

    .line 34
    return-object p0

    .line 36
    :cond_3
    const/high16 v0, 0x41e80000    # 29.0f

    .line 37
    cmpg-float v0, p0, v0

    .line 39
    if-gez v0, :cond_4

    .line 41
    const-string p0, "4"

    .line 43
    return-object p0

    .line 45
    :cond_4
    const/high16 v0, 0x421c0000    # 39.0f

    .line 46
    cmpg-float v0, p0, v0

    .line 48
    if-gez v0, :cond_5

    .line 50
    const-string p0, "5"

    .line 52
    return-object p0

    .line 54
    :cond_5
    const/high16 v0, 0x42480000    # 50.0f

    .line 55
    cmpg-float v0, p0, v0

    .line 57
    if-gez v0, :cond_6

    .line 59
    const-string p0, "6"

    .line 61
    return-object p0

    .line 63
    :cond_6
    const/high16 v0, 0x42780000    # 62.0f

    .line 64
    cmpg-float v0, p0, v0

    .line 66
    if-gez v0, :cond_7

    .line 68
    const-string p0, "7"

    .line 70
    return-object p0

    .line 72
    :cond_7
    const/high16 v0, 0x42960000    # 75.0f

    .line 73
    cmpg-float v0, p0, v0

    .line 75
    if-gez v0, :cond_8

    .line 77
    const-string p0, "8"

    .line 79
    return-object p0

    .line 81
    :cond_8
    const/high16 v0, 0x42b20000    # 89.0f

    .line 82
    cmpg-float v0, p0, v0

    .line 84
    if-gez v0, :cond_9

    .line 86
    const-string p0, "9"

    .line 88
    return-object p0

    .line 90
    :cond_9
    const/high16 v0, 0x42ce0000    # 103.0f

    .line 91
    cmpg-float v0, p0, v0

    .line 93
    if-gez v0, :cond_a

    .line 95
    const-string p0, "10"

    .line 97
    return-object p0

    .line 99
    :cond_a
    const/high16 v0, 0x42ea0000    # 117.0f

    .line 100
    cmpg-float p0, p0, v0

    .line 102
    if-gez p0, :cond_b

    .line 104
    const-string p0, "11"

    .line 106
    return-object p0

    .line 108
    :cond_b
    const-string p0, "12"

    .line 109
    return-object p0
    .line 111
.end method

.method public static getSomatosensoryEmptyResId(I)I
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    if-eq p0, v0, :cond_0

    .line 4
    const/16 v0, 0x19

    .line 6
    if-eq p0, v0, :cond_0

    .line 8
    const p0, 0x7f0817e5    # @drawable/somatosensory_empty 'res/drawable/somatosensory_empty.xml'

    .line 10
    return p0

    .line 13
    :cond_0
    const p0, 0x7f0817e6    # @drawable/somatosensory_empty_round 'res/drawable/somatosensory_empty_round.xml'

    .line 14
    return p0
    .line 17
.end method

.method private getTemperatureWithoutUnit(Ljava/lang/String;)I
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->temperatureUnit:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "\u2109"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "\u2103"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-lez v0, :cond_2

    .line 6
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 9
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "parseInt temperature fail, value ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WeatherBean"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz p0, :cond_2

    add-int/lit8 v1, v1, -0x20

    int-to-float p0, v1

    const p1, 0x3fe66666    # 1.8f

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_2
    return v1
.end method

.method private getWindStrength(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WeatherBean"

    const-string p1, "format wind speed fail"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/miui/clock/module/WeatherBean;->convertSpeedToLevelDesc(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAQILevel()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->aqiLevel:I

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/WeatherBean;->description:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getHumidity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->humidity:I

    .line 2
    return p0
    .line 4
.end method

.method public getIconResId(ZZ)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->weatherType:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    if-eqz p1, :cond_c

    .line 7
    const p0, 0x7f0819a2    # @drawable/weather_icon_1 'res/drawable/weather_icon_1.xml'

    .line 9
    goto/16 :goto_8

    .line 12
    :pswitch_0
    if-eqz p2, :cond_0

    .line 14
    const p0, 0x7f0819a4    # @drawable/weather_icon_10_blur 'res/drawable/weather_icon_10_blur.xml'

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const p0, 0x7f0819a3    # @drawable/weather_icon_10 'res/drawable/weather_icon_10.xml'

    .line 20
    :goto_0
    return p0

    .line 23
    :pswitch_1
    if-eqz p2, :cond_1

    .line 24
    const p0, 0x7f0819b9    # @drawable/weather_icon_7_blur 'res/drawable/weather_icon_7_blur.xml'

    .line 26
    goto :goto_1

    .line 29
    :cond_1
    const p0, 0x7f0819b8    # @drawable/weather_icon_7 'res/drawable/weather_icon_7.xml'

    .line 30
    :goto_1
    return p0

    .line 33
    :pswitch_2
    const p0, 0x7f0819bc    # @drawable/weather_icon_9 'res/drawable/weather_icon_9.xml'

    .line 34
    return p0

    .line 37
    :pswitch_3
    if-eqz p2, :cond_2

    .line 38
    const p0, 0x7f0819bb    # @drawable/weather_icon_8_blur 'res/drawable/weather_icon_8_blur.xml'

    .line 40
    goto :goto_2

    .line 43
    :cond_2
    const p0, 0x7f0819ba    # @drawable/weather_icon_8 'res/drawable/weather_icon_8.xml'

    .line 44
    :goto_2
    return p0

    .line 47
    :pswitch_4
    if-eqz p2, :cond_3

    .line 48
    const p0, 0x7f0819ac    # @drawable/weather_icon_16_blur 'res/drawable/weather_icon_16_blur.xml'

    .line 50
    goto :goto_3

    .line 53
    :cond_3
    const p0, 0x7f0819ab    # @drawable/weather_icon_16 'res/drawable/weather_icon_16.xml'

    .line 54
    :goto_3
    return p0

    .line 57
    :pswitch_5
    const p0, 0x7f0819ad    # @drawable/weather_icon_17 'res/drawable/weather_icon_17.xml'

    .line 58
    return p0

    .line 61
    :pswitch_6
    if-eqz p2, :cond_4

    .line 62
    const p0, 0x7f0819aa    # @drawable/weather_icon_15_blur 'res/drawable/weather_icon_15_blur.xml'

    .line 64
    goto :goto_4

    .line 67
    :cond_4
    const p0, 0x7f0819a9    # @drawable/weather_icon_15 'res/drawable/weather_icon_15.xml'

    .line 68
    :goto_4
    return p0

    .line 71
    :pswitch_7
    const p0, 0x7f0819a5    # @drawable/weather_icon_11 'res/drawable/weather_icon_11.xml'

    .line 72
    return p0

    .line 75
    :pswitch_8
    const p0, 0x7f0819a7    # @drawable/weather_icon_13 'res/drawable/weather_icon_13.xml'

    .line 76
    return p0

    .line 79
    :pswitch_9
    const p0, 0x7f0819a8    # @drawable/weather_icon_14 'res/drawable/weather_icon_14.xml'

    .line 80
    return p0

    .line 83
    :pswitch_a
    if-eqz p2, :cond_5

    .line 84
    const p0, 0x7f0819b4    # @drawable/weather_icon_4_blur 'res/drawable/weather_icon_4_blur.xml'

    .line 86
    goto :goto_5

    .line 89
    :cond_5
    const p0, 0x7f0819b3    # @drawable/weather_icon_4 'res/drawable/weather_icon_4.xml'

    .line 90
    :goto_5
    return p0

    .line 93
    :pswitch_b
    const p0, 0x7f0819a6    # @drawable/weather_icon_12 'res/drawable/weather_icon_12.xml'

    .line 94
    return p0

    .line 97
    :pswitch_c
    if-eqz p1, :cond_7

    .line 98
    if-eqz p2, :cond_6

    .line 100
    const p0, 0x7f0819af    # @drawable/weather_icon_18_blur 'res/drawable/weather_icon_18_blur.xml'

    .line 102
    goto :goto_6

    .line 105
    :cond_6
    const p0, 0x7f0819ae    # @drawable/weather_icon_18 'res/drawable/weather_icon_18.xml'

    .line 106
    goto :goto_6

    .line 109
    :cond_7
    if-eqz p2, :cond_8

    .line 110
    const p0, 0x7f0819a1    # @drawable/weather_icon_0_blur 'res/drawable/weather_icon_0_blur.xml'

    .line 112
    goto :goto_6

    .line 115
    :cond_8
    const p0, 0x7f0819a0    # @drawable/weather_icon_0 'res/drawable/weather_icon_0.xml'

    .line 116
    :goto_6
    return p0

    .line 119
    :pswitch_d
    const p0, 0x7f0819b7    # @drawable/weather_icon_6 'res/drawable/weather_icon_6.xml'

    .line 120
    return p0

    .line 123
    :pswitch_e
    if-eqz p1, :cond_a

    .line 124
    if-eqz p2, :cond_9

    .line 126
    const p0, 0x7f0819b6    # @drawable/weather_icon_5_blur 'res/drawable/weather_icon_5_blur.xml'

    .line 128
    goto :goto_7

    .line 131
    :cond_9
    const p0, 0x7f0819b5    # @drawable/weather_icon_5 'res/drawable/weather_icon_5.xml'

    .line 132
    goto :goto_7

    .line 135
    :cond_a
    if-eqz p2, :cond_b

    .line 136
    const p0, 0x7f0819b2    # @drawable/weather_icon_3_blur 'res/drawable/weather_icon_3_blur.xml'

    .line 138
    goto :goto_7

    .line 141
    :cond_b
    const p0, 0x7f0819b1    # @drawable/weather_icon_3 'res/drawable/weather_icon_3.xml'

    .line 142
    :goto_7
    return p0

    .line 145
    :cond_c
    const p0, 0x7f0819b0    # @drawable/weather_icon_2 'res/drawable/weather_icon_2.xml'

    .line 146
    :goto_8
    return p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
    .line 150
.end method

.method public getPressure()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->pressure:I

    .line 2
    return p0
    .line 4
.end method

.method public getPressureIconResId()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->pressure:I

    .line 2
    const/16 v0, 0x3f5

    .line 4
    if-ge p0, v0, :cond_0

    .line 6
    const p0, 0x7f0816fd    # @drawable/pressure_down 'res/drawable/pressure_down.xml'

    .line 8
    return p0

    .line 11
    :cond_0
    if-le p0, v0, :cond_1

    .line 12
    const p0, 0x7f0816ff    # @drawable/pressure_up 'res/drawable/pressure_up.xml'

    .line 14
    return p0

    .line 17
    :cond_1
    const p0, 0x7f0816fe    # @drawable/pressure_normal 'res/drawable/pressure_normal.xml'

    .line 18
    return p0
    .line 21
.end method

.method public getPressureString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->pressure:I

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getRainProbability()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/WeatherBean;->rainProbability:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRainProbabilityInt()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->rainProbabilityInt:I

    .line 2
    return p0
    .line 4
.end method

.method public getSomatosensoryResId(I)I
    .locals 3

    .line 1
    const/16 v0, 0x18

    .line 2
    const/16 v1, 0x11

    .line 4
    const/16 v2, 0x19

    .line 6
    if-eq p1, v0, :cond_2

    .line 8
    if-eq p1, v2, :cond_2

    .line 10
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->somatosensoryTemperature:I

    .line 12
    if-le p0, v2, :cond_0

    .line 14
    const p0, 0x7f0817e7    # @drawable/somatosensory_hot 'res/drawable/somatosensory_hot.xml'

    .line 16
    return p0

    .line 19
    :cond_0
    if-gt p0, v1, :cond_1

    .line 20
    const p0, 0x7f0817e1    # @drawable/somatosensory_cold 'res/drawable/somatosensory_cold.xml'

    .line 22
    return p0

    .line 25
    :cond_1
    const p0, 0x7f0817e3    # @drawable/somatosensory_comfortable 'res/drawable/somatosensory_comfortable.xml'

    .line 26
    return p0

    .line 29
    :cond_2
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->somatosensoryTemperature:I

    .line 30
    if-le p0, v2, :cond_3

    .line 32
    const p0, 0x7f0817e8    # @drawable/somatosensory_hot_round 'res/drawable/somatosensory_hot_round.xml'

    .line 34
    return p0

    .line 37
    :cond_3
    if-gt p0, v1, :cond_4

    .line 38
    const p0, 0x7f0817e2    # @drawable/somatosensory_cold_round 'res/drawable/somatosensory_cold_round.xml'

    .line 40
    return p0

    .line 43
    :cond_4
    const p0, 0x7f0817e4    # @drawable/somatosensory_comfortable_round 'res/drawable/somatosensory_comfortable_round.xml'

    .line 44
    return p0
    .line 47
.end method

.method public getSomatosensoryTemperature()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->somatosensoryTemperature:I

    .line 2
    return p0
    .line 4
.end method

.method public getSomatosensoryTemperatureWithUnit()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->somatosensoryTemperature:I

    .line 7
    const-string/jumbo v1, "\u2103"

    .line 9
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public getSunriseMinuteTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHour:I

    .line 2
    mul-int/lit8 v0, v0, 0x3c

    .line 4
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMin:I

    .line 6
    add-int/2addr v0, p0

    .line 8
    return v0
    .line 9
.end method

.method public getSunriseTimeString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHour:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ":"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMin:I

    .line 17
    const/16 v2, 0xa

    .line 19
    if-ge v1, v2, :cond_0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "0"

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMin:I

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 43
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    return-object p0
    .line 51
.end method

.method public getSunriseTomorrowMinuteTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHour:I

    .line 2
    mul-int/lit8 v0, v0, 0x3c

    .line 4
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMin:I

    .line 6
    add-int/2addr v0, p0

    .line 8
    return v0
    .line 9
.end method

.method public getSunriseTomorrowTimeString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHourTomorrow:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ":"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMinTomorrow:I

    .line 17
    const/16 v2, 0xa

    .line 19
    if-ge v1, v2, :cond_0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "0"

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMinTomorrow:I

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 43
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    return-object p0
    .line 51
.end method

.method public getSunsetMinuteTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/module/WeatherBean;->sunsetHour:I

    .line 2
    mul-int/lit8 v0, v0, 0x3c

    .line 4
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->sunsetMin:I

    .line 6
    add-int/2addr v0, p0

    .line 8
    return v0
    .line 9
.end method

.method public getSunsetTimeString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunsetHour:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ":"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunsetMin:I

    .line 17
    const/16 v2, 0xa

    .line 19
    if-ge v1, v2, :cond_0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "0"

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->sunsetMin:I

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 43
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    return-object p0
    .line 51
.end method

.method public getTemperature()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->temperature:I

    .line 2
    return p0
    .line 4
.end method

.method public getTemperatureWithoutUnit()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->temperature:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUVILevel()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->UVILevel:I

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getUVILevelDescResID()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->UVILevel:I

    .line 2
    const/4 v0, 0x2

    .line 4
    if-gt p0, v0, :cond_0

    .line 5
    const/high16 p0, 0x7f130000    # @string/UVI_level_0 'Weak'

    .line 7
    return p0

    .line 9
    :cond_0
    const/4 v0, 0x5

    .line 10
    if-gt p0, v0, :cond_1

    .line 11
    const p0, 0x7f130001    # @string/UVI_level_1 'Moderate'

    .line 13
    return p0

    .line 16
    :cond_1
    const/16 v0, 0x8

    .line 17
    if-gt p0, v0, :cond_2

    .line 19
    const p0, 0x7f130002    # @string/UVI_level_2 'Strong'

    .line 21
    return p0

    .line 24
    :cond_2
    const/16 v0, 0xa

    .line 25
    if-gt p0, v0, :cond_3

    .line 27
    const p0, 0x7f130003    # @string/UVI_level_3 'Very strong'

    .line 29
    return p0

    .line 32
    :cond_3
    const p0, 0x7f130004    # @string/UVI_level_4 'Severe'

    .line 33
    return p0
    .line 36
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/clock/module/WeatherBean;->updateTime:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public getWindDescResId()I
    .locals 5

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->windAngel:F

    .line 2
    float-to-double v0, p0

    .line 4
    const-wide v2, 0x4036800000000000L    # 22.5

    .line 5
    cmpl-double v0, v0, v2

    .line 10
    const-wide v1, 0x4050e00000000000L    # 67.5

    .line 12
    if-ltz v0, :cond_0

    .line 17
    float-to-double v3, p0

    .line 19
    cmpg-double v0, v3, v1

    .line 20
    if-gtz v0, :cond_0

    .line 22
    const p0, 0x7f130d0c    # @string/wind_direction_1 'NE wind'

    .line 24
    goto/16 :goto_0

    .line 27
    :cond_0
    float-to-double v3, p0

    .line 29
    cmpl-double v0, v3, v1

    .line 30
    const-wide v1, 0x405c200000000000L    # 112.5

    .line 32
    if-lez v0, :cond_1

    .line 37
    float-to-double v3, p0

    .line 39
    cmpg-double v0, v3, v1

    .line 40
    if-gez v0, :cond_1

    .line 42
    const p0, 0x7f130d0e    # @string/wind_direction_2 'E wind'

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    float-to-double v3, p0

    .line 48
    cmpl-double v0, v3, v1

    .line 49
    const-wide v1, 0x4063b00000000000L    # 157.5

    .line 51
    if-ltz v0, :cond_2

    .line 56
    float-to-double v3, p0

    .line 58
    cmpg-double v0, v3, v1

    .line 59
    if-gtz v0, :cond_2

    .line 61
    const p0, 0x7f130d0f    # @string/wind_direction_3 'SE wind'

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    float-to-double v3, p0

    .line 67
    cmpl-double v0, v3, v1

    .line 68
    const-wide v1, 0x4069500000000000L    # 202.5

    .line 70
    if-lez v0, :cond_3

    .line 75
    float-to-double v3, p0

    .line 77
    cmpg-double v0, v3, v1

    .line 78
    if-gez v0, :cond_3

    .line 80
    const p0, 0x7f130d11    # @string/wind_direction_4 'S wind'

    .line 82
    goto :goto_0

    .line 85
    :cond_3
    float-to-double v3, p0

    .line 86
    cmpl-double v0, v3, v1

    .line 87
    const-wide v1, 0x406ef00000000000L    # 247.5

    .line 89
    if-ltz v0, :cond_4

    .line 94
    float-to-double v3, p0

    .line 96
    cmpg-double v0, v3, v1

    .line 97
    if-gtz v0, :cond_4

    .line 99
    const p0, 0x7f130d12    # @string/wind_direction_5 'SW wind'

    .line 101
    goto :goto_0

    .line 104
    :cond_4
    float-to-double v3, p0

    .line 105
    cmpl-double v0, v3, v1

    .line 106
    const-wide v1, 0x4072480000000000L    # 292.5

    .line 108
    if-lez v0, :cond_5

    .line 113
    float-to-double v3, p0

    .line 115
    cmpg-double v0, v3, v1

    .line 116
    if-gez v0, :cond_5

    .line 118
    const p0, 0x7f130d14    # @string/wind_direction_6 'W wind'

    .line 120
    goto :goto_0

    .line 123
    :cond_5
    float-to-double v3, p0

    .line 124
    cmpl-double v0, v3, v1

    .line 125
    if-ltz v0, :cond_6

    .line 127
    float-to-double v0, p0

    .line 129
    const-wide v2, 0x4075180000000000L    # 337.5

    .line 130
    cmpg-double p0, v0, v2

    .line 135
    if-gtz p0, :cond_6

    .line 137
    const p0, 0x7f130d15    # @string/wind_direction_7 'NW wind'

    .line 139
    goto :goto_0

    .line 142
    :cond_6
    const p0, 0x7f130d0b    # @string/wind_direction_0 'N wind'

    .line 143
    :goto_0
    return p0
    .line 146
.end method

.method public getWindDescResIdFull()I
    .locals 5

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->windAngel:F

    .line 2
    float-to-double v0, p0

    .line 4
    const-wide v2, 0x4036800000000000L    # 22.5

    .line 5
    cmpl-double v0, v0, v2

    .line 10
    const-wide v1, 0x4050e00000000000L    # 67.5

    .line 12
    if-ltz v0, :cond_0

    .line 17
    float-to-double v3, p0

    .line 19
    cmpg-double v0, v3, v1

    .line 20
    if-gtz v0, :cond_0

    .line 22
    const p0, 0x7f130d0d    # @string/wind_direction_1_f 'NE wind'

    .line 24
    goto/16 :goto_0

    .line 27
    :cond_0
    float-to-double v3, p0

    .line 29
    cmpl-double v0, v3, v1

    .line 30
    const-wide v1, 0x405c200000000000L    # 112.5

    .line 32
    if-lez v0, :cond_1

    .line 37
    float-to-double v3, p0

    .line 39
    cmpg-double v0, v3, v1

    .line 40
    if-gez v0, :cond_1

    .line 42
    const p0, 0x7f130d0e    # @string/wind_direction_2 'E wind'

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    float-to-double v3, p0

    .line 48
    cmpl-double v0, v3, v1

    .line 49
    const-wide v1, 0x4063b00000000000L    # 157.5

    .line 51
    if-ltz v0, :cond_2

    .line 56
    float-to-double v3, p0

    .line 58
    cmpg-double v0, v3, v1

    .line 59
    if-gtz v0, :cond_2

    .line 61
    const p0, 0x7f130d10    # @string/wind_direction_3_f 'SE wind'

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    float-to-double v3, p0

    .line 67
    cmpl-double v0, v3, v1

    .line 68
    const-wide v1, 0x4069500000000000L    # 202.5

    .line 70
    if-lez v0, :cond_3

    .line 75
    float-to-double v3, p0

    .line 77
    cmpg-double v0, v3, v1

    .line 78
    if-gez v0, :cond_3

    .line 80
    const p0, 0x7f130d11    # @string/wind_direction_4 'S wind'

    .line 82
    goto :goto_0

    .line 85
    :cond_3
    float-to-double v3, p0

    .line 86
    cmpl-double v0, v3, v1

    .line 87
    const-wide v1, 0x406ef00000000000L    # 247.5

    .line 89
    if-ltz v0, :cond_4

    .line 94
    float-to-double v3, p0

    .line 96
    cmpg-double v0, v3, v1

    .line 97
    if-gtz v0, :cond_4

    .line 99
    const p0, 0x7f130d13    # @string/wind_direction_5_f 'SW wind'

    .line 101
    goto :goto_0

    .line 104
    :cond_4
    float-to-double v3, p0

    .line 105
    cmpl-double v0, v3, v1

    .line 106
    const-wide v1, 0x4072480000000000L    # 292.5

    .line 108
    if-lez v0, :cond_5

    .line 113
    float-to-double v3, p0

    .line 115
    cmpg-double v0, v3, v1

    .line 116
    if-gez v0, :cond_5

    .line 118
    const p0, 0x7f130d14    # @string/wind_direction_6 'W wind'

    .line 120
    goto :goto_0

    .line 123
    :cond_5
    float-to-double v3, p0

    .line 124
    cmpl-double v0, v3, v1

    .line 125
    if-ltz v0, :cond_6

    .line 127
    float-to-double v0, p0

    .line 129
    const-wide v2, 0x4075180000000000L    # 337.5

    .line 130
    cmpg-double p0, v0, v2

    .line 135
    if-gtz p0, :cond_6

    .line 137
    const p0, 0x7f130d16    # @string/wind_direction_7_f 'NW wind'

    .line 139
    goto :goto_0

    .line 142
    :cond_6
    const p0, 0x7f130d0b    # @string/wind_direction_0 'N wind'

    .line 143
    :goto_0
    return p0
    .line 146
.end method

.method public getWindIconResId()I
    .locals 5

    .line 1
    iget p0, p0, Lcom/miui/clock/module/WeatherBean;->windAngel:F

    .line 2
    float-to-double v0, p0

    .line 4
    const-wide v2, 0x4036800000000000L    # 22.5

    .line 5
    cmpl-double v0, v0, v2

    .line 10
    const-wide v1, 0x4050e00000000000L    # 67.5

    .line 12
    if-ltz v0, :cond_0

    .line 17
    float-to-double v3, p0

    .line 19
    cmpg-double v0, v3, v1

    .line 20
    if-gtz v0, :cond_0

    .line 22
    const p0, 0x7f0819c1    # @drawable/weather_icon_wind_1 'res/drawable/weather_icon_wind_1.xml'

    .line 24
    goto/16 :goto_0

    .line 27
    :cond_0
    float-to-double v3, p0

    .line 29
    cmpl-double v0, v3, v1

    .line 30
    const-wide v1, 0x405c200000000000L    # 112.5

    .line 32
    if-lez v0, :cond_1

    .line 37
    float-to-double v3, p0

    .line 39
    cmpg-double v0, v3, v1

    .line 40
    if-gez v0, :cond_1

    .line 42
    const p0, 0x7f0819c2    # @drawable/weather_icon_wind_2 'res/drawable/weather_icon_wind_2.xml'

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    float-to-double v3, p0

    .line 48
    cmpl-double v0, v3, v1

    .line 49
    const-wide v1, 0x4063b00000000000L    # 157.5

    .line 51
    if-ltz v0, :cond_2

    .line 56
    float-to-double v3, p0

    .line 58
    cmpg-double v0, v3, v1

    .line 59
    if-gtz v0, :cond_2

    .line 61
    const p0, 0x7f0819c3    # @drawable/weather_icon_wind_3 'res/drawable/weather_icon_wind_3.xml'

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    float-to-double v3, p0

    .line 67
    cmpl-double v0, v3, v1

    .line 68
    const-wide v1, 0x4069500000000000L    # 202.5

    .line 70
    if-lez v0, :cond_3

    .line 75
    float-to-double v3, p0

    .line 77
    cmpg-double v0, v3, v1

    .line 78
    if-gez v0, :cond_3

    .line 80
    const p0, 0x7f0819c4    # @drawable/weather_icon_wind_4 'res/drawable/weather_icon_wind_4.xml'

    .line 82
    goto :goto_0

    .line 85
    :cond_3
    float-to-double v3, p0

    .line 86
    cmpl-double v0, v3, v1

    .line 87
    const-wide v1, 0x406ef00000000000L    # 247.5

    .line 89
    if-ltz v0, :cond_4

    .line 94
    float-to-double v3, p0

    .line 96
    cmpg-double v0, v3, v1

    .line 97
    if-gtz v0, :cond_4

    .line 99
    const p0, 0x7f0819c5    # @drawable/weather_icon_wind_5 'res/drawable/weather_icon_wind_5.xml'

    .line 101
    goto :goto_0

    .line 104
    :cond_4
    float-to-double v3, p0

    .line 105
    cmpl-double v0, v3, v1

    .line 106
    const-wide v1, 0x4072480000000000L    # 292.5

    .line 108
    if-lez v0, :cond_5

    .line 113
    float-to-double v3, p0

    .line 115
    cmpg-double v0, v3, v1

    .line 116
    if-gez v0, :cond_5

    .line 118
    const p0, 0x7f0819c6    # @drawable/weather_icon_wind_6 'res/drawable/weather_icon_wind_6.xml'

    .line 120
    goto :goto_0

    .line 123
    :cond_5
    float-to-double v3, p0

    .line 124
    cmpl-double v0, v3, v1

    .line 125
    if-ltz v0, :cond_6

    .line 127
    float-to-double v0, p0

    .line 129
    const-wide v2, 0x4075180000000000L    # 337.5

    .line 130
    cmpg-double p0, v0, v2

    .line 135
    if-gtz p0, :cond_6

    .line 137
    const p0, 0x7f0819c7    # @drawable/weather_icon_wind_7 'res/drawable/weather_icon_wind_7.xml'

    .line 139
    goto :goto_0

    .line 142
    :cond_6
    const p0, 0x7f0819c0    # @drawable/weather_icon_wind_0 'res/drawable/weather_icon_wind_0.xml'

    .line 143
    :goto_0
    return p0
    .line 146
.end method

.method public getWindStrength()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/WeatherBean;->windStrength:Ljava/lang/String;

    return-object p0
.end method

.method public setAqiLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->aqiLevel:I

    .line 2
    return-void
    .line 4
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/module/WeatherBean;->description:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setHumidity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->humidity:I

    .line 2
    return-void
    .line 4
.end method

.method public setPressure(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->pressure:I

    .line 2
    return-void
    .line 4
.end method

.method public setRainProbability(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lcom/miui/clock/module/WeatherBean;->rainProbabilityInt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 15
    :catch_0
    const-string v0, "WeatherBean"

    .line 16
    const-string v1, "format rain probability fail"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_0
    iput-object p1, p0, Lcom/miui/clock/module/WeatherBean;->rainProbability:Ljava/lang/String;

    .line 23
    return-void
    .line 25
.end method

.method public setSomatosensoryTemperature(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->somatosensoryTemperature:I

    return-void
.end method

.method public setSomatosensoryTemperature(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/clock/module/WeatherBean;->getTemperatureWithoutUnit(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->somatosensoryTemperature:I

    return-void
.end method

.method public setSunTime(JJJ)V
    .locals 2

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 2
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 4
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 7
    const/16 p1, 0x12

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 12
    move-result p2

    .line 15
    iput p2, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHour:I

    .line 16
    const/16 p2, 0x14

    .line 18
    invoke-virtual {v0, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 20
    move-result v1

    .line 23
    iput v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMin:I

    .line 24
    invoke-virtual {v0, p3, p4}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 26
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 29
    move-result p3

    .line 32
    iput p3, p0, Lcom/miui/clock/module/WeatherBean;->sunsetHour:I

    .line 33
    invoke-virtual {v0, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 35
    move-result p3

    .line 38
    iput p3, p0, Lcom/miui/clock/module/WeatherBean;->sunsetMin:I

    .line 39
    invoke-virtual {v0, p5, p6}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 41
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 44
    move-result p1

    .line 47
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHourTomorrow:I

    .line 48
    invoke-virtual {v0, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 50
    move-result p1

    .line 53
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMinTomorrow:I

    .line 54
    return-void
    .line 56
.end method

.method public setTemperature(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/module/WeatherBean;->getTemperatureWithoutUnit(Ljava/lang/String;)I

    .line 2
    move-result p1

    .line 5
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->temperature:I

    .line 6
    return-void
    .line 8
.end method

.method public setTemperatureUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->temperatureUnit:I

    .line 2
    return-void
    .line 4
.end method

.method public setUVILevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->UVILevel:I

    return-void
.end method

.method public setUVILevel(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/clock/module/WeatherBean;->UVILevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setUVILevel format fail, value = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WeatherBean"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/miui/clock/module/WeatherBean;->updateTime:J

    .line 2
    return-void
    .line 4
.end method

.method public setWeatherType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->weatherType:I

    .line 2
    return-void
    .line 4
.end method

.method public setWindAngel(F)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/miui/clock/module/WeatherBean;->windAngel:F

    return-void
.end method

.method public setWindAngel(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setWindAngel format fail, value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WeatherBean"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/WeatherBean;->setWindAngel(F)V

    return-void
.end method

.method public setWindSpeed(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/module/WeatherBean;->getWindStrength(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/miui/clock/module/WeatherBean;->windStrength:Ljava/lang/String;

    .line 6
    return-void
    .line 8
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "{\"weatherType\":"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->weatherType:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ",\"temperature\":"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->temperature:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ",\"temperatureUnit\":"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->temperatureUnit:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ",\"aqiLevel\":"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->aqiLevel:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ",\"humidity\":"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->humidity:I

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ",\"sunriseHour\":"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHour:I

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ",\"sunriseMin\":"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMin:I

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ",\"sunriseHourTomorrow\":"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHourTomorrow:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ",\"sunriseMinTomorrow\":"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMinTomorrow:I

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ",\"sunsetHour\":"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunsetHour:I

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ",\"sunsetMin\":"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunsetMin:I

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ",\"windAngel\":"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->windAngel:F

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ",\"windStrength\":\""

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lcom/miui/clock/module/WeatherBean;->windStrength:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "\",\"pressure\":"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->pressure:I

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ",\"description\":\""

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lcom/miui/clock/module/WeatherBean;->description:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "\",\"rainProbability\":\""

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/miui/clock/module/WeatherBean;->rainProbability:Ljava/lang/String;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "\",\"rainProbabilityInt\":"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->rainProbabilityInt:I

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ",\"somatosensoryTemperature\":"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->somatosensoryTemperature:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ",\"UVILevel\":"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->UVILevel:I

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ",\"updateTime\":"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-wide v1, p0, Lcom/miui/clock/module/WeatherBean;->updateTime:J

    .line 200
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    const/16 p0, 0x7d

    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object p0

    .line 213
    return-object p0
    .line 214
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "WeatherBean{weatherType="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->weatherType:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", temperature=\'"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->temperature:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "\', temperatureUnit="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->temperatureUnit:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", aqiLevel="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->aqiLevel:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", humidity="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->humidity:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", sunriseHour="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHour:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", sunriseMin="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMin:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", sunriseHourTomorrow="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseHourTomorrow:I

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", sunriseMinTomorrow="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunriseMinTomorrow:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", sunsetHour="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunsetHour:I

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", sunsetMin="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->sunsetMin:I

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", windAngel="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->windAngel:F

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", windStrength=\'"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/miui/clock/module/WeatherBean;->windStrength:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\', pressure="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->pressure:I

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", description=\'"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lcom/miui/clock/module/WeatherBean;->description:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "\', rainProbability=\'"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/miui/clock/module/WeatherBean;->rainProbability:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "\', somatosensoryTemperature="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->somatosensoryTemperature:I

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", UVILevel="

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v1, p0, Lcom/miui/clock/module/WeatherBean;->UVILevel:I

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", updateTime="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-wide v1, p0, Lcom/miui/clock/module/WeatherBean;->updateTime:J

    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    const/16 p0, 0x7d

    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p0

    .line 202
    return-object p0
    .line 203
.end method
