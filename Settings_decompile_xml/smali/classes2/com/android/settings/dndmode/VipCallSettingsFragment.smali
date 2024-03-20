.class public Lcom/android/settings/dndmode/VipCallSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/SettingsPreferenceFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final mContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mCustomCategory:Landroidx/preference/PreferenceCategory;

.field mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuItemAdd:Landroid/view/MenuItem;

.field private mOptionsCategory:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

.field mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/android/settings/dndmode/VipCallSettingsFragment;)Landroid/service/notification/ZenModeConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/dndmode/VipCallSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddCustomGroup(Lcom/android/settings/dndmode/VipCallSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->addCustomGroup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteVipList(Lcom/android/settings/dndmode/VipCallSettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->deleteVipList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveCustomGroup(Lcom/android/settings/dndmode/VipCallSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->removeCustomGroup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowVipListDeleteConfirmDialog(Lcom/android/settings/dndmode/VipCallSettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->showVipListDeleteConfirmDialog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmContacts()Ljava/util/HashMap;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mContacts:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mContacts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private addCustomGroup()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 185
    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mMenuItemAdd:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 186
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private addVipList()V
    .locals 3

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.include_unknown_numbers"

    const/4 v2, 0x1

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x3e8

    .line 305
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private createVipList()V
    .locals 5

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 148
    iget-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->addCustomGroup()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->removeCustomGroup()V

    .line 154
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->dndm_vip_list_group_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/android/settings/dndmode/VipCallSettingsFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/dndmode/VipCallSettingsFragment$2;-><init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;[Ljava/lang/String;)V

    .line 174
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 175
    new-instance v3, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 176
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    iget-object v4, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mOptionsCategory:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v4, v3}, Lmiuix/preference/RadioButtonPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mOptionsCategory:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget p0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {v0, p0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPosition(I)V

    return-void
.end method

.method private deleteVipList(Ljava/lang/String;)V
    .locals 1

    .line 246
    new-instance v0, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;-><init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 278
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private queryContacts()V
    .locals 2

    .line 113
    new-instance v0, Lcom/android/settings/dndmode/VipCallSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment$1;-><init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private removeCustomGroup()V
    .locals 2

    .line 191
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 192
    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mMenuItemAdd:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 193
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private showVipListDeleteConfirmDialog(Ljava/lang/String;)V
    .locals 3

    .line 234
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->dndm_dlg_remove_vip:I

    .line 235
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 236
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dndm_dlg_remove_ok:I

    new-instance v2, Lcom/android/settings/dndmode/VipCallSettingsFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/dndmode/VipCallSettingsFragment$3;-><init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.android.contacts.extra.PHONE_URIS"

    .line 314
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 315
    array-length p2, p1

    if-nez p2, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    new-instance p2, Lcom/android/settings/dndmode/VipCallSettingsFragment$5;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/dndmode/VipCallSettingsFragment$5;-><init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;[Landroid/os/Parcelable;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 368
    invoke-virtual {p2, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget p1, Lcom/android/settings/R$xml;->dndm_vip_call_settings_fragment:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p1}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string p1, "key_vip_options_category"

    .line 90
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mOptionsCategory:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    const-string p1, "key_vip_list_custom_category"

    .line 91
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->createVipList()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->queryContacts()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object v1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "_id"

    const-string/jumbo p2, "number"

    filled-new-array {p0, p2}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type = ? and sync_dirty <> ?"

    const/4 p0, 0x1

    .line 207
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "3"

    filled-new-array {p2, p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 283
    sget p2, Lcom/android/settings/R$string;->dndm_menu_add_vip_custom:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mMenuItemAdd:Landroid/view/MenuItem;

    .line 284
    sget p2, Lcom/android/settings/R$drawable;->dndm_menu_add_vip:I

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 285
    iget-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mMenuItemAdd:Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget p0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    move v0, p2

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 217
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    new-instance p1, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;-><init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;Landroid/content/Context;)V

    .line 219
    invoke-virtual {p1, p2}, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->setData(Landroid/database/Cursor;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 226
    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 290
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->addVipList()V

    .line 297
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 106
    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment;->mFuture:Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
