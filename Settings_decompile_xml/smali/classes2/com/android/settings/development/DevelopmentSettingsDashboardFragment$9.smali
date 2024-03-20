.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;
.super Ljava/lang/Object;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->hideMiuiExperienceOtimization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 511
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetmiuiExperienceOptimization(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetmiuiExperienceOptimizationParent(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroidx/preference/PreferenceGroup;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetclickCount(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 515
    sget-boolean p1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    xor-int/lit8 p1, p1, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 517
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetmiuiExperienceOptimization(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 518
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetmiuiExperienceOptimizationParent(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroidx/preference/PreferenceGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetmiuiExperienceOptimization(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 520
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 521
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetfirstTime(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long p1, v3, v5

    if-gtz p1, :cond_2

    .line 522
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetclickCount(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fputclickCount(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;I)V

    goto :goto_0

    .line 524
    :cond_2
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fputclickCount(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;I)V

    .line 526
    :goto_0
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0, v1, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fputfirstTime(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;J)V

    :cond_3
    :goto_1
    return v0
.end method
