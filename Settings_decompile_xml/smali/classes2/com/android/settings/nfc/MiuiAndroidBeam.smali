.class public Lcom/android/settings/nfc/MiuiAndroidBeam;
.super Lcom/android/settings/BaseFragment;
.source "MiuiAndroidBeam.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAndroidBeamSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "no_outgoing_beam"

    .line 67
    invoke-static {p3, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 70
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 73
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 74
    invoke-virtual {p1, v1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    .line 76
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 78
    :cond_0
    sget p3, Lcom/android/settings/R$layout;->android_beam:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mView:Landroid/view/View;

    .line 79
    sget p2, Lcom/android/settings/R$id;->android_beam_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 80
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mBeamDisallowedByBase:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean p0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mBeamDisallowedByBase:Z

    xor-int/2addr p0, v2

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 94
    :cond_2
    sget p0, Lcom/android/settings/R$string;->android_beam_settings_title:I

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result p1

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const-string v0, "android.sofware.nfc.beam"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 59
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->help_uri_beam:I

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-static {p2, p1, v0, p0}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 99
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    .line 104
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method
