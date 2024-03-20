.class Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;
.super Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;
.source "MiuiCUserIdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->getFromXiaomiAccountService()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector<",
        "Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->this$0:Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method


# virtual methods
.method protected binderToServiceType(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic binderToServiceType(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->binderToServiceType(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

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

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->callServiceWork()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected callServiceWork()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->getIService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    iget-object p0, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->this$0:Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;

    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->access$000(Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;)Landroid/accounts/Account;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;->getEncryptedUserId(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
