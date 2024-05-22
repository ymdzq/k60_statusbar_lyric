.class public Lcom/miui/clock/module/HealthBean;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private caloriesNow:I

.field private caloriesTarget:I

.field private sleepDuration:J

.field private sportTimeNow:I

.field private sportTimeTarget:I

.field private standCountNow:I

.field private standCountTarget:I

.field private stepCountNow:I

.field private stepCountTarget:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 6
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 8
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 10
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 12
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 14
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 16
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 18
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 20
    return-void
    .line 22
.end method

.method public static getHealthIconByType(I)I
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 2
    if-eq p0, v0, :cond_2

    .line 4
    const/16 v0, 0x1f6

    .line 6
    if-eq p0, v0, :cond_1

    .line 8
    const/16 v0, 0x1f8

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const p0, 0x7f080ec7    # @drawable/health_icon_sport_time_25 'res/drawable/health_icon_sport_time_25.xml'

    .line 14
    return p0

    .line 17
    :cond_0
    const p0, 0x7f080ec8    # @drawable/health_icon_stand_count_27 'res/drawable/health_icon_stand_count_27.xml'

    .line 18
    return p0

    .line 21
    :cond_1
    const p0, 0x7f080ec5    # @drawable/health_icon_calories_25 'res/drawable/health_icon_calories_25.xml'

    .line 22
    return p0

    .line 25
    :cond_2
    const p0, 0x7f080ec9    # @drawable/health_icon_step_count_25 'res/drawable/health_icon_step_count_25.xml'

    .line 26
    return p0
    .line 29
.end method

.method private updateCalories(Lcom/miui/clock/module/HealthBean;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 5
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 10
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 12
    iget p1, p1, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 14
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 16
    :goto_0
    return-void
    .line 18
.end method

.method private updateSleepDuration(Lcom/miui/clock/module/HealthBean;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/miui/clock/module/HealthBean;->sleepDuration:J

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-wide v0, p1, Lcom/miui/clock/module/HealthBean;->sleepDuration:J

    .line 9
    iput-wide v0, p0, Lcom/miui/clock/module/HealthBean;->sleepDuration:J

    .line 11
    :goto_0
    return-void
    .line 13
.end method

.method private updateSportTime(Lcom/miui/clock/module/HealthBean;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 5
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 10
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 12
    iget p1, p1, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 14
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 16
    :goto_0
    return-void
    .line 18
.end method

.method private updateStandCount(Lcom/miui/clock/module/HealthBean;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 5
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 10
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 12
    iget p1, p1, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 14
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 16
    :goto_0
    return-void
    .line 18
.end method

.method private updateStepCount(Lcom/miui/clock/module/HealthBean;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 5
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 10
    iput v0, p0, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 12
    iget p1, p1, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 14
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 16
    :goto_0
    return-void
    .line 18
.end method


# virtual methods
.method public getCaloriesNow()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 2
    return p0
    .line 4
.end method

.method public getCaloriesNowString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getCaloriesTarget()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 2
    return p0
    .line 4
.end method

.method public getCaloriesTargetString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getSleepDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/clock/module/HealthBean;->sleepDuration:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public getSleepDurationMinute()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/miui/clock/module/HealthBean;->sleepDuration:J

    .line 2
    const-wide/32 v2, 0xea60

    .line 4
    div-long/2addr v0, v2

    .line 7
    long-to-int p0, v0

    .line 8
    return p0
    .line 9
.end method

.method public getSportTimeNow()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 2
    return p0
    .line 4
.end method

.method public getSportTimeNowString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getSportTimeTarget()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 2
    return p0
    .line 4
.end method

.method public getSportTimeTargetString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getStandCountNow()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 2
    return p0
    .line 4
.end method

.method public getStandCountNowString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getStandCountTarget()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 2
    return p0
    .line 4
.end method

.method public getStandCountTargetString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getStepCountNow()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 2
    return p0
    .line 4
.end method

.method public getStepCountNowString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getStepCountTarget()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 2
    return p0
    .line 4
.end method

.method public getStepCountTargetString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public hasCaloriesData()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 2
    if-ltz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 6
    if-ltz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public hasSleepDurationData()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/miui/clock/module/HealthBean;->sleepDuration:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long p0, v0, v2

    .line 6
    if-lez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public hasSportTimeData()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 2
    if-ltz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 6
    if-ltz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public hasStandCountData()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 2
    if-ltz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 6
    if-ltz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public hasStepCountData()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 2
    if-ltz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 6
    if-ltz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public setCaloriesList(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setCaloriesNow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 2
    return-void
    .line 4
.end method

.method public setCaloriesTarget(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 2
    return-void
    .line 4
.end method

.method public setSleepDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/miui/clock/module/HealthBean;->sleepDuration:J

    .line 2
    return-void
    .line 4
.end method

.method public setSportTimeList(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSportTimeNow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 2
    return-void
    .line 4
.end method

.method public setSportTimeTarget(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 2
    return-void
    .line 4
.end method

.method public setStandCountNow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 2
    return-void
    .line 4
.end method

.method public setStandCountTarget(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 2
    return-void
    .line 4
.end method

.method public setStepCountList(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setStepCountNow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 2
    return-void
    .line 4
.end method

.method public setStepCountTarget(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 2
    return-void
    .line 4
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "{\"sleepDuration\":"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-wide v1, p0, Lcom/miui/clock/module/HealthBean;->sleepDuration:J

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ",\"stepCountNow\":"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ",\"stepCountTarget\":"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ",\"standCountNow\":"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ",\"standCountTarget\":"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ",\"caloriesNow\":"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ",\"caloriesTarget\":"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ",\"sportTimeNow\":"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ",\"sportTimeTarget\":"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 90
    const/16 v1, 0x7d

    .line 92
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 97
    return-object p0
    .line 98
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "HealthBean{sleepDuration="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-wide v1, p0, Lcom/miui/clock/module/HealthBean;->sleepDuration:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", stepCountNow="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->stepCountNow:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", stepCountTarget="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->stepCountTarget:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", standCountNow="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->standCountNow:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", standCountTarget="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->standCountTarget:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", caloriesNow="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->caloriesNow:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", caloriesTarget="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->caloriesTarget:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", sportTimeNow="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lcom/miui/clock/module/HealthBean;->sportTimeNow:I

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", sportTimeTarget="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget p0, p0, Lcom/miui/clock/module/HealthBean;->sportTimeTarget:I

    .line 89
    const/16 v1, 0x7d

    .line 91
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    return-object p0
    .line 97
.end method

.method public updateData(Lcom/miui/clock/module/HealthBean;Ljava/util/HashSet;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p2

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v0

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/clock/module/HealthBean;->updateStandCount(Lcom/miui/clock/module/HealthBean;)V

    .line 25
    goto :goto_0

    .line 28
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/clock/module/HealthBean;->updateSleepDuration(Lcom/miui/clock/module/HealthBean;)V

    .line 29
    goto :goto_0

    .line 32
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/clock/module/HealthBean;->updateSportTime(Lcom/miui/clock/module/HealthBean;)V

    .line 33
    goto :goto_0

    .line 36
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/clock/module/HealthBean;->updateCalories(Lcom/miui/clock/module/HealthBean;)V

    .line 37
    goto :goto_0

    .line 40
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/clock/module/HealthBean;->updateStepCount(Lcom/miui/clock/module/HealthBean;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
    .line 46
.end method
