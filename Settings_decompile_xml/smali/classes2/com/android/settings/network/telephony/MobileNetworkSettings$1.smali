.class Lcom/android/settings/network/telephony/MobileNetworkSettings$1;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileNetworkSettings;
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

    .line 136
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string v0, "NetworkSettings"

    const-string v1, "ExtTelephony service connected"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->-$$Nest$fputmExtTelServiceConnected(Lcom/android/settings/network/telephony/MobileNetworkSettings;Z)V

    .line 141
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->-$$Nest$mgetCiwlanConfig(Lcom/android/settings/network/telephony/MobileNetworkSettings;)Lcom/qti/extphone/CiwlanConfig;

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const-string v0, "NetworkSettings"

    const-string v1, "ExtTelephony service disconnected"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->-$$Nest$fputmExtTelServiceConnected(Lcom/android/settings/network/telephony/MobileNetworkSettings;Z)V

    return-void
.end method
