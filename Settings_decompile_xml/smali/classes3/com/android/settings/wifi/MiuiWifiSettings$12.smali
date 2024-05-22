.class Lcom/android/settings/wifi/MiuiWifiSettings$12;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->isCustShowSkipButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 2226
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$12;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$12;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSkipButton(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2232
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$12;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    .line 2233
    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$misMobileNetValidated(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2234
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$12;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSkipButton(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2236
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$12;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSkipButton(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/TextView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
