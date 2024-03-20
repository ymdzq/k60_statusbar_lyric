.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;
.source "ServiceTokenUtilMiui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->doesXiaomiAccountAppSupportServiceTokenUIResponse(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;->this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method


# virtual methods
.method protected callServiceWork()Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->getIService()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    invoke-interface {p0}, Lcom/xiaomi/passport/IPassportServiceTokenService;->supportServiceTokenUIResponse()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic callServiceWork()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;->callServiceWork()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
