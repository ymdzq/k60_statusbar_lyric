.class Lcom/android/settings/notification/SilentModeSettingsBase$1;
.super Ljava/lang/Object;
.source "SilentModeSettingsBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private key(Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;)Ljava/lang/String;
    .locals 1

    .line 206
    iget-object p0, p1, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;->rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 207
    iget-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 210
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compare(Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;)I
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase$1;->key(Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/settings/notification/SilentModeSettingsBase$1;->key(Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 198
    check-cast p1, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;

    check-cast p2, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/SilentModeSettingsBase$1;->compare(Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;)I

    move-result p0

    return p0
.end method
