.class Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;
.super Landroid/database/ContentObserver;
.source "GestureShortcutSettingsSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GestureShortcutSettingsSelectFragment;->registerContentObserver(Landroidx/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

.field final synthetic val$preferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Landroid/os/Handler;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    iput-object p3, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;->val$preferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    .line 343
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-static {v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fgetmTitleKey(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "launch_smarthome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "long_press_power_key"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    const-string v1, "launch_voice_assistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-static {v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fgetmContentResolver(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "long_press_power_launch_xiaoai"

    .line 350
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 347
    invoke-static {v1, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v0, v3}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fputmLongPressPowerKeyLaunchXiaoai(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Z)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-static {v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fgetmLongPressPowerKeyLaunchXiaoai(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;->val$preferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_4

    .line 354
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MediaCheckboxPreference;

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-static {v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fgetmContentResolver(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "long_press_power_launch_smarthome"

    .line 367
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 364
    invoke-static {v1, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v0, v3}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fputmLongPresspowerKeyLaunchSmartHome(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Z)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-static {v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fgetmLongPresspowerKeyLaunchSmartHome(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;->val$preferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MediaCheckboxPreference;

    if-eqz v0, :cond_4

    .line 374
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 382
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
