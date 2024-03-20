.class Lcom/android/settings/search/KeySettingsUpdateHelper;
.super Lcom/android/settings/search/BaseSearchUpdateHelper;
.source "KeySettingsUpdateHelper.java"


# static fields
.field private static final AI_TOUCH_RESOURCE_GLOBAL:Ljava/lang/String; = "ai_button_title_global"

.field private static final LONG_PRESS_VOLUME_DOWN_RESOURCE:Ljava/lang/String; = "long_press_volume_down"

.field private static final SCREEN_BUTTON_HIDE_RESOURCE:Ljava/lang/String; = "status_bar_screen_button_key_force_immersive"

.field private static final SCREEN_MAX_ASPECT_RATIO_RESOURCE:Ljava/lang/String; = "screen_max_aspect_ratio_title"

.field private static final SWITCH_SCREEN_BUTTON_ORDER_RESOURCE:Ljava/lang/String; = "switch_screen_button_order"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchUpdateHelper;-><init>()V

    return-void
.end method

.method private static removeLongPressVolumeDown(Landroid/content/Context;)Z
    .locals 3

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->long_press_volume_down_action_value:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string/jumbo v1, "support_camera_quick_snap"

    const/4 v2, 0x0

    .line 51
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Street-snap-picture"

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Street-snap-movie"

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "key_trans_card_in_ese"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "public_transportation_shortcuts"

    .line 56
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method static update(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "window"

    .line 29
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "status_bar_screen_button_key_force_immersive"

    .line 32
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v0, "switch_screen_button_order"

    .line 33
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v0, "screen_max_aspect_ratio_title"

    .line 34
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    :cond_0
    invoke-static {p0}, Lcom/android/settings/search/KeySettingsUpdateHelper;->removeLongPressVolumeDown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "long_press_volume_down"

    .line 40
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 42
    :cond_1
    invoke-static {}, Lcom/android/settings/MiuiUtils;->shouldShowAiButton()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ai_button_title_global"

    .line 43
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
