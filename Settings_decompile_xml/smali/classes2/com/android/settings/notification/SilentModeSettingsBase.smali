.class public abstract Lcom/android/settings/notification/SilentModeSettingsBase;
.super Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;
.source "SilentModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;,
        Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;
    }
.end annotation


# static fields
.field protected static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;

.field protected mZenMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/SilentModeSettingsBase;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateZenMode(Lcom/android/settings/notification/SilentModeSettingsBase;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->updateZenMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateZenModeConfig(Lcom/android/settings/notification/SilentModeSettingsBase;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->updateZenModeConfig(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lcom/android/settings/notification/SilentModeSettingsBase$1;

    invoke-direct {v0}, Lcom/android/settings/notification/SilentModeSettingsBase$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SilentModeSettingsBase;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings/notification/SilentModeSettingsBase;Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver-IA;)V

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;

    return-void
.end method

.method private getZenModeRules()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    .line 159
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    .line 160
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private updateZenMode(Z)V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    iget v2, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 97
    iget v1, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mZenMode:I

    if-ne v0, v1, :cond_0

    return-void

    .line 100
    :cond_0
    iput v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mZenMode:I

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateZenMode mZenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mZenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;->onZenModeChanged()V

    :cond_1
    return-void
.end method

.method private updateZenModeConfig(Z)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/SilentModeUtils;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 110
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateZenModeConfig mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;->onZenModeConfigChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method protected maybeRefreshRules(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;->getZenModeRules()Ljava/util/Set;

    move-result-object p1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refreshed mRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;->onZenModeConfigChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->updateZenModeConfig(Z)V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->updateZenMode(Z)V

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loaded mConfig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 78
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, v0}, Lcom/android/settings/notification/SilentModeSettingsBase;->updateZenMode(Z)V

    .line 71
    invoke-direct {p0, v0}, Lcom/android/settings/notification/SilentModeSettingsBase;->updateZenModeConfig(Z)V

    .line 72
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeSettingsBase$SettingsObserver;->register()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p0, 0x102000a    # @android:id/list

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$attr;->paddingEnd:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimension(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    .line 63
    invoke-virtual {p0, p2, p2, p2, p1}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected abstract onZenModeChanged()V
.end method

.method protected abstract onZenModeConfigChanged()V
.end method

.method protected removeZenRule(Ljava/lang/String;)Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeZenRuleFail,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ZenModeSettings"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->maybeRefreshRules(ZZ)V

    return v0
.end method

.method protected sortedRules()[Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;
    .locals 5

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/android/settings/notification/SilentModeSettingsBase;->updateZenModeConfig(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 85
    new-instance v3, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;

    invoke-direct {v3}, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;-><init>()V

    .line 86
    iget-object v4, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;->id:Ljava/lang/String;

    .line 87
    iget-object v4, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v4, v3, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;->rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 88
    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    sget-object p0, Lcom/android/settings/notification/SilentModeSettingsBase;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v2
.end method
