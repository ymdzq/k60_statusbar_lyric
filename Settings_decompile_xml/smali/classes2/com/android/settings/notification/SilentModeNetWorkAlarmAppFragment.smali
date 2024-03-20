.class public Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment;
.super Lcom/android/settings/BaseListFragment;
.source "SilentModeNetWorkAlarmAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;,
        Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;

.field private mHeaderToDrawable:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;-><init>()V

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment;->mHeaderToDrawable:Landroid/util/ArrayMap;

    return-void
.end method

.method private initWeChatAppHeader(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;-><init>()V

    .line 42
    sget v1, Lcom/android/settings/R$string;->wechat:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment;->mHeaderToDrawable:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->ic_wechat:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_alarm_support_apps:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-direct {p0, v0}, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment;->initWeChatAppHeader(Ljava/util/List;)V

    .line 36
    new-instance v1, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;

    iget-object v2, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment;->mHeaderToDrawable:Landroid/util/ArrayMap;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/util/ArrayMap;)V

    iput-object v1, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment;->mAdapter:Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;

    .line 37
    invoke-virtual {p0, v1}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
