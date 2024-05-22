.class public Lcom/android/settingslib/inputmethod/InputMethodPreference;
.super Lcom/android/settingslib/PrimarySwitchPreference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDialog:Landroid/app/AlertDialog;

.field public final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field public final mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p4, 0x0

    .line 5
    iput-object p4, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 6
    const/4 p5, 0x0

    .line 8
    iput-boolean p5, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 9
    iput-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 11
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 26
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iput-object p4, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    new-instance p4, Landroid/content/Intent;

    .line 36
    const-string v0, "android.intent.action.MAIN"

    .line 38
    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {p4, v0, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iput-object p4, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 50
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 52
    move-result p3

    .line 55
    if-ne p6, p3, :cond_1

    .line 56
    goto :goto_1

    .line 58
    :cond_1
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 61
    move-result-object p3

    .line 64
    invoke-virtual {p1, p3, p5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 65
    move-result-object p1

    .line 68
    :goto_1
    sget-object p3, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMapLock:Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 71
    move-result p3

    .line 74
    sget-object p4, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMapLock:Ljava/lang/Object;

    .line 75
    monitor-enter p4

    .line 77
    :try_start_0
    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstanceMap:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 80
    move-result v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    new-instance v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 86
    invoke-direct {v1, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    monitor-exit p4

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 96
    move-result v1

    .line 99
    if-ltz v1, :cond_3

    .line 100
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 105
    check-cast p1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 106
    monitor-exit p4

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    new-instance p3, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 110
    invoke-direct {p3, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 115
    move-result p1

    .line 118
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_2
    iput p6, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mUserId:I

    .line 123
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 125
    move-result p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    sget p1, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->$r8$clinit:I

    .line 131
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    .line 133
    move-result p1

    .line 136
    if-eqz p1, :cond_4

    .line 137
    goto :goto_4

    .line 139
    :cond_4
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 140
    move-result p1

    .line 143
    move p3, p5

    .line 144
    :goto_3
    if-ge p3, p1, :cond_6

    .line 145
    invoke-virtual {p2, p3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 147
    move-result-object p4

    .line 150
    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    .line 151
    move-result-object p6

    .line 154
    const-string v0, "keyboard"

    .line 155
    invoke-virtual {v0, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 157
    move-result p6

    .line 160
    if-eqz p6, :cond_5

    .line 161
    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    .line 163
    move-result p4

    .line 166
    if-eqz p4, :cond_5

    .line 167
    const/4 p5, 0x1

    .line 169
    goto :goto_4

    .line 170
    :cond_5
    add-int/lit8 p3, p3, 0x1

    .line 171
    goto :goto_3

    .line 173
    :cond_6
    :goto_4
    iput-object p0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 174
    iput-object p0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 176
    return-void

    .line 178
    :catchall_0
    move-exception p0

    .line 179
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    throw p0
    .line 181
.end method


# virtual methods
.method public final isTv()Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 12
    and-int/lit8 p0, p0, 0xf

    .line 14
    const/4 v0, 0x4

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
    .line 22
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    iget-object v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda1;

    .line 9
    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/widget/Switch;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    const v0, 0x1020006    # @android:id/icon

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/ImageView;

    .line 26
    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p0

    .line 33
    const v0, 0x7f071067    # @dimen/secondary_app_icon_size '32.0dp'

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result p0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    if-lez p0, :cond_1

    .line 43
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object v0

    .line 48
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    :cond_1
    return-void
    .line 56
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 2
    const/4 p2, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    .line 8
    if-eqz p1, :cond_0

    .line 10
    move p1, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v0

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 15
    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 18
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 26
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 28
    move-result-object p1

    .line 31
    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    .line 32
    if-nez p1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    .line 36
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    .line 42
    move-result p1

    .line 45
    if-nez p1, :cond_4

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    .line 48
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 52
    throw v1

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 56
    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    .line 60
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 66
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 68
    :cond_3
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 71
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 78
    const p2, 0x1040014    # @android:string/dialog_alert_title

    .line 81
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 84
    iget-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 87
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 89
    move-result-object p2

    .line 92
    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    move-result-object v2

    .line 98
    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 99
    move-result-object p2

    .line 102
    const v2, 0x7f130538    # @string/ime_security_warning 'This input method may be able to collect all the text you type, including personal data like passwor ...'

    .line 103
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 109
    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 113
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    new-instance p1, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;

    .line 117
    const/4 p2, 0x2

    .line 119
    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;I)V

    .line 120
    const p2, 0x104000a    # @android:string/ok

    .line 123
    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    new-instance p1, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;

    .line 129
    const/4 p2, 0x3

    .line 131
    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;I)V

    .line 132
    const/high16 p2, 0x1040000    # @android:string/cancel

    .line 135
    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    new-instance p1, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda2;

    .line 140
    invoke-direct {p1, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    .line 142
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 148
    move-result-object p1

    .line 151
    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 152
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 154
    :cond_4
    :goto_1
    return v0

    .line 157
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 158
    throw v1
    .line 161
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mUserId:I

    .line 8
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v1, "InputMethodPreference"

    .line 19
    const-string v2, "IME\'s Settings Activity Not Found"

    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 32
    move-result-object p0

    .line 35
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    const v0, 0x7f130412    # @string/failed_to_open_app_settings_toast 'Failed to open settings for %1$s'

    .line 40
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 52
    :cond_0
    :goto_0
    return-void
    .line 55
.end method

.method public final showDirectBootWarnDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 17
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 19
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 25
    const v3, 0x7f13038e    # @string/direct_boot_unaware_dialog_message 'Note: After a reboot, this app can't start until you unlock your phone'

    .line 28
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 35
    new-instance v0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;

    .line 38
    const/4 v3, 0x0

    .line 40
    invoke-direct {v0, p0, v3}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;I)V

    .line 41
    const v3, 0x104000a    # @android:string/ok

    .line 44
    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    new-instance v0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;

    .line 50
    invoke-direct {v0, p0, v2}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;I)V

    .line 52
    const/high16 v2, 0x1040000    # @android:string/cancel

    .line 55
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 60
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 66
    return-void
    .line 69
.end method
