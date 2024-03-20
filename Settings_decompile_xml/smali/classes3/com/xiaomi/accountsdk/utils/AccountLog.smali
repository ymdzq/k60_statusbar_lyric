.class public abstract Lcom/xiaomi/accountsdk/utils/AccountLog;
.super Ljava/lang/Object;
.source "AccountLog.java"


# static fields
.field private static final sAndroidLog:Lcom/xiaomi/accountsdk/utils/AccountLog;

.field private static sInstance:Lcom/xiaomi/accountsdk/utils/AccountLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/xiaomi/accountsdk/utils/AccountLog$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/AccountLog$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->sAndroidLog:Lcom/xiaomi/accountsdk/utils/AccountLog;

    .line 89
    sput-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->sInstance:Lcom/xiaomi/accountsdk/utils/AccountLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 111
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logD(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 115
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logD(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 139
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logE(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 143
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logE(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 162
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/IpFilterHelper;->envIPAddressIfHas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;
    .locals 1

    .line 92
    sget-object v0, Lcom/xiaomi/accountsdk/utils/AccountLog;->sInstance:Lcom/xiaomi/accountsdk/utils/AccountLog;

    return-object v0
.end method

.method private static getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 154
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 119
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logI(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 103
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logV(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 107
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logV(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 127
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logW(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 131
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logW(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 135
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/AccountLog;->getInstance()Lcom/xiaomi/accountsdk/utils/AccountLog;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->enThrowableMsgIfHasIPAddress(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->logW(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract logD(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract logE(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract logI(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract logV(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract logW(Ljava/lang/String;Ljava/lang/String;)I
.end method
