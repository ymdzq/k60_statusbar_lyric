.class Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundSettingsObserver"
.end annotation


# instance fields
.field private final MUTE_MUSIC_AT_SILENT_URI:Landroid/net/Uri;

.field private final VIBRATE_IN_NORMAL_URI:Landroid/net/Uri;

.field private final VIBRATE_IN_SILENT_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/MiuiSoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiSoundSettings;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->this$0:Lcom/android/settings/MiuiSoundSettings;

    .line 1051
    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiSoundSettings;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    .line 1045
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "mute_music_at_silent"

    .line 1046
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->MUTE_MUSIC_AT_SILENT_URI:Landroid/net/Uri;

    const-string/jumbo p1, "vibrate_in_silent"

    .line 1047
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->VIBRATE_IN_SILENT_URI:Landroid/net/Uri;

    const-string/jumbo p1, "vibrate_in_normal"

    .line 1048
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->VIBRATE_IN_NORMAL_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1068
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundSettingsObserver, onChange(), selfChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uri : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiSoundSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 1070
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1071
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiSoundSettings;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1072
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiSoundSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiSoundSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1074
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiSoundSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiSoundSettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public register()V
    .locals 4

    .line 1055
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1056
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1057
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->MUTE_MUSIC_AT_SILENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1058
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->VIBRATE_IN_SILENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1059
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->VIBRATE_IN_NORMAL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
