.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;
.source "ServiceTokenUtilMiui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->invalidateServiceTokenImpl(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

.field final synthetic val$serviceTokenResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    iput-object p4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->val$serviceTokenResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

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

    .line 72
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->val$serviceTokenResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->hasServiceTokenResultParcelCompatIssue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->val$serviceTokenResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 75
    invoke-static {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->copyFrom(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->useV1Parcel(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->val$serviceTokenResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->getIService()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    invoke-interface {p0, v0}, Lcom/xiaomi/passport/IPassportServiceTokenService;->invalidateServiceToken(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

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

    .line 68
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->callServiceWork()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    return-object p0
.end method
