.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 220
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fputmService(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V

    .line 225
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmObserver(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmObserver(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 227
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fputmObserver(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
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

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fputmService(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V

    return-void
.end method
