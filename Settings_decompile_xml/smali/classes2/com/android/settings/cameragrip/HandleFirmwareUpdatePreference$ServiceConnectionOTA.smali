.class Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;
.super Ljava/lang/Object;
.source "HandleFirmwareUpdatePreference.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceConnectionOTA"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

.field private weakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;->this$0:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;->weakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "HandleFirmwareUpdatePreference"

    .line 187
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;->weakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;->weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->-$$Nest$fputmOTAService(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;)V

    .line 192
    iget-object p2, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;->this$0:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    invoke-static {p2}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->-$$Nest$fgetmOTAService(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;)Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "initOTASource: checkUpdate"

    .line 193
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;->this$0:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    invoke-static {p0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->-$$Nest$fgetmOTAService(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;)Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;->checkUsbDeviceUpdate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onServiceConnected: error cause : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "HandleFirmwareUpdatePreference"

    const-string p1, "mBleOTADisconnected "

    .line 203
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
