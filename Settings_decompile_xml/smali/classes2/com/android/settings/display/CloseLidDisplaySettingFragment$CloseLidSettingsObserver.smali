.class Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CloseLidDisplaySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/CloseLidDisplaySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseLidSettingsObserver"
.end annotation


# instance fields
.field private final CLOSE_LID_SETTINGS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)V
    .locals 1

    .line 149
    iput-object p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "close_lid_display_setting"

    .line 147
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->CLOSE_LID_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {p1}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$mgetCloseLidDisplaySetting(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)I

    move-result p1

    .line 163
    iget-object p2, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {p2}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fgetmCloseLidDisplayVideoPreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Lcom/android/settings/widget/CloseLidDisplayVideoPreference;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {p2}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fgetmCurrentCloseLidDisplaySetting(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)I

    move-result p2

    if-eq p2, p1, :cond_2

    const/4 p2, 0x3

    if-ltz p1, :cond_1

    if-ge p1, p2, :cond_1

    .line 168
    iget-object p2, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {p2}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fgetmCloseLidDisplayVideoPreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Lcom/android/settings/widget/CloseLidDisplayVideoPreference;

    move-result-object p2

    invoke-static {}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$sfgetVIDEO_ID()[I

    move-result-object v0

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;->changeVideoView(I)V

    .line 170
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {p2, p1}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$mgetPreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;I)Lmiuix/preference/RadioButtonPreference;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 172
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    .line 176
    iget-object p2, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {p2}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fgetmLockScreenNowPreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 177
    iget-object p2, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {p2}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fgetmSwipeUpToContinuePreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 178
    iget-object p2, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {p2}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fgetmKeepScreenOnPreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 183
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {p0, p1}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fputmCurrentCloseLidDisplaySetting(Lcom/android/settings/display/CloseLidDisplaySettingFragment;I)V

    nop

    :cond_2
    return-void
.end method

.method public startObserving()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {v0}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->CLOSE_LID_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->this$0:Lcom/android/settings/display/CloseLidDisplaySettingFragment;

    invoke-static {v0}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
