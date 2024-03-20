.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$10;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 779
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$10;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 782
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$10;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmBroadcastAudioPreOnlySource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 783
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$10;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmBroadcastAudioPreOnlySource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$10;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mgetBroadcastStatus(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
