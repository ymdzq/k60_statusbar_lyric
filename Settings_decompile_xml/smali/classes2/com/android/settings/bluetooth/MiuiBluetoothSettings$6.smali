.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$6;
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

    .line 803
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 806
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetallowNewUpgrade(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 807
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->handleForceUpdateClick(Landroid/content/Context;)V

    goto :goto_0

    .line 809
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$6;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->handlePreferenceTreeClick(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
