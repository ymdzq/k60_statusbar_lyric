.class final Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AlarmContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dndmode/AlarmContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/dndmode/AlarmContentFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/dndmode/AlarmContentFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;->this$0:Lcom/android/settings/dndmode/AlarmContentFragment;

    .line 121
    invoke-static {p1}, Lcom/android/settings/dndmode/AlarmContentFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/dndmode/AlarmContentFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode_config_etag"

    .line 118
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 136
    iget-object p0, p0, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;->this$0:Lcom/android/settings/dndmode/AlarmContentFragment;

    invoke-static {p0}, Lcom/android/settings/dndmode/AlarmContentFragment;->-$$Nest$mupdateControls(Lcom/android/settings/dndmode/AlarmContentFragment;)V

    return-void
.end method

.method public register()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;->this$0:Lcom/android/settings/dndmode/AlarmContentFragment;

    invoke-static {v0}, Lcom/android/settings/dndmode/AlarmContentFragment;->access$000(Lcom/android/settings/dndmode/AlarmContentFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;->this$0:Lcom/android/settings/dndmode/AlarmContentFragment;

    invoke-static {v0}, Lcom/android/settings/dndmode/AlarmContentFragment;->access$100(Lcom/android/settings/dndmode/AlarmContentFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
