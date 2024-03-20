.class Lcom/android/settings/notification/MiuiSilentSettingsFragment$2;
.super Ljava/lang/Object;
.source "MiuiSilentSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiSilentSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 141
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-gt p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/provider/MiuiSettings$SilenceMode;->enableVIPMode(Landroid/content/Context;Z)V

    if-eqz p2, :cond_1

    .line 145
    iget-object p2, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object p2

    .line 146
    iput p1, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 147
    iput p1, p2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 148
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$mupdateControl(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    return v0
.end method
