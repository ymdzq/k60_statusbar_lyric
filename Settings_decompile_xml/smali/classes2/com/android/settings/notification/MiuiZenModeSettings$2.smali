.class Lcom/android/settings/notification/MiuiZenModeSettings$2;
.super Ljava/lang/Object;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 140
    check-cast p2, Ljava/lang/Boolean;

    .line 141
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p1}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setAutoTimerOfQuietMode(Landroid/content/Context;Z)V

    .line 142
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p1}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmConfig(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    .line 145
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 146
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 147
    iget-object p2, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p2}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p1}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$mshowTimeLabel(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    .line 150
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->startAutoTime(Landroid/content/Context;)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p1}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$mhideTimeLabel(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    .line 153
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->cancelAutoTime(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
