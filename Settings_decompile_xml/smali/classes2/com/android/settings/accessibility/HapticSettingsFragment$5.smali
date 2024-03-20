.class Lcom/android/settings/accessibility/HapticSettingsFragment$5;
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

    .line 221
    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$5;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$5;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isTallBackActive(Landroid/content/Context;)Z

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$5;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isRemoveScreenReaderVibrator(Landroid/content/Context;)Z

    move-result v1

    .line 226
    iget-object v2, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$5;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isHapticOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const-string v0, "com.miui.accessibility/com.miui.accessibility.haptic.HapticAccessibilityService"

    .line 228
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 229
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$5;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method
