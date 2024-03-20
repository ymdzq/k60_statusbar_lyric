.class Lcom/android/settings/MiuiSmartCoverSettingsFragment$1;
.super Ljava/lang/Object;
.source "MiuiSmartCoverSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSmartCoverSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->-$$Nest$fgetmSmartcoverModeEnable(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->-$$Nest$menableSmartcoverGroup(Lcom/android/settings/MiuiSmartCoverSettingsFragment;ZI)V

    .line 59
    check-cast p1, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;

    .line 60
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->-$$Nest$fgetmSupportTypes(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->-$$Nest$fgetmDisplayPref(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "persist.sys.smallwin_type"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->-$$Nest$fgetmSmartcoverModeEnable(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    return v1
.end method
