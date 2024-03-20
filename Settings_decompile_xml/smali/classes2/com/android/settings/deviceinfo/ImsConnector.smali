.class public Lcom/android/settings/deviceinfo/ImsConnector;
.super Ljava/lang/Object;
.source "ImsConnector.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/android/settings/deviceinfo/ImsConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/ImsConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mContext:Landroid/content/Context;

    .line 51
    iput p2, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mSlotId:I

    .line 52
    iput-object p3, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 53
    sget-object p3, Lcom/android/settings/deviceinfo/ImsConnector;->TAG:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 53
    invoke-static {p1, p2, p3, p0, v0}, Lcom/android/ims/ImsManager;->getConnector(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mConnector:Lcom/android/ims/FeatureConnector;

    return-void
.end method

.method private registerListener()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_0

    .line 82
    sget-object p0, Lcom/android/settings/deviceinfo/ImsConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "registerListener: mImsManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    .line 89
    sget-object v0, Lcom/android/settings/deviceinfo/ImsConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener: add callback for mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mImsManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    sget-object v0, Lcom/android/settings/deviceinfo/ImsConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unregisterListener()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_0

    .line 98
    sget-object p0, Lcom/android/settings/deviceinfo/ImsConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unregisterListener: mImsManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 103
    sget-object v0, Lcom/android/settings/deviceinfo/ImsConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener: remove ims registration callback for mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mImsManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mConnector:Lcom/android/ims/FeatureConnector;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnector;->connect()V

    :cond_0
    return-void
.end method

.method public bridge synthetic connectionReady(Lcom/android/ims/FeatureUpdates;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 39
    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/ImsConnector;->connectionReady(Lcom/android/ims/ImsManager;I)V

    return-void
.end method

.method public connectionReady(Lcom/android/ims/ImsManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mImsManager:Lcom/android/ims/ImsManager;

    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/ImsConnector;->registerListener()V

    return-void
.end method

.method public connectionUnavailable(I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/ImsConnector;->unregisterListener()V

    return-void
.end method

.method public disconnect()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/deviceinfo/ImsConnector;->mConnector:Lcom/android/ims/FeatureConnector;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    :cond_0
    return-void
.end method
