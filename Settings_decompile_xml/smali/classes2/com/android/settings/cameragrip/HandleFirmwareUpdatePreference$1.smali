.class Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$1;
.super Ljava/lang/Object;
.source "HandleFirmwareUpdatePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->setOnClick(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$1;->this$0:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$1;->this$0:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->updateView(I)V

    .line 170
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$1;->this$0:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    invoke-static {p0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->-$$Nest$fgetmOTAService(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;)Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;->startUsbDeviceOTA()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onClick: error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HandleFirmwareUpdatePreference"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
