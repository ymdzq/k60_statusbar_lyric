.class public Lcom/android/settings/accessibility/MiuiAccessibilityUtil;
.super Ljava/lang/Object;
.source "MiuiAccessibilityUtil.java"


# static fields
.field public static final ENVSOUNDRECOGNITION:Landroid/content/ComponentName;

.field public static final HAPTIC_A11Y_SERVICE_COMPONENTNAME:Landroid/content/ComponentName;

.field public static final HIDE_ACCESSIBILITY_SHORTCUT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static final LUCKYMONEY_COMPONENTNAME:Landroid/content/ComponentName;

.field public static final PERSONALASSISTANT_COMPONENTNAME:Landroid/content/ComponentName;

.field public static final VOICEACCESS_A11y_SERVICE_COMPONENTNAME:Landroid/content/ComponentName;

.field public static final VOICEASSIST_COMPONENTNAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "com.miui.voiceassist/com.miui.voiceassist.accessibility.VoiceAccessibilityService"

    .line 21
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->VOICEASSIST_COMPONENTNAME:Landroid/content/ComponentName;

    const-string v1, "com.miui.securitycenter/com.miui.luckymoney.service.LuckyMoneyAccessibilityService"

    .line 25
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    sput-object v1, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->LUCKYMONEY_COMPONENTNAME:Landroid/content/ComponentName;

    const-string v2, "com.miui.personalassistant/com.miui.voicesdk.VoiceAccessibilityService"

    .line 29
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    sput-object v2, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->PERSONALASSISTANT_COMPONENTNAME:Landroid/content/ComponentName;

    const-string v3, "com.miui.accessibility/com.miui.accessibility.voiceaccess.VoiceAccessAccessibilityService"

    .line 32
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->VOICEACCESS_A11y_SERVICE_COMPONENTNAME:Landroid/content/ComponentName;

    const-string v4, "com.miui.accessibility/com.miui.accessibility.haptic.HapticAccessibilityService"

    .line 35
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    sput-object v4, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->HAPTIC_A11Y_SERVICE_COMPONENTNAME:Landroid/content/ComponentName;

    const-string v5, "com.miui.accessibility/com.miui.accessibility.environment.sound.recognition.EnvSoundRecognitionService"

    .line 38
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    sput-object v5, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->ENVSOUNDRECOGNITION:Landroid/content/ComponentName;

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->HIDE_ACCESSIBILITY_SHORTCUT_LIST:Ljava/util/List;

    .line 43
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doShieldShortcut(Landroid/content/Context;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->HIDE_ACCESSIBILITY_SHORTCUT_LIST:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->doShieldShortcut(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static doShieldShortcut(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 68
    invoke-static {v2, v3, v4}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 70
    invoke-static {v3, v2, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
