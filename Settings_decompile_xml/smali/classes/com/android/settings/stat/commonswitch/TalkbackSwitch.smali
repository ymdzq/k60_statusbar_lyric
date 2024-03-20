.class public Lcom/android/settings/stat/commonswitch/TalkbackSwitch;
.super Lcom/android/settings/stat/commonswitch/SwitchStat;
.source "TalkbackSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;-><init>()V

    return-void
.end method

.method public static isTalkbackEnable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method getInfo(Landroid/content/Context;)Lcom/android/settings/stat/commonswitch/SwitchStat$Info;
    .locals 2

    .line 12
    new-instance v0, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string/jumbo v1, "talkback_is_on"

    invoke-static {p1}, Lcom/android/settings/stat/commonswitch/TalkbackSwitch;->isTalkbackEnable(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    return-object v0
.end method
