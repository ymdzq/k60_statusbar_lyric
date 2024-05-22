.class public Lcom/android/systemui/statusbar/SignalIcon$State;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public connected:Z

.field public enabled:Z

.field public iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

.field public inetCondition:I

.field public level:I

.field public rssi:I

.field public time:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/SignalIcon$State;->sSDF:Ljava/text/SimpleDateFormat;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/SignalIcon$State;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 4
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    .line 8
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 10
    iput v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 12
    iget-object v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 16
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    .line 18
    iput v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    .line 20
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->activityIn:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->activityIn:Z

    .line 24
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->activityOut:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->activityOut:Z

    .line 28
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->rssi:I

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->rssi:I

    .line 32
    iget-wide v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->time:J

    .line 34
    iput-wide v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->time:J

    .line 36
    return-void
    .line 38
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    return v1

    .line 17
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 18
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 20
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 22
    if-ne v0, v2, :cond_1

    .line 24
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    .line 26
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    .line 28
    if-ne v0, v2, :cond_1

    .line 30
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 32
    iget v2, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 34
    if-ne v0, v2, :cond_1

    .line 36
    iget v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    .line 38
    iget v2, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    .line 40
    if-ne v0, v2, :cond_1

    .line 42
    iget-object v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 44
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 46
    if-ne v0, v2, :cond_1

    .line 48
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->activityIn:Z

    .line 50
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->activityIn:Z

    .line 52
    if-ne v0, v2, :cond_1

    .line 54
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->activityOut:Z

    .line 56
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->activityOut:Z

    .line 58
    if-ne v0, v2, :cond_1

    .line 60
    iget p1, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->rssi:I

    .line 62
    iget p0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->rssi:I

    .line 64
    if-ne p1, p0, :cond_1

    .line 66
    const/4 v1, 0x1

    .line 68
    :cond_1
    return v1
    .line 69
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalIcon$State;->toString(Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Empty "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "connected="

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "enabled="

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "level="

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "inetCondition="

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "iconGroup="

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "activityIn="

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->activityIn:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "activityOut="

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->activityOut:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rssi="

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->rssi:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "lastModified="

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/systemui/statusbar/SignalIcon$State;->sSDF:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
