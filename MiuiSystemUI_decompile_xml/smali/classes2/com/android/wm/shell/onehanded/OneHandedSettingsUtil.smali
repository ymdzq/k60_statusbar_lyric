.class public final Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

.field public static final ONE_HANDED_TIMEOUT_LONG_IN_SECONDS:I = 0xc

.field public static final ONE_HANDED_TIMEOUT_MEDIUM_IN_SECONDS:I = 0x8

.field public static final ONE_HANDED_TIMEOUT_NEVER:I = 0x0

.field public static final ONE_HANDED_TIMEOUT_SHORT_IN_SECONDS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "OneHandedSettingsUtil"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/ContentResolver;I)V
    .locals 0

    .line 1
    const-string p2, "OneHandedSettingsUtil"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  isOneHandedModeEnable="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    .line 12
    move-result p2

    .line 15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 16
    const-string p2, "  isSwipeToNotificationEnabled="

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    .line 24
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 28
    const-string p2, "  oneHandedTimeOut="

    .line 31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;I)I

    .line 36
    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 40
    const-string p2, "  tapsAppToExit="

    .line 43
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsTapsAppToExit(Landroid/content/ContentResolver;I)Z

    .line 48
    move-result p2

    .line 51
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 52
    const-string p2, "  shortcutActivated="

    .line 55
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getOneHandedModeActivated(Landroid/content/ContentResolver;I)Z

    .line 60
    move-result p2

    .line 63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 64
    const-string p2, "  tutorialShownCounts="

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getTutorialShownCounts(Landroid/content/ContentResolver;I)I

    .line 72
    move-result p0

    .line 75
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 76
    return-void
    .line 79
.end method

.method public getOneHandedModeActivated(Landroid/content/ContentResolver;I)Z
    .locals 1

    .line 1
    const-string p0, "one_handed_mode_activated"

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 5
    move-result p0

    .line 8
    const/4 p1, 0x1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    move v0, p1

    .line 12
    :cond_0
    return v0
    .line 13
.end method

.method public getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z
    .locals 1

    .line 1
    const-string p0, "one_handed_mode_enabled"

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 5
    move-result p0

    .line 8
    const/4 p1, 0x1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    move v0, p1

    .line 12
    :cond_0
    return v0
    .line 13
.end method

.method public getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;I)I
    .locals 1

    .line 1
    const-string p0, "one_handed_mode_timeout"

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "swipe_bottom_to_notification_enabled"

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 6
    move-result p0

    .line 9
    const/4 p1, 0x1

    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    move v0, p1

    .line 13
    :cond_0
    return v0
    .line 14
.end method

.method public getSettingsTapsAppToExit(Landroid/content/ContentResolver;I)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "taps_app_to_exit"

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 6
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    :cond_0
    return v0
    .line 13
.end method

.method public getShortcutEnabled(Landroid/content/ContentResolver;I)Z
    .locals 2

    .line 1
    const-string p0, "accessibility_button_targets"

    .line 2
    invoke-static {p1, p0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    sget-object v0, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    return v1

    .line 23
    :cond_0
    const-string p0, "accessibility_shortcut_target_service"

    .line 24
    invoke-static {p1, p0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    return v1

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return p0
    .line 46
.end method

.method public getTransitionDuration(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const p1, 0x7f0b0041    # @integer/config_one_handed_translate_animation_duration '600'

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public getTranslationFraction(Landroid/content/Context;)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const p1, 0x7f090005    # @fraction/config_one_handed_offset '40.0%'

    .line 6
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public getTutorialShownCounts(Landroid/content/ContentResolver;I)I
    .locals 1

    .line 1
    const-string p0, "one_handed_tutorial_show_count"

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p0, p1, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 11
    :cond_0
    return-object p0
    .line 14
.end method

.method public setOneHandedModeActivated(Landroid/content/ContentResolver;II)Z
    .locals 0

    .line 1
    const-string p0, "one_handed_mode_activated"

    .line 2
    invoke-static {p1, p0, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public setOneHandedModeEnabled(Landroid/content/ContentResolver;II)Z
    .locals 0

    .line 1
    const-string p0, "one_handed_mode_enabled"

    .line 2
    invoke-static {p1, p0, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public setTutorialShownCounts(Landroid/content/ContentResolver;II)Z
    .locals 0

    .line 1
    const-string p0, "one_handed_tutorial_show_count"

    .line 2
    invoke-static {p1, p0, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public unregisterSettingsKeyObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    :cond_0
    return-void
    .line 7
.end method
