.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$9;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->createDialogForBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 766
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmBroadcastAudioPreOnlySource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 767
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmBroadcastAudioPreOnlySource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mhandlePreferenceEnabled(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Landroidx/preference/Preference;)V

    .line 768
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mstartBroadcast(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    return-void
.end method
