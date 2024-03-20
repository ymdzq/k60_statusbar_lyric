.class public Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiSecurityFingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSecurityFingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiSecurityFingerprintSettingsFragment"
.end annotation


# instance fields
.field private mFingerlistIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintHardwareDetected:Z

.field private mFingerprintId:Ljava/lang/String;

.field private mFingerprintList:Landroidx/preference/PreferenceCategory;

.field private mMainFingerprintCategory:Landroidx/preference/PreferenceCategory;

.field private mSecondFingerlistIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$maddFingerprint(Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->addFingerprint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFingerprintDetails(Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->showFingerprintDetails(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerlistIds:Ljava/util/List;

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintHardwareDetected:Z

    return-void
.end method

.method private addFingerprint()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerlistIds:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 113
    sget v0, Lcom/android/settings/R$string;->max_fingerprint_number_reached:I

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->showInformationDialog(I)V

    return-void

    .line 117
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.securityspace.ui.activity.SetFingerPrintActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isFromSettings"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private createNewPassword()V
    .locals 3

    .line 327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.android.settings.MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment"

    const/16 v2, 0x6a

    .line 328
    invoke-virtual {p0, p0, v1, v2, v0}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private generateFingerprintName()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    :try_start_0
    new-array v1, v0, [Z

    .line 235
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerlistIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->parseFingerprintNameIndex(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    if-gt v3, v0, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 238
    aput-boolean v4, v1, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 243
    aget-boolean v3, v1, v2

    if-nez v3, :cond_2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/settings/R$string;->fingerprint_list_title:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 248
    const-class v0, Lcom/android/settings/NewFingerprintActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleSecondFringprintIds()V
    .locals 2

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mSecondFingerlistIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintId:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mSecondFingerlistIds:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mSecondFingerlistIds:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mSecondFingerlistIds:Ljava/util/List;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private parseFingerprintNameIndex(Ljava/lang/String;)I
    .locals 0

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/utils/FingerprintUtils;->getFingerprintName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 p0, p0, -0x30

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private processResult(II)V
    .locals 1

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->createNewPassword()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showFingerprintDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 138
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_fingerprint_key"

    .line 139
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_fingerprint_title"

    .line 140
    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-class p1, Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget v5, Lcom/android/settings/R$string;->fingerprint_list_title:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method private showInformationDialog(I)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->showInformationDialog(Ljava/lang/String;)V

    return-void
.end method

.method private showInformationDialog(Ljava/lang/String;)V
    .locals 1

    .line 130
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1010355    # @android:attr/alertDialogIcon

    .line 131
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->information_dialog_button_text:I

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private sortFingerprintList()V
    .locals 5

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerlistIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/utils/FingerprintUtils;->getFingerprintCreateDate(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 150
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerlistIds:Ljava/util/List;

    new-instance v2, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment$1;-><init>(Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;Ljava/util/Map;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateFingerprintList()V
    .locals 6

    .line 166
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerlistIds:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mSecondFingerlistIds:Ljava/util/List;

    .line 169
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->handleSecondFringprintIds()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->sortFingerprintList()V

    .line 171
    new-instance v0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment$2;-><init>(Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 188
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mMainFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v1, 0x0

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerlistIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerlistIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    new-instance v3, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/settings/utils/FingerprintUtils;->getFingerprintName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->generateFingerprintName()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v2, v4}, Lcom/android/settings/utils/FingerprintUtils;->setFingerprintName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    iget-object v4, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mSecondFingerlistIds:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mMainFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_2
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v2, "add_fingerprint"

    .line 212
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 213
    sget v2, Lcom/android/settings/R$string;->add_fingerprint_text:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 214
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private updatePreferencesByPasswordAndFingerprintState()V
    .locals 2

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintHardwareDetected:Z

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 105
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mMainFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->updateFingerprintList()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 76
    const-class p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 304
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->processResult(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 279
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "fingerprint_id"

    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintId:Ljava/lang/String;

    .line 288
    :cond_0
    new-instance p1, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 289
    invoke-virtual {p1}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintHardwareDetected:Z

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v2, "miui_security_fragment_result"

    .line 310
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 311
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->processResult(II)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 0

    .line 295
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 297
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 94
    :cond_1
    sget v0, Lcom/android/settings/R$xml;->security_settings_unlock_fingerprint:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "fingerprint_list"

    .line 96
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mFingerprintList:Landroidx/preference/PreferenceCategory;

    const-string v0, "fingerprint_list_main"

    .line 97
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->mMainFingerprintCategory:Landroidx/preference/PreferenceCategory;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;->updatePreferencesByPasswordAndFingerprintState()V

    return-void
.end method
