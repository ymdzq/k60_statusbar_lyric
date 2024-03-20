.class Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnForceReloadFinishedListener;
.super Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;
.source "SecurityDeviceCredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnForceReloadFinishedListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$1;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnForceReloadFinishedListener;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnForceReloadFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnForceReloadFinishedListener;->checkReloadResult()V

    return-void
.end method

.method private checkReloadResult()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->waitForResult()V

    .line 304
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->checkResultCode()V

    return-void
.end method


# virtual methods
.method protected onForceReloadFinished()V
    .locals 0

    .line 0
    return-void
.end method

.method public onGetSecurityDeviceIdFinished(Ljava/lang/String;)V
    .locals 0

    .line 288
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "wrong callback!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSignFinished([B)V
    .locals 0

    .line 293
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "wrong callback!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
