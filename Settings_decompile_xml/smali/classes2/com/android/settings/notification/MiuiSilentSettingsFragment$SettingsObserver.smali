.class final Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiSilentSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/MiuiSilentSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    .line 481
    invoke-static {p1}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    .line 477
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_mode_config_etag"

    .line 478
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 495
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 496
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public register()V
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->access$000(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 486
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->access$100(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->access$200(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
