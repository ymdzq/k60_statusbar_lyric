.class Lcom/android/settings/cameragrip/CameraGripDetail$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraGripDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cameragrip/CameraGripDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cameragrip/CameraGripDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/cameragrip/CameraGripDetail;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/cameragrip/CameraGripDetail$1;->this$0:Lcom/android/settings/cameragrip/CameraGripDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive:  get intent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraGripDetail"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "what"

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    const-string/jumbo p2, "onReceive: update successful"

    .line 182
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p2, p0, Lcom/android/settings/cameragrip/CameraGripDetail$1;->this$0:Lcom/android/settings/cameragrip/CameraGripDetail;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->camera_grip_firmware_update_successful:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/cameragrip/CameraGripDetail;->-$$Nest$fputmOTAToast(Lcom/android/settings/cameragrip/CameraGripDetail;Landroid/widget/Toast;)V

    .line 184
    iget-object p2, p0, Lcom/android/settings/cameragrip/CameraGripDetail$1;->this$0:Lcom/android/settings/cameragrip/CameraGripDetail;

    invoke-static {p2}, Lcom/android/settings/cameragrip/CameraGripDetail;->-$$Nest$fgetmOTAToast(Lcom/android/settings/cameragrip/CameraGripDetail;)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo p2, "onReceive: update faild"

    .line 178
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p2, p0, Lcom/android/settings/cameragrip/CameraGripDetail$1;->this$0:Lcom/android/settings/cameragrip/CameraGripDetail;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->camera_grip_firmware_update_faild:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/cameragrip/CameraGripDetail;->-$$Nest$fputmOTAToast(Lcom/android/settings/cameragrip/CameraGripDetail;Landroid/widget/Toast;)V

    .line 180
    iget-object p2, p0, Lcom/android/settings/cameragrip/CameraGripDetail$1;->this$0:Lcom/android/settings/cameragrip/CameraGripDetail;

    invoke-static {p2}, Lcom/android/settings/cameragrip/CameraGripDetail;->-$$Nest$fgetmOTAToast(Lcom/android/settings/cameragrip/CameraGripDetail;)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 186
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripDetail$1;->this$0:Lcom/android/settings/cameragrip/CameraGripDetail;

    invoke-static {p0}, Lcom/android/settings/cameragrip/CameraGripDetail;->-$$Nest$fgetmFirmwareUpdate(Lcom/android/settings/cameragrip/CameraGripDetail;)Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->setFwStateValue(I)V

    return-void
.end method
