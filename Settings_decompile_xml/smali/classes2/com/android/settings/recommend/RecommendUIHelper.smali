.class public Lcom/android/settings/recommend/RecommendUIHelper;
.super Ljava/lang/Object;
.source "RecommendUIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;
    }
.end annotation


# static fields
.field private static final RECOMMEND_REF_KEY:Ljava/lang/String; = "miui_settings_recommendref_key"

.field public static final TAG:Ljava/lang/String; = "RecommendUI"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private recommendPreference:Lcom/android/settings/recommend/RecommendPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getLinkData(Lcom/android/settings/recommend/bean/RecommendItem;)Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/recommend/PageIndexManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/recommend/PageIndexManager;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lcom/android/settings/recommend/bean/RecommendItem;->getTargetPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/recommend/PageIndexManager;->getIndexDetail(I)Lcom/android/settings/recommend/bean/IndexDetail;

    move-result-object v1

    const-string v2, "RecommendUI"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getIndexDetailController()Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;->isavailable()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :cond_0
    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getController()Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getController()Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 120
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getResId()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getResId()I

    move-result v5

    goto :goto_1

    .line 121
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/recommend/bean/RecommendItem;->getTargetPageTitle()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "string"

    .line 123
    iget-object v7, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    if-eqz v5, :cond_5

    .line 129
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 130
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 131
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_7

    .line 136
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getIntent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 137
    :cond_7
    invoke-virtual {p1}, Lcom/android/settings/recommend/bean/RecommendItem;->getIntent()Ljava/lang/String;

    move-result-object v6

    .line 141
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    .line 145
    :cond_9
    invoke-static {v6, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 146
    iget-object v6, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v6, p1}, Lcom/android/settings/recommend/RecommendUIHelper;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v1, :cond_a

    .line 147
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getIntent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 148
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getIntent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 149
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/android/settings/recommend/RecommendUIHelper;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_a
    return-object v3

    :cond_b
    const-string v4, ":settings:show_fragment_title"

    .line 155
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, ":settings:show_fragment_title_resid"

    .line 156
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, ":android:show_fragment_title"

    .line 157
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v1, :cond_c

    .line 160
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getRawIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 161
    invoke-virtual {v1}, Lcom/android/settings/recommend/bean/IndexDetail;->getRawIntent()Landroid/content/Intent;

    move-result-object p1

    .line 164
    :cond_c
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const/16 v1, 0x10

    .line 165
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 168
    :cond_e
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v0, Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;-><init>(Lcom/android/settings/recommend/RecommendUIHelper;Landroid/text/SpannableString;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_6

    :cond_f
    :goto_3
    return-object v3

    .line 173
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resources not found :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 171
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ParseUri error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-object v3
.end method

.method private static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    .line 190
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addRecommendItem(Lcom/android/settings/recommend/RecommendPreference;Lcom/android/settings/recommend/bean/RecommendItem;)Z
    .locals 0

    .line 180
    invoke-direct {p0, p2}, Lcom/android/settings/recommend/RecommendUIHelper;->getLinkData(Lcom/android/settings/recommend/bean/RecommendItem;)Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;->getString()Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/recommend/RecommendPreference;->addRecommendView(Landroid/text/SpannableString;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public buildRecommendLayout(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/settings/recommend/RecommendUIHelper;->buildRecommendLayout(Ljava/util/List;IZ)V

    return-void
.end method

.method public buildRecommendLayout(Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendItem;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mActivity:Landroid/app/Activity;

    const-string v1, "RecommendUI"

    if-nez v0, :cond_1

    const-string p0, "mActivity is null"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "[buildRecommendLayout] will build recommend layout..."

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->recommendPreference:Lcom/android/settings/recommend/RecommendPreference;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/recommend/RecommendUIHelper;->recommendPreference:Lcom/android/settings/recommend/RecommendPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 63
    :cond_2
    new-instance v0, Lcom/android/settings/recommend/RecommendPreference;

    iget-object v1, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2, p3}, Lcom/android/settings/recommend/RecommendPreference;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->recommendPreference:Lcom/android/settings/recommend/RecommendPreference;

    const-string/jumbo p2, "miui_settings_recommendref_key"

    .line 67
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/recommend/bean/RecommendItem;

    .line 69
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->recommendPreference:Lcom/android/settings/recommend/RecommendPreference;

    invoke-virtual {p0, v0, p3}, Lcom/android/settings/recommend/RecommendUIHelper;->addRecommendItem(Lcom/android/settings/recommend/RecommendPreference;Lcom/android/settings/recommend/bean/RecommendItem;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 74
    iget-object p1, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/recommend/RecommendUIHelper;->recommendPreference:Lcom/android/settings/recommend/RecommendPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 75
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->recommendPreference:Lcom/android/settings/recommend/RecommendPreference;

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public hasRecommendLayout()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string/jumbo v0, "miui_settings_recommendref_key"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public removeRecommendLayout()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->recommendPreference:Lcom/android/settings/recommend/RecommendPreference;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->recommendPreference:Lcom/android/settings/recommend/RecommendPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public setRecommendTips(Ljava/lang/String;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendUIHelper;->recommendPreference:Lcom/android/settings/recommend/RecommendPreference;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/recommend/RecommendPreference;->setRecommendTips(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
