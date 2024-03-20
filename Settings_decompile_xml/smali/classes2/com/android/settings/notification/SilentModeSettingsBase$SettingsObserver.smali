.class final Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SilentModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/SilentModeSettingsBase;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/SilentModeSettingsBase;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/SilentModeSettingsBase;

    .line 168
    invoke-static {p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->-$$Nest$fgetmHandler(Lcom/android/settings/notification/SilentModeSettingsBase;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    .line 164
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_mode_config_etag"

    .line 165
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/SilentModeSettingsBase;Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings/notification/SilentModeSettingsBase;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 182
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/SilentModeSettingsBase;

    invoke-static {p1, v0}, Lcom/android/settings/notification/SilentModeSettingsBase;->-$$Nest$mupdateZenMode(Lcom/android/settings/notification/SilentModeSettingsBase;Z)V

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/SilentModeSettingsBase;

    invoke-static {p0, v0}, Lcom/android/settings/notification/SilentModeSettingsBase;->-$$Nest$mupdateZenModeConfig(Lcom/android/settings/notification/SilentModeSettingsBase;Z)V

    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/SilentModeSettingsBase;

    invoke-virtual {v0}, Lcom/android/settings/notification/SilentModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/SilentModeSettingsBase;

    invoke-virtual {v0}, Lcom/android/settings/notification/SilentModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/SilentModeSettingsBase;

    invoke-virtual {v0}, Lcom/android/settings/notification/SilentModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
