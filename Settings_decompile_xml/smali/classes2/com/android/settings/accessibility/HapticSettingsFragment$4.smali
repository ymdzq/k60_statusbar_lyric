.class Lcom/android/settings/accessibility/HapticSettingsFragment$4;
.super Ljava/lang/Object;
.source "HapticSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/HapticSettingsFragment;->updateSystemPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$4;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$4;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isTallBackActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$4;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->-$$Nest$fgetmSharedPrefs(Lcom/android/settings/accessibility/HapticSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_accessibility_screen_reader_open"

    const/4 v2, 0x1

    .line 198
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$4;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->-$$Nest$fgetmAccessibilityScreenReader(Lcom/android/settings/accessibility/HapticSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
