.class abstract Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;
.super Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;
.source "ServiceTokenUtilMiui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ServiceTokenServiceConnectorBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector<",
        "Lcom/xiaomi/passport/IPassportServiceTokenService;",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/accountsdk/futureservice/ClientFuture<",
            "TT;TT;>;)V"
        }
    .end annotation

    const-string v0, "com.xiaomi.account.action.SERVICE_TOKEN_OP"

    .line 219
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/SystemXiaomiAccountPackageName;->getValid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method


# virtual methods
.method protected final binderToServiceType(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;
    .locals 0

    .line 224
    invoke-static {p1}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic binderToServiceType(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;->binderToServiceType(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;

    move-result-object p0

    return-object p0
.end method
