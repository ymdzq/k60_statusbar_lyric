.class Lcom/android/settings/network/telephony/TelephonyUtils$1;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/TelephonyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    const-string p0, "ExtTelephony Service connected"

    const-string v0, "TelephonyUtils"

    .line 221
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 222
    invoke-static {p0}, Lcom/android/settings/network/telephony/TelephonyUtils;->-$$Nest$sfputmIsServiceBound(Z)V

    .line 224
    :try_start_0
    invoke-static {}, Lcom/android/settings/network/telephony/TelephonyUtils;->-$$Nest$sfgetmExtTelephonyManager()Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isSmartDdsSwitchFeatureAvailable()Z

    move-result p0

    invoke-static {p0}, Lcom/android/settings/network/telephony/TelephonyUtils;->-$$Nest$sfputmIsSmartDdsSwitchFeatureAvailable(Z)V

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSmartDdsSwitchFeatureAvailable: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/network/telephony/TelephonyUtils;->-$$Nest$sfgetmIsSmartDdsSwitchFeatureAvailable()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmartDdsSwitchFeatureAvailable exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    const-string p0, "TelephonyUtils"

    const-string v0, "ExtTelephony Service disconnected..."

    .line 235
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 236
    invoke-static {p0}, Lcom/android/settings/network/telephony/TelephonyUtils;->-$$Nest$sfputmIsServiceBound(Z)V

    return-void
.end method
