.class public Lcom/android/settings/SettingsFragment$BannerCallback;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BannerCallback"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/SettingsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsFragment;)V
    .locals 1

    .line 1940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1941
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment$BannerCallback;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1946
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$BannerCallback;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1947
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsFragment;

    if-nez p0, :cond_1

    return-void

    .line 1950
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getTipsLocalModel()Lcom/android/settings/banner/BannerBean;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1953
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/android/settings/R$id;->arrow_right:I

    if-ne p1, v1, :cond_3

    .line 1954
    invoke-virtual {v0}, Lcom/android/settings/banner/BannerBean;->getArrowIcon()I

    move-result p1

    const-string v1, "cancel"

    invoke-static {v1}, Lcom/android/settings/banner/HomePageBannerHelper;->getArrowIcon(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 1956
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/android/settings/banner/HomePageBannerHelper;->update(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/banner/BannerBean;)V

    goto :goto_1

    .line 1958
    :cond_3
    invoke-static {v0}, Lcom/android/settings/banner/HomePageBannerHelper;->getBannerIntent(Lcom/android/settings/banner/BannerBean;)Landroid/content/Intent;

    move-result-object p1

    .line 1959
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1960
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1961
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/high16 v1, 0x10000000

    .line 1962
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1964
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1970
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/android/settings/banner/HomePageBannerHelper;->isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 1971
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "click"

    invoke-static {p1, v1, v0}, Lcom/android/settings/banner/HomePageBannerHelper;->update(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/banner/BannerBean;)V

    :goto_1
    const/4 v1, 0x0

    .line 1974
    invoke-virtual {v0}, Lcom/android/settings/banner/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/banner/BannerBean;->getSummary()Ljava/lang/String;

    move-result-object v3

    .line 1975
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/banner/HomePageBannerHelper;->getBannerIcon(Landroid/content/Context;Lcom/android/settings/banner/BannerBean;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1976
    invoke-virtual {v0}, Lcom/android/settings/banner/BannerBean;->getArrowIcon()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    .line 1974
    invoke-static/range {v0 .. v6}, Lcom/android/settings/SettingsFragment;->-$$Nest$mupdateTips(Lcom/android/settings/SettingsFragment;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    .line 1977
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/banner/HomePageBannerHelper;->queryAndSaveBannerOnBg(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public updateTips()V
    .locals 8

    .line 1981
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$BannerCallback;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 1982
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsFragment;

    if-nez v1, :cond_1

    return-void

    .line 1985
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/SettingsFragment;->getTipsLocalModel()Lcom/android/settings/banner/BannerBean;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1988
    :cond_2
    invoke-static {v0}, Lcom/android/settings/banner/HomePageBannerHelper;->isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1989
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "show"

    invoke-static {v2, v3, v0}, Lcom/android/settings/banner/HomePageBannerHelper;->update(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/banner/BannerBean;)V

    .line 1991
    :cond_3
    invoke-static {v0}, Lcom/android/settings/banner/HomePageBannerHelper;->isEmptyBanner(Lcom/android/settings/banner/BannerBean;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/android/settings/banner/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/banner/BannerBean;->getSummary()Ljava/lang/String;

    move-result-object v4

    .line 1992
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/settings/banner/HomePageBannerHelper;->getBannerIcon(Landroid/content/Context;Lcom/android/settings/banner/BannerBean;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1993
    invoke-virtual {v0}, Lcom/android/settings/banner/BannerBean;->getArrowIcon()I

    move-result v6

    move-object v7, p0

    .line 1991
    invoke-static/range {v1 .. v7}, Lcom/android/settings/SettingsFragment;->-$$Nest$mupdateTips(Lcom/android/settings/SettingsFragment;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    return-void
.end method
