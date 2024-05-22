.class public final Lcom/miui/keyguard/biometrics/fod/item/SearchItem;
.super Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/ImageView;

    .line 5
    invoke-direct {p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/item/SearchItem;->mView:Landroid/widget/ImageView;

    .line 10
    const p0, 0x7f080e9c    # @drawable/gxzw_quick_open_search 'res/drawable/gxzw_quick_open_search.webp'

    .line 12
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "com.android.browser.browser_search"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 9
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const-string v4, "com.mi.globalbrowser"

    .line 13
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mContext:Landroid/content/Context;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-static {p0, v4, v3}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 19
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    move v5, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v5, v3

    .line 27
    :goto_0
    const-string v6, "com.android.browser"

    .line 28
    if-eqz v5, :cond_1

    .line 30
    move-object v5, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v5, v6

    .line 34
    :goto_1
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-static {p0, v0}, Lcom/miui/utils/IntentUtils;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 38
    move-result v0

    .line 41
    const-string v5, "android.intent.action.WEB_SEARCH"

    .line 42
    if-eqz v0, :cond_4

    .line 44
    new-instance v0, Landroid/content/Intent;

    .line 46
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    if-eqz v1, :cond_2

    .line 51
    invoke-static {p0, v4, v3}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 53
    move-result p0

    .line 56
    if-eqz p0, :cond_2

    .line 57
    goto :goto_2

    .line 59
    :cond_2
    move v2, v3

    .line 60
    :goto_2
    if-eqz v2, :cond_3

    .line 61
    goto :goto_3

    .line 63
    :cond_3
    move-object v4, v6

    .line 64
    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string p0, "from"

    .line 68
    const-string v1, "fingerprint"

    .line 70
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    goto :goto_4

    .line 75
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 76
    const-string v1, "android.search.action.GLOBAL_SEARCH"

    .line 78
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v2, "com.google.android.googlequicksearchbox"

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-static {p0, v0}, Lcom/miui/utils/IntentUtils;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 88
    move-result p0

    .line 91
    if-eqz p0, :cond_5

    .line 92
    new-instance v0, Landroid/content/Intent;

    .line 94
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    goto :goto_4

    .line 102
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 103
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    :goto_4
    const/high16 p0, 0x14800000

    .line 108
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    return-object v0
    .line 113
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1304ec    # @string/gxzw_quick_open_search_sub 'Browser'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Browser/Search"

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1304eb    # @string/gxzw_quick_open_search 'Search'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/SearchItem;->mView:Landroid/widget/ImageView;

    .line 2
    return-object p0
    .line 4
.end method
