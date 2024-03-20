.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;
.source "ServiceTokenUtilMiui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    iput-object p4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->val$sid:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;-><init>(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V

    return-void
.end method


# virtual methods
.method protected callServiceWork()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->getIService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->val$sid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/IPassportServiceTokenService;->getServiceToken(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    .line 49
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->val$context:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler;->blockingHandleIntentError(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

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

    .line 45
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->callServiceWork()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    return-object p0
.end method
