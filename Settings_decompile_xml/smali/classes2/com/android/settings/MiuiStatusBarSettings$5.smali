.class Lcom/android/settings/MiuiStatusBarSettings$5;
.super Ljava/lang/Object;
.source "MiuiStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiStatusBarSettings;->setupUseControlPanel()V
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

    .line 257
    iput-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$5;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 260
    iget-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$5;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/utils/StatusBarUtils;->setUseControlPanel(Landroid/content/Context;I)V

    .line 261
    iget-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$5;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiStatusBarSettings;->-$$Nest$fgetmExpandableUnderLockscreen(Lcom/android/settings/MiuiStatusBarSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 262
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings$5;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiStatusBarSettings;->-$$Nest$fgetmSmartHomePreferenceManager(Lcom/android/settings/MiuiStatusBarSettings;)Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method
