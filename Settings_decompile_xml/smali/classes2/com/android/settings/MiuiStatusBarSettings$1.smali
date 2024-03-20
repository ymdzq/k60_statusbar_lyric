.class Lcom/android/settings/MiuiStatusBarSettings$1;
.super Ljava/lang/Object;
.source "MiuiStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiStatusBarSettings;->setupManageNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiStatusBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiStatusBarSettings;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$1;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$1;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->getPreferManageEntranceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings$1;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
