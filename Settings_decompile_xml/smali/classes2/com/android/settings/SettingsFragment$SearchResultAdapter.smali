.class Lcom/android/settings/SettingsFragment$SearchResultAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/SettingsFragment$SearchItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final ITEM_TYPE_COUNT:I

.field private isNightMode:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLanguage:Ljava/lang/String;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)V"
        }
    .end annotation

    .line 1490
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x3

    .line 1482
    iput p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->ITEM_TYPE_COUNT:I

    .line 1491
    iput-object p2, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    .line 1492
    iput-object p3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mList:Ljava/util/List;

    const-string p1, "layout_inflater"

    .line 1493
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1494
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1495
    invoke-static {}, Lcom/android/settings/SettingsFragment;->-$$Nest$smgetLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mLanguage:Ljava/lang/String;

    .line 1496
    invoke-static {p2}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->isNightMode:Z

    return-void
.end method

.method private adaptNewSearchIcon(Lcom/android/settings/search/SearchResultItem;Landroid/widget/ImageView;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1653
    :cond_0
    iget-object v0, p1, Lcom/android/settings/search/SearchResultItem;->group:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->applications_settings_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_system_app_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1656
    :cond_1
    iget-object v0, p1, Lcom/android/settings/search/SearchResultItem;->group:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->network_settings_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1657
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_dualsim:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1659
    :cond_2
    iget-object v0, p1, Lcom/android/settings/search/SearchResultItem;->group:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->other_advanced_settings:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1660
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_other_advanced_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1662
    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4

    .line 1663
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_protection:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_and_security:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1664
    iget-object p1, p1, Lcom/android/settings/search/SearchResultItem;->group:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1665
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_privacy_protection:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private adjustSearchResultIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "SettingsFragment"

    const-string p1, "adjustSearchResultIcon: icon is null"

    .line 1638
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1641
    :cond_0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->application_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 1642
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1643
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 1644
    invoke-virtual {p1, v2, v2, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1645
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getSearchResultItemType(Lcom/android/settings/search/SearchResultItem;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1619
    iget p0, p1, Lcom/android/settings/search/SearchResultItem;->type:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private setSearchResultView(Landroid/view/View;Lcom/android/settings/SettingsFragment$SearchItemViewHolder;Lcom/android/settings/search/SearchResultItem;I)V
    .locals 6

    .line 1671
    iget-object v0, p3, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    .line 1672
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1673
    iget-object v0, p3, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1674
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 1676
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchText(Lcom/android/settings/SettingsFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mLanguage:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/SettingsFragment;->-$$Nest$mhighlight(Lcom/android/settings/SettingsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1677
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1678
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    :cond_1
    iget-object v0, p3, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1681
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->path:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1685
    :cond_2
    iget-object v0, p3, Lcom/android/settings/search/SearchResultItem;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 1686
    iget-object v0, p3, Lcom/android/settings/search/SearchResultItem;->icon:Ljava/lang/String;

    const-string v3, "SYSTEM_APP_MARK"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1687
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/BasePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p3, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1688
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    .line 1689
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/BasePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    const-string v0, "drawable"

    if-nez v2, :cond_4

    .line 1694
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v3}, Lcom/android/settings/BasePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p3, Lcom/android/settings/search/SearchResultItem;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1695
    iget-object v4, p3, Lcom/android/settings/search/SearchResultItem;->icon:Ljava/lang/String;

    iget-object v5, p3, Lcom/android/settings/search/SearchResultItem;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    if-nez v2, :cond_5

    .line 1700
    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p3, Lcom/android/settings/search/SearchResultItem;->icon:Ljava/lang/String;

    const-string v5, "com.android.settings"

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1703
    :goto_0
    iget-boolean v3, p3, Lcom/android/settings/search/SearchResultItem;->isGlobalSearch:Z

    if-eqz v3, :cond_6

    iget-object v3, p3, Lcom/android/settings/search/SearchResultItem;->globalSearchIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 1704
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1708
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/android/settings/search/SearchResultItem;->globalSearchIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 1711
    iget-object v2, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1716
    :cond_7
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1720
    :goto_1
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, p3, v0}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->adaptNewSearchIcon(Lcom/android/settings/search/SearchResultItem;Landroid/widget/ImageView;)V

    .line 1721
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->adjustSearchResultIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1723
    iget-boolean v0, p3, Lcom/android/settings/search/SearchResultItem;->header:Z

    if-nez v0, :cond_8

    .line 1724
    iget-object p2, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1726
    :cond_8
    iget-object p2, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1730
    :goto_2
    new-instance p2, Lcom/android/settings/SettingsFragment$SearchResultAdapter$2;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/settings/SettingsFragment$SearchResultAdapter$2;-><init>(Lcom/android/settings/SettingsFragment$SearchResultAdapter;Lcom/android/settings/search/SearchResultItem;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setSeparateAppSearchResultView(Landroid/view/View;Lcom/android/settings/SettingsFragment$SearchItemViewHolder;Lcom/android/settings/search/SearchResultItem;I)V
    .locals 5

    .line 1741
    iget-object v0, p3, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    .line 1742
    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchText(Lcom/android/settings/SettingsFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mLanguage:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/SettingsFragment;->-$$Nest$mhighlight(Lcom/android/settings/SettingsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1743
    move-object v2, p3

    check-cast v2, Lcom/android/settings/search/appseparate/AppSearchResultItem;

    .line 1744
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1745
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1747
    :cond_0
    iget-object v0, p3, Lcom/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1748
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1750
    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/search/appseparate/AppSearchResultItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 1751
    iget-object v1, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/BasePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1755
    invoke-virtual {v2}, Lcom/android/settings/search/appseparate/AppSearchResultItem;->getAppUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 1756
    invoke-virtual {v2}, Lcom/android/settings/search/appseparate/AppSearchResultItem;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1758
    invoke-virtual {v2}, Lcom/android/settings/search/appseparate/AppSearchResultItem;->getIconResId()I

    move-result v2

    .line 1759
    iget-object v4, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/android/settings/MiuiUtils;->getIconDrawableById(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1762
    iget-object v2, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/settings/MiuiUtils;->hasLauncherIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/settings/search/appseparate/CollectResultProcessor;->sInvalidBadgedIconPackageSet:Ljava/util/Set;

    .line 1763
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1766
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_other_advanced_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 1769
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v2

    .line 1772
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1768
    invoke-static {v2, v0, v3, v1}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1776
    :cond_4
    :goto_1
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1777
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->home_title:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1779
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_miui_home_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 1780
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sound_haptic_settings:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sound_vibrate_settings:I

    .line 1781
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sound_settings:I

    .line 1782
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1784
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_sound_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 1785
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->display_settings:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1787
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_display_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1789
    :cond_8
    :goto_2
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1791
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, p3, v0}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->adaptNewSearchIcon(Lcom/android/settings/search/SearchResultItem;Landroid/widget/ImageView;)V

    .line 1792
    iget-object v0, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->adjustSearchResultIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1794
    iget-boolean v0, p3, Lcom/android/settings/search/SearchResultItem;->header:Z

    if-nez v0, :cond_9

    .line 1795
    iget-object p2, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1797
    :cond_9
    iget-object p2, p2, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1801
    :goto_3
    new-instance p2, Lcom/android/settings/SettingsFragment$SearchResultAdapter$3;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/settings/SettingsFragment$SearchResultAdapter$3;-><init>(Lcom/android/settings/SettingsFragment$SearchResultAdapter;Lcom/android/settings/search/SearchResultItem;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/settings/search/SearchResultItem;
    .locals 1

    .line 1630
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1631
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/search/SearchResultItem;

    return-object p0

    .line 1633
    :cond_0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/search/SearchResultItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 1601
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 1602
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->getItem(I)Lcom/android/settings/search/SearchResultItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->getSearchResultItemType(Lcom/android/settings/search/SearchResultItem;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1480
    check-cast p1, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->onBindViewHolder(Lcom/android/settings/SettingsFragment$SearchItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/SettingsFragment$SearchItemViewHolder;I)V
    .locals 8

    .line 1535
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->getItem(I)Lcom/android/settings/search/SearchResultItem;

    move-result-object v0

    .line 1536
    iget v1, v0, Lcom/android/settings/search/SearchResultItem;->type:I

    .line 1537
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_0

    goto :goto_1

    :cond_0
    const v6, 0x1020016    # @android:id/title

    .line 1540
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1541
    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1542
    iget-boolean v6, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->isNightMode:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/android/settings/R$drawable;->miuix_preference_category_bg_no_title_dark:I

    goto :goto_0

    :cond_1
    sget v6, Lcom/android/settings/R$drawable;->miuix_preference_category_bg_no_title_light:I

    :goto_0
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1543
    filled-new-array {v2}, [Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_1

    .line 1555
    :cond_2
    iget-object v6, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    .line 1556
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$attr;->preferenceItemBackground:I

    invoke-static {v6, v7}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1558
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1546
    :cond_3
    iget-object v6, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    .line 1547
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$attr;->preferenceItemBackground:I

    invoke-static {v6, v7}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1548
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz v1, :cond_8

    const/4 v6, 0x1

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    goto :goto_2

    .line 1575
    :cond_4
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/freeform/FreeformGuideSettings;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1576
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1577
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10501f6    # @android:dimen/notification_big_picture_max_height

    .line 1578
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v0, 0x0

    .line 1577
    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1579
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1581
    :cond_5
    sget p1, Lcom/android/settings/R$id;->tv_search_feedback:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1583
    new-instance p2, Lcom/android/settings/SettingsFragment$SearchResultAdapter$1;

    invoke-direct {p2, p0}, Lcom/android/settings/SettingsFragment$SearchResultAdapter$1;-><init>(Lcom/android/settings/SettingsFragment$SearchResultAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1566
    :cond_6
    invoke-direct {p0, v2, p1, v0, p2}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->setSeparateAppSearchResultView(Landroid/view/View;Lcom/android/settings/SettingsFragment$SearchItemViewHolder;Lcom/android/settings/search/SearchResultItem;I)V

    goto :goto_2

    .line 1569
    :cond_7
    sget p0, Lcom/android/settings/R$id;->empty_img:I

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1570
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isLower4GB()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1571
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1563
    :cond_8
    invoke-direct {p0, v2, p1, v0, p2}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->setSearchResultView(Landroid/view/View;Lcom/android/settings/SettingsFragment$SearchItemViewHolder;Lcom/android/settings/search/SearchResultItem;I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1480
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/SettingsFragment$SearchItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/SettingsFragment$SearchItemViewHolder;
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1518
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->search_settings_feedback_footer:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1515
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->miuix_preference_category_layout:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1512
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->search_settings_element:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1509
    :cond_3
    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->search_result_empty:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1506
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->search_settings_element:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    .line 1522
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1523
    iget-object v3, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_5

    .line 1525
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    new-array v1, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p2, v0, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    .line 1526
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->miuisettings_item_touch_color:I

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-interface {p2, p0}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    .line 1527
    invoke-interface {p0, p1, p2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 1530
    :cond_5
    new-instance p0, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment$SearchItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public refresh(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)V"
        }
    .end annotation

    .line 1613
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->mList:Ljava/util/List;

    .line 1614
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
