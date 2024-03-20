.class Lcom/android/settings/network/telephony/MobileNetworkSettings$2;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/MobileNetworkSettings;->getCiwlanConfig()Lcom/qti/extphone/CiwlanConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 160
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->-$$Nest$fgetmExtTelephonyManager(Lcom/android/settings/network/telephony/MobileNetworkSettings;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->-$$Nest$sfgetmSubId()I

    move-result v0

    .line 161
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/qti/extphone/ExtTelephonyManager;->getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->-$$Nest$sfputmCiwlanConfig(Lcom/qti/extphone/CiwlanConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NetworkSettings"

    const-string v1, "getCiwlanConfig exception"

    .line 163
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
