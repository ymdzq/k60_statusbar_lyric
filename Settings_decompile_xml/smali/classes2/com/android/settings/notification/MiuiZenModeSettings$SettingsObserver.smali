.class final Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/MiuiZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/MiuiZenModeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    .line 311
    invoke-static {p1}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "quiet_mode_enable"

    .line 307
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_mode_config_etag"

    .line 308
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 325
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 326
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$mupdateControls(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    return-void
.end method

.method public register()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->access$000(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->access$100(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->access$200(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
