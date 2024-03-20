.class public abstract Lcom/android/settings/BasePreferenceFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "BasePreferenceFragment.java"


# instance fields
.field protected mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lmiuix/recyclerview/widget/RecyclerView;

.field private mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$monHeaderClick(Lcom/android/settings/BasePreferenceFragment;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onHeaderClick(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    .line 125
    new-instance v0, Lcom/android/settings/BasePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BasePreferenceFragment$1;-><init>(Lcom/android/settings/BasePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 186
    new-instance v0, Lcom/android/settings/BasePreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/BasePreferenceFragment$2;-><init>(Lcom/android/settings/BasePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getListView()Lmiuix/recyclerview/widget/RecyclerView;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    sget v1, Lcom/android/settings/R$id;->scroll_headers:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mList:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    return-object v0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onHeaderClick(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

    iget-boolean v1, v0, Lcom/android/settings/cust/MiHomeManager;->isMiHomeManagerInstalled:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/cust/MiHomeManager;->isForbidden(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->settings_forbidden_message:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiSettings;

    .line 119
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public buildAdapter()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->buildHeaders()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->getBaseAdapter()Lcom/android/settings/MiuiSettings$HeaderAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 81
    :goto_1
    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItem(I)Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->pause()V

    :cond_2
    return-void
.end method

.method public buildHeaders()V
    .locals 4

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeadersResourceId()I

    move-result v2

    if-lez v2, :cond_1

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/android/settings/utils/HeaderUtils;->loadHeadersFromResource(Landroid/content/Context;ILjava/util/List;)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiSettings;->updateHeaderList(Ljava/util/List;)V

    .line 156
    :cond_1
    iput-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    return-void
.end method

.method protected getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    return-object p0
.end method

.method protected getHeadersResourceId()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 202
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/BasePreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 263
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    const/16 v0, 0x50

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/settings/BasePreferenceFragment;->onTrimMemory(I)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 231
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 221
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->resume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 250
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 241
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeaderAdapter()Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->stop()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->buildAdapter()V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cust/MiHomeManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/cust/MiHomeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

    .line 105
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setThemeRes(I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected startSelectHeader()V
    .locals 6

    .line 160
    sget-boolean v0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 168
    :goto_0
    iget-object v3, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 169
    iget-object v3, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    .line 170
    iget-object v4, v3, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->getSelectHeaderFragment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Lmiuix/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_2

    .line 174
    invoke-virtual {v0, v3, v2}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
