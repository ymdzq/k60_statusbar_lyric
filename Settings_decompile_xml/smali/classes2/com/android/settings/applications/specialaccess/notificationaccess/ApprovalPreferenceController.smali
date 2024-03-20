.class public Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ApprovalPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApprovalPrefController"


# instance fields
.field private mCn:Landroid/content/ComponentName;

.field private mNm:Landroid/app/NotificationManager;

.field private mParent:Landroidx/preference/PreferenceFragmentCompat;

.field private mPkgInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$NZ4OpUduRifc93EzDXvhvvbfafY(Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->lambda$updateState$0(Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kt1sbB6ltv0gijikRStTDlBmW2o(Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->lambda$disable$1(Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$disable$1(Landroid/content/ComponentName;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mNm:Landroid/app/NotificationManager;

    .line 142
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateState$0(Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 100
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 102
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mCn:Landroid/content/ComponentName;

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    .line 106
    :cond_0
    new-instance p2, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;-><init>()V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mCn:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mParent:Landroidx/preference/PreferenceFragmentCompat;

    .line 107
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mParent:Landroidx/preference/PreferenceFragmentCompat;

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "friendlydialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return p3

    .line 111
    :cond_1
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mCn:Landroid/content/ComponentName;

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 120
    :cond_2
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mCn:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->manage_notification_access_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "perm_notification"

    .line 120
    invoke-static {p2, v1, v0}, Lcom/android/security/AdbUtils;->getInterceptIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/security/AdbUtils;->isIntentEnable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mParent:Landroidx/preference/PreferenceFragmentCompat;

    const/16 p1, 0x66

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 126
    :cond_3
    new-instance p2, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;-><init>()V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mCn:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mParent:Landroidx/preference/PreferenceFragmentCompat;

    .line 127
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mParent:Landroidx/preference/PreferenceFragmentCompat;

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "dialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return p3
.end method


# virtual methods
.method public disable(Landroid/content/ComponentName;)V
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 140
    new-instance v0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;Landroid/content/ComponentName;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected enable(Landroid/content/ComponentName;)V
    .locals 2

    .line 149
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method protected isServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x308

    goto :goto_0

    :cond_0
    const/16 p1, 0x309

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mCn:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setNm(Landroid/app/NotificationManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mNm:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public setParent(Landroidx/preference/PreferenceFragmentCompat;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mParent:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method public setPkgInfo(Landroid/content/pm/PackageInfo;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mPkgInfo:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public setPm(Landroid/content/pm/PackageManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 85
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mCn:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 92
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 94
    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mCn:Landroid/content/ComponentName;

    .line 95
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmiui/enterprise/IApplicationHelper;->isNotificationListenerAccessGray(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 99
    :cond_1
    new-instance v2, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mCn:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->updateState(Ljava/lang/String;IZ)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
