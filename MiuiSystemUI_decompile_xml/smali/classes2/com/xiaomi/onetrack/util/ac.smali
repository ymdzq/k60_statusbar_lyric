.class public abstract Lcom/xiaomi/onetrack/util/ac;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static b()J
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->b()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 15
    move-result-object v0

    .line 18
    :goto_0
    const/16 v1, 0xb

    .line 19
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 22
    const/16 v1, 0xc

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 27
    const/16 v1, 0xd

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 32
    const/16 v1, 0xe

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 37
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 40
    move-result-wide v0

    .line 43
    return-wide v0
    .line 44
.end method

.method public static d(J)Z
    .locals 3

    .line 1
    const-string v0, "GMT+8"

    .line 2
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 8
    move-result-object v1

    .line 11
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20
    const/4 p0, 0x1

    .line 23
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 24
    move-result p1

    .line 27
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 28
    move-result v2

    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    const/4 p1, 0x2

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 35
    move-result v2

    .line 38
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    .line 39
    move-result p1

    .line 42
    if-ne v2, p1, :cond_0

    .line 43
    const/4 p1, 0x5

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 46
    move-result v0

    .line 49
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    .line 50
    move-result p1

    .line 53
    if-ne v0, p1, :cond_0

    .line 54
    goto :goto_0

    .line 56
    :cond_0
    const/4 p0, 0x0

    .line 57
    :goto_0
    return p0
    .line 58
.end method
