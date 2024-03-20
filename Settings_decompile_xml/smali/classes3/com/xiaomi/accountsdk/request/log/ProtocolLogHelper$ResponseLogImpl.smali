.class Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;
.super Ljava/lang/Object;
.source "ProtocolLogHelper.java"

# interfaces
.implements Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseLogImpl"
.end annotation


# instance fields
.field protected mContent:Ljava/lang/Object;

.field protected mCookieKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;->mUrl:Ljava/lang/String;

    return-void

    .line 110
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "url can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public log()V
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " #Response# "

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RequestUrl: "

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ResponseBody: "

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ResponseHeaders: "

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ResponseCookieKeys: "

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;->mCookieKeys:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {}, Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger;->getInstance()Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger;

    move-result-object p0

    const-class v1, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stringResponseOrNull(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLog;
    .locals 1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;->mContent:Ljava/lang/Object;

    .line 131
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;->mHeaders:Ljava/util/Map;

    .line 132
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getCookieKeys()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogImpl;->mCookieKeys:Ljava/util/Set;

    :cond_0
    return-object p0
.end method
