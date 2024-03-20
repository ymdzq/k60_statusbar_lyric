.class Lcom/android/settings/search/DisplayUpdateHelper;
.super Lcom/android/settings/search/BaseSearchUpdateHelper;
.source "DisplayUpdateHelper.java"


# static fields
.field private static final AUTOMATIC_BRIGHTNESS_RESOURCE:Ljava/lang/String; = "automatic_brightness"

.field private static final DOZE_RESOURCE:Ljava/lang/String; = "doze_title"

.field private static final INFINITY_DISPLAY_RESOURCE:Ljava/lang/String; = "infinity_display_title"

.field private static final LIFT_TO_WAKE_RESOURCE:Ljava/lang/String; = "lift_to_wake_title"

.field private static final NOTIFICATION_PULSE_RESOURCE:Ljava/lang/String; = "notification_pulse_title"

.field private static final SCREEN_COLOR_AND_OPTIMIZE_RESOURCE:Ljava/lang/String; = "screen_color_and_optimize"

.field private static final SCREEN_COLOR_AND_TEMPERATURE_RESOURCE:Ljava/lang/String; = "screen_color_temperature_and_saturation"

.field private static final SCREEN_EFFECT_RESOURCE:Ljava/lang/String; = "screen_effect"

.field private static final SCREEN_MONOCHROME_MODE_GLOBAL_RESOURCE:Ljava/lang/String; = "screen_monochrome_mode_global_title"

.field private static final SCREEN_MONOCHROME_MODE_LOCAL_RESOURCE:Ljava/lang/String; = "screen_monochrome_mode_local_title"

.field private static final SCREEN_MONOCHROME_MODE_RESOURCE:Ljava/lang/String; = "screen_monochrome_mode_title"

.field private static final SCREEN_PAPER_MODE_RESOURCE:Ljava/lang/String; = "screen_paper_mode_title"

.field private static final TITLE_FONT_CURRENT2_RESOURCE:Ljava/lang/String; = "title_font_current2"

.field private static final TITLE_FONT_SIZE_RESOURCE:Ljava/lang/String; = "title_font_size"

.field private static final TITLE_LAYOUT_CURRENT2_RESOURCE:Ljava/lang/String; = "title_layout_current2"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchUpdateHelper;-><init>()V

    return-void
.end method

.method static update(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "screen_effect_supported"

    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "screen_effect"

    .line 42
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "support_screen_effect"

    .line 44
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "screen_color_and_optimize"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "support_screen_optimize"

    .line 45
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "screen_color_temperature_and_saturation"

    .line 46
    invoke-static {p0, p1, v2, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updatePath(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, v2}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->screen_color_temperature_and_saturation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    .line 48
    invoke-static {p0, p1, v2, v4, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateItemData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p0, p1, v2}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 58
    :cond_2
    sget-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperModeSupported:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "screen_paper_mode_title"

    .line 59
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 62
    :cond_3
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    const-string/jumbo v0, "screen_monochrome_mode_title"

    .line 64
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v0, "screen_monochrome_mode_global_title"

    .line 65
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v0, "screen_monochrome_mode_local_title"

    .line 66
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_4
    const-string v0, "lift_to_wake_title"

    .line 76
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 82
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5

    const-string v0, "debug.doze.component"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 83
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x104028e    # @android:string/config_sharedConnectivityServicePackage

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 88
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 89
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_8

    const-string v0, "doze_title"

    .line 95
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v0, "support_led_light"

    .line 101
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "notification_pulse_title"

    .line 102
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 105
    :cond_9
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "title_font_current2"

    .line 106
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v0, "title_layout_current2"

    .line 107
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string/jumbo v0, "title_font_size"

    .line 109
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_3
    const-string/jumbo p0, "window"

    .line 113
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 112
    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    return-void
.end method
