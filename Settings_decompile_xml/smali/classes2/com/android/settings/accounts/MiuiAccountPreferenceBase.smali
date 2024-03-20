.class abstract Lcom/android/settings/accounts/MiuiAccountPreferenceBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiAccountPreferenceBase.java"

# interfaces
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# static fields
.field protected static final VERBOSE:Z


# instance fields
.field protected mAccountTypePreferenceLoader:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

.field protected mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUm:Landroid/os/UserManager;

.field protected mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accounts/MiuiAccountPreferenceBase;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->VERBOSE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;-><init>(Lcom/android/settings/accounts/MiuiAccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAccountTypePreferenceLoader:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->addPreferencesForType(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p0

    return-object p0
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 105
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 106
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "user"

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUm:Landroid/os/UserManager;

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 70
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 72
    new-instance v0, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 73
    new-instance p1, Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;-><init>(Lmiuix/preference/PreferenceFragment;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAccountTypePreferenceLoader:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 123
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {p0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/16 v0, 0xd

    .line 112
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->onSyncStateUpdated()V

    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .line 0
    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->onAuthDescriptionsUpdated()V

    return-void
.end method
