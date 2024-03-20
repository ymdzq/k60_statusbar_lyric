.class Lcom/android/settings/accounts/NewAccountPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "NewAccountPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lmiuix/preference/FolmeAnimationController;
.implements Landroid/content/SyncStatusObserver;
.implements Lmiuix/preference/PreferenceExtraPadding;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsPending:Z

.field public final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;

.field private mUpdateUIRunable:Ljava/lang/Runnable;

.field private mUserHandle:Landroid/os/UserHandle;

.field private final miuiAccountSettings:Lcom/android/settings/accounts/MiuiAccountSettings;

.field private objectHandle:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccount(Lcom/android/settings/accounts/NewAccountPreference;)Landroid/accounts/Account;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuthorityList(Lcom/android/settings/accounts/NewAccountPreference;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAuthorityList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/accounts/NewAccountPreference;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mFragment:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragmentArguments(Lcom/android/settings/accounts/NewAccountPreference;)Landroid/os/Bundle;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsActive(Lcom/android/settings/accounts/NewAccountPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mIsActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPending(Lcom/android/settings/accounts/NewAccountPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mIsPending:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserHandle(Lcom/android/settings/accounts/NewAccountPreference;)Landroid/os/UserHandle;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmiuiAccountSettings(Lcom/android/settings/accounts/NewAccountPreference;)Lcom/android/settings/accounts/MiuiAccountSettings;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->miuiAccountSettings:Lcom/android/settings/accounts/MiuiAccountSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAccount(Lcom/android/settings/accounts/NewAccountPreference;Landroid/accounts/Account;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAccount:Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 98
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 82
    iput-object p2, p0, Lcom/android/settings/accounts/NewAccountPreference;->objectHandle:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mIsActive:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mIsPending:Z

    .line 169
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/accounts/NewAccountPreference;->mHandler:Landroid/os/Handler;

    .line 170
    iput-object p2, p0, Lcom/android/settings/accounts/NewAccountPreference;->mUpdateUIRunable:Ljava/lang/Runnable;

    .line 99
    iput-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference;->miuiAccountSettings:Lcom/android/settings/accounts/MiuiAccountSettings;

    .line 100
    iput-object p3, p0, Lcom/android/settings/accounts/NewAccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 101
    iput-object p4, p0, Lcom/android/settings/accounts/NewAccountPreference;->mTitleResPackageName:Ljava/lang/String;

    .line 102
    iput p5, p0, Lcom/android/settings/accounts/NewAccountPreference;->mTitleResId:I

    .line 103
    iput-object p6, p0, Lcom/android/settings/accounts/NewAccountPreference;->mFragment:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/android/settings/accounts/NewAccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string p1, "account"

    .line 106
    invoke-virtual {p7, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAccount:Landroid/accounts/Account;

    const-string p1, "android.intent.extra.USER"

    .line 107
    invoke-virtual {p7, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference;->mUserHandle:Landroid/os/UserHandle;

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAuthorityList:Ljava/util/List;

    .line 109
    iget-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    .line 110
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object p1

    .line 111
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object p4, p1, v0

    .line 112
    iget-object p5, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAccount:Landroid/accounts/Account;

    if-eqz p5, :cond_1

    iget-object p6, p4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object p5, p5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    iget-object p5, p0, Lcom/android/settings/accounts/NewAccountPreference;->mTitleResPackageName:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 116
    iget-object p5, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAuthorityList:Ljava/util/List;

    iget-object p4, p4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    sget p1, Lcom/android/settings/R$layout;->preference_system_app_new:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 127
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0, p8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private onSyncStateUpdateList()V
    .locals 9

    .line 247
    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 250
    invoke-static {v0}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v1

    .line 251
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v0, "NewAccountPreference"

    const-string v1, "currently active syncs is empty"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/NewAccountPreference;->setIsActive(Z)V

    .line 254
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/NewAccountPreference;->setIsPending(Z)V

    .line 255
    invoke-direct {p0}, Lcom/android/settings/accounts/NewAccountPreference;->updateEndUI()V

    return-void

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAuthorityList:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/settings/accounts/NewAccountPreference;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/util/List;)Z

    move-result v1

    .line 260
    iget-object v2, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAuthorityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 261
    iget-object v5, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-static {v5, v4, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 266
    iget-boolean v6, v5, Landroid/content/SyncStatusInfo;->pending:Z

    .line 267
    iget-boolean v5, v5, Landroid/content/SyncStatusInfo;->initialize:Z

    goto :goto_0

    :cond_2
    move v5, v3

    move v6, v5

    .line 269
    :goto_0
    iget-object v7, p0, Lcom/android/settings/accounts/NewAccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-static {v7, v4, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    if-ltz v4, :cond_3

    if-nez v5, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    if-eqz v6, :cond_4

    if-ltz v4, :cond_4

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    if-nez v8, :cond_5

    if-eqz v7, :cond_1

    .line 273
    :cond_5
    invoke-direct {p0, v8}, Lcom/android/settings/accounts/NewAccountPreference;->setIsActive(Z)V

    .line 274
    invoke-direct {p0, v7}, Lcom/android/settings/accounts/NewAccountPreference;->setIsPending(Z)V

    .line 278
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/accounts/NewAccountPreference;->updateEndUI()V

    return-void
.end method

.method private setIsActive(Z)V
    .locals 0

    .line 322
    iput-boolean p1, p0, Lcom/android/settings/accounts/NewAccountPreference;->mIsActive:Z

    return-void
.end method

.method private setIsPending(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lcom/android/settings/accounts/NewAccountPreference;->mIsPending:Z

    return-void
.end method

.method private updateEndUI()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mUpdateUIRunable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 331
    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/util/List;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p3, :cond_2

    .line 346
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncInfo;

    .line 350
    iget-object v1, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onAttached()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/Preference;->onAttached()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference;->objectHandle:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 137
    invoke-static {v0, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference;->objectHandle:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 174
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 175
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 176
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->head:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 177
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->end:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 178
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->value_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 179
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->sync_img:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v3, 0x1

    .line 181
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/accounts/NewAccountPreference;->mUpdateUIRunable:Ljava/lang/Runnable;

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 183
    new-instance v3, Lcom/android/settings/accounts/NewAccountPreference$1;

    invoke-direct {v3, p0, v2, v1, p1}, Lcom/android/settings/accounts/NewAccountPreference$1;-><init>(Lcom/android/settings/accounts/NewAccountPreference;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V

    iput-object v3, p0, Lcom/android/settings/accounts/NewAccountPreference;->mUpdateUIRunable:Ljava/lang/Runnable;

    :cond_0
    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 203
    invoke-static {}, Lcom/android/settings/usagestats/utils/CommonUtils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    sget v3, Lcom/android/settings/R$drawable;->preference_card_head_bg_rtl:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 206
    :cond_1
    sget v3, Lcom/android/settings/R$drawable;->preference_card_head_bg:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    :goto_0
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v4}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v4, p1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, v0, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 209
    new-instance v3, Lcom/android/settings/accounts/NewAccountPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/NewAccountPreference$2;-><init>(Lcom/android/settings/accounts/NewAccountPreference;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v1, :cond_4

    .line 224
    invoke-static {}, Lcom/android/settings/usagestats/utils/CommonUtils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    sget v0, Lcom/android/settings/R$drawable;->preference_card_end_bg_rtl:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 227
    :cond_3
    sget v0, Lcom/android/settings/R$drawable;->preference_card_end_bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    :goto_1
    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v3}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, p1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 230
    new-instance p1, Lcom/android/settings/accounts/NewAccountPreference$3;

    invoke-direct {p1, p0}, Lcom/android/settings/accounts/NewAccountPreference$3;-><init>(Lcom/android/settings/accounts/NewAccountPreference;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/Preference;->onDetached()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference;->objectHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 149
    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference;->objectHandle:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 359
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_mask_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_bg_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p1, p1

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    .line 156
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public onStatusChanged(I)V
    .locals 0

    .line 318
    invoke-direct {p0}, Lcom/android/settings/accounts/NewAccountPreference;->onSyncStateUpdateList()V

    return-void
.end method
