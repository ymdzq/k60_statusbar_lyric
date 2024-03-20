.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$7;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 818
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "COME_FROM"

    const-string v1, "MIUI_BT_CONNECT_HELP"

    .line 819
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.bluetooth.MiuiHeadsetActivityPlugin"

    .line 820
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    invoke-static {}, Lcom/android/settings/bluetooth/FitSplitUtils;->isFitSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    .line 822
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    const/4 v0, 0x4

    .line 823
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 826
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "BT"

    invoke-static {p0, p1}, Lcom/android/settings/OneTrackManager;->trackHelpClick(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
