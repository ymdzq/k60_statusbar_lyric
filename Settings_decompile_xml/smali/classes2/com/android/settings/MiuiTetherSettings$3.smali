.class Lcom/android/settings/MiuiTetherSettings$3;
.super Landroid/database/ContentObserver;
.source "MiuiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings;->registerSatelliteSwitchChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;Landroid/os/Handler;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$3;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 529
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$3;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "satellite_state"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string p2, "MiuiTetherSettings"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "Currently in satellite mode"

    .line 530
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$3;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmEnableWifiAp(Lcom/android/settings/MiuiTetherSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Currently exited from satellite mode"

    .line 533
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$3;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmEnableWifiAp(Lcom/android/settings/MiuiTetherSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
