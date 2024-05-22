.class public final Lcom/android/systemui/log/LogcatEchoTrackerProd;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/log/LogcatEchoTracker;


# instance fields
.field private final logInBackgroundThread:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogInBackgroundThread()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerProd;->logInBackgroundThread:Z

    .line 2
    return p0
    .line 4
.end method

.method public isBufferLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    invoke-virtual {p2, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 4
    move-result p0

    .line 7
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

.method public isTagLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    invoke-virtual {p2, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 4
    move-result p0

    .line 7
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
