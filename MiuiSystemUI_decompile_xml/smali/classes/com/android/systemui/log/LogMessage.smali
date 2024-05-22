.class public interface abstract Lcom/android/systemui/log/LogMessage;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogMessageKt;->DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/log/LogMessage;->getTimestamp()J

    .line 4
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {p0}, Lcom/android/systemui/log/LogMessage;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/log/LogLevel;->getShortString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-interface {p0}, Lcom/android/systemui/log/LogMessage;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 24
    move-result-object v2

    .line 27
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    invoke-interface {p0}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    const-string v0, " "

    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    const-string v0, ": "

    .line 55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    invoke-interface {p0}, Lcom/android/systemui/log/LogMessage;->getException()Ljava/lang/Throwable;

    .line 63
    move-result-object p0

    .line 66
    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 69
    :cond_0
    return-void
    .line 72
.end method

.method public abstract getBool1()Z
.end method

.method public abstract getBool2()Z
.end method

.method public abstract getBool3()Z
.end method

.method public abstract getBool4()Z
.end method

.method public abstract getDouble1()D
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract getInt1()I
.end method

.method public abstract getInt2()I
.end method

.method public abstract getLevel()Lcom/android/systemui/log/LogLevel;
.end method

.method public abstract getLong1()J
.end method

.method public abstract getLong2()J
.end method

.method public abstract getMessagePrinter()Lkotlin/jvm/functions/Function1;
.end method

.method public abstract getStr1()Ljava/lang/String;
.end method

.method public abstract getStr2()Ljava/lang/String;
.end method

.method public abstract getStr3()Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract setBool1(Z)V
.end method

.method public abstract setBool2(Z)V
.end method

.method public abstract setBool3(Z)V
.end method

.method public abstract setBool4(Z)V
.end method

.method public abstract setDouble1(D)V
.end method

.method public abstract setInt1(I)V
.end method

.method public abstract setInt2(I)V
.end method

.method public abstract setLong1(J)V
.end method

.method public abstract setLong2(J)V
.end method

.method public abstract setStr1(Ljava/lang/String;)V
.end method

.method public abstract setStr2(Ljava/lang/String;)V
.end method

.method public abstract setStr3(Ljava/lang/String;)V
.end method
