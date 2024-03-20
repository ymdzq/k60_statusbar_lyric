.class public Lcom/android/settings/fuelgauge/HighPowerDetail;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "HighPowerDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mDefaultOn:Z

.field mIsEnabled:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mOptionOff:Landroid/widget/Checkable;

.field private mOptionOn:Landroid/widget/Checkable;

.field mPackageName:Ljava/lang/String;

.field mPackageUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createIgnoreOptimizationsContentView()Landroid/view/View;
    .locals 3

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 129
    sget v1, Lcom/android/settings/R$layout;->ignore_optimizations_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 130
    sget v1, Lcom/android/settings/R$id;->ignore_on:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    .line 131
    sget v1, Lcom/android/settings/R$id;->ignore_off:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 1

    .line 220
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v0, p1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getSummary(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 1

    .line 231
    invoke-virtual {p1, p2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isDefaultActiveApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    sget p1, Lcom/android/settings/R$string;->high_power_on:I

    goto :goto_1

    .line 235
    :cond_1
    sget p1, Lcom/android/settings/R$string;->high_power_off:I

    goto :goto_1

    .line 232
    :cond_2
    :goto_0
    sget p1, Lcom/android/settings/R$string;->high_power_system:I

    .line 230
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 1

    .line 224
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 p0, 0x2fd

    goto :goto_0

    :cond_0
    const/16 p0, 0x2fc

    .line 204
    :goto_0
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {v0, p2, p0, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;ILjava/lang/String;I)V
    .locals 3

    .line 239
    new-instance v0, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    .line 240
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "package"

    .line 241
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "uid"

    .line 242
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {v0, p0, p3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 252
    const-class p1, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "show error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateViews()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x21c

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 179
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 180
    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageUid:I

    invoke-virtual {p2, v0, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;I)Z

    move-result p2

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    .line 182
    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageUid:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->addApp(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->removeApp(Ljava/lang/String;)V

    .line 192
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 169
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->updateViews()V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 172
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->updateViews()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 76
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 79
    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageUid:I

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    .line 89
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "default_on"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mDefaultOn:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageUid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    if-eqz p1, :cond_2

    const-string v0, "key_enabled"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    :cond_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 113
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 118
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->createIgnoreOptimizationsContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    sget v0, Lcom/android/settings/R$string;->done:I

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 122
    :cond_0
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 0

    .line 154
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->updateViews()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 160
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_enabled"

    .line 161
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setup(Landroid/view/View;Z)Landroid/widget/Checkable;
    .locals 2

    const v0, 0x1020016    # @android:id/title

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 100
    sget v1, Lcom/android/settings/R$string;->ignore_optimizations_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$string;->ignore_optimizations_off:I

    .line 99
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1020010    # @android:id/summary

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 102
    sget v1, Lcom/android/settings/R$string;->ignore_optimizations_on_desc:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/settings/R$string;->ignore_optimizations_off_desc:I

    .line 101
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_2

    .line 105
    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    :cond_2
    check-cast p1, Landroid/widget/Checkable;

    return-object p1
.end method
