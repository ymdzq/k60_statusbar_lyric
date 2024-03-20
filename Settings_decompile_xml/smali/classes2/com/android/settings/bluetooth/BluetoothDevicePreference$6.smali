.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$6;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothDevicePreference;->askSwtichActiveDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1126
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$6;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1129
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$6;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "miui_store_audio_share_window_pop"

    const-string v0, "NeedPop"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1130
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$6;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->-$$Nest$fgetmJumpAttributePage(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$AudioShareJumpPage;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$6;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$AudioShareJumpPage;->onCallBack(Landroid/bluetooth/BluetoothDevice;)V

    const-string p0, "BluetoothDevicePreference"

    const-string p1, "mJumpAttributePage.onCallBack"

    .line 1131
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
