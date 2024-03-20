.class public Lcom/android/settings/special/ExternalRamFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ExternalRamFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mRamMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRange:[F

.field private mSelectedKey:Ljava/lang/String;

.field private mShowMultiLevel:Z


# direct methods
.method public static synthetic $r8$lambda$3AI0lJ9pxqiETVjs06KAVdtxbkA(Lcom/android/settings/special/ExternalRamFragment;Lmiuix/preference/RadioButtonPreference;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/special/ExternalRamFragment;->lambda$buildAlertDialog$1(Lmiuix/preference/RadioButtonPreference;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CdzhsN_YgVhMPNe-6ONf-NeOSC4(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/special/ExternalRamFragment;->lambda$buildAlertDialog$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zTt8fCtH9sSfVT503rB0zK0Iosc(Lcom/android/settings/special/ExternalRamFragment;Lmiuix/preference/RadioButtonPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/special/ExternalRamFragment;->lambda$buildAlertDialog$2(Lmiuix/preference/RadioButtonPreference;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private buildAlertDialog(Lmiuix/preference/RadioButtonPreference;)V
    .locals 6

    .line 135
    sget v0, Lcom/android/settings/R$string;->external_ram_dialog_title:I

    .line 136
    sget v1, Lcom/android/settings/R$string;->external_ram_dialog_message:I

    .line 137
    sget v2, Lcom/android/settings/R$string;->external_ram_dialog_btn_ok:I

    .line 138
    sget v3, Lcom/android/settings/R$string;->external_ram_dialog_btn_cancel:I

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 140
    new-instance v5, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v5, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v5, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 143
    new-instance v0, Lcom/android/settings/special/ExternalRamFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v4}, Lcom/android/settings/special/ExternalRamFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/special/ExternalRamFragment;Lmiuix/preference/RadioButtonPreference;Landroid/content/Context;)V

    invoke-virtual {v5, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 162
    new-instance v0, Lcom/android/settings/special/ExternalRamFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/special/ExternalRamFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/special/ExternalRamFragment;Lmiuix/preference/RadioButtonPreference;)V

    invoke-virtual {v5, v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 167
    invoke-virtual {v5, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initPreferenceState()V
    .locals 17

    move-object/from16 v0, p0

    .line 61
    iget-boolean v1, v0, Lcom/android/settings/special/ExternalRamFragment;->mShowMultiLevel:Z

    if-nez v1, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/settings/special/ExternalRamFragment;->mRamMapping:Ljava/util/Map;

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/android/settings/special/ExternalRamController;->isChecked(Landroid/content/Context;)Z

    move-result v3

    .line 68
    invoke-static {v2}, Lcom/android/settings/special/ExternalRamController;->getBdSize(Landroid/content/Context;)F

    move-result v4

    .line 70
    iget-object v5, v0, Lcom/android/settings/special/ExternalRamFragment;->mRange:[F

    array-length v6, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_0
    if-ge v9, v6, :cond_2

    aget v11, v5, v9

    .line 71
    new-instance v12, Lcom/android/settings/widget/ExternalRamRadioButtonPreference;

    invoke-direct {v12, v2}, Lcom/android/settings/widget/ExternalRamRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "key_external_ram_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v10, 0x1

    .line 73
    invoke-virtual {v12, v10}, Landroidx/preference/Preference;->setOrder(I)V

    .line 74
    iget-object v10, v0, Lcom/android/settings/special/ExternalRamFragment;->mRamMapping:Ljava/util/Map;

    float-to-long v7, v11

    const-wide/16 v15, 0x400

    mul-long/2addr v7, v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v10, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {v2, v11}, Lcom/android/settings/special/ExternalRamController;->getBdSizeString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-virtual {v12, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v12, v13}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    cmpl-float v7, v4, v11

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 78
    :goto_1
    invoke-virtual {v12, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 79
    invoke-virtual {v12, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    invoke-virtual {v1, v12}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v9, v9, 0x1

    move v10, v14

    goto :goto_0

    :cond_2
    const-string v2, "key_close_external_ram"

    .line 82
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/RadioButtonPreference;

    .line 83
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    .line 84
    :goto_3
    invoke-virtual {v1, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private static synthetic lambda$buildAlertDialog$0(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 154
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :goto_0
    invoke-static {p0}, Lcom/android/settings/special/ExternalRamController;->rebootPhone(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$buildAlertDialog$1(Lmiuix/preference/RadioButtonPreference;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, -0x1

    if-ne p4, p3, :cond_1

    .line 145
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p3

    iget-object p4, p0, Lcom/android/settings/special/ExternalRamFragment;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lmiuix/preference/RadioButtonPreference;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 147
    invoke-virtual {p3, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const/4 p3, 0x1

    .line 149
    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 150
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/special/ExternalRamFragment;->mSelectedKey:Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/settings/special/ExternalRamFragment;->updateExmState(Ljava/lang/String;)V

    .line 152
    new-instance p0, Lcom/android/settings/special/ExternalRamFragment$$ExternalSyntheticLambda2;

    invoke-direct {p0, p2}, Lcom/android/settings/special/ExternalRamFragment$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method private synthetic lambda$buildAlertDialog$2(Lmiuix/preference/RadioButtonPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, -0x2

    if-ne p3, p2, :cond_0

    .line 164
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/special/ExternalRamFragment;->updateExmState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateExmState(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key_close_external_ram"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 172
    invoke-static {v1}, Lcom/android/settings/special/ExternalRamController;->setChecked(Z)V

    if-nez v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/android/settings/special/ExternalRamFragment;->mRamMapping:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/settings/special/ExternalRamController;->setBdSize(J)Z

    :cond_0
    return-void
.end method

.method private updatePreferenceState()V
    .locals 12

    .line 88
    iget-boolean v0, p0, Lcom/android/settings/special/ExternalRamFragment;->mShowMultiLevel:Z

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 93
    invoke-static {v0}, Lcom/android/settings/special/ExternalRamController;->isChecked(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 94
    :goto_0
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 95
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    .line 96
    instance-of v7, v6, Lmiuix/preference/RadioButtonPreference;

    if-nez v7, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "key_close_external_ram"

    .line 100
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 101
    iget-object v8, p0, Lcom/android/settings/special/ExternalRamFragment;->mRange:[F

    add-int/lit8 v9, v5, 0x1

    aget v5, v8, v5

    const/high16 v8, 0x44800000    # 1024.0f

    mul-float/2addr v5, v8

    float-to-long v10, v5

    .line 102
    invoke-static {v10, v11, v2, v0}, Lcom/android/settings/special/ExternalRamController;->isSupportExternalRam(JZLandroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 103
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initPreferenceState: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setEnabled false"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "ExternalRamFragment"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v5, v9

    .line 107
    :cond_3
    check-cast v6, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v6}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v7, p0, Lcom/android/settings/special/ExternalRamFragment;->mSelectedKey:Ljava/lang/String;

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateRamPreferenceState(Landroidx/preference/Preference;)V
    .locals 0

    .line 131
    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/special/ExternalRamFragment;->buildAlertDialog(Lmiuix/preference/RadioButtonPreference;)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "ExternalRamFragment"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/settings/special/ExternalRamController;->getExternalAdjustableRange()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/special/ExternalRamFragment;->mRange:[F

    .line 39
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSupportMultiLevelExtm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/special/ExternalRamFragment;->mRange:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/special/ExternalRamFragment;->mShowMultiLevel:Z

    if-eqz v0, :cond_1

    .line 40
    sget p0, Lcom/android/settings/R$xml;->external_ram_settings_global:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/android/settings/R$xml;->external_ram_settings:I

    :goto_1
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/special/ExternalRamFragment;->initPreferenceState()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 113
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/special/ExternalRamFragment;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v1

    .line 117
    :cond_0
    move-object v0, p1

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 118
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "key_close_external_ram"

    .line 120
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/special/ExternalRamFragment;->mRamMapping:Ljava/util/Map;

    .line 121
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3}, Lcom/android/settings/special/ExternalRamController;->isChecked(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v4, v5, v0, v3}, Lcom/android/settings/special/ExternalRamController;->isSupportExternalRam(JZLandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->external_ram_toast:I

    invoke-static {p0, p1, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return v1

    .line 126
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/special/ExternalRamFragment;->updateRamPreferenceState(Landroidx/preference/Preference;)V

    return v1
.end method

.method public onStart()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/special/ExternalRamFragment;->updatePreferenceState()V

    return-void
.end method
