.class Lcom/android/settings/cameragrip/CameraGripDetail$CameraGripTrack;
.super Ljava/lang/Object;
.source "CameraGripDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cameragrip/CameraGripDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CameraGripTrack"
.end annotation


# static fields
.field private static final CURRENT_DEVICE_REGION:Ljava/lang/String;

.field private static final SHORTCUT_TRACK_FOR_ONE_TRACK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "cn"

    const-string/jumbo v2, "ru"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/cameragrip/CameraGripDetail$CameraGripTrack;->SHORTCUT_TRACK_FOR_ONE_TRACK:Ljava/util/List;

    const-string/jumbo v0, "ro.miui.build.region"

    const-string v1, "CN"

    .line 212
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cameragrip/CameraGripDetail$CameraGripTrack;->CURRENT_DEVICE_REGION:Ljava/lang/String;

    return-void
.end method

.method public static trackHandeButtonFunctionSettingsClick(Landroid/content/Context;)V
    .locals 4

    .line 221
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "onetrack.action.TRACK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.analytics"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    sget-object v1, Lcom/android/settings/cameragrip/CameraGripDetail$CameraGripTrack;->SHORTCUT_TRACK_FOR_ONE_TRACK:Ljava/util/List;

    sget-object v2, Lcom/android/settings/cameragrip/CameraGripDetail$CameraGripTrack;->CURRENT_DEVICE_REGION:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "APP_ID"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "31000401650"

    .line 225
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "31000401666"

    .line 227
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "EVENT_NAME"

    const-string v2, "click"

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    const-string v2, "com.xiaomi.input.shortcut"

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "tip"

    const-string v2, "1257.1.0.1.32455"

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "click_content"

    const-string v3, "handle_button_function_settings"

    .line 233
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
