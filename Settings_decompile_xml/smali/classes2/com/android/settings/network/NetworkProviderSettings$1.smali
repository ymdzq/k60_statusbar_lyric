.class Lcom/android/settings/network/NetworkProviderSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkProviderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/NetworkProviderSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/NetworkProviderSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$1;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    .line 417
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_1
    const-string v0, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    .line 420
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x12

    .line 421
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x11

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 425
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$1;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {p0, v3}, Lcom/android/settings/network/NetworkProviderSettings;->-$$Nest$mupdateActionBar(Lcom/android/settings/network/NetworkProviderSettings;Z)V

    return-void
.end method
