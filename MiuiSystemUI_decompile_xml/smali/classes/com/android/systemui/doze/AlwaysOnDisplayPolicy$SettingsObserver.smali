.class public final Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    const-string p1, "always_on_display_constants"

    .line 7
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 2
    return-void
    .line 5
.end method

.method public final update(Landroid/net/Uri;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    .line 4
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 12
    iget-object p1, p1, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v0

    .line 27
    const-string v1, "always_on_display_constants"

    .line 28
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 34
    iget-object v1, v1, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 36
    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 41
    :catch_0
    const-string v0, "AlwaysOnDisplayPolicy"

    .line 42
    const-string v1, "Bad AOD constants"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 49
    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 51
    const-string v2, "prox_screen_off_delay"

    .line 53
    const-wide/16 v3, 0x2710

    .line 55
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 57
    move-result-wide v1

    .line 60
    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    .line 61
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 63
    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 65
    const-string v2, "prox_cooldown_trigger"

    .line 67
    const-wide/16 v3, 0x7d0

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 77
    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 79
    const-string v2, "prox_cooldown_period"

    .line 81
    const-wide/16 v3, 0x1388

    .line 83
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 91
    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 93
    const-string/jumbo v2, "wallpaper_fade_out_duration"

    .line 95
    const-wide/16 v3, 0x190

    .line 98
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 100
    move-result-wide v1

    .line 103
    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    .line 104
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 106
    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 108
    const-string/jumbo v2, "wallpaper_visibility_timeout"

    .line 110
    const-wide/32 v3, 0xea60

    .line 113
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 116
    move-result-wide v1

    .line 119
    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperVisibilityDuration:J

    .line 120
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 122
    const v1, 0x10e00f1    # @android:integer/config_shortPressOnPowerBehavior

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 127
    move-result v1

    .line 130
    iput v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->defaultDozeBrightness:I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 133
    const v1, 0x10e00f0    # @android:integer/config_selected_udfps_touch_detection

    .line 135
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 138
    move-result v1

    .line 141
    iput v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimBrightness:I

    .line 142
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 144
    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 146
    const v2, 0x7f03004f    # @array/config_doze_brightness_sensor_to_brightness

    .line 148
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 151
    move-result-object v2

    .line 154
    const-string/jumbo v3, "screen_brightness_array"

    .line 155
    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    .line 158
    move-result-object v1

    .line 161
    iput-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    .line 162
    iget-object p0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 166
    const v1, 0x7f030050    # @array/config_doze_brightness_sensor_to_scrim_opacity

    .line 168
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 171
    move-result-object p1

    .line 174
    const-string v1, "dimming_scrim_array"

    .line 175
    invoke-virtual {v0, v1, p1}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    .line 177
    move-result-object p1

    .line 180
    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    .line 181
    :cond_1
    return-void
    .line 183
.end method
