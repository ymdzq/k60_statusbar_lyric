.class Lcom/android/settings/WakeupXiaoaiSettingsFragment$1;
.super Landroid/database/ContentObserver;
.source "WakeupXiaoaiSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WakeupXiaoaiSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

.field final synthetic val$gestureCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Landroid/os/Handler;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$1;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    iput-object p3, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$1;->val$gestureCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$1;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 158
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "long_press_power_launch_xiaoai"

    const/4 v4, 0x0

    .line 155
    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v4, v2

    :cond_0
    invoke-static {v0, v4}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fputmLongPressPowerKeyLaunchXiaoai(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$1;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmLongPressPowerKeyLaunchXiaoai(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$1;->val$gestureCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    const-string v1, "long_press_power_key"

    .line 162
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 168
    :cond_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
