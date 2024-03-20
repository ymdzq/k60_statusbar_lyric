.class Lcom/android/settings/wifi/MiuiWifiSettings$1;
.super Landroid/database/ContentObserver;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->registerSatelliteSwitchChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/os/Handler;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 461
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "satellite_state"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 462
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Currently in satellite mode"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 465
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Currently exited from satellite mode"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
