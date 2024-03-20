.class Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;
.super Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;
.source "SecurityDeviceCredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSignFinishedListener"
.end annotation


# instance fields
.field private mSignResult:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$1;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;->getSignResult()[B

    move-result-object p0

    return-object p0
.end method

.method private getSignResult()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->waitForResult()V

    .line 278
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->checkResultCode()V

    .line 279
    iget-object p0, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;->mSignResult:[B

    return-object p0
.end method


# virtual methods
.method public onForceReloadFinished()V
    .locals 1

    .line 272
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "wrong callback!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onGetSecurityDeviceIdFinished(Ljava/lang/String;)V
    .locals 0

    .line 262
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "wrong callback!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSignFinished([B)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;->mSignResult:[B

    return-void
.end method
