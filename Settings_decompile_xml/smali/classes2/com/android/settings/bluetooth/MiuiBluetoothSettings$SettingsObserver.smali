.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiBluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Landroid/os/Handler;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    .line 342
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 348
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->headSetFeatureIsEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->headSetMoreDetailEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 349
    :cond_0
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "properity changed init the headset service start "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "miui.bluetooth.mible.BluetoothHeadsetService"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.xiaomi.bluetooth"

    .line 351
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmConnection(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Landroid/content/ServiceConnection;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 355
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
