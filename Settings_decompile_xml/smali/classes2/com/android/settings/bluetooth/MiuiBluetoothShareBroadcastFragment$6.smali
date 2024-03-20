.class Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$6;
.super Ljava/lang/Object;
.source "MiuiBluetoothShareBroadcastFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceDetailClickListener(Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;)V
    .locals 9

    const-string/jumbo v0, "onPreferenceDetailClickListener"

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    .line 825
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->getBleBroadcastSourceInfo()Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    .line 828
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "source_info"

    .line 829
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 830
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "device"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "onPreferenceDetailClickListener enter broadcast info detail fragment!"

    .line 831
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/app/Activity;

    move-result-object v2

    const-class p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    .line 833
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/android/settings/R$string;->bluetooth_share_broadcast_param:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 832
    invoke-static/range {v2 .. v8}, Lcom/android/settings/MiuiUtils;->startPreferencePanel(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method
