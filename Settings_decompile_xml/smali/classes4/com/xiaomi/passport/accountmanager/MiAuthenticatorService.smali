.class public Lcom/xiaomi/passport/accountmanager/MiAuthenticatorService;
.super Landroid/app/Service;
.source "MiAuthenticatorService.java"


# instance fields
.field private mAuthenticator:Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return the AccountAuthenticator binder of package: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalAuthenticatorSer"

    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAuthenticatorService;->mAuthenticator:Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;

    invoke-virtual {p0}, Lcom/xiaomi/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    new-instance v0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAuthenticatorService;->mAuthenticator:Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;

    return-void
.end method
