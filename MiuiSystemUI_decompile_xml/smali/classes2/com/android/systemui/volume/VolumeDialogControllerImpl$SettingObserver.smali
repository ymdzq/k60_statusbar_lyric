.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

.field public final ZEN_MODE_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    const-string/jumbo p1, "zen_mode"

    .line 7
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 14
    const-string/jumbo p1, "zen_mode_config_etag"

    .line 16
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeW()Z

    .line 12
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    .line 18
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 26
    invoke-virtual {p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenConfig()Z

    .line 28
    move-result p2

    .line 31
    or-int/2addr p1, p2

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 35
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 39
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 41
    :cond_2
    return-void
    .line 44
.end method
