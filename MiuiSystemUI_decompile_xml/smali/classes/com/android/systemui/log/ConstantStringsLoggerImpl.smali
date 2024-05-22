.class public final Lcom/android/systemui/log/ConstantStringsLoggerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/log/ConstantStringsLogger;


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 6
    const/4 v4, 0x0

    .line 8
    const/16 v5, 0x8

    .line 9
    const/4 v6, 0x0

    .line 11
    move-object v3, p1

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public e(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 6
    const/4 v4, 0x0

    .line 8
    const/16 v5, 0x8

    .line 9
    const/4 v6, 0x0

    .line 11
    move-object v3, p1

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public final getBuffer()Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public v(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 6
    const/4 v4, 0x0

    .line 8
    const/16 v5, 0x8

    .line 9
    const/4 v6, 0x0

    .line 11
    move-object v3, p1

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public w(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 6
    const/4 v4, 0x0

    .line 8
    const/16 v5, 0x8

    .line 9
    const/4 v6, 0x0

    .line 11
    move-object v3, p1

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method
