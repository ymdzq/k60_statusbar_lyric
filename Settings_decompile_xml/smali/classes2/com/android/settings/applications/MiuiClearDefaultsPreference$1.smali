.class Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;
.super Ljava/lang/Object;
.source "MiuiClearDefaultsPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/MiuiClearDefaultsPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 111
    iget-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmAppsControlDisallowedBySystem(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    .line 113
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {p0}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 112
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return v0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmHasDefault(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 117
    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->auto_launch_disable_text:I

    invoke-static {p0, p1, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return v0

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmUsbManager(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 122
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 123
    iget-object v2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {v2}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmPm(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {v3}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmPackageName(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {v3}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmPackageName(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settingslib/applications/AppUtils;->isDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {v2}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmPm(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 128
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {v2}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmUsbManager(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {v3}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmPackageName(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "MiuiClearDefaultsPreference"

    const-string/jumbo v3, "mUsbManager.clearDefaults"

    .line 130
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmAppWidgetManager(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {v2}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$fgetmPackageName(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 133
    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {p0}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$mresetLaunchDefaultsUi(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)V

    :cond_3
    return v0
.end method
