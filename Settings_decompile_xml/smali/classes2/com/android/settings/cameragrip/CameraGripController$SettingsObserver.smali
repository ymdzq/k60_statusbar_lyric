.class Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "CameraGripController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cameragrip/CameraGripController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cameragrip/CameraGripController;


# direct methods
.method public constructor <init>(Lcom/android/settings/cameragrip/CameraGripController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;->this$0:Lcom/android/settings/cameragrip/CameraGripController;

    const/4 p1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;->this$0:Lcom/android/settings/cameragrip/CameraGripController;

    invoke-static {p1}, Lcom/android/settings/cameragrip/CameraGripController;->-$$Nest$fgetmPreference(Lcom/android/settings/cameragrip/CameraGripController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;->this$0:Lcom/android/settings/cameragrip/CameraGripController;

    invoke-static {p1}, Lcom/android/settings/cameragrip/CameraGripController;->-$$Nest$fgetmPreference(Lcom/android/settings/cameragrip/CameraGripController;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;->this$0:Lcom/android/settings/cameragrip/CameraGripController;

    invoke-static {p0}, Lcom/android/settings/cameragrip/CameraGripController;->-$$Nest$fgetmContext(Lcom/android/settings/cameragrip/CameraGripController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/cameragrip/CameraGripController;->isShowCameraGrip(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;->this$0:Lcom/android/settings/cameragrip/CameraGripController;

    invoke-static {v0}, Lcom/android/settings/cameragrip/CameraGripController;->-$$Nest$fgetmContext(Lcom/android/settings/cameragrip/CameraGripController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_show_camera_grip"

    .line 87
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;->this$0:Lcom/android/settings/cameragrip/CameraGripController;

    invoke-static {v0}, Lcom/android/settings/cameragrip/CameraGripController;->-$$Nest$fgetmContext(Lcom/android/settings/cameragrip/CameraGripController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
