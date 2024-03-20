.class public final Lcom/android/settings/accessibility/accessibilitymenu/utils/A11yMenuUtils;
.super Ljava/lang/Object;
.source "A11yMenuUtils.java"


# static fields
.field private static final GOOGLE_ASSISTANT_RESOURCE:[I

.field private static final SHORTCUT_RESOURCE:[[I

.field private static final VOICE_ASSIST_RESOURCE:[I

.field private static final XIAOAI_ASSISTANT_RESOURCE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 19
    sget v0, Lcom/android/settings/R$drawable;->button_accessibility_menu_google_assistant_selector:I

    sget v1, Lcom/android/settings/R$string;->google_assistant_label:I

    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/accessibilitymenu/utils/A11yMenuUtils;->GOOGLE_ASSISTANT_RESOURCE:[I

    .line 20
    sget v1, Lcom/android/settings/R$drawable;->button_accessibility_menu_assistant_selector:I

    sget v2, Lcom/android/settings/R$string;->voice_assist:I

    filled-new-array {v1, v2, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/android/settings/accessibility/accessibilitymenu/utils/A11yMenuUtils;->XIAOAI_ASSISTANT_RESOURCE:[I

    .line 21
    sget-boolean v2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v2, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    sput-object v3, Lcom/android/settings/accessibility/accessibilitymenu/utils/A11yMenuUtils;->VOICE_ASSIST_RESOURCE:[I

    .line 22
    sget v0, Lcom/android/settings/R$drawable;->button_accessibility_menu_settings_accessibility_selector:I

    sget v1, Lcom/android/settings/R$string;->a11y_settings_label:I

    filled-new-array {v0, v1, v1}, [I

    move-result-object v4

    sget v0, Lcom/android/settings/R$drawable;->button_accessibility_menu_power_settings_selector:I

    sget v1, Lcom/android/settings/R$string;->power_label:I

    filled-new-array {v0, v1, v1}, [I

    move-result-object v5

    sget v0, Lcom/android/settings/R$drawable;->button_accessibility_menu_quick_settings_selector:I

    sget v1, Lcom/android/settings/R$string;->quick_settings_label:I

    filled-new-array {v0, v1, v1}, [I

    move-result-object v6

    sget v0, Lcom/android/settings/R$drawable;->button_accessibility_menu_notifications_selector:I

    sget v1, Lcom/android/settings/R$string;->notifications_label:I

    filled-new-array {v0, v1, v1}, [I

    move-result-object v7

    sget v0, Lcom/android/settings/R$drawable;->button_accessibility_menu_screenshot_selector:I

    sget v1, Lcom/android/settings/R$string;->screenshot_label:I

    filled-new-array {v0, v1, v1}, [I

    move-result-object v8

    sget v0, Lcom/android/settings/R$drawable;->button_accessibility_menu_lock_settings_selector:I

    sget v1, Lcom/android/settings/R$string;->lockscreen_label:I

    filled-new-array {v0, v1, v1}, [I

    move-result-object v9

    sget v0, Lcom/android/settings/R$drawable;->button_accessibility_menu_view_carousel_selector:I

    sget v1, Lcom/android/settings/R$string;->recent_apps_label:I

    filled-new-array {v0, v1, v1}, [I

    move-result-object v10

    sget v0, Lcom/android/settings/R$drawable;->button_accessibility_menu_volume_settings_selector:I

    sget v1, Lcom/android/settings/R$string;->volume_label:I

    filled-new-array {v0, v1, v1}, [I

    move-result-object v11

    filled-new-array/range {v3 .. v11}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/accessibilitymenu/utils/A11yMenuUtils;->SHORTCUT_RESOURCE:[[I

    return-void
.end method

.method public static setShortcutResByShortcutId(ILcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/android/settings/accessibility/accessibilitymenu/utils/A11yMenuUtils;->SHORTCUT_RESOURCE:[[I

    .line 37
    aget-object p0, v0, p0

    const/4 v0, 0x0

    aget v0, p0, v0

    iput v0, p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->imageSrc:I

    const/4 v0, 0x1

    .line 38
    aget v0, p0, v0

    iput v0, p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->imgContentDescription:I

    const/4 v0, 0x2

    .line 39
    aget p0, p0, v0

    iput p0, p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->labelText:I

    return-void
.end method
